import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../models/user_details_draft.dart';
import '../../../services/analytics_service.dart';
import '../../../widgets/outlined_select_row.dart';
import '../../../models/onboarding_answers.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class Question1Content extends StatefulWidget {
  final ValueChanged<bool> onCanContinueChanged;

  const Question1Content({
    super.key,
    required this.onCanContinueChanged,
  });

  @override
  State<Question1Content> createState() => _Question1ContentState();
}

class _Question1ContentState extends State<Question1Content>
    with AutomaticKeepAliveClientMixin {
  String? _selectedGoal;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    _selectedGoal = UserDetailsDraft.instance.goal;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      widget.onCanContinueChanged(_selectedGoal != null);
    });
  }

  void _selectGoal(String goal) {
    setState(() {
      _selectedGoal = goal;
    });

    UserDetailsDraft.instance.setGoal(goal);
    OnboardingAnswers.instance.setGoal(goal);

    // NEW — onboarding goal selected
    AnalyticsService.instance.onboardingGoalSelected(goal);

    widget.onCanContinueChanged(true);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = AppLocalizations.of(context)!;

    final List<String> goals = [
      l10n.goalQuitCompletely,
      l10n.goalReduceDrinking,
      l10n.goalTakeABreak,
      l10n.goalBuildHealthierHabits,
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 12),

          Text(
            l10n.question1Title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            l10n.question1Subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              height: 1.3,
              color: AppColors.textBlack,
            ),
          ),

          const SizedBox(height: 30),

          for (final goal in goals) ...[
            OutlinedSelectRow(
              label: goal,
              isSelected: _selectedGoal == goal,
              onTap: () => _selectGoal(goal),
            ),
            const SizedBox(height: 14),
          ],

          const SizedBox(height: 12),
        ],
      ),
    );
  }
}