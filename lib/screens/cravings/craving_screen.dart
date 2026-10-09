import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../services/analytics_service.dart';
import '../../services/local_storage_service.dart';
import '../../theme/theme_controller.dart';
import '../4_grids_screen/breathing_screen.dart';
import '../4_grids_screen/coping_tips_screen.dart';
import '../4_grids_screen/ride_the_wave_screen.dart';
import '../chat_screen/recovery_coach_chat_screen.dart';

class CravingScreen extends StatefulWidget {
  const CravingScreen({super.key});

  @override
  State<CravingScreen> createState() => _CravingScreenState();
}

class _CravingScreenState extends State<CravingScreen> {
  static const String _cravingsBeatenKey = 'cravings_beaten_count';

  bool get _isDark => AppColors.isDark(context);

  bool _isLoading = true;
  int _cravingsBeaten = 0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  // ============================================================
  // LOAD DATA
  // ============================================================

  Future<void> _load() async {
    final count = await _loadCravingsBeatenCount();

    if (!mounted) return;

    setState(() {
      _cravingsBeaten = count;
      _isLoading = false;
    });

    // SOS/cravings screen opened
    AnalyticsService.instance.sosOpened();
  }

  // ============================================================
  // LOAD CRAVINGS BEATEN COUNT
  // ============================================================

  Future<int> _loadCravingsBeatenCount() async {
    try {
      final saved = await LocalStorageService.instance.getJson(
        _cravingsBeatenKey,
      );

      final raw = saved?['count'];

      if (raw is num) {
        return raw.toInt();
      }

      return 0;
    } catch (e) {
      debugPrint(
        'Error loading cravings beaten count: $e',
      );

      return 0;
    }
  }

  // ============================================================
  // RIDE THE WAVE
  // ============================================================

  Future<void> _openRideTheWave() async {
    // Ride the wave started
    AnalyticsService.instance.rideTheWaveStarted();

    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const RideTheWaveScreen(),
      ),
    );

    if (!mounted) return;

    final count = await _loadCravingsBeatenCount();

    if (!mounted) return;

    setState(() {
      _cravingsBeaten = count;
    });
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (_isLoading) {
      return Scaffold(
        backgroundColor: AppColors.pageBackground(
          context,
          light: AppColors.dashboardBackground,
        ),
        body: Center(
          child: CircularProgressIndicator(
            color: AppColors.accent(context),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.pageBackground(
        context,
        light: AppColors.dashboardBackground,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // ==================================================
            // FIXED HEADER / APP BAR
            // ==================================================

            Padding(
              padding: const EdgeInsets.fromLTRB(
                8,
                12,
                16,
                8,
              ),
              child: Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(24),
                    onTap: () =>
                        Navigator.of(context).maybePop(),
                    child: SizedBox(
                      width: 44,
                      height: 44,
                      child: Icon(
                        Icons.arrow_back,
                        color: _isDark
                            ? Colors.white
                            : AppColors.textBlack,
                        size: 22,
                      ),
                    ),
                  ),

                  const SizedBox(width: 4),

                  Expanded(
                    child: Text(
                      l10n.sosSupportTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: _isDark
                            ? Colors.white
                            : AppColors.textBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ==================================================
            // DIVIDER REMOVED
            // ==================================================

            // ==================================================
            // MAIN CONTENT
            // ==================================================

            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(
                  20,
                  15,
                  20,
                  24,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.stretch,
                  children: [
                    // ==================================================
                    // WARNING ICON
                    // ==================================================

                    Container(
                      width: 68,
                      height: 68,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isDark
                            ? ThemeController.darkAccent
                                .withOpacity(0.18)
                            : const Color(0xFFDB7361)
                                .withOpacity(0.12),
                      ),
                      child: Icon(
                        Icons.warning_amber_rounded,
                        color: _isDark
                            ? ThemeController.darkAccent
                            : const Color(0xFFDB7361),
                        size: 30,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // ==================================================
                    // TITLE
                    // ==================================================

                    Text(
                      'You Are Not Alone',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: _isDark
                            ? Colors.white
                            : AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(height: 4),

                    // ==================================================
                    // DESCRIPTION
                    // ==================================================

                    Text(
                      l10n.cravingsPassMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.4,
                        color: _isDark
                            ? Colors.white70
                            : AppColors.textGrey,
                      ),
                    ),

                    const SizedBox(height: 15),

                    // ==================================================
                    // SOS OPTIONS
                    // ==================================================

                    _buildSosItem(
                      icon: Icons.air,
                      iconColor: _isDark
                          ? ThemeController.darkAccent
                          : AppColors.primary,
                      title: l10n.breathingExercise,
                      subtitle:
                          l10n.breathingExerciseSubtitle,
                      onTap: () {
                        // Breathing exercise started
                        AnalyticsService.instance
                            .breathingExerciseStarted();

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) =>
                                const BreathingScreen(),
                          ),
                        );
                      },
                    ),

                    _buildSosItem(
                      icon: Icons.access_time_outlined,
                      iconColor: _isDark
                          ? ThemeController.darkAccent
                          : const Color(0xFF3B82F6),
                      title: l10n.rideTheWave,
                      subtitle:
                          l10n.rideTheWaveSubtitle,
                      onTap: _openRideTheWave,
                    ),

                    _buildSosItem(
                      icon: Icons.lightbulb_outline,
                      iconColor: _isDark
                          ? ThemeController.darkAccent
                          : const Color(0xFFE0A93B),
                      title: l10n.copingTips,
                      subtitle:
                          l10n.copingTipsSubtitle,
                      onTap: () {
                        // Coping tips viewed
                        AnalyticsService.instance
                            .copingTipsViewed();

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) =>
                                const CopingTipsScreen(),
                          ),
                        );
                      },
                    ),

                    _buildSosItem(
                      icon: Icons.favorite_border,
                      iconColor: _isDark
                          ? ThemeController.darkAccent
                          : const Color(0xFF7C7CE0),
                      title: l10n.talkToAiCoach,
                      subtitle:
                          l10n.talkToAiCoachSubtitle,
                      onTap: () {
                        // Chat opened
                        AnalyticsService.instance
                            .chatOpened();

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) =>
                                const RecoveryCoachChatScreen(),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 2),

                    // ==================================================
                    // ENCOURAGEMENT BANNER
                    // ==================================================

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: _isDark
                            ? ThemeController.darkCard
                            : AppColors.primary
                                .withOpacity(0.12),
                        border: _isDark
                            ? Border.all(
                                color:
                                    ThemeController.darkAccent,
                              )
                            : null,
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 1.4,
                            color: _isDark
                                ? Colors.white
                                : AppColors.primary,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  l10n.beatenCravingsPrefix,
                            ),
                            TextSpan(
                              text:
                                  l10n.beatenCravingsCount(
                                _cravingsBeaten,
                              ),
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text:
                                  l10n.beatenCravingsSuffix,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Extra bottom breathing room
                    // for smaller screens.
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // SOS ITEM
  // ============================================================

  Widget _buildSosItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: _isDark
                ? ThemeController.darkCard
                : AppColors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: _isDark
                  ? ThemeController.darkAccent
                  : AppColors.outlineGrey,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ==================================================
              // ICON
              // ==================================================

              Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _isDark
                      ? ThemeController.darkAccent
                          .withOpacity(0.34)
                      : iconColor.withOpacity(0.12),
                  borderRadius:
                      BorderRadius.circular(14),
                ),
                child: Icon(
                  icon,
                  color: _isDark
                      ? Colors.white
                      : iconColor,
                  size: 22,
                ),
              ),

              const SizedBox(width: 14),

              // ==================================================
              // TEXT
              // ==================================================

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: _isDark
                            ? Colors.white
                            : AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(height: 2),

                    Text(
                      subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        height: 1.25,
                        color: _isDark
                            ? Colors.white70
                            : AppColors.textGrey,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              // ==================================================
              // ARROW
              // ==================================================

              Icon(
                Icons.chevron_right,
                color: _isDark
                    ? Colors.white70
                    : AppColors.textLightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}