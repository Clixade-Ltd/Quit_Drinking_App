
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
import 'package:path_drawing/path_drawing.dart';

// =============================================================
// MODELS
// =============================================================

enum DrinkingLevel {
  social(0.75),
  regular(1.0),
  heavy(1.35),
  dependent(1.75);

  const DrinkingLevel(this.multiplier);

  final double multiplier;

  static DrinkingLevel fromValue(String? value) {
    switch (value?.toLowerCase()) {
      case 'social':
        return DrinkingLevel.social;
      case 'heavy':
        return DrinkingLevel.heavy;
      case 'dependent':
        return DrinkingLevel.dependent;
      case 'regular':
      default:
        return DrinkingLevel.regular;
    }
  }
}

enum Organ {
  brain,
  heart,
  liver,
  gut,
  kidneys,
  skin,
}

// =============================================================
// BODY RECOVERY
// =============================================================

class BodyRecovery {
  BodyRecovery({
    required this.daysSober,
    required this.drinkingLevel,
  });

  final int daysSober;
  final DrinkingLevel drinkingLevel;

  static const Map<Organ, double> _fullRecoveryDays = {
    Organ.kidneys: 45,
    Organ.skin: 60,
    Organ.gut: 90,
    Organ.brain: 180,
    Organ.liver: 240,
    Organ.heart: 365,
  };

  double percent(Organ organ) {
    final fullDays = _fullRecoveryDays[organ] ?? 90;

    final adjustedDays =
        daysSober / drinkingLevel.multiplier;

    final progress =
        (adjustedDays / fullDays).clamp(0.0, 1.0);

    final eased =
        1 -
        math.pow(
          1 - progress,
          1.8,
        ).toDouble();

    return (eased * 100).clamp(0.0, 100.0);
  }

  double get overall {
    final values = Organ.values
        .map(percent)
        .toList(growable: false);

    if (values.isEmpty) {
      return 0;
    }

    return values.reduce((a, b) => a + b) / values.length;
  }

  Color colorFor(double percentage) {
    final value =
        (percentage / 100).clamp(0.0, 1.0);

    if (value <= 0.35) {
      return Color.lerp(
        const Color(0xFFE5484D),
        const Color(0xFFF08A4B),
        value / 0.35,
      )!;
    }

    if (value <= 0.65) {
      return Color.lerp(
        const Color(0xFFF08A4B),
        const Color(0xFFE3B84D),
        (value - 0.35) / 0.30,
      )!;
    }

    return Color.lerp(
      const Color(0xFFE3B84D),
      const Color(0xFF36B982),
      (value - 0.65) / 0.35,
    )!;
  }

  String label(Organ organ) {
    switch (organ) {
      case Organ.brain:
        return 'Brain';
      case Organ.heart:
        return 'Heart';
      case Organ.liver:
        return 'Liver';
      case Organ.gut:
        return 'Gut';
      case Organ.kidneys:
        return 'Kidneys';
      case Organ.skin:
        return 'Skin';
    }
  }
}

// =============================================================
// SVG DATA
// =============================================================

class _SvgPathData {
  const _SvgPathData({
    required this.id,
    required this.path,
    required this.fill,
    this.opacity = 1,
  });

  final String id;
  final Path path;
  final Color? fill;
  final double opacity;
}

// =============================================================
// BODY SHAPES
// =============================================================

class BodyShapes {
  BodyShapes._({
    required this.bodyPaths,
    required this.lungPaths,
    required this.organPaths,
    required this.viewBox,
  });

  final List<_SvgPathData> bodyPaths;
  final List<_SvgPathData> lungPaths;
  final Map<Organ, List<Path>> organPaths;
  final Rect viewBox;

  static BodyShapes? _cached;

  // ===========================================================
  // ASSETS
  // ===========================================================

  static const String bodyAsset =
      'assets/body/body.svg';

  static const String organDirectory =
      'assets/body/organs/';

  static const Map<Organ, String> organAssets = {
    Organ.brain:
        '${organDirectory}brain.svg',

    Organ.heart:
        '${organDirectory}heart.svg',

    Organ.liver:
        '${organDirectory}liver.svg',

    Organ.gut:
        '${organDirectory}gut.svg',

    Organ.kidneys:
        '${organDirectory}kidneys.svg',
  };

  // ===========================================================
  // ORGAN POSITIONS
  // ===========================================================
  //
  // IMPORTANT:
  //
  // kidneys.svg contains ONLY ONE kidney.
  //
  // Therefore we create TWO separate slots:
  // left kidney + right kidney.
  //
  // Gut stays in the center.
  // ===========================================================

  static const Map<Organ, Rect> organSlots = {
    Organ.brain: Rect.fromLTRB(
      740,
      100,
      1038,
      350,
    ),

    Organ.heart: Rect.fromLTRB(
      775,
      795,
      985,
      1065,
    ),

    Organ.liver: Rect.fromLTRB(
      620,
      1060,
      960,
      1295,
    ),

    Organ.gut: Rect.fromLTRB(
      740,
      1205,
      1040,
      1655,
    ),
  };

  // LEFT KIDNEY
  //
  // Anatomically positioned beside the left side
  // of the spine and slightly higher.
  static const Rect leftKidneySlot =
      Rect.fromLTRB(
    615,
    1335,
    785,
    1535,
  );

  // RIGHT KIDNEY
  //
  // Slightly lower than the left kidney,
  // which gives a more natural anatomical position.
  static const Rect rightKidneySlot =
      Rect.fromLTRB(
    995,
    1370,
    1165,
    1570,
  );

  // ===========================================================
  // LABEL POSITIONS
  // ===========================================================

  static const Map<Organ, Offset> labelPositions = {
    Organ.brain: Offset(
      889,
      350,
    ),

    Organ.heart: Offset(
      1015,
      900,
    ),

    Organ.liver: Offset(
      620,
      1170,
    ),

    Organ.gut: Offset(
      1035,
      1425,
    ),

    Organ.kidneys: Offset(
      1080,
      1590,
    ),

    Organ.skin: Offset.zero,
  };

  // ===========================================================
  // LOAD
  // ===========================================================

  static Future<BodyShapes> load() async {
    if (_cached != null) {
      return _cached!;
    }

    final bodySvg =
        await rootBundle.loadString(
      bodyAsset,
    );

    final viewBox =
        _readViewBox(bodySvg);

    final allBodyPaths =
        _readPaths(bodySvg);

    final bodyPaths =
        <_SvgPathData>[];

    final lungPaths =
        <_SvgPathData>[];

    for (final item in allBodyPaths) {
      final id =
          item.id.toLowerCase();

      final isLung =
          id.startsWith('lung') ||
          id.contains('lung');

      if (isLung) {
        lungPaths.add(item);
      } else {
        bodyPaths.add(item);
      }
    }

    // ---------------------------------------------------------
    // LOAD ORGANS
    // ---------------------------------------------------------

    final organPaths =
        <Organ, List<Path>>{};

    for (final entry
        in organAssets.entries) {
      final organ = entry.key;
      final asset = entry.value;

      try {
        final svg =
            await rootBundle.loadString(
          asset,
        );

        final sourcePaths =
            _loadOrganSvg(svg);

        if (sourcePaths.isEmpty) {
          debugPrint(
            'BodyRecovery: '
            'No visible paths found in $asset',
          );
          continue;
        }

        // -----------------------------------------------------
        // NORMAL ORGANS
        // -----------------------------------------------------

        if (organ != Organ.kidneys) {
          final slot =
              organSlots[organ];

          if (slot == null) {
            organPaths[organ] =
                sourcePaths;
          } else {
            organPaths[organ] =
                _fit(
              sourcePaths,
              slot,
            );
          }

          continue;
        }

        // -----------------------------------------------------
        // KIDNEYS
        // -----------------------------------------------------
        //
        // kidneys.svg contains ONE kidney only.
        //
        // Create two copies:
        //
        // 1. Left kidney
        // 2. Right kidney
        //
        // The right one is horizontally mirrored.
        // -----------------------------------------------------

        final leftKidney =
            _fit(
          sourcePaths,
          leftKidneySlot,
        );

        final rightKidney =
            _fitMirroredHorizontal(
          sourcePaths,
          rightKidneySlot,
        );

        organPaths[Organ.kidneys] = [
          ...leftKidney,
          ...rightKidney,
        ];

        debugPrint(
          'BodyRecovery: '
          'Loaded TWO kidneys from $asset',
        );
      } catch (e) {
        debugPrint(
          'BodyRecovery: '
          'Could not load $asset\n$e',
        );
      }
    }

    final shapes = BodyShapes._(
      bodyPaths: bodyPaths,
      lungPaths: lungPaths,
      organPaths: organPaths,
      viewBox: viewBox,
    );

    _cached = shapes;

    return shapes;
  }

  // ===========================================================
  // CLEAR CACHE
  // ===========================================================

  static void clearCache() {
    _cached = null;
  }

  // ===========================================================
  // SVG PARSING
  // ===========================================================

  static List<_SvgPathData> _readPaths(
    String svg,
  ) {
    final results =
        <_SvgPathData>[];

    final pathRegex = RegExp(
      r'<path\b([^>]*)\/?>',
      caseSensitive: false,
      multiLine: true,
    );

    for (final match
        in pathRegex.allMatches(svg)) {
      final attributes =
          match.group(1) ?? '';

      final d =
          _attribute(
        attributes,
        'd',
      );

      if (d == null ||
          d.trim().isEmpty) {
        continue;
      }

      try {
        final path =
            parseSvgPathData(d);

        final id =
            _attribute(
                  attributes,
                  'id',
                ) ??
                '';

        final fillValue =
            _attribute(
          attributes,
          'fill',
        );

        final fill =
            _parseColor(
          fillValue,
        );

        final opacityValue =
            _attribute(
          attributes,
          'opacity',
        );

        final opacity =
            double.tryParse(
                  opacityValue ?? '',
                ) ??
                1.0;

        results.add(
          _SvgPathData(
            id: id,
            path: path,
            fill: fill,
            opacity:
                opacity.clamp(
              0.0,
              1.0,
            ),
          ),
        );
      } catch (e) {
        debugPrint(
          'BodyRecovery: '
          'Failed to parse SVG path: $e',
        );
      }
    }

    return results;
  }

  // ===========================================================
  // ORGAN SVG
  // ===========================================================

  static List<Path> _loadOrganSvg(
    String svg,
  ) {
    final parsed =
        _readPaths(svg);

    return parsed
        .where(
          (item) => item.opacity > 0,
        )
        .map(
          (item) => item.path,
        )
        .toList();
  }

  // ===========================================================
  // ATTRIBUTE
  // ===========================================================

  static String? _attribute(
    String attributes,
    String name,
  ) {
    final regex = RegExp(
      '$name\\s*=\\s*[\'"]([^\'"]*)[\'"]',
      caseSensitive: false,
    );

    return regex
        .firstMatch(attributes)
        ?.group(1);
  }

  // ===========================================================
  // VIEWBOX
  // ===========================================================

  static Rect _readViewBox(
    String svg,
  ) {
    final root =
        _rootAttributes(svg);

    final viewBox =
        _attribute(
      root,
      'viewBox',
    );

    if (viewBox != null) {
      final values = viewBox
          .trim()
          .split(
            RegExp(r'[\s,]+'),
          )
          .map(
            double.tryParse,
          )
          .whereType<double>()
          .toList();

      if (values.length == 4) {
        return Rect.fromLTWH(
          values[0],
          values[1],
          values[2],
          values[3],
        );
      }
    }

    final width =
        double.tryParse(
              _attribute(
                    root,
                    'width',
                  ) ??
                  '',
            ) ??
            300;

    final height =
        double.tryParse(
              _attribute(
                    root,
                    'height',
                  ) ??
                  '',
            ) ??
            600;

    return Rect.fromLTWH(
      0,
      0,
      width,
      height,
    );
  }

  static String _rootAttributes(
    String svg,
  ) {
    final match = RegExp(
      r'<svg\b([^>]*)>',
      caseSensitive: false,
    ).firstMatch(svg);

    return match?.group(1) ?? '';
  }

  // ===========================================================
  // COLOR
  // ===========================================================

  static Color? _parseColor(
    String? value,
  ) {
    if (value == null) {
      return null;
    }

    final v =
        value.trim().toLowerCase();

    if (v.isEmpty ||
        v == 'none') {
      return Colors.transparent;
    }

    if (v == 'black') {
      return Colors.black;
    }

    if (v == 'white') {
      return Colors.white;
    }

    if (v == 'red') {
      return Colors.red;
    }

    if (v == 'green') {
      return Colors.green;
    }

    if (v == 'blue') {
      return Colors.blue;
    }

    if (v.startsWith('#')) {
      var hex =
          v.substring(1);

      if (hex.length == 3) {
        hex = hex
            .split('')
            .map(
              (c) => '$c$c',
            )
            .join();
      }

      if (hex.length == 6) {
        return Color(
          int.parse(
            'FF$hex',
            radix: 16,
          ),
        );
      }

      if (hex.length == 8) {
        return Color(
          int.parse(
            hex,
            radix: 16,
          ),
        );
      }
    }

    return null;
  }

  // ===========================================================
  // FIT ORGAN
  // ===========================================================

  static List<Path> _fit(
    List<Path> paths,
    Rect target,
  ) {
    if (paths.isEmpty) {
      return const [];
    }

    final sourceBounds =
        _boundsOf(paths);

    if (sourceBounds.width <= 0 ||
        sourceBounds.height <= 0) {
      return paths;
    }

    final scaleX =
        target.width /
            sourceBounds.width;

    final scaleY =
        target.height /
            sourceBounds.height;

    final scale =
        math.min(
      scaleX,
      scaleY,
    );

    final scaledWidth =
        sourceBounds.width * scale;

    final scaledHeight =
        sourceBounds.height * scale;

    final dx =
        target.left +
        (target.width -
                scaledWidth) /
            2 -
        sourceBounds.left * scale;

    final dy =
        target.top +
        (target.height -
                scaledHeight) /
            2 -
        sourceBounds.top * scale;

    final matrix =
        Matrix4.identity()
          ..translate(
            dx,
            dy,
          )
          ..scale(
            scale,
            scale,
          );

    return paths
        .map(
          (path) =>
              path.transform(
            matrix.storage,
          ),
        )
        .toList();
  }

  // ===========================================================
  // FIT + HORIZONTAL MIRROR
  // ===========================================================
  //
  // Used for the second kidney.
  // ===========================================================

  static List<Path> _fitMirroredHorizontal(
    List<Path> paths,
    Rect target,
  ) {
    if (paths.isEmpty) {
      return const [];
    }

    final sourceBounds =
        _boundsOf(paths);

    if (sourceBounds.width <= 0 ||
        sourceBounds.height <= 0) {
      return paths;
    }

    final scaleX =
        target.width /
            sourceBounds.width;

    final scaleY =
        target.height /
            sourceBounds.height;

    final scale =
        math.min(
      scaleX,
      scaleY,
    );

    final scaledWidth =
        sourceBounds.width * scale;

    final scaledHeight =
        sourceBounds.height * scale;

    final left =
        target.left +
        (target.width -
                scaledWidth) /
            2;

    final top =
        target.top +
        (target.height -
                scaledHeight) /
            2;

    final right =
        left + scaledWidth;

    // First fit the kidney.
    final fitDx =
        left -
        sourceBounds.left * scale;

    final fitDy =
        top -
        sourceBounds.top * scale;

    final fitMatrix =
        Matrix4.identity()
          ..translate(
            fitDx,
            fitDy,
          )
          ..scale(
            scale,
            scale,
          );

    final fitted =
        paths
            .map(
              (path) =>
                  path.transform(
                fitMatrix.storage,
              ),
            )
            .toList();

    // Mirror around the center of the target.
    final centerX =
        left + scaledWidth / 2;

    final mirrorMatrix =
        Matrix4.identity()
          ..translate(
            centerX,
            0,
          )
          ..scale(
            -1,
            1,
          )
          ..translate(
            -centerX,
            0,
          );

    return fitted
        .map(
          (path) =>
              path.transform(
            mirrorMatrix.storage,
          ),
        )
        .toList();
  }

  // ===========================================================
  // BOUNDS
  // ===========================================================

  static Rect _boundsOf(
    List<Path> paths,
  ) {
    if (paths.isEmpty) {
      return Rect.zero;
    }

    var bounds =
        paths.first.getBounds();

    for (var i = 1;
        i < paths.length;
        i++) {
      bounds =
          bounds.expandToInclude(
        paths[i].getBounds(),
      );
    }

    return bounds;
  }

  // ===========================================================
  // HIT TEST
  // ===========================================================

  Organ hit(
    Offset point,
  ) {
    final order = <Organ>[
      Organ.brain,
      Organ.heart,
      Organ.kidneys,
      Organ.liver,
      Organ.gut,
    ];

    for (final organ in order) {
      final paths =
          organPaths[organ];

      if (paths == null) {
        continue;
      }

      for (final path in paths) {
        if (path.contains(point)) {
          return organ;
        }
      }
    }

    for (final item in bodyPaths) {
      if (item.path.contains(point)) {
        return Organ.skin;
      }
    }

    return Organ.skin;
  }
}

// =============================================================
// BODY PAINTER
// =============================================================

class _BodyPainter extends CustomPainter {
  _BodyPainter({
    required this.shapes,
    required this.recovery,
    required this.selectedOrgan,
    required this.animationValue,
  });

  final BodyShapes shapes;
  final BodyRecovery recovery;
  final Organ? selectedOrgan;
  final double animationValue;

  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    final viewBox =
        shapes.viewBox;

    const visibleBodyHeight = 1700.0;

    final scaleX =
        size.width /
            viewBox.width;

    final scaleY =
        size.height /
            visibleBodyHeight;

    final scale =
        math.min(
      scaleX,
      scaleY,
    );

    final dx =
        (size.width -
                viewBox.width *
                    scale) /
            2;

    const dy = 0.0;

    canvas.save();

    canvas.clipRect(
      Rect.fromLTWH(
        0,
        0,
        size.width,
        size.height,
      ),
    );

    canvas.translate(
      dx,
      dy,
    );

    canvas.scale(
      scale,
    );

    _drawBodyBase(canvas);

    _drawLungs(canvas);

    _drawSkinRecovery(canvas);

    // =========================================================
    // IMPORTANT DRAW ORDER
    // =========================================================
    //
    // Kidneys are drawn LAST so the center gut cannot cover them.
    // =========================================================

    for (final organ in [
      Organ.brain,
      Organ.heart,
      Organ.liver,
      Organ.gut,
      Organ.kidneys,
    ]) {
      _drawOrgan(
        canvas,
        organ,
      );
    }

    _drawLabels(canvas);

    canvas.restore();
  }

  // ===========================================================
  // BODY BASE
  // ===========================================================

  void _drawBodyBase(
    Canvas canvas,
  ) {
    // Dark body interior.
    //
    // NO GREEN FILL.
    for (final item
        in shapes.bodyPaths) {
      final paint = Paint()
        ..style =
            PaintingStyle.fill
        ..color =
            const Color(
          0xFF071F24,
        ).withValues(
          alpha:
              0.82 *
              item.opacity,
        );

      canvas.drawPath(
        item.path,
        paint,
      );
    }

    // Very subtle green edge glow only.
    for (final item
        in shapes.bodyPaths) {
      final glowPaint = Paint()
        ..style =
            PaintingStyle.stroke
        ..strokeWidth = 12
        ..color =
            const Color(
          0xFF43D6A8,
        ).withValues(
          alpha: 0.07,
        )
        ..maskFilter =
            const MaskFilter.blur(
          BlurStyle.normal,
          14,
        );

      canvas.drawPath(
        item.path,
        glowPaint,
      );
    }

    // Body outline.
    for (final item
        in shapes.bodyPaths) {
      final outlinePaint = Paint()
        ..style =
            PaintingStyle.stroke
        ..strokeWidth = 6
        ..color =
            const Color(
          0xFF42C7A5,
        ).withValues(
          alpha: 0.58,
        );

      canvas.drawPath(
        item.path,
        outlinePaint,
      );
    }
  }

  // ===========================================================
  // LUNGS
  // ===========================================================

  void _drawLungs(
    Canvas canvas,
  ) {
    for (final item
        in shapes.lungPaths) {
      final paint = Paint()
        ..style =
            PaintingStyle.fill
        ..color =
            const Color(
          0xFF8AD9D3,
        ).withValues(
          alpha:
              0.10 *
              item.opacity,
        );

      canvas.drawPath(
        item.path,
        paint,
      );
    }
  }

  // ===========================================================
  // ORGAN
  // ===========================================================

  void _drawOrgan(
    Canvas canvas,
    Organ organ,
  ) {
    final paths =
        shapes.organPaths[organ];

    if (paths == null ||
        paths.isEmpty) {
      return;
    }

    final percentage =
        recovery.percent(
      organ,
    );

    final recoveryColor =
        recovery.colorFor(
      percentage,
    );

    final isSelected =
        selectedOrgan == organ;

    final bounds =
        _combinedBounds(paths);

    final progress =
        (percentage / 100).clamp(
      0.0,
      1.0,
    );

    // ---------------------------------------------------------
    // ORGAN BASE
    // ---------------------------------------------------------

    final normalBaseColor =
        Color.lerp(
      const Color(0xFFB84B50),
      const Color(0xFF4BAF82),
      progress * 0.55,
    )!;

    final baseColor =
        isSelected
            ? Color.lerp(
                normalBaseColor,
                Colors.white,
                0.12,
              )!
            : normalBaseColor;

    final basePaint = Paint()
      ..style =
          PaintingStyle.fill
      ..color =
          baseColor.withValues(
        alpha: 0.88,
      );

    for (final path in paths) {
      canvas.drawPath(
        path,
        basePaint,
      );
    }

    // ---------------------------------------------------------
    // RECOVERY FILL
    // ---------------------------------------------------------

    if (progress > 0) {
      final recoveryTop =
          bounds.bottom -
          bounds.height *
              progress;

      final gradient =
          LinearGradient(
        begin:
            Alignment.bottomCenter,
        end:
            Alignment.topCenter,
        colors: [
          recoveryColor.withValues(
            alpha: 0.90,
          ),
          recoveryColor.withValues(
            alpha: 0.52,
          ),
          recoveryColor.withValues(
            alpha: 0.08,
          ),
          Colors.transparent,
        ],
        stops: const [
          0.0,
          0.45,
          0.78,
          1.0,
        ],
      );

      final recoveryPaint =
          Paint()
            ..style =
                PaintingStyle.fill
            ..shader =
                gradient.createShader(
              Rect.fromLTRB(
                bounds.left,
                recoveryTop,
                bounds.right,
                bounds.bottom,
              ),
            );

      for (final path in paths) {
        canvas.drawPath(
          path,
          recoveryPaint,
        );
      }
    }

    // ---------------------------------------------------------
    // HEALTH GLOW
    // ---------------------------------------------------------

    if (progress > 0.05) {
      final glowPaint = Paint()
        ..style =
            PaintingStyle.fill
        ..color =
            recoveryColor.withValues(
          alpha:
              isSelected
                  ? 0.18
                  : 0.055,
        )
        ..maskFilter =
            MaskFilter.blur(
          BlurStyle.normal,
          isSelected ? 16 : 7,
        );

      for (final path in paths) {
        canvas.drawPath(
          path,
          glowPaint,
        );
      }
    }

    // ---------------------------------------------------------
    // SELECTED ORGAN
    // ---------------------------------------------------------

    if (isSelected) {
      final pulse =
          0.65 +
          0.20 *
              math.sin(
                animationValue *
                    math.pi *
                    2,
              );

      final selectedGlowPaint =
          Paint()
            ..style =
                PaintingStyle.stroke
            ..strokeWidth = 9
            ..color =
                recoveryColor.withValues(
              alpha: pulse,
            )
            ..maskFilter =
                const MaskFilter.blur(
              BlurStyle.normal,
              3,
            );

      for (final path in paths) {
        canvas.drawPath(
          path,
          selectedGlowPaint,
        );
      }

      final selectedOutlinePaint =
          Paint()
            ..style =
                PaintingStyle.stroke
            ..strokeWidth = 4
            ..color =
                Colors.white.withValues(
              alpha: 0.72,
            );

      for (final path in paths) {
        canvas.drawPath(
          path,
          selectedOutlinePaint,
        );
      }
    }
  }

  // ===========================================================
  // SKIN RECOVERY
  // ===========================================================

  void _drawSkinRecovery(
    Canvas canvas,
  ) {
    final percentage =
        recovery.percent(
      Organ.skin,
    );

    final color =
        recovery.colorFor(
      percentage,
    );

    final bounds =
        _combinedBodyBounds();

    final progress =
        (percentage / 100).clamp(
      0.0,
      1.0,
    );

    if (progress <= 0) {
      return;
    }

    final top =
        bounds.bottom -
        bounds.height *
            progress;

    final shader =
        LinearGradient(
      begin:
          Alignment.bottomCenter,
      end:
          Alignment.topCenter,
      colors: [
        color.withValues(
          alpha: 0.22,
        ),
        color.withValues(
          alpha: 0.08,
        ),
        Colors.transparent,
      ],
    ).createShader(
      Rect.fromLTRB(
        bounds.left,
        top,
        bounds.right,
        bounds.bottom,
      ),
    );

    final paint = Paint()
      ..style =
          PaintingStyle.fill
      ..shader = shader;

    for (final item
        in shapes.bodyPaths) {
      canvas.drawPath(
        item.path,
        paint,
      );
    }

    if (selectedOrgan ==
        Organ.skin) {
      final selectedPaint =
          Paint()
            ..style =
                PaintingStyle.stroke
            ..strokeWidth = 12
            ..color =
                color.withValues(
              alpha: 0.75,
            )
            ..maskFilter =
                const MaskFilter.blur(
              BlurStyle.normal,
              5,
            );

      for (final item
          in shapes.bodyPaths) {
        canvas.drawPath(
          item.path,
          selectedPaint,
        );
      }
    }
  }

  // ===========================================================
  // LABELS
  // ===========================================================

  void _drawLabels(
    Canvas canvas,
  ) {
    final textPainter =
        TextPainter(
      textDirection:
          TextDirection.ltr,
      textAlign:
          TextAlign.center,
    );

    for (final organ in [
      Organ.brain,
      Organ.heart,
      Organ.liver,
      Organ.gut,
      Organ.kidneys,
    ]) {
      final position =
          BodyShapes.labelPositions[
              organ];

      if (position == null) {
        continue;
      }

      final percentage =
          recovery.percent(
        organ,
      );

      final color =
          recovery.colorFor(
        percentage,
      );

      final isSelected =
          selectedOrgan == organ;

      textPainter.text =
          TextSpan(
        text:
            '${percentage.round()}%',
        style: TextStyle(
          color:
              Colors.white.withValues(
            alpha:
                isSelected
                    ? 1
                    : 0.92,
          ),
          fontSize:
              isSelected
                  ? 46
                  : 40,
          fontWeight:
              FontWeight.w800,
          shadows: const [
            Shadow(
              blurRadius: 8,
              color:
                  Colors.black54,
            ),
          ],
        ),
      );

      textPainter.layout();

      textPainter.paint(
        canvas,
        Offset(
          position.dx -
              textPainter.width /
                  2,
          position.dy -
              textPainter.height /
                  2,
        ),
      );

      final dotPaint = Paint()
        ..style =
            PaintingStyle.fill
        ..color = color;

      canvas.drawCircle(
        Offset(
          position.dx,
          position.dy +
              textPainter.height *
                  0.70,
        ),
        isSelected ? 6 : 4,
        dotPaint,
      );
    }
  }

  // ===========================================================
  // BOUNDS
  // ===========================================================

  Rect _combinedBounds(
    List<Path> paths,
  ) {
    if (paths.isEmpty) {
      return Rect.zero;
    }

    var result =
        paths.first.getBounds();

    for (var i = 1;
        i < paths.length;
        i++) {
      result =
          result.expandToInclude(
        paths[i].getBounds(),
      );
    }

    return result;
  }

  Rect _combinedBodyBounds() {
    if (shapes.bodyPaths.isEmpty) {
      return Rect.zero;
    }

    var result =
        shapes.bodyPaths.first.path
            .getBounds();

    for (var i = 1;
        i < shapes.bodyPaths.length;
        i++) {
      result =
          result.expandToInclude(
        shapes.bodyPaths[i]
            .path
            .getBounds(),
      );
    }

    return result;
  }

  @override
  bool shouldRepaint(
    covariant _BodyPainter oldDelegate,
  ) {
    return oldDelegate.selectedOrgan !=
            selectedOrgan ||
        oldDelegate.animationValue !=
            animationValue ||
        oldDelegate.recovery.daysSober !=
            recovery.daysSober ||
        oldDelegate.recovery.drinkingLevel !=
            recovery.drinkingLevel;
  }
}

// =============================================================
// BODY RECOVERY VIEW
// =============================================================

class BodyRecoveryView
    extends StatefulWidget {
  const BodyRecoveryView({
    super.key,
    required this.daysSober,
    this.drinkingLevel =
        DrinkingLevel.regular,
  });

  final int daysSober;
  final DrinkingLevel drinkingLevel;

  @override
  State<BodyRecoveryView>
      createState() =>
          _BodyRecoveryViewState();
}

class _BodyRecoveryViewState
    extends State<BodyRecoveryView>
    with SingleTickerProviderStateMixin {
  Organ? _selectedOrgan;

  late final AnimationController
      _pulseController;

  late final Future<BodyShapes>
      _bodyShapesFuture;

  @override
  void initState() {
    super.initState();

    _bodyShapesFuture =
        BodyShapes.load();

    _pulseController =
        AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 2200,
      ),
    )..repeat();
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  BodyRecovery get _recovery =>
      BodyRecovery(
        daysSober:
            widget.daysSober,
        drinkingLevel:
            widget.drinkingLevel,
      );

  @override
  Widget build(
    BuildContext context,
  ) {
    final l10n =
        AppLocalizations.of(
      context,
    )!;

    final recovery =
        _recovery;

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                l10n.bodyRebuildingTitle,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight:
                      FontWeight.w800,
                  color:
                      const Color(
                    0xFF173B40,
                  ),
                ),
              ),
            ),
            _overallPill(
              recovery.overall,
            ),
          ],
        ),

        SizedBox(
          height: 12.h,
        ),

        AnimatedSwitcher(
          duration:
              const Duration(
            milliseconds: 260,
          ),
          switchInCurve:
              Curves.easeOutCubic,
          switchOutCurve:
              Curves.easeInCubic,
          child:
              _selectedOrgan ==
                      null
                  ? _hint()
                  : _infoPanel(
                      _selectedOrgan!,
                      recovery,
                    ),
        ),

        SizedBox(
          height: 18.h,
        ),

        _figure(recovery),

        SizedBox(
          height: 18.h,
        ),

        _organRows(recovery),

        SizedBox(
          height: 14.h,
        ),

        _estimatedFooter(),
      ],
    );
  }

  // ===========================================================
  // OVERALL PILL
  // ===========================================================

  Widget _overallPill(
    double percentage,
  ) {
    final color =
        _recovery.colorFor(
      percentage,
    );

    return AnimatedContainer(
      duration:
          const Duration(
        milliseconds: 350,
      ),
      curve:
          Curves.easeOutCubic,
      padding:
          EdgeInsets.symmetric(
        horizontal: 13.w,
        vertical: 7.h,
      ),
      decoration:
          BoxDecoration(
        color:
            color.withValues(
          alpha: 0.12,
        ),
        borderRadius:
            BorderRadius.circular(
          30.r,
        ),
        border:
            Border.all(
          color:
              color.withValues(
            alpha: 0.28,
          ),
        ),
      ),
      child: Text(
        '${percentage.round()}%',
        style: TextStyle(
          fontSize: 13.sp,
          fontWeight:
              FontWeight.w800,
          color: color,
        ),
      ),
    );
  }

  // ===========================================================
  // HINT
  // ===========================================================

  Widget _hint() {
    return Container(
      key:
          const ValueKey(
        'hint',
      ),
      padding:
          EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 11.h,
      ),
      decoration:
          BoxDecoration(
        color:
            const Color(
          0xFFF1F8F6,
        ),
        borderRadius:
            BorderRadius.circular(
          14.r,
        ),
        border:
            Border.all(
          color:
              const Color(
            0xFFD7ECE6,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 30.w,
            height: 30.w,
            decoration:
                BoxDecoration(
              shape:
                  BoxShape.circle,
              color:
                  const Color(
                0xFF36B982,
              ).withValues(
                alpha: 0.12,
              ),
            ),
            child: Icon(
              Icons
                  .touch_app_rounded,
              size: 17.sp,
              color:
                  const Color(
                0xFF36B982,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Text(
              'Tap an organ to see its recovery progress.',
              style: TextStyle(
                fontSize: 12.5.sp,
                height: 1.35,
                fontWeight:
                    FontWeight.w600,
                color:
                    const Color(
                  0xFF557276,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================
  // INFO PANEL
  // ===========================================================

  Widget _infoPanel(
    Organ organ,
    BodyRecovery recovery,
  ) {
    final percentage =
        recovery.percent(
      organ,
    );

    final color =
        recovery.colorFor(
      percentage,
    );

    return Container(
      key: ValueKey(
        'info_${organ.name}',
      ),
      padding:
          EdgeInsets.all(14.w),
      decoration:
          BoxDecoration(
        color:
            color.withValues(
          alpha: 0.08,
        ),
        borderRadius:
            BorderRadius.circular(
          16.r,
        ),
        border:
            Border.all(
          color:
              color.withValues(
            alpha: 0.24,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration:
                BoxDecoration(
              shape:
                  BoxShape.circle,
              color:
                  color.withValues(
                alpha: 0.14,
              ),
            ),
            child: Icon(
              _organIcon(organ),
              color: color,
              size: 21.sp,
            ),
          ),
          SizedBox(
            width: 11.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment
                      .start,
              children: [
                Text(
                  recovery.label(
                    organ,
                  ),
                  style: TextStyle(
                    fontSize:
                        14.5.sp,
                    fontWeight:
                        FontWeight.w800,
                    color:
                        const Color(
                      0xFF173B40,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  '${percentage.round()}% recovered',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight:
                        FontWeight.w600,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _selectedOrgan =
                    null;
              });
            },
            icon: Icon(
              Icons
                  .close_rounded,
              size: 19.sp,
              color:
                  const Color(
                0xFF789093,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================
  // BODY FIGURE
  // ===========================================================

  Widget _figure(
    BodyRecovery recovery,
  ) {
    return FutureBuilder<BodyShapes>(
      future: _bodyShapesFuture,
      builder: (
        context,
        snapshot,
      ) {
        if (snapshot
                .connectionState !=
            ConnectionState.done) {
          return SizedBox(
            height: 420.h,
            child:
                const Center(
              child:
                  CircularProgressIndicator(),
            ),
          );
        }

        if (snapshot.hasError ||
            !snapshot.hasData) {
          return SizedBox(
            height: 420.h,
            child: Center(
              child: Padding(
                padding:
                    EdgeInsets.all(
                  20.w,
                ),
                child: Text(
                  'Unable to load body artwork.\n\n'
                  'ERROR:\n${snapshot.error}',
                  textAlign:
                      TextAlign.center,
                  style:
                      TextStyle(
                    fontSize:
                        12.sp,
                    height: 1.4,
                    color:
                        const Color(
                      0xFF718588,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        final shapes =
            snapshot.data!;

        final width =
            340.w;

        const visibleBodyHeight = 1700.0;

        final height =
            width *
                visibleBodyHeight /
                shapes.viewBox.width;

        return Center(
          child:
              GestureDetector(
            behavior:
                HitTestBehavior.opaque,
            onTapUp:
                (details) {
              final renderBox =
                  context.findRenderObject()
                      as RenderBox;

              final local =
                  renderBox
                      .globalToLocal(
                details
                    .globalPosition,
              );

              final figureLeft =
                  (MediaQuery.of(
                            context,
                          ).size.width -
                      width) /
                  2;

              final figurePoint =
                  Offset(
                local.dx -
                    figureLeft,
                local.dy,
              );

              final viewScale =
                  width /
                      shapes
                          .viewBox
                          .width;

              final svgPoint =
                  Offset(
                figurePoint.dx /
                    viewScale,
                figurePoint.dy /
                    viewScale,
              );

              final hit =
                  shapes.hit(
                svgPoint,
              );

              setState(() {
                _selectedOrgan =
                    hit;
              });
            },
            child:
                AnimatedContainer(
              duration:
                  const Duration(
                milliseconds: 350,
              ),
              curve:
                  Curves.easeOutCubic,
              width: width,
              height: height,
              child:
                  AnimatedBuilder(
                animation:
                    _pulseController,
                builder:
                    (
                  context,
                  child,
                ) {
                  return CustomPaint(
                    painter:
                        _BodyPainter(
                      shapes:
                          shapes,
                      recovery:
                          recovery,
                      selectedOrgan:
                          _selectedOrgan,
                      animationValue:
                          _pulseController
                              .value,
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  // ===========================================================
  // ORGAN ROWS
  // ===========================================================

  Widget _organRows(
    BodyRecovery recovery,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _chip(
                Organ.brain,
                recovery,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: _chip(
                Organ.heart,
                recovery,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: _chip(
                Organ.liver,
                recovery,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            Expanded(
              child: _chip(
                Organ.gut,
                recovery,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: _chip(
                Organ.kidneys,
                recovery,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: _chip(
                Organ.skin,
                recovery,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // ===========================================================
  // ORGAN CHIP
  // ===========================================================

  Widget _chip(
    Organ organ,
    BodyRecovery recovery,
  ) {
    final percentage =
        recovery.percent(
      organ,
    );

    final color =
        recovery.colorFor(
      percentage,
    );

    final selected =
        _selectedOrgan == organ;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedOrgan =
              selected
                  ? null
                  : organ;
        });
      },
      child:
          AnimatedContainer(
        duration:
            const Duration(
          milliseconds: 260,
        ),
        curve:
            Curves.easeOutCubic,
        padding:
            EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 12.h,
        ),
        decoration:
            BoxDecoration(
          color: selected
              ? color.withValues(
                  alpha: 0.13,
                )
              : Colors.white,
          borderRadius:
              BorderRadius.circular(
            14.r,
          ),
          border:
              Border.all(
            color: selected
                ? color.withValues(
                    alpha: 0.55,
                  )
                : const Color(
                    0xFFE1ECE9,
                  ),
            width:
                selected
                    ? 1.4
                    : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withValues(
                alpha:
                    selected
                        ? 0.06
                        : 0.025,
              ),
              blurRadius:
                  selected
                      ? 10
                      : 6,
              offset:
                  const Offset(
                0,
                3,
              ),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 38.w,
              height: 38.w,
              decoration:
                  BoxDecoration(
                shape:
                    BoxShape.circle,
                color:
                    color.withValues(
                  alpha: 0.12,
                ),
              ),
              child: Icon(
                _organIcon(
                  organ,
                ),
                size: 19.sp,
                color: color,
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                children: [
                  Text(
                    recovery.label(
                      organ,
                    ),
                    maxLines: 1,
                    overflow:
                        TextOverflow
                            .ellipsis,
                    style: TextStyle(
                      fontSize:
                          13.sp,
                      fontWeight:
                          FontWeight.w700,
                      color:
                          const Color(
                        0xFF294B50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    '${percentage.round()}%',
                    style: TextStyle(
                      fontSize:
                          13.sp,
                      fontWeight:
                          FontWeight.w800,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ===========================================================
  // FOOTER
  // ===========================================================

  Widget _estimatedFooter() {
    return Container(
      padding:
          EdgeInsets.symmetric(
        horizontal: 13.w,
        vertical: 11.h,
      ),
      decoration:
          BoxDecoration(
        color:
            const Color(
          0xFFF7FAF9,
        ),
        borderRadius:
            BorderRadius.circular(
          14.r,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons
                .info_outline_rounded,
            size: 17.sp,
            color:
                const Color(
              0xFF7A9093,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Expanded(
            child: Text(
              'Recovery times are estimates and can vary from person to person.',
              style: TextStyle(
                fontSize: 10.8.sp,
                height: 1.35,
                fontWeight:
                    FontWeight.w500,
                color:
                    const Color(
                  0xFF718588,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===========================================================
  // ICONS
  // ===========================================================

  IconData _organIcon(
    Organ organ,
  ) {
    switch (organ) {
      case Organ.brain:
        return Icons
            .psychology_rounded;

      case Organ.heart:
        return Icons
            .favorite_rounded;

      case Organ.liver:
        return Icons
            .circle_rounded;

      case Organ.gut:
        return Icons
            .account_tree_rounded;

      case Organ.kidneys:
        return Icons
            .water_drop_rounded;

      case Organ.skin:
        return Icons
            .accessibility_new_rounded;
    }
  }
}

