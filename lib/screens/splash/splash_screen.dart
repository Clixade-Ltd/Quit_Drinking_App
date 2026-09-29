
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';
import '../../services/daily_check_in_service.dart';
import '../../services/home_dashboard_service.dart';
import '../bottom_nav/main_nav_screen.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

// ==================================================================
// MILESTONE CELEBRATION — ADDED
// ==================================================================
import '../../services/milestone_service.dart';
import '../milestones/milestone_achieved_screen.dart';
import '../onboardings/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();

    _animation = Tween<double>(
      begin: 0,
      end: 200.w,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _decideDestination();
  }

  // ================================================================
  // DESTINATION
  // ================================================================

  Future<void> _decideDestination() async {
    final results = await Future.wait([
      Future.delayed(const Duration(seconds: 3)),
      _resolveDestination(),
    ]);

    if (!mounted) return;

    final destination = results[1] as Widget;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => destination,
      ),
    );
  }

  Future<Widget> _resolveDestination() async {
    final profile =
        await HomeDashboardService.instance.getProfile();

    final onboardingCompleted =
        profile?['onboardingCompleted'] == true;

    debugPrint('PROFILE: $profile');
    debugPrint(
      'ONBOARDING COMPLETED: $onboardingCompleted',
    );

    if (!onboardingCompleted) {
      debugPrint('DESTINATION: ONBOARDING');
      return const OnboardingScreen();
    }

    final todayCheckIn =
        await DailyCheckInService.instance.getToday();

    debugPrint('TODAY CHECK-IN: $todayCheckIn');

    final daysSober =
        await HomeDashboardService.instance.getDaysSober();

    final newMilestone =
        await MilestoneService.instance.checkForNewMilestone(
      daysSober,
    );

    if (newMilestone != null) {
      debugPrint(
        'DESTINATION: MILESTONE ACHIEVED '
        '(${newMilestone.title})',
      );

      return MilestoneAchievedScreen(
        milestone: newMilestone,
      );
    }

    if (todayCheckIn == null) {
      debugPrint('DESTINATION: DAILY REMINDER');
      return const MainNavScreen();
    }

    debugPrint('DESTINATION: MAIN NAV');
    return const MainNavScreen();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // ================================================================
  // BUILD
  // ================================================================

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          // ==========================================================
          // BACKGROUND
          // ==========================================================

          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  radius: 1.8,
                  colors: [
                    AppColors.gradientStart,
                    AppColors.gradientEnd,
                  ],
                  stops: [
                    0.30,
                    1.0,
                  ],
                ),
              ),
            ),
          ),

          // ==========================================================
          // MAIN CONTENT
          // ==========================================================

          Positioned(
            top: 267.h,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 242.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  children: [
                    // ==================================================
                    // LOGO CIRCLE
                    // ==================================================

                    Container(
                      width: 130.w,
                      height: 130.w,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 44.w,
                            height: 44.w,
                            child: Image.asset(
                              'assets/icons/icon1.png',
                              fit: BoxFit.contain,
                              errorBuilder:
                                  (context, error, stackTrace) {
                                return Icon(
                                  Icons.eco_outlined,
                                  color: AppColors.primary,
                                  size: 36.sp,
                                );
                              },
                            ),
                          ),

                          SizedBox(height: 1.5.h),

                          Text(
                            l10n.appWordmark,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              letterSpacing: 1.0,
                              color: AppColors.textBlack,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // ==================================================
                    // SPACE
                    // ==================================================

                    SizedBox(height: 20.h),

                    // ==================================================
                    // APP TITLE
                    // ==================================================

                    SizedBox(
                      width: double.infinity,
                      height: 57.h,
                      child: Text(
                        l10n.appTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 36.sp,
                          letterSpacing: 0,
                          height: 1.0,
                          color: AppColors.primary,
                        ),
                      ),
                    ),

                    // ==================================================
                    // SPACE
                    // ==================================================

                    SizedBox(height: 15.h),

                    // ==================================================
                    // SUBTITLE
                    // ==================================================

                    SizedBox(
                      width: 242.w,
                      child: Text(
                        l10n.splashSubtitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          letterSpacing: 0,
                          height: 1.0,
                          color: AppColors.textBlack,
                        ),
                      ),
                    ),

                    // ==================================================
                    // SPACE
                    // ==================================================

                    SizedBox(height: 20.h),

                    // ==================================================
                    // LOADING BAR
                    // ==================================================

                    SizedBox(
                      width: 200.w,
                      height: 4.h,
                      child: Stack(
                        children: [
                          Container(
                            width: 200.w,
                            height: 2.h,
                            color: AppColors.divider
                                .withOpacity(0.3),
                          ),

                          AnimatedBuilder(
                            animation: _animation,
                            builder: (context, child) {
                              return Positioned(
                                left: _animation.value,
                                child: Container(
                                  width: 40.w,
                                  height: 2.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius:
                                        BorderRadius.circular(
                                      10.r,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),

                    // ==================================================
                    // SPACE
                    // ==================================================

                    SizedBox(height: 20.h),

                    // ==================================================
                    // PREPARING JOURNEY
                    // ==================================================

                    SizedBox(
                      width: 242.w,
                      child: Text(
                        l10n.preparingJourney,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          letterSpacing: 1.4,
                          height: 20 / 18,
                          color: AppColors.textGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

