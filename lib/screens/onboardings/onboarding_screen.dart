
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../models/user_details_draft.dart';
import '../../services/analytics_service.dart';
import '../../services/home_dashboard_service.dart';
import '../bottom_nav/main_nav_screen.dart';

import '../questions/question1/question1_content.dart';
import '../questions/question3/question3_content.dart';
import '../questions/question4/question4_content.dart';
import '../questions/start_date/start_date_content.dart';

import 'onboarding1/onboarding_screen_1.dart';
import 'onboarding2/onboarding_screen_2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // ============================================================
  // COMPLETE FLOW
  //
  // 0 = Onboarding 1
  // 1 = Onboarding 2
  // 2 = Question 1
  // 3 = Question 3
  // 4 = Start Date
  // 5 = Question 4
  // ============================================================

  static const int _totalPages = 6;

  // ============================================================
  // PAGE TRANSITION TUNING
  // ============================================================

  static const Duration _pageTransitionDuration =
      Duration(milliseconds: 550);

  static const Curve _pageTransitionCurve =
      Curves.easeInOutCubicEmphasized;

  final PageController _pageController = PageController();

  int _currentPage = 0;

  late List<bool> _canContinue;

  @override
  void initState() {
    super.initState();

    AnalyticsService.instance.onboardingStart();

    _loadAnswerStates();
  }

  // ============================================================
  // LOAD ANSWER STATES
  // ============================================================

  void _loadAnswerStates() {
    final answers = UserDetailsDraft.instance;

    final bool question1Answered =
        answers.goal != null && answers.goal!.isNotEmpty;

    const bool question3Answered = true;

    final bool startDateAnswered =
        answers.startDate != null;

    final bool question4Answered =
        answers.quitReasons.isNotEmpty;

    _canContinue = [
      true, // 0 - Onboarding 1
      true, // 1 - Onboarding 2
      question1Answered, // 2 - Question 1
      question3Answered, // 3 - Question 3
      startDateAnswered, // 4 - Start Date
      question4Answered, // 5 - Question 4
    ];
  }

  // ============================================================
  // UPDATE CONTINUE STATE
  // ============================================================

  void _setCanContinue(
    int page,
    bool value,
  ) {
    if (page < 0 || page >= _canContinue.length) {
      return;
    }

    if (_canContinue[page] == value) {
      return;
    }

    if (!mounted) return;

    setState(() {
      _canContinue[page] = value;
    });
  }

  // ============================================================
  // NOTIFICATION PERMISSION
  //
  // This can be called when:
  // 1. Skip is pressed on ANY onboarding/question screen.
  // 2. Continue is pressed on the LAST question.
  // ============================================================

  Future<void> _requestNotificationPermission() async {
    try {
      final settings =
          await FirebaseMessaging.instance.requestPermission(
        alert: true,
        badge: true,
        sound: true,
        provisional: false,
      );

      debugPrint(
        'Notification permission status: '
        '${settings.authorizationStatus}',
      );

      // Get FCM token only after permission is granted.
      if (settings.authorizationStatus ==
              AuthorizationStatus.authorized ||
          settings.authorizationStatus ==
              AuthorizationStatus.provisional) {
        try {
          final token =
              await FirebaseMessaging.instance.getToken();

          debugPrint('FCM TOKEN: $token');
        } catch (e) {
          debugPrint(
            'FCM token error: $e',
          );
        }
      }
    } catch (e) {
      // Permission failure should NOT block onboarding.
      debugPrint(
        'Notification permission error: $e',
      );
    }
  }

  // ============================================================
  // CONTINUE
  // ============================================================

  Future<void> _goNext() async {
    if (_currentPage < 0 ||
        _currentPage >= _canContinue.length) {
      return;
    }

    final bool canContinue =
        _canContinue[_currentPage];

    if (!canContinue) {
      return;
    }

    if (_currentPage < _totalPages - 1) {
      await _pageController.nextPage(
        duration: _pageTransitionDuration,
        curve: _pageTransitionCurve,
      );
    } else {
      // ========================================================
      // LAST QUESTION
      //
      // Question 4 -> Continue
      // -> Notification permission
      // -> Create plan
      // -> Main app
      // ========================================================

      await _requestNotificationPermission();

      if (!mounted) return;

      await _createPlan();
    }
  }

  // ============================================================
  // BACK
  // ============================================================

  void _goBack() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: _pageTransitionDuration,
        curve: _pageTransitionCurve,
      );
    } else {
      Navigator.of(context).maybePop();
    }
  }

  // ============================================================
  // SKIP ONBOARDING
  //
  // ANY onboarding screen:
  // Skip -> Notification permission -> Home
  // ============================================================

  Future<void> _skipOnboarding() async {
    await _requestNotificationPermission();

    if (!mounted) return;

    await _createPlan();
  }

  // ============================================================
  // SKIP QUESTIONS
  //
  // ANY question screen except last:
  // Skip -> Notification permission -> Home
  // ============================================================

  Future<void> _skipQuestions() async {
    await _requestNotificationPermission();

    if (!mounted) return;

    await _createPlan();
  }

  // ============================================================
  // SKIP LAST QUESTION
  //
  // Question 4:
  // Skip -> Notification permission -> Home
  // ============================================================

  Future<void> _skipLastQuestion() async {
    await _requestNotificationPermission();

    if (!mounted) return;

    await _createPlan();
  }

  // ============================================================
  // PAGE CHANGED
  // ============================================================

  void _onPageChanged(int index) {
    if (!mounted) return;

    setState(() {
      _currentPage = index;
    });

    AnalyticsService.instance
        .onboardingStepComplete(index);
  }

  // ============================================================
  // CREATE PLAN
  // ============================================================

  Future<void> _createPlan() async {
    final answers = UserDetailsDraft.instance;

    debugPrint(
      'Name: ${answers.name}\n'
      '* Goal: ${answers.goal}\n'
      '* Start Date: ${answers.startDate}\n'
      '* Drinking Level: ${answers.drinkingLevel}\n'
      '* Drinks per week: ${answers.drinksPerWeek}\n'
      '* Money spent per week: '
      '${answers.moneySpentPerWeek}\n'
      '* Triggers: '
      '${answers.triggers.join(', ')}\n'
      '* Motivations: '
      '${answers.quitReasons.join(', ')}',
    );

    await HomeDashboardService.instance
        .completeOnboardingLocally(
      name: answers.name,
      goal: answers.goal ?? '',
      startDate:
          answers.startDate ?? DateTime.now(),
      drinkingLevel:
          answers.drinkingLevel ?? '',
      drinksPerWeek:
          answers.drinksPerWeek ?? 0,
      moneySpentPerWeek:
          answers.moneySpentPerWeek ?? 0,
      triggers: answers.triggers,
      quitReasons: answers.quitReasons,
    );

    if (!mounted) return;

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (_) => const MainNavScreen(),
      ),
      (route) => false,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    final l10n =
        AppLocalizations.of(context)!;

    final bool isOnboarding =
        _currentPage < 2;

    final bool isLastPage =
        _currentPage == _totalPages - 1;

    final bool canContinue =
        (_currentPage >= 0 &&
                _currentPage <
                    _canContinue.length)
            ? _canContinue[_currentPage]
            : false;

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // ==================================================
            // TOP AREA
            // ==================================================

            if (isOnboarding)
              Padding(
                padding:
                    const EdgeInsets.fromLTRB(
                  23,
                  32,
                  23,
                  16,
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: _skipOnboarding,
                      borderRadius:
                          BorderRadius.circular(
                        10,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Text(
                          l10n.skip,
                          style:
                              const TextStyle(
                            fontFamily:
                                'SF Pro',
                            fontWeight:
                                FontWeight.w500,
                            fontSize: 16,
                            color: AppColors
                                .textLightGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            else
              // ==================================================
              // QUESTION TOP BAR
              // BACK + DOTS + SKIP
              // ==================================================
              Padding(
                padding:
                    const EdgeInsets.fromLTRB(
                  6,
                  7,
                  20,
                  0,
                ),
                child: Row(
                  children: [
                    // ------------------------------------------
                    // BACK
                    // ------------------------------------------

                    InkWell(
                      onTap: _goBack,
                      borderRadius:
                          BorderRadius.circular(
                        20,
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.all(2),
                        child: Icon(
                          Icons.chevron_left,
                          color:
                              AppColors.primary,
                          size: 38,
                        ),
                      ),
                    ),

                    const SizedBox(width: 4),

                    // ------------------------------------------
                    // QUESTION DOTS
                    // ------------------------------------------

                    Expanded(
                      child: _QuestionDots(
                        totalDots: 4,
                        currentIndex:
                            (_currentPage - 2)
                                .clamp(0, 3),
                      ),
                    ),

                    const SizedBox(width: 12),

                    // ------------------------------------------
                    // SKIP
                    // ------------------------------------------

                    InkWell(
                      onTap: isLastPage
                          ? _skipLastQuestion
                          : _skipQuestions,
                      borderRadius:
                          BorderRadius.circular(
                        10,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Text(
                          l10n.skip,
                          style:
                              const TextStyle(
                            fontFamily:
                                'SF Pro',
                            fontWeight:
                                FontWeight.w500,
                            fontSize: 16,
                            color: AppColors
                                .textLightGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            // ==================================================
            // MAIN SWIPEABLE FLOW
            // ==================================================

            Expanded(
              child: PageView(
                controller:
                    _pageController,
                physics:
                    const ClampingScrollPhysics(),
                onPageChanged:
                    _onPageChanged,
                children: [
                  // ==========================================
                  // PAGE 0
                  // ONBOARDING 1
                  // ==========================================

                  const OnboardingScreen1(),

                  // ==========================================
                  // PAGE 1
                  // ONBOARDING 2
                  // ==========================================

                  const OnboardingScreen2(),

                  // ==========================================
                  // PAGE 2
                  // QUESTION 1
                  // ==========================================

                  Question1Content(
                    onCanContinueChanged:
                        (value) {
                      _setCanContinue(
                        2,
                        value,
                      );
                    },
                  ),

                  // ==========================================
                  // PAGE 3
                  // QUESTION 3
                  // ==========================================

                  Question3Content(
                    onCanContinueChanged:
                        (value) {
                      _setCanContinue(
                        3,
                        value,
                      );
                    },
                  ),

                  // ==========================================
                  // PAGE 4
                  // START DATE
                  // ==========================================

                  StartDateContent(
                    onCanContinueChanged:
                        (value) {
                      _setCanContinue(
                        4,
                        value,
                      );
                    },
                  ),

                  // ==========================================
                  // PAGE 5
                  // QUESTION 4
                  // ==========================================

                  Question4Content(
                    onCanContinueChanged:
                        (value) {
                      _setCanContinue(
                        5,
                        value,
                      );
                    },
                  ),
                ],
              ),
            ),

            // ==================================================
            // ONBOARDING DOTS
            // ==================================================

            if (isOnboarding)
              Padding(
                padding:
                    const EdgeInsets.only(
                  bottom: 24,
                ),
                child: _OnboardingDots(
                  currentIndex:
                      _currentPage.clamp(
                    0,
                    1,
                  ),
                ),
              ),

            // ==================================================
            // SHARED BOTTOM BUTTON
            // ==================================================

            Padding(
              padding:
                  const EdgeInsets.fromLTRB(
                20,
                8,
                20,
                20,
              ),
              child: AnimatedBuilder(
                animation: _pageController,
                builder: (context, _) {
                  final double pageProgress =
                      (_pageController
                                  .hasClients &&
                              _pageController.page !=
                                  null)
                          ? _pageController.page!
                          : _currentPage.toDouble();

                  return _AnimatedBottomButtons(
                    pageProgress:
                        pageProgress,
                    canContinue:
                        canContinue,
                    continueText:
                        l10n.continueButton,
                    onBack: _goBack,
                    onContinue:
                        _goNext,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// ANIMATED BOTTOM BUTTONS
// ============================================================

class _AnimatedBottomButtons
    extends StatelessWidget {
  final double pageProgress;
  final bool canContinue;
  final String continueText;
  final VoidCallback onBack;
  final VoidCallback onContinue;

  const _AnimatedBottomButtons({
    required this.pageProgress,
    required this.canContinue,
    required this.continueText,
    required this.onBack,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: LayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          final double totalWidth =
              constraints.maxWidth;

          const double gap = 12;

          final double availableWidth =
              totalWidth - gap;

          final double backWidth =
              availableWidth * 0.24;

          final double questionTransition =
              (pageProgress - 1.0)
                  .clamp(0.0, 1.0);

          final double animationValue =
              Curves
                  .easeInOutCubicEmphasized
                  .transform(
                questionTransition,
              );

          final double currentBackWidth =
              backWidth * animationValue;

          final double currentContinueWidth =
              totalWidth -
              currentBackWidth -
              (gap * animationValue);

          final double backSlide =
              backWidth *
              (1.0 - animationValue);

          return Row(
            children: [
              // ==================================================
              // BACK BUTTON
              // ==================================================

              ClipRect(
                child: SizedBox(
                  width:
                      currentBackWidth,
                  height: 48,
                  child: Transform.translate(
                    offset: Offset(
                      backSlide,
                      0,
                    ),
                    child: SizedBox(
                      width: backWidth,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: onBack,
                        style:
                            ElevatedButton.styleFrom(
                          backgroundColor:
                              AppColors
                                  .primary
                                  .withOpacity(
                            0.15,
                          ),
                          foregroundColor:
                              AppColors
                                  .primary,
                          elevation: 0,
                          shadowColor:
                              Colors.transparent,
                          shape:
                              RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius
                                    .circular(
                              16,
                            ),
                          ),
                        ),
                        child:
                            const Text(
                          'Back',
                          maxLines: 1,
                          softWrap: false,
                          overflow:
                              TextOverflow.visible,
                          style:
                              TextStyle(
                            fontFamily:
                                'SF Pro',
                            fontWeight:
                                FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // ==================================================
              // GAP
              // ==================================================

              SizedBox(
                width:
                    gap * animationValue,
              ),

              // ==================================================
              // CONTINUE BUTTON
              // ==================================================

              SizedBox(
                width:
                    currentContinueWidth,
                height: 48,
                child:
                    ElevatedButton(
                  onPressed:
                      canContinue
                          ? onContinue
                          : null,
                  style:
                      ElevatedButton
                          .styleFrom(
                    backgroundColor:
                        canContinue
                            ? AppColors
                                .primary
                            : AppColors
                                .cardBackground,
                    disabledBackgroundColor:
                        AppColors
                            .cardBackground,
                    foregroundColor:
                        canContinue
                            ? AppColors.white
                            : AppColors
                                .textLightGrey,
                    elevation: 0,
                    shadowColor:
                        Colors.transparent,
                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius
                              .circular(
                        9999,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .center,
                    mainAxisSize:
                        MainAxisSize.min,
                    children: [
                      Text(
                        continueText,
                        style:
                            const TextStyle(
                          fontFamily:
                              'SF Pro',
                          fontWeight:
                              FontWeight.w600,
                          fontSize: 14,
                          letterSpacing:
                              0.14,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 16,
                        color: canContinue
                            ? AppColors.white
                            : AppColors
                                .textLightGrey,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// ============================================================
// ONBOARDING PROGRESS
// ============================================================

class _OnboardingDots
    extends StatelessWidget {
  final int currentIndex;

  const _OnboardingDots({
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center,
      children: List.generate(
        2,
        (index) {
          final bool active =
              index == currentIndex;

          return AnimatedContainer(
            duration:
                const Duration(
              milliseconds: 300,
            ),
            curve:
                Curves
                    .easeInOutCubicEmphasized,
            margin:
                const EdgeInsets
                    .symmetric(
              horizontal: 4,
            ),
            width:
                active ? 24 : 8,
            height: 8,
            decoration:
                BoxDecoration(
              color: active
                  ? AppColors.primary
                  : AppColors.outlineGrey,
              borderRadius:
                  BorderRadius.circular(
                4,
              ),
            ),
          );
        },
      ),
    );
  }
}

// ============================================================
// QUESTION PROGRESS DOTS
// ============================================================

class _QuestionDots
    extends StatelessWidget {
  final int totalDots;
  final int currentIndex;

  const _QuestionDots({
    required this.totalDots,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16,
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: List.generate(
          totalDots,
          (index) {
            final bool active =
                index == currentIndex;

            return AnimatedContainer(
              duration:
                  const Duration(
                milliseconds: 300,
              ),
              curve:
                  Curves
                      .easeInOutCubicEmphasized,
              margin:
                  const EdgeInsets
                      .symmetric(
                horizontal: 4,
              ),
              width:
                  active ? 10 : 8,
              height:
                  active ? 10 : 8,
              decoration:
                  BoxDecoration(
                shape:
                    BoxShape.circle,
                color: active
                    ? AppColors.primary
                    : AppColors
                        .outlineGrey,
              ),
            );
          },
        ),
      ),
    );
  }
}
