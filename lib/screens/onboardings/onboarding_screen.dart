import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
import '../../constants/app_colors.dart';
import '../../services/analytics_service.dart';
import '../details/details_screen.dart';
import 'onboarding1/onboarding_screen_1.dart';
import 'onboarding2/onboarding_screen_2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    // NEW — onboarding flow started
    AnalyticsService.instance.onboardingStart();
  }

  void _goToDetails() {
    // NOTE: onboardingComplete() intentionally NOT called here — this
    // screen is just the 2-page intro (Skip/Continue leads to
    // DetailsScreen, then the full QuestionsFlowScreen still follows).
    // The real onboardingComplete() belongs wherever the
    // onboardingCompleted profile flag actually gets set, most likely in
    // AnalyzingJourneyScreen — will wire it there once that file is shared.

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const DetailsScreen()),
    );
  }

  void _onContinuePressed() {
    if (_currentPage == 0) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _goToDetails();
    }
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
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // Skip
            Padding(
              padding: const EdgeInsets.fromLTRB(23, 32, 23, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: _goToDetails,
                    child: Text(
                      l10n.skip,
                      style: const TextStyle(
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: AppColors.textLightGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Swipeable pages — swipe left/right works automatically
            Expanded(
              child: PageView(
                controller: _controller,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() => _currentPage = index);

                  // NEW — a step of onboarding was completed, whether the
                  // user got here by swiping or by tapping Continue (both
                  // trigger onPageChanged, so this covers both paths
                  // without double-logging).
                  AnalyticsService.instance.onboardingStepComplete(index);
                },
                children: const [
                  OnboardingScreen1(),
                  OnboardingScreen2(),
                ],
              ),
            ),

            // Progress indicator — synced with swipe AND button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  width: _currentPage == 0 ? 24 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _currentPage == 0
                        ? AppColors.progressbar
                        : AppColors.outlineGrey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(width: 8),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  width: _currentPage == 1 ? 24 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _currentPage == 1
                        ? AppColors.progressbar
                        : AppColors.outlineGrey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Continue / Get Started button
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _onContinuePressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.white,
                    elevation: 0,
                    shadowColor: const Color(0x0F018080),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9999),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _currentPage == 0 ? l10n.continueButton : l10n.getStarted,
                        style: const TextStyle(
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 0.14,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_forward, size: 16),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}