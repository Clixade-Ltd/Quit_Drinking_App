import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../models/user_details_draft.dart';
import '../../analyzing_jorney/analyzing_journey_screen.dart';
import '../question1/question1_content.dart';
import '../question3/question3_content.dart';
import '../question4/question4_content.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class QuestionsFlowScreen extends StatefulWidget {
  const QuestionsFlowScreen({super.key});

  @override
  State<QuestionsFlowScreen> createState() =>
      _QuestionsFlowScreenState();
}

class _QuestionsFlowScreenState extends State<QuestionsFlowScreen> {
  static const int _pageCount = 3;

  final PageController _pageController = PageController();

  int _currentPage = 0;

  late List<bool> _canContinue;

  @override
  void initState() {
    super.initState();

    final answers = UserDetailsDraft.instance;

    final bool question1Answered =
        answers.goal != null && answers.goal!.isNotEmpty;

    const bool question3Answered = true;

    final bool question4Answered =
        answers.quitReasons.isNotEmpty;

    _canContinue = [
      question1Answered,
      question3Answered,
      question4Answered,
    ];
  }

  void _setCanContinue(int page, bool value) {
    if (_canContinue[page] == value) {
      return;
    }

    if (!mounted) return;

    setState(() {
      _canContinue[page] = value;
    });
  }

  void _goNext() {
    if (!_canContinue[_currentPage]) {
      return;
    }

    if (_currentPage < _pageCount - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutCubic,
      );
    } else {
      _createPlan();
    }
  }

  void _goBack() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutCubic,
      );
    } else {
      Navigator.of(context).maybePop();
    }
  }

  void _createPlan() {
    final answers = UserDetailsDraft.instance;

    debugPrint(
      'Name: ${answers.name}\n'
          '* Goal: ${answers.goal}\n'
          '* Drinking Level: ${answers.drinkingLevel}\n'
          '* Drinks per week: ${answers.drinksPerWeek}\n'
          '* Money spent per week: ${answers.moneySpentPerWeek}\n'
          '* Triggers: ${answers.triggers.join(', ')}\n'
          '* Motivations: ${answers.quitReasons.join(', ')}',
    );

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (_) => const AnalyzingJourneyScreen(),
      ),
          (route) => false,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final bool canContinue = _canContinue[_currentPage];
    final bool isLastPage = _currentPage == _pageCount - 1;

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 7, 20, 0),
              child: Row(
                children: [
                  InkWell(
                    onTap: _goBack,
                    child: const Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        Icons.chevron_left,
                        color: AppColors.primary,
                        size: 38,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: _SegmentedProgressBar(
                      segmentCount: _pageCount,
                      currentIndex: _currentPage,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  if (!mounted) return;

                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  Question1Content(
                    onCanContinueChanged: (value) {
                      _setCanContinue(0, value);
                    },
                  ),
                  Question3Content(
                    onCanContinueChanged: (value) {
                      _setCanContinue(1, value);
                    },
                  ),
                  Question4Content(
                    onCanContinueChanged: (value) {
                      _setCanContinue(2, value);
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
              child: SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: canContinue ? _goNext : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: canContinue
                        ? AppColors.primary
                        : AppColors.cardBackground,
                    disabledBackgroundColor: AppColors.cardBackground,
                    foregroundColor: canContinue
                        ? AppColors.white
                        : AppColors.textLightGrey,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        isLastPage ? 9999 : 16,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        isLastPage ? l10n.continueButton : l10n.next,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      if (isLastPage) ...[
                        const SizedBox(width: 8),
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: canContinue
                              ? AppColors.white
                              : AppColors.textLightGrey,
                        ),
                      ],
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

class _SegmentedProgressBar extends StatelessWidget {
  final int segmentCount;
  final int currentIndex;

  const _SegmentedProgressBar({
    required this.segmentCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8,
      child: Row(
        children: List.generate(
          segmentCount,
              (i) {
            final bool isFilled = i <= currentIndex;

            return Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: i == segmentCount - 1 ? 0 : 6,
                ),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  height: 8,
                  decoration: BoxDecoration(
                    color: isFilled ? AppColors.primary : AppColors.outlineGrey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}