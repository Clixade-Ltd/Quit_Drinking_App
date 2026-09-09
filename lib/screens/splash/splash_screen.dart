import 'package:flutter/material.dart';
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
    )
      ..repeat();

    _animation = Tween<double>(begin: 0, end: 200).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _decideDestination();
  }

  Future<void> _decideDestination() async {
    final results = await Future.wait([
      Future.delayed(const Duration(seconds: 3)),
      _resolveDestination(),
    ]);

    if (!mounted) return;

    final destination = results[1] as Widget;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => destination),
    );
  }

  Future<Widget> _resolveDestination() async {
    final profile = await HomeDashboardService.instance.getProfile();
    final onboardingCompleted = profile?['onboardingCompleted'] == true;

    debugPrint('PROFILE: $profile');
    debugPrint('ONBOARDING COMPLETED: $onboardingCompleted');

    if (!onboardingCompleted) {
      debugPrint('DESTINATION: ONBOARDING');
      return const OnboardingScreen();
    }

    final todayCheckIn = await DailyCheckInService.instance.getToday();

    debugPrint('TODAY CHECK-IN: $todayCheckIn');

    final daysSober = await HomeDashboardService.instance.getDaysSober();
    final newMilestone =
    await MilestoneService.instance.checkForNewMilestone(daysSober);

    if (newMilestone != null) {
      debugPrint('DESTINATION: MILESTONE ACHIEVED (${newMilestone.title})');
      return MilestoneAchievedScreen(milestone: newMilestone);
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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  radius: 1.8,
                  colors: [AppColors.gradientStart, AppColors.gradientEnd],
                  stops: [0.30, 1.0],
                ),
              ),
            ),
          ),
          Positioned(
            top: 267,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 242,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 44,
                            height: 44,
                            child: Image.asset(
                              'assets/icons/icon1.png',
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(
                                  Icons.eco_outlined,
                                  color: AppColors.primary,
                                  size: 36,
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 1.5),
                          Text(
                            l10n.appWordmark,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              letterSpacing: 1.0,
                              color: AppColors.textBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,
                      height: 57,
                      child: Text(
                        l10n.appTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                          letterSpacing: 0,
                          height: 1.0,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    SizedBox(
                      width: 242,
                      child: Text(
                        l10n.splashSubtitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          letterSpacing: 0,
                          height: 1.0,
                          color: AppColors.textBlack,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    SizedBox(
                      width: 200,
                      height: 4,
                      child: Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 2,
                            color: AppColors.divider.withOpacity(0.3),
                          ),
                          AnimatedBuilder(
                            animation: _animation,
                            builder: (context, child) {
                              return Positioned(
                                left: _animation.value,
                                child: Container(
                                  width: 40,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    SizedBox(
                      width: 242,
                      child: Text(
                        l10n.preparingJourney,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
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