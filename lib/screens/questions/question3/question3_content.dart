import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../models/user_details_draft.dart';

class Question3Content extends StatefulWidget {
  final ValueChanged<bool> onCanContinueChanged;

  const Question3Content({
    super.key,
    required this.onCanContinueChanged,
  });

  @override
  State<Question3Content> createState() => _Question3ContentState();
}

class _Question3ContentState extends State<Question3Content>
    with AutomaticKeepAliveClientMixin {
  late TextEditingController _drinksController;
  late TextEditingController _moneyController;

  final FocusNode _drinksFocus = FocusNode();
  final FocusNode _moneyFocus = FocusNode();

  String? _selectedDrinkingLevel;

  final Set<String> _selectedTriggers = {};

  static const int _maxDrinks = 9999;
  static const int _maxMoney = 99999;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    final answers = UserDetailsDraft.instance;

    _drinksController = TextEditingController(
      text: answers.drinksPerWeek.toString(),
    );

    _moneyController = TextEditingController(
      text: answers.moneySpentPerWeek.toString(),
    );

    _selectedDrinkingLevel = answers.drinkingLevel;
    _selectedTriggers.addAll(answers.triggers);

    _drinksController.addListener(_saveDrinks);
    _moneyController.addListener(_saveMoney);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _updateValidation();
    });
  }

  int get _drinks {
    return int.tryParse(_drinksController.text.trim()) ?? 0;
  }

  int get _money {
    return int.tryParse(_moneyController.text.trim()) ?? 0;
  }

  void _saveDrinks() {
    final value = _drinks.clamp(0, _maxDrinks);

    if (value != _drinks) {
      _drinksController.text = value.toString();
      _drinksController.selection = TextSelection.collapsed(
        offset: _drinksController.text.length,
      );
    }

    UserDetailsDraft.instance.setDrinksPerWeek(value);
    _updateValidation();
  }

  void _saveMoney() {
    final value = _money.clamp(0, _maxMoney);

    if (value != _money) {
      _moneyController.text = value.toString();
      _moneyController.selection = TextSelection.collapsed(
        offset: _moneyController.text.length,
      );
    }

    UserDetailsDraft.instance.setMoneySpentPerWeek(value);
    _updateValidation();
  }

  void _changeDrinks(int delta) {
    final value = (_drinks + delta).clamp(0, _maxDrinks);

    _drinksController.text = value.toString();
    _drinksController.selection = TextSelection.collapsed(
      offset: _drinksController.text.length,
    );

    UserDetailsDraft.instance.setDrinksPerWeek(value);

    setState(() {});
    _updateValidation();
  }

  void _changeMoney(int delta) {
    final value = (_money + delta).clamp(0, _maxMoney);

    _moneyController.text = value.toString();
    _moneyController.selection = TextSelection.collapsed(
      offset: _moneyController.text.length,
    );

    UserDetailsDraft.instance.setMoneySpentPerWeek(value);

    setState(() {});
    _updateValidation();
  }

  void _selectDrinkingLevel(String level) {
    setState(() {
      _selectedDrinkingLevel = level;
    });

    UserDetailsDraft.instance.setDrinkingLevel(level);
    _updateValidation();
  }

  void _toggleTrigger(String trigger) {
  setState(() {
    if (_selectedTriggers.contains(trigger)) {
      // Selected trigger ko remove karna allow hai
      _selectedTriggers.remove(trigger);
    } else {
      // Maximum 3 triggers allowed
      if (_selectedTriggers.length >= 3) {
        return;
      }

      _selectedTriggers.add(trigger);
    }
  });

  UserDetailsDraft.instance.toggleTrigger(trigger);
  _updateValidation();
}
 void _updateValidation() {
  final bool canContinue =
      _selectedDrinkingLevel != null &&
      _selectedTriggers.length == 3;

  widget.onCanContinueChanged(canContinue);
}

  @override
  void dispose() {
    _drinksController.dispose();
    _moneyController.dispose();
    _drinksFocus.dispose();
    _moneyFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final l10n = AppLocalizations.of(context)!;

    final List<String> drinkingLevels = [
      l10n.levelSocial,
      l10n.levelRegular,
      l10n.levelHeavy,
      l10n.levelDependent,
    ];

    final List<String> triggers = [
      l10n.triggerStress,
      l10n.triggerLoneliness,
      l10n.triggerHabit,
      l10n.triggerSadness,
      l10n.triggerAnger,
      l10n.triggerBoredom,
      l10n.triggerSocialPressure,
      l10n.triggerCelebration,
      l10n.triggerSleepProblems,
      l10n.triggerWorkPressure,
    ];

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.h),

            Center(
              child: Text(
                l10n.question3Title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 26.sp,
                  height: 1.2,
                  color: AppColors.divider,
                ),
              ),
            ),

            SizedBox(height: 28.h),

            Text(
              l10n.drinksPerWeek,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: AppColors.textBlack,
              ),
            ),

            SizedBox(height: 10.h),

            _StepperRow(
              controller: _drinksController,
              focusNode: _drinksFocus,
              onDecrement: () => _changeDrinks(-1),
              onIncrement: () => _changeDrinks(1),
            ),

            SizedBox(height: 22.h),

            Text(
              l10n.moneySpentPerWeek,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: AppColors.textBlack,
              ),
            ),

            SizedBox(height: 10.h),

            _StepperRow(
              controller: _moneyController,
              focusNode: _moneyFocus,
              prefix: '\$',
              onDecrement: () => _changeMoney(-1),
              onIncrement: () => _changeMoney(1),
            ),

            SizedBox(height: 22.h),

            Text(
              l10n.drinkingLevel,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: AppColors.textBlack,
              ),
            ),

            SizedBox(height: 10.h),

            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: drinkingLevels
                  .map(
                    (level) => _SelectableChip(
                      label: level,
                      isSelected: level == _selectedDrinkingLevel,
                      onTap: () => _selectDrinkingLevel(level),
                    ),
                  )
                  .toList(),
            ),

            SizedBox(height: 22.h),

       Row(
  children: [
    Text(
      l10n.triggersLabel,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 15.sp,
        color: AppColors.textBlack,
      ),
    ),
    SizedBox(width: 6.w),
    Text(
      '(Select any 3)',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13.sp,
        color: AppColors.textLightGrey,
      ),
    ),
  ],
),

            SizedBox(height: 10.h),

            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: triggers
                  .map(
                    (trigger) => _SelectableChip(
                      label: trigger,
                      isSelected:
                          _selectedTriggers.contains(trigger),
                      onTap: () => _toggleTrigger(trigger),
                    ),
                  )
                  .toList(),
            ),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}

class _StepperRow extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String prefix;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  const _StepperRow({
    required this.controller,
    required this.focusNode,
    required this.onDecrement,
    required this.onIncrement,
    this.prefix = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: AppColors.outlineGrey,
        ),
      ),
      child: Row(
        children: [
          _StepperButton(
            icon: Icons.remove,
            onTap: onDecrement,
          ),

          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                focusNode.requestFocus();

                controller.selection = TextSelection(
                  baseOffset: 0,
                  extentOffset: controller.text.length,
                );
              },
              child: Center(
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (prefix.isNotEmpty)
                        Text(
                          prefix,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22.sp,
                            color: AppColors.textBlack,
                          ),
                        ),

                      IntrinsicWidth(
                        child: TextField(
                          controller: controller,
                          focusNode: focusNode,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            TextInputFormatter.withFunction(
                              (oldValue, newValue) {
                                if (newValue.text.length > 1 &&
                                    newValue.text.startsWith('0')) {
                                  final stripped =
                                      newValue.text.replaceFirst(
                                    RegExp(r'^0+'),
                                    '',
                                  );

                                  final result =
                                      stripped.isEmpty ? '0' : stripped;

                                  return TextEditingValue(
                                    text: result,
                                    selection:
                                        TextSelection.collapsed(
                                      offset: result.length,
                                    ),
                                  );
                                }

                                return newValue;
                              },
                            ),
                          ],
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22.sp,
                            color: AppColors.textBlack,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          _StepperButton(
            icon: Icons.add,
            onTap: onIncrement,
          ),
        ],
      ),
    );
  }
}

class _StepperButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _StepperButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        width: 40.w,
        height: 40.w,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.cardBackground,
        ),
        child: Icon(
          icon,
          size: 18.sp,
          color: AppColors.textBlack,
        ),
      ),
    );
  }
}

class _SelectableChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _SelectableChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(9999.r),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 10.h,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.divider
              : AppColors.white,
          borderRadius: BorderRadius.circular(9999.r),
          border: Border.all(
            color: isSelected
                ? AppColors.divider
                : AppColors.outlineGrey,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: isSelected
                ? AppColors.white
                : AppColors.textGrey,
          ),
        ),
      ),
    );
  }
}