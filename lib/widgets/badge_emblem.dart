import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../models/milestone_definition.dart';

// =============================================================
// SHARED BADGE LOOK (used by Badges screen + Milestone screen)
// =============================================================

class BadgeVisuals {
  BadgeVisuals._();

  /// Up to 14 days  -> hexagon with a number
  /// 15 - 179 days  -> shield with an icon
  /// 6 months+      -> premium gold seal with a ribbon
  static BadgeStyle styleForDays(int days) {
    if (days <= 14) return BadgeStyle.hex;
    if (days < 180) return BadgeStyle.shield;
    return BadgeStyle.premium;
  }

  static Color tierColor(BadgeTier tier) {
    switch (tier) {
      case BadgeTier.bronze:
        return const Color(0xFFB87A4B);
      case BadgeTier.silver:
        return const Color(0xFF9AA3AF);
      case BadgeTier.gold:
        return const Color(0xFFD9A441);
      case BadgeTier.platinum:
        return const Color(0xFF6C7BD1);
      case BadgeTier.diamond:
        return const Color(0xFF3FB6C9);
    }
  }
}

/// The exact badge of a sobriety milestone - same look everywhere.
class MilestoneBadge extends StatelessWidget {
  final MilestoneDefinition milestone;
  final double size;
  final bool locked;

  const MilestoneBadge({
    super.key,
    required this.milestone,
    required this.size,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = BadgeVisuals.styleForDays(milestone.days);

    return BadgeEmblem(
      size: size,
      color: BadgeVisuals.tierColor(milestone.tier),
      style: style,
      label: style == BadgeStyle.hex
          ? '${milestone.days}'
          : (style == BadgeStyle.premium ? milestone.shortLabel : null),
      icon: milestone.icon,
      locked: locked,
    );
  }
}

// =============================================================
// BADGE EMBLEM WIDGET (4 different looks)
// =============================================================

/// hex     -> hexagon with a number      (1, 3, 7, 14 days)
/// shield  -> shield with an icon        (30, 60, 90 days)
/// premium -> gold seal + gem + ribbon   (6 months and above)
/// medal   -> round medal with icon      (journey badges)
enum BadgeStyle { hex, shield, premium, medal }

/// When [locked] is true the badge is drawn faded/grey and a lock sits on
/// top of it, so the badge is still visible behind the lock.
class BadgeEmblem extends StatelessWidget {
  final double size;
  final Color color;
  final BadgeStyle style;
  final String? label; // hex: number in the middle, premium: ribbon text
  final IconData? icon;
  final bool locked;

  const BadgeEmblem({
    super.key,
    required this.size,
    required this.color,
    required this.style,
    this.label,
    this.icon,
    this.locked = false,
  });

  static const _greyscale = ColorFilter.matrix(<double>[
    0.2126, 0.7152, 0.0722, 0, 0, //
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0, 0, 0, 1, 0,
  ]);

  Widget _center() {
    if (style == BadgeStyle.hex && label != null) {
      return Text(
        label!,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: size * (label!.length > 2 ? 0.26 : 0.32),
        ),
      );
    }

    final iconSize = style == BadgeStyle.premium ? size * 0.34 : size * 0.38;
    return Icon(icon, color: Colors.white, size: iconSize);
  }

  Widget _ribbon() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size * 0.10,
        vertical: size * 0.02,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 0.10),
        gradient: const LinearGradient(
          colors: [Color(0xFFFFE7A3), Color(0xFFD9A441)],
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Text(
        label!,
        maxLines: 1,
        style: TextStyle(
          fontSize: size * 0.15,
          height: 1.1,
          fontWeight: FontWeight.w800,
          color: const Color(0xFF5A3D05),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final centerShift = switch (style) {
      BadgeStyle.shield => -0.08,
      BadgeStyle.premium => -0.10,
      _ => 0.0,
    };

    final Widget badge = SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: _EmblemPainter(
                color: color,
                style: style,
                glow: !locked,
              ),
            ),
          ),
          Align(alignment: Alignment(0, centerShift), child: _center()),
          if (style == BadgeStyle.premium && label != null)
            Align(alignment: Alignment.bottomCenter, child: _ribbon()),
        ],
      ),
    );

    if (!locked) return badge;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Faded badge behind the lock
          Opacity(
            opacity: 0.35,
            child: ColorFiltered(colorFilter: _greyscale, child: badge),
          ),
          // Lock on top
          Container(
            width: size * 0.36,
            height: size * 0.36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.45),
            ),
            child: Icon(
              Icons.lock_rounded,
              color: Colors.white,
              size: size * 0.2,
            ),
          ),
        ],
      ),
    );
  }
}

class _EmblemPainter extends CustomPainter {
  final Color color;
  final BadgeStyle style;
  final bool glow;

  const _EmblemPainter({
    required this.color,
    required this.style,
    required this.glow,
  });

  Color get _light => Color.lerp(color, Colors.white, 0.35)!;
  Color get _dark => Color.lerp(color, Colors.black, 0.30)!;
  Color get _innerLight => Color.lerp(color, Colors.black, 0.20)!;
  Color get _innerDark => Color.lerp(color, Colors.black, 0.45)!;

  static const _goldLight = Color(0xFFFFE7A3);
  static const _gold = Color(0xFFE0A93B);
  static const _goldDark = Color(0xFF9A6A12);

  @override
  void paint(Canvas canvas, Size size) {
    final s = size.width;
    switch (style) {
      case BadgeStyle.hex:
        _paintHex(canvas, s);
        break;
      case BadgeStyle.shield:
        _paintShield(canvas, s);
        break;
      case BadgeStyle.premium:
        _paintPremium(canvas, s);
        break;
      case BadgeStyle.medal:
        _paintMedal(canvas, s);
        break;
    }
  }

  // ---------------- HEX ----------------

  void _paintHex(Canvas canvas, double s) {
    final c = Offset(s / 2, s / 2);
    final r = s * 0.44;

    final outer = _polygon(c, r, 6);
    if (glow) _glow(canvas, outer, color, s * 0.12, 0.45);
    _solid(
      canvas,
      outer,
      Rect.fromCircle(center: c, radius: r),
      [_light, color, _dark],
      s * 0.06,
    );

    final ri = r * 0.76;
    final inner = _polygon(c, ri, 6);
    _solid(
      canvas,
      inner,
      Rect.fromCircle(center: c, radius: ri),
      [_innerLight, _innerDark],
      s * 0.04,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    _ring(canvas, inner);
  }

  // ---------------- SHIELD ----------------

  void _paintShield(Canvas canvas, double s) {
    final rect = Rect.fromLTWH(s * 0.11, s * 0.05, s * 0.78, s * 0.90);
    final outer = _shield(rect);
    if (glow) _glow(canvas, outer, color, s * 0.12, 0.45);
    _solid(canvas, outer, rect, [_light, color, _dark], s * 0.05);

    final innerRect = rect.deflate(s * 0.07);
    final inner = _shield(innerRect);
    _solid(
      canvas,
      inner,
      innerRect,
      [_innerLight, _innerDark],
      s * 0.03,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    _ring(canvas, inner);
  }

  // ---------------- MEDAL ----------------

  void _paintMedal(Canvas canvas, double s) {
    final c = Offset(s / 2, s / 2);
    final r = s * 0.44;
    final rect = Rect.fromCircle(center: c, radius: r);

    final outer = Path()..addOval(rect);
    if (glow) _glow(canvas, outer, color, s * 0.12, 0.40);
    _solid(canvas, outer, rect, [_light, color, _dark], 0);

    // dotted ring
    final dot = Paint()..color = Colors.white.withOpacity(0.55);
    const dots = 22;
    for (int i = 0; i < dots; i++) {
      final a = (math.pi * 2 / dots) * i;
      canvas.drawCircle(
        Offset(c.dx + r * 0.88 * math.cos(a), c.dy + r * 0.88 * math.sin(a)),
        s * 0.011,
        dot,
      );
    }

    final ri = r * 0.74;
    final innerRect = Rect.fromCircle(center: c, radius: ri);
    final inner = Path()..addOval(innerRect);
    _solid(
      canvas,
      inner,
      innerRect,
      [_innerLight, _innerDark],
      0,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    _ring(canvas, inner);
  }

  // ---------------- PREMIUM ----------------

  void _paintPremium(Canvas canvas, double s) {
    final c = Offset(s / 2, s * 0.46);
    final r = s * 0.44;
    final rect = Rect.fromCircle(center: c, radius: r);

    // Gold scalloped seal
    final seal = _seal(c, r, r * 0.90, 14);
    if (glow) _glow(canvas, seal, _gold, s * 0.14, 0.55);
    _solid(canvas, seal, rect, [_goldLight, _gold, _goldDark], s * 0.03);

    // Gem in the middle (uses the tier colour)
    final gemR = r * 0.74;
    final gemRect = Rect.fromCircle(center: c, radius: gemR);
    final gem = Path()..addOval(gemRect);
    canvas.drawPath(
      gem,
      Paint()
        ..shader = RadialGradient(
          center: const Alignment(-0.3, -0.4),
          radius: 1.0,
          colors: [_light, color, _innerDark],
        ).createShader(gemRect),
    );
    canvas.drawPath(
      gem,
      Paint()
        ..color = _goldLight
        ..style = PaintingStyle.stroke
        ..strokeWidth = s * 0.028,
    );
    canvas.drawCircle(
      c,
      gemR * 0.80,
      Paint()
        ..color = Colors.white.withOpacity(0.22)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1,
    );

    // Sparkles
    final sparkle = Paint()..color = Colors.white.withOpacity(0.92);
    canvas.drawPath(
      _sparkle(Offset(c.dx - r * 0.34, c.dy - r * 0.38), s * 0.06),
      sparkle,
    );
    canvas.drawPath(
      _sparkle(Offset(c.dx + r * 0.40, c.dy - r * 0.08), s * 0.035),
      sparkle,
    );
  }

  // ---------------- HELPERS ----------------

  void _solid(
    Canvas canvas,
    Path path,
    Rect rect,
    List<Color> colors,
    double stroke, {
    Alignment begin = Alignment.topLeft,
    Alignment end = Alignment.bottomRight,
  }) {
    final shader =
        LinearGradient(begin: begin, end: end, colors: colors).createShader(rect);

    canvas.drawPath(
      path,
      Paint()
        ..shader = shader
        ..style = PaintingStyle.fill,
    );

    if (stroke > 0) {
      canvas.drawPath(
        path,
        Paint()
          ..shader = shader
          ..style = PaintingStyle.stroke
          ..strokeWidth = stroke
          ..strokeJoin = StrokeJoin.round,
      );
    }
  }

  void _glow(Canvas canvas, Path path, Color c, double blur, double opacity) {
    canvas.drawPath(
      path,
      Paint()
        ..color = c.withOpacity(opacity)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, blur),
    );
  }

  void _ring(Canvas canvas, Path path) {
    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.white.withOpacity(0.18)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1,
    );
  }

  Path _polygon(Offset c, double r, int sides) {
    final path = Path();
    for (int i = 0; i < sides; i++) {
      final a = (math.pi * 2 / sides) * i - math.pi / 2;
      final p = Offset(c.dx + r * math.cos(a), c.dy + r * math.sin(a));
      if (i == 0) {
        path.moveTo(p.dx, p.dy);
      } else {
        path.lineTo(p.dx, p.dy);
      }
    }
    return path..close();
  }

  Path _seal(Offset c, double rOuter, double rInner, int points) {
    final path = Path();
    final n = points * 2;
    for (int i = 0; i < n; i++) {
      final r = i.isEven ? rOuter : rInner;
      final a = (math.pi * 2 / n) * i - math.pi / 2;
      final p = Offset(c.dx + r * math.cos(a), c.dy + r * math.sin(a));
      if (i == 0) {
        path.moveTo(p.dx, p.dy);
      } else {
        path.lineTo(p.dx, p.dy);
      }
    }
    return path..close();
  }

  Path _shield(Rect r) {
    final w = r.width;
    final h = r.height;
    final p = Path();
    p.moveTo(r.left + w * 0.5, r.top);
    p.cubicTo(
      r.left + w * 0.68, r.top + h * 0.10,
      r.left + w * 0.85, r.top + h * 0.13,
      r.right, r.top + h * 0.13,
    );
    p.lineTo(r.right, r.top + h * 0.50);
    p.cubicTo(
      r.right, r.top + h * 0.76,
      r.left + w * 0.70, r.top + h * 0.90,
      r.left + w * 0.5, r.bottom,
    );
    p.cubicTo(
      r.left + w * 0.30, r.top + h * 0.90,
      r.left, r.top + h * 0.76,
      r.left, r.top + h * 0.50,
    );
    p.lineTo(r.left, r.top + h * 0.13);
    p.cubicTo(
      r.left + w * 0.15, r.top + h * 0.13,
      r.left + w * 0.32, r.top + h * 0.10,
      r.left + w * 0.5, r.top,
    );
    return p..close();
  }

  Path _sparkle(Offset c, double r) {
    final k = r * 0.28;
    return Path()
      ..moveTo(c.dx, c.dy - r)
      ..lineTo(c.dx + k, c.dy - k)
      ..lineTo(c.dx + r, c.dy)
      ..lineTo(c.dx + k, c.dy + k)
      ..lineTo(c.dx, c.dy + r)
      ..lineTo(c.dx - k, c.dy + k)
      ..lineTo(c.dx - r, c.dy)
      ..lineTo(c.dx - k, c.dy - k)
      ..close();
  }

  @override
  bool shouldRepaint(covariant _EmblemPainter old) =>
      old.color != color || old.style != style || old.glow != glow;
}