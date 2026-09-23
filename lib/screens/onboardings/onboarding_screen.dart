
import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../models/user_details_draft.dart';
import '../../services/analytics_service.dart';

import '../analyzing_jorney/analyzing_journey_screen.dart';
import '../bottom_nav/home_screen.dart';

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

  final PageController _pageController =
      PageController();

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
        answers.goal != null &&
        answers.goal!.isNotEmpty;

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
    if (page < 0 ||
        page >= _canContinue.length) {
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
  // CONTINUE
  // ============================================================

  void _goNext() {
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
      _pageController.nextPage(
        duration: const Duration(
          milliseconds: 400,
        ),
        curve: Curves.easeInOutCubic,
      );
    } else {
      _createPlan();
    }
  }

  // ============================================================
  // BACK
  // ============================================================

  void _goBack() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(
          milliseconds: 400,
        ),
        curve: Curves.easeInOutCubic,
      );
    } else {
      Navigator.of(context).maybePop();
    }
  }

  // ============================================================
  // SKIP ONBOARDING
  //
  // Onboarding 1/2 -> Question 1
  // ============================================================

  void _skipOnboarding() {
    _pageController.animateToPage(
      2,
      duration: const Duration(
        milliseconds: 450,
      ),
      curve: Curves.easeInOutCubic,
    );
  }

  // ============================================================
  // SKIP QUESTIONS
  //
  // Any question except last question -> HomeScreen
  // ============================================================

  void _skipQuestions() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      ),
      (route) => false,
    );
  }

  // ============================================================
  // PAGE CHANGED
  //
  // IMPORTANT:
  // No button entrance animation here.
  // Only PageView's own smooth slide animation is used.
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

  void _createPlan() {
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

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (_) =>
            const AnalyzingJourneyScreen(),
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
    final l10n = AppLocalizations.of(context)!;

    final bool isOnboarding =
        _currentPage < 2;

    final bool isQuestion =
        _currentPage >= 2;

    final bool isLastPage =
        _currentPage == _totalPages - 1;

    final bool canContinue =
        (_currentPage >= 0 &&
                _currentPage < _canContinue.length)
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
                padding: const EdgeInsets.fromLTRB(
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
                          BorderRadius.circular(10),
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Text(
                          l10n.skip,
                          style: const TextStyle(
                            fontFamily: 'SF Pro',
                            fontWeight:
                                FontWeight.w500,
                            fontSize: 16,
                            color:
                                AppColors.textLightGrey,
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
                padding: const EdgeInsets.fromLTRB(
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
                          BorderRadius.circular(20),
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
                    //
                    // Hidden on the last question.
                    // ------------------------------------------

                    if (!isLastPage)
                      InkWell(
                        onTap: _skipQuestions,
                        borderRadius:
                            BorderRadius.circular(10),
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: Text(
                            l10n.skip,
                            style: const TextStyle(
                              fontFamily: 'SF Pro',
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
                controller: _pageController,

                physics:
                    const BouncingScrollPhysics(),

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
                      _currentPage.clamp(0, 1),
                ),
              ),

            // ==================================================
            // SHARED BOTTOM BUTTON
            //
            // ONBOARDING:
            //     [        Continue →        ]
            //
            // QUESTIONS:
            //     [ Back ] [    Continue →    ]
            //
            // IMPORTANT:
            // There is NO separate animation here.
            // The only animation is the PageView slide.
            // ==================================================

            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                8,
                20,
                20,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: Row(
                  children: [
                    // ==========================================
                    // BACK BUTTON
                    //
                    // Only appears on question screens.
                    // ==========================================

                    if (isQuestion) ...[
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: _goBack,
                            style:
                                ElevatedButton.styleFrom(
                              backgroundColor:
                                  AppColors.primary
                                      .withOpacity(0.15),
                              foregroundColor:
                                  AppColors.primary,
                              elevation: 0,
                              shadowColor:
                                  Colors.transparent,
                              shape:
                                  RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(
                                  16,
                                ),
                              ),
                            ),
                            child: const Text(
                              'Back',
                              style: TextStyle(
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

                      const SizedBox(width: 12),
                    ],

                    // ==========================================
                    // SAME CONTINUE BUTTON
                    //
                    // Same pill shape on onboarding
                    // and question screens.
                    // ==========================================

                    Expanded(
                      flex: isQuestion ? 8 : 1,
                      child: SizedBox(
                        height: 48,
                        child: ElevatedButton(
                          onPressed: canContinue
                              ? _goNext
                              : null,
                          style:
                              ElevatedButton.styleFrom(
                            backgroundColor:
                                canContinue
                                    ? AppColors.primary
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
                                  BorderRadius.circular(
                                9999,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            mainAxisSize:
                                MainAxisSize.min,
                            children: [
                              Text(
                                l10n.continueButton,
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
              milliseconds: 250,
            ),
            curve:
                Curves.easeInOut,
            margin:
                const EdgeInsets.symmetric(
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
                milliseconds: 250,
              ),
              curve:
                  Curves.easeInOut,
              margin:
                  const EdgeInsets.symmetric(
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
                    : AppColors.outlineGrey,
              ),
            );
          },
        ),
      ),
    );
  }
}
