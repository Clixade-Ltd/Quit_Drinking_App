import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../models/user_details_draft.dart';
import '../../../models/onboarding_answers.dart';

class Question4Content extends StatefulWidget {
  final ValueChanged<bool> onCanContinueChanged;

  const Question4Content({
    super.key,
    required this.onCanContinueChanged,
  });

  @override
  State<Question4Content> createState() =>
      _Question4ContentState();
}

class _Question4ContentState
    extends State<Question4Content>
    with AutomaticKeepAliveClientMixin {
  final Set<String> _selected = {};

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    _selected.addAll(
      UserDetailsDraft.instance.quitReasons,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      widget.onCanContinueChanged(
        _selected.isNotEmpty,
      );
    });
  }

  void _toggleReason(String label) {
    setState(() {
      if (_selected.contains(label)) {
        _selected.remove(label);
      } else {
        _selected.add(label);
      }
    });

    UserDetailsDraft.instance.toggleReason(label);

    widget.onCanContinueChanged(
      _selected.isNotEmpty,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final l10n = AppLocalizations.of(context)!;

    final List<_ReasonOption> options = [
      _ReasonOption(
        icon: Icons.favorite_border,
        label: l10n.reasonImproveHealth,
      ),
      _ReasonOption(
        icon: Icons.savings_outlined,
        label: l10n.reasonSaveMoney,
      ),
      _ReasonOption(
        icon: Icons.people_outline,
        label: l10n.reasonFamily,
      ),
      _ReasonOption(
        icon: Icons.nightlight_outlined,
        label: l10n.reasonBetterSleep,
      ),
      _ReasonOption(
        icon: Icons.psychology_outlined,
        label: l10n.reasonMentalClarity,
      ),
      _ReasonOption(
        icon: Icons.fitness_center,
        label: l10n.reasonFitness,
      ),
      _ReasonOption(
        icon: Icons.self_improvement,
        label: l10n.reasonSelfRespect,
      ),
      _ReasonOption(
        icon: Icons.groups_outlined,
        label: l10n.reasonCareer,
      ),
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        22.w,
        10.h,
        22.w,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.question4Title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
              height: 1.25,
              color: AppColors.primary,
            ),
          ),

          SizedBox(height: 6.h),

          Text(
            l10n.question4Subtitle,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textGrey,
            ),
          ),

          SizedBox(height: 20.h),

          Column(
            children: options.map((option) {
              final bool isSelected =
                  _selected.contains(option.label);

              return Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: InkWell(
                  borderRadius: BorderRadius.circular(14.r),
                  onTap: () => _toggleReason(option.label),
                  child: Container(
                    width: double.infinity,
                    height: 64.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.iconBackground
                          : AppColors.outlineGrey2,
                      borderRadius:
                          BorderRadius.circular(14.r),
                      border: Border.all(
                        color: isSelected
                            ? AppColors.primary
                            : Colors.transparent,
                        width: 1.5.w,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          option.icon,
                          color: AppColors.primary,
                          size: 24.sp,
                        ),

                        SizedBox(width: 14.w),

                        Expanded(
                          child: Text(
                            option.label,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: AppColors.textBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 18.h),
        ],
      ),
    );
  }
}

class _ReasonOption {
  final IconData icon;
  final String label;

  const _ReasonOption({
    required this.icon,
    required this.label,
  });
}