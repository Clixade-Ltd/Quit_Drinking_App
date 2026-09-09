import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/main_nav_screen.dart';

import '../../constants/app_colors.dart';
import '../../services/analytics_service.dart';
import '../../services/home_dashboard_service.dart';
import '../../services/gemini_service.dart';

class AnalyzingJourneyScreen extends StatefulWidget {
  const AnalyzingJourneyScreen({super.key});

  @override
  State<AnalyzingJourneyScreen> createState() =>
      _AnalyzingJourneyScreenState();
}

class _AnalyzingJourneyScreenState
    extends State<AnalyzingJourneyScreen>
    with SingleTickerProviderStateMixin {
  int _percent = 0;

  Timer? _progressTimer;

  late final AnimationController _pulseController;

  bool _isSaving = false;
  bool _hasFinished = false;

  @override
  void initState() {
    super.initState();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _startProgress();
  }

  void _startProgress() {
    _progressTimer = Timer.periodic(
      const Duration(milliseconds: 70),
          (timer) {
        if (!mounted) {
          timer.cancel();
          return;
        }

        if (_isSaving) {
          return;
        }

        if (_percent < 100) {
          setState(() {
            _percent += 1;
          });
        } else {
          timer.cancel();

          if (!_hasFinished) {
            _hasFinished = true;
            _finishOnboarding();
          }
        }
      },
    );
  }

  String _currentLabel(AppLocalizations l10n) {
    if (_percent <= 30) {
      return l10n.understandingHabits;
    }

    if (_percent <= 60) {
      return l10n.calculatingBaseline;
    }

    if (_percent <= 85) {
      return l10n.personalizingPlan;
    }

    return l10n.finalizingSanctuary;
  }

  /// This is the TRUE end of onboarding.
  ///
  /// 1. Save Details + Questions data to local storage
  /// 2. Fetch the saved profile data
  /// 3. Send the profile data to Gemini AI
  /// 4. Save the generated AI plan locally
  /// 5. Navigate to MainNavScreen
  Future<void> _finishOnboarding() async {
    if (_isSaving) return;

    setState(() {
      _isSaving = true;
    });

    try {
      debugPrint('----------------------------------------');
      debugPrint('ANALYZING JOURNEY FINISHED');
      debugPrint('Saving onboarding data locally...');
      debugPrint('----------------------------------------');

      await HomeDashboardService.instance
          .saveInitialProfile();

      debugPrint('----------------------------------------');
      debugPrint('ONBOARDING DATA SAVED SUCCESSFULLY');
      debugPrint('----------------------------------------');

      debugPrint('----------------------------------------');
      debugPrint('LOADING SAVED PROFILE FOR AI...');
      debugPrint('----------------------------------------');

      final profile =
      await HomeDashboardService.instance.getProfile();

      if (profile == null) {
        throw StateError(
          'Could not load saved profile data.',
        );
      }

      debugPrint('----------------------------------------');
      debugPrint('GENERATING AI PERSONALIZED PLAN...');
      debugPrint('----------------------------------------');

      final aiPlan =
      await GeminiService.instance.generatePersonalizedPlan(
        userData: profile,
        languageCode: Localizations.localeOf(context).languageCode,
      );

      await HomeDashboardService.instance
          .saveAIPlan(aiPlan);

      debugPrint('----------------------------------------');
      debugPrint('AI PERSONALIZED PLAN SAVED');
      debugPrint('----------------------------------------');

      // NEW — AI plan generated successfully, and this is the true end
      // of onboarding (profile + questions + AI plan all saved).
      AnalyticsService.instance.personalizedPlanGenerated();
      AnalyticsService.instance.onboardingComplete();

      await Future.delayed(
        const Duration(milliseconds: 400),
      );

      if (!mounted) return;

      setState(() {
        _isSaving = false;
      });

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => const MainNavScreen(),
        ),
            (route) => false,
      );
    } catch (e, stackTrace) {
      debugPrint('========================================');
      debugPrint('ERROR DURING ONBOARDING');
      debugPrint('========================================');
      debugPrint('Error: $e');
      debugPrint('Stack trace:');
      debugPrint('$stackTrace');
      debugPrint('========================================');

      // NEW — plan generation/save failed
      AnalyticsService.instance.personalizedPlanFailed();

      if (!mounted) return;

      setState(() {
        _isSaving = false;
        _hasFinished = false;
        _percent = 100;
      });

      final l10n = AppLocalizations.of(context)!;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l10n.personalizedPlanError,
          ),
          duration: const Duration(seconds: 5),
          action: SnackBarAction(
            label: l10n.retry,
            onPressed: () {
              _finishOnboarding();
            },
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _progressTimer?.cancel();
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.gradientStart,
              AppColors.gradientEnd,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 90),

              SizedBox(
                width: 305,
                child: Text(
                  l10n.analyzingYourJourney,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    letterSpacing: -0.56,
                    height: 36 / 28,
                    color: AppColors.primary,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: 320,
                child: Text(
                  l10n.aiCreatingSanctuary,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 24 / 16,
                    color: AppColors.textGrey,
                  ),
                ),
              ),

              const Spacer(),

              // ---------------------------------------------------
              // Glowing pulsing circle
              // ---------------------------------------------------

              AnimatedBuilder(
                animation: _pulseController,
                builder: (context, child) {
                  final double scale =
                      1.0 +
                          (_pulseController.value * 0.06);

                  final double glow =
                      30 +
                          (_pulseController.value * 20);

                  return Container(
                    width: 128,
                    height: 128,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary
                              .withOpacity(0.4),
                          blurRadius: glow,
                          spreadRadius: 4,
                        ),
                      ],
                    ),
                    child: Transform.scale(
                      scale: scale,
                      child: child,
                    ),
                  );
                },
                child: Container(
                  width: 128,
                  height: 128,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.primary,
                        AppColors.divider,
                        AppColors.progressbar,
                        AppColors.progressbar,
                      ],
                      stops: [
                        0.0,
                        0.3333,
                        0.6667,
                        1.0,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x80FFFFFF),
                        blurRadius: 20,
                        offset: Offset(0, 0),
                        spreadRadius: -4,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.auto_awesome,
                      color: AppColors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),

              const Spacer(),

              // ---------------------------------------------------
              // Progress card
              // ---------------------------------------------------

              Padding(
                padding:
                const EdgeInsets.symmetric(
                  horizontal: 21,
                ),
                child: Container(
                  width: 342,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color:
                    AppColors.white.withOpacity(0.85),
                    borderRadius:
                    BorderRadius.circular(32),
                    border: Border.all(
                      color: const Color(0x80E1E3E3),
                      width: 1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x0F018080),
                        blurRadius: 32,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              _isSaving
                                  ? l10n.creatingYourPlan
                                  : _currentLabel(l10n),
                              style: const TextStyle(
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                letterSpacing: 0.14,
                                color:
                                AppColors.primary,
                              ),
                            ),
                          ),
                          Text(
                            '$_percent%',
                            style: const TextStyle(
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color:
                              AppColors.textBlack,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      ClipRRect(
                        borderRadius:
                        BorderRadius.circular(9999),
                        child:
                        LinearProgressIndicator(
                          value: _percent / 100,
                          minHeight: 12,
                          backgroundColor:
                          AppColors
                              .progressBarBackground,
                          valueColor:
                          const AlwaysStoppedAnimation<
                              Color>(
                            AppColors.primary,
                          ),
                        ),
                      ),

                      if (_isSaving) ...[
                        const SizedBox(height: 16),
                        const SizedBox(
                          width: 20,
                          height: 20,
                          child:
                          CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor:
                            AlwaysStoppedAnimation<
                                Color>(
                              AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}