import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../models/user_details_draft.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class Question3Content extends StatefulWidget {
  final ValueChanged<bool> onCanContinueChanged;

  const Question3Content({
    super.key,
    required this.onCanContinueChanged,
  });

  @override
  State<Question3Content> createState() =>
      _Question3ContentState();
}

class _Question3ContentState
    extends State<Question3Content>
    with AutomaticKeepAliveClientMixin {
  late TextEditingController _drinksController;
  late TextEditingController _moneyController;

  String? _selectedDrinkingLevel;

  final Set<String> _selectedTriggers = {};

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    final answers = UserDetailsDraft.instance;

    _drinksController = TextEditingController(
      text: (answers.drinksPerWeek).toString(),
    );

    _moneyController = TextEditingController(
      text: (answers.moneySpentPerWeek).toString(),
    );

    _selectedDrinkingLevel = answers.drinkingLevel;
    _selectedTriggers.addAll(answers.triggers);

    _drinksController.addListener(_saveDrinks);
    _moneyController.addListener(_saveMoney);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      widget.onCanContinueChanged(true);
    });
  }

  int get _drinks {
    return int.tryParse(_drinksController.text.trim()) ?? 0;
  }

  int get _money {
    return int.tryParse(_moneyController.text.trim()) ?? 0;
  }

  void _saveDrinks() {
    final value = _drinks.clamp(0, 999);

    if (value != _drinks) {
      _drinksController.text = value.toString();
      _drinksController.selection = TextSelection.collapsed(
        offset: _drinksController.text.length,
      );
    }

    UserDetailsDraft.instance.setDrinksPerWeek(value);
  }

  void _saveMoney() {
    final value = _money.clamp(0, 999);

    if (value != _money) {
      _moneyController.text = value.toString();
      _moneyController.selection = TextSelection.collapsed(
        offset: _moneyController.text.length,
      );
    }

    UserDetailsDraft.instance.setMoneySpentPerWeek(value);
  }

  void _changeDrinks(int delta) {
    final value = (_drinks + delta).clamp(0, 999);

    _drinksController.text = value.toString();
    _drinksController.selection = TextSelection.collapsed(
      offset: _drinksController.text.length,
    );

    UserDetailsDraft.instance.setDrinksPerWeek(value);

    setState(() {});
  }

  void _changeMoney(int delta) {
    final value = (_money + delta).clamp(0, 999);

    _moneyController.text = value.toString();
    _moneyController.selection = TextSelection.collapsed(
      offset: _moneyController.text.length,
    );

    UserDetailsDraft.instance.setMoneySpentPerWeek(value);

    setState(() {});
  }

  void _selectDrinkingLevel(String level) {
    setState(() {
      _selectedDrinkingLevel = level;
    });

    UserDetailsDraft.instance.setDrinkingLevel(level);
  }

  void _toggleTrigger(String trigger) {
    setState(() {
      if (_selectedTriggers.contains(trigger)) {
        _selectedTriggers.remove(trigger);
      } else {
        _selectedTriggers.add(trigger);
      }
    });

    UserDetailsDraft.instance.toggleTrigger(trigger);
  }

  @override
  void dispose() {
    _drinksController.dispose();
    _moneyController.dispose();
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
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),

            Center(
              child: Text(
                l10n.question3Title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                  height: 1.2,
                  color: AppColors.divider,
                ),
              ),
            ),

            const SizedBox(height: 28),

            Text(
              l10n.drinksPerWeek,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: AppColors.textBlack,
              ),
            ),

            const SizedBox(height: 10),

            _StepperRow(
              controller: _drinksController,
              onDecrement: () => _changeDrinks(-1),
              onIncrement: () => _changeDrinks(1),
            ),

            const SizedBox(height: 22),

            Text(
              l10n.moneySpentPerWeek,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: AppColors.textBlack,
              ),
            ),

            const SizedBox(height: 10),

            _StepperRow(
              controller: _moneyController,
              prefix: '\$',
              onDecrement: () => _changeMoney(-1),
              onIncrement: () => _changeMoney(1),
            ),

            const SizedBox(height: 22),

            Text(
              l10n.drinkingLevel,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: AppColors.textBlack,
              ),
            ),

            const SizedBox(height: 10),

            Wrap(
              spacing: 8,
              runSpacing: 8,
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

            const SizedBox(height: 22),

            Text(
              l10n.triggersLabel,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: AppColors.textBlack,
              ),
            ),

            const SizedBox(height: 10),

            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: triggers
                  .map(
                    (trigger) => _SelectableChip(
                  label: trigger,
                  isSelected: _selectedTriggers.contains(trigger),
                  onTap: () => _toggleTrigger(trigger),
                ),
              )
                  .toList(),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class _StepperRow extends StatelessWidget {
  final TextEditingController controller;
  final String prefix;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  const _StepperRow({
    required this.controller,
    required this.onDecrement,
    required this.onIncrement,
    this.prefix = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.outlineGrey),
      ),
      child: Row(
        children: [
          _StepperButton(icon: Icons.remove, onTap: onDecrement),
          Expanded(
            child: Center(
              child: IntrinsicWidth(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (prefix.isNotEmpty)
                      Text(
                        prefix,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: AppColors.textBlack,
                        ),
                      ),
                    IntrinsicWidth(
                      child: TextField(
                        controller: controller,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
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
          _StepperButton(icon: Icons.add, onTap: onIncrement),
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
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.cardBackground,
        ),
        child: Icon(icon, size: 18, color: AppColors.textBlack),
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
      borderRadius: BorderRadius.circular(9999),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.divider : AppColors.white,
          borderRadius: BorderRadius.circular(9999),
          border: Border.all(
            color: isSelected ? AppColors.divider : AppColors.outlineGrey,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: isSelected ? AppColors.white : AppColors.textGrey,
          ),
        ),
      ),
    );
  }
}