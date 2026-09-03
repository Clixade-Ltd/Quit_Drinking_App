import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../models/milestone_definition.dart';
import '../../services/home_dashboard_service.dart';
import '../bottom_nav/main_nav_screen.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class MilestoneAchievedScreen extends StatefulWidget {
  final MilestoneDefinition milestone;

  const MilestoneAchievedScreen({
    super.key,
    required this.milestone,
  });

  @override
  State<MilestoneAchievedScreen> createState() =>
      _MilestoneAchievedScreenState();
}

class _MilestoneAchievedScreenState extends State<MilestoneAchievedScreen> {
  final GlobalKey _captureKey = GlobalKey();

  bool _isLoading = true;
  bool _isSharing = false;

  int _daysSober = 0;
  num _moneySaved = 0;
  num _drinksAvoided = 0;
  String _displayName = 'there';

  // Set at the top of build() every time, then used by all the
  // helper methods below (_buildCelebrationCard, _buildRing,
  // _buildStatPill, etc.) since they're instance methods and can
  // read this field even though they don't receive `context`
  // directly.
  late AppLocalizations l10n;

  static const Color _cardTop = Color(0xFF2F6E5F);
  static const Color _cardBottom = Color(0xFF13251F);
  static const Color _shareYellow = Color(0xFFF6C945);

  @override
  void initState() {
    super.initState();
    _load();
  }

  // ============================================================
  // DATA LOADING
  // ============================================================

  Future<void> _load() async {
    final service = HomeDashboardService.instance;

    // These live totals are ONLY used to derive a per-day rate below —
    // never displayed directly. The days number itself is pinned to the
    // milestone, not to this live value.
    final liveDaysSober = await service.getDaysSober();
    final stats = await service.getStats();

    // Live user name.
    final name = await service.getUserName();

    if (!mounted) return;

    final liveMoneySaved = (stats['moneySaved'] ?? 0) as num;
    final liveDrinksAvoided = (stats['drinksAvoided'] ?? 0) as num;

    final moneyPerDay =
    liveDaysSober > 0 ? liveMoneySaved / liveDaysSober : 0;

    final drinksPerDay =
    liveDaysSober > 0 ? liveDrinksAvoided / liveDaysSober : 0;

    setState(() {
      // Pinned to the milestone being celebrated (e.g. "3 Days Alcohol
      // Free!" always shows 3, "One Week" always shows 7, "One Month"
      // always shows 30) — regardless of how far the live streak has
      // actually gone.
      _daysSober = widget.milestone.days;

      _moneySaved = moneyPerDay * widget.milestone.days;
      _drinksAvoided = drinksPerDay * widget.milestone.days;

      _displayName = (name != null && name.trim().isNotEmpty)
          ? name.trim().split(RegExp(r'\s+')).first
          : 'there';

      _isLoading = false;
    });
  }

  // ============================================================
  // DRINK FORMATTER
  // ============================================================

  String _formatDrinks(num value) {
    final v = value.toDouble();

    return v == v.roundToDouble()
        ? v.toInt().toString()
        : v.toStringAsFixed(1);
  }

  // ============================================================
  // SHARE MILESTONE
  // ============================================================

  /// Captures the visible milestone screen as a PNG and shares it.
  ///
  /// The RepaintBoundary now covers the full celebration screen rather
  /// than only the upper card.
  Future<void> _shareMilestone() async {
    if (_isSharing) return;

    setState(() => _isSharing = true);

    try {
      // Let the frame settle before capturing.
      await WidgetsBinding.instance.endOfFrame;

      final renderObject = _captureKey.currentContext?.findRenderObject();

      if (renderObject == null ||
          renderObject is! RenderRepaintBoundary) {
        throw Exception('Milestone screen is not ready for capture.');
      }

      final boundary = renderObject;

      final image = await boundary.toImage(
        pixelRatio: 3.0,
      );

      final byteData = await image.toByteData(
        format: ui.ImageByteFormat.png,
      );

      if (byteData == null) {
        throw Exception('Could not convert milestone screen to PNG.');
      }

      final Uint8List bytes = byteData.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();

      final file = await File(
        '${tempDir.path}/milestone_${widget.milestone.days}d.png',
      ).create();

      await file.writeAsBytes(bytes);

      await Share.shareXFiles(
        [XFile(file.path)],
        subject: l10n.shareMilestoneSubject,
      );
    } catch (e) {
      debugPrint('Milestone screenshot share failed: $e');

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              l10n.milestoneImageShareError,
            ),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isSharing = false);
      }
    }
  }

  // ============================================================
  // CONTINUE
  // ============================================================

  void _continue() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => const MainNavScreen(),
      ),
    );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;

    if (_isLoading) {
      return const Scaffold(
        backgroundColor: _cardBottom,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: _cardBottom,

      // ==========================================================
      // FULL SCREEN MILESTONE
      // ==========================================================

      body: SafeArea(
        bottom: false,
        child: RepaintBoundary(
          key: _captureKey,
          child: SizedBox.expand(
            child: _buildCelebrationCard(),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // CELEBRATION CARD
  // ============================================================

  Widget _buildCelebrationCard() {
    return Container(
      width: double.infinity,
      height: double.infinity,

      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            _cardTop,
            _cardBottom,
          ],
        ),

        // No bottom section anymore.
        // The complete screen itself is the celebration card.
        borderRadius: BorderRadius.zero,
      ),

      child: Stack(
        children: [
          // ======================================================
          // CONFETTI
          // ======================================================

          ..._buildConfettiDots(),

          // ======================================================
          // MAIN CONTENT
          // ======================================================

          SafeArea(
            bottom: true,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),

                  padding: const EdgeInsets.fromLTRB(
                    24,
                    32,
                    24,
                    24,
                  ),

                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight - 56,
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // ==================================================
                        // RING
                        // ==================================================

                        TweenAnimationBuilder<double>(
                          tween: Tween(
                            begin: 0.85,
                            end: 1.0,
                          ),
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                          curve: Curves.easeOutBack,
                          builder: (
                              context,
                              scale,
                              child,
                              ) {
                            return Transform.scale(
                              scale: scale,
                              child: child,
                            );
                          },
                          child: _buildRing(),
                        ),

                        const SizedBox(height: 24),

                        // ==================================================
                        // MILESTONE UNLOCKED LABEL
                        // ==================================================

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: _shareYellow.withValues(
                              alpha: 0.16,
                            ),
                            borderRadius: BorderRadius.circular(
                              9999,
                            ),
                          ),
                          child: Text(
                            l10n.milestoneUnlockedLabel,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 11,
                              letterSpacing: 1.0,
                              color: _shareYellow,
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // ==================================================
                        // CELEBRATION TITLE
                        // ==================================================

                        Text(
                          widget.milestone.celebrationTitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 27,
                            height: 1.15,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 12),

                        // ==================================================
                        // CELEBRATION MESSAGE
                        // ==================================================

                        Text(
                          '${l10n.incredibleNamePrefix(_displayName)} '
                              '${widget.milestone.celebrationMessage}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            height: 1.4,
                            color: Colors.white70,
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ==================================================
                        // STATS (scaled to this milestone's day count)
                        // ==================================================

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildStatPill(
                              icon: Icons.account_balance_wallet_outlined,
                              label: l10n.amountSavedLabel(
                                '\$${_moneySaved.toStringAsFixed(0)}',
                              ),
                              accent: _shareYellow,
                            ),

                            const SizedBox(width: 12),

                            _buildStatPill(
                              icon: Icons.water_drop_outlined,
                              label: l10n.drinksAvoidedLabel(
                                _formatDrinks(_drinksAvoided),
                              ),
                              accent: const Color(0xFF6FE0C7),
                            ),
                          ],
                        ),

                        const SizedBox(height: 24),

                        // ==================================================
                        // SHARE BUTTON
                        // ==================================================

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed:
                            _isSharing ? null : _shareMilestone,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _shareYellow,
                              foregroundColor: Colors.black87,
                              disabledBackgroundColor: _shareYellow,
                              disabledForegroundColor: Colors.black87,
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                              ),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  9999,
                                ),
                              ),
                            ),
                            child: _isSharing
                                ? const SizedBox(
                              width: 20,
                              height: 20,
                              child:
                              CircularProgressIndicator(
                                strokeWidth: 2.4,
                                color: Colors.black87,
                              ),
                            )
                                : Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.share_outlined,
                                  size: 18,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  l10n.shareMyMilestone,
                                  style: const TextStyle(
                                    fontWeight:
                                    FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        // ==================================================
                        // CONTINUE BUTTON
                        // ==================================================

                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: _continue,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                              Colors.white.withValues(
                                alpha: 0.12,
                              ),
                              side: BorderSide(
                                color: Colors.white.withValues(
                                  alpha: 0.3,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(9999),
                              ),
                            ),
                            child: Text(
                              l10n.continueButton,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // ======================================================
          // CLOSE BUTTON — added last so it's on top of the
          // scrollable content and always receives taps.
          // ======================================================

          Positioned(
            top: 8,
            right: 8,
            child: SafeArea(
              bottom: false,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(9999),
                  onTap: _continue,
                  child: Container(
                    width: 32,
                    height: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withValues(alpha: 0.12),
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 18,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // SOBRIETY RING
  // ============================================================

  Widget _buildRing() {
    // _daysSober here is always widget.milestone.days (see _load) —
    // this progress arc is purely decorative "position within the
    // current 30-day tier" flavor, tied to the milestone, not the live
    // streak.
    final progressWithinCurrentTier =
    ((_daysSober % 30) / 30).clamp(0.02, 1.0);

    return SizedBox(
      width: 168,
      height: 168,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer ring
          Container(
            width: 168,
            height: 168,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.15),
                width: 1,
              ),
            ),
          ),

          // Progress ring
          SizedBox(
            width: 140,
            height: 140,
            child: CircularProgressIndicator(
              value: progressWithinCurrentTier,
              strokeWidth: 10,
              strokeCap: StrokeCap.round,
              backgroundColor: Colors.white.withValues(
                alpha: 0.15,
              ),
              valueColor:
              const AlwaysStoppedAnimation<Color>(
                Colors.white,
              ),
            ),
          ),

          // Days number — always matches the milestone being celebrated.
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$_daysSober',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              Text(
                l10n.daysCapsLabel,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  letterSpacing: 1.4,
                  color: Colors.white70,
                ),
              ),
            ],
          ),

          // Star
          const Positioned(
            top: 4,
            right: 8,
            child: Icon(
              Icons.star,
              color: _shareYellow,
              size: 26,
            ),
          ),

          // Sparkle
          const Positioned(
            bottom: 10,
            left: 4,
            child: Icon(
              Icons.auto_awesome,
              color: Colors.white70,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // STAT PILL
  // ============================================================

  Widget _buildStatPill({
    required IconData icon,
    required String label,
    required Color accent,
  }) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(9999),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.08),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 16,
              color: accent,
            ),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // CONFETTI
  // ============================================================

  List<Widget> _buildConfettiDots() {
    const dots = <_ConfettiDot>[
      _ConfettiDot(
        top: 8,
        left: 24,
        size: 8,
        color: Color(0xFFF6C945),
      ),
      _ConfettiDot(
        top: 2,
        left: 130,
        size: 6,
        color: Color(0xFF8C6FE0),
      ),
      _ConfettiDot(
        top: 14,
        right: 30,
        size: 6,
        color: Color(0xFFF6C945),
      ),
      _ConfettiDot(
        top: 24,
        right: 60,
        size: 5,
        color: Color(0xFFE0596B),
      ),
      _ConfettiDot(
        top: 40,
        right: 12,
        size: 5,
        color: Color(0xFF6FA8E0),
      ),
      _ConfettiDot(
        top: 46,
        left: 46,
        size: 5,
        color: Color(0xFF6FE0C7),
      ),
      _ConfettiDot(
        top: 60,
        left: 10,
        size: 5,
        color: Color(0xFF6FE0C7),
      ),
    ];

    return dots
        .map(
          (d) => Positioned(
        top: d.top,
        left: d.left,
        right: d.right,
        child: Container(
          width: d.size,
          height: d.size,
          decoration: BoxDecoration(
            color: d.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    )
        .toList();
  }
}

// ============================================================
// CONFETTI MODEL
// ============================================================

class _ConfettiDot {
  final double? top;
  final double? left;
  final double? right;
  final double size;
  final Color color;

  const _ConfettiDot({
    this.top,
    this.left,
    this.right,
    required this.size,
    required this.color,
  });
}