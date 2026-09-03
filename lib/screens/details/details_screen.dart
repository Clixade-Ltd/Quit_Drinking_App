import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/screens/questions/flow_screen/questions_flow_screen.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../models/user_details_draft.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() =>
      _DetailsScreenState();
}

class _DetailsScreenState
    extends State<DetailsScreen> {
  final TextEditingController
  _nameController =
  TextEditingController();

  final TextEditingController
  _ageController =
  TextEditingController();

  final TextEditingController
  _heightController =
  TextEditingController();

  final TextEditingController
  _weightController =
  TextEditingController();

  String _selectedSex = '';

  String _heightUnit = 'cm';
  String _weightUnit = 'kg';

  // 'feet' here means decimal feet (e.g. 182cm -> 5.97 ft)
  static const List<String> _heightUnits = [
    'feet',
    'cm',
  ];

  static const List<String> _weightUnits = [
    'kg',
    'lbs',
  ];

  bool get _canContinue =>
      _nameController.text
          .trim()
          .isNotEmpty &&
          _ageController.text
              .trim()
              .isNotEmpty &&
          _heightController.text
              .trim()
              .isNotEmpty &&
          _weightController.text
              .trim()
              .isNotEmpty;

  @override
  void initState() {
    super.initState();

    _restoreSavedData();

    _nameController
        .addListener(_onFieldsChanged);

    _ageController
        .addListener(_onFieldsChanged);

    _heightController
        .addListener(_onFieldsChanged);

    _weightController
        .addListener(_onFieldsChanged);
  }

  void _restoreSavedData() {
    final draft =
        UserDetailsDraft.instance;

    if (draft.name != null &&
        draft.name!.isNotEmpty) {
      _nameController.text =
      draft.name!;
    }

    if (draft.age != null &&
        draft.age! > 0) {
      _ageController.text =
          draft.age!.toString();
    }

    // NOTE: draft.sex is validated against the localized
    // _sexOptions list inside build() instead, since l10n
    // isn't available yet in initState(). See build().
    if (draft.sex != null &&
        draft.sex!.isNotEmpty) {
      _selectedSex = draft.sex!;
    }

    _heightUnit =
    _heightUnits.contains(
      draft.heightUnit,
    )
        ? draft.heightUnit
        : 'cm';

    _weightUnit =
    _weightUnits.contains(
      draft.weightUnit,
    )
        ? draft.weightUnit
        : 'kg';

    if (draft.heightCm != null &&
        draft.heightCm! > 0) {
      if (_heightUnit == 'feet') {
        final feet =
            draft.heightCm! / 30.48;

        _heightController.text =
            _formatNumber(feet);
      } else {
        _heightController.text =
            _formatNumber(
              draft.heightCm!,
            );
      }
    }

    if (draft.weightKg != null &&
        draft.weightKg! > 0) {
      if (_weightUnit == 'lbs') {
        final lbs =
            draft.weightKg! * 2.20462;

        _weightController.text =
            _formatNumber(lbs);
      } else {
        _weightController.text =
            _formatNumber(
              draft.weightKg!,
            );
      }
    }
  }

  String _formatNumber(double value) {
    return value
        .toStringAsFixed(1)
        .replaceFirst(
      RegExp(r'\.0$'),
      '',
    );
  }

  void _onFieldsChanged() {
    if (mounted) {
      setState(() {});
    }

    _saveDraft();
  }

  void _saveDraft() {
    final height =
    _parseHeightToCm();

    final weight =
    _parseWeightToKg();

    UserDetailsDraft.instance.set(
      name:
      _nameController.text.trim(),
      age:
      int.tryParse(
        _ageController.text
            .trim(),
      ) ??
          0,
      sex: _selectedSex,
      heightCm: height,
      weightKg: weight,
      heightUnit: _heightUnit,
      weightUnit: _weightUnit,
    );
  }

  double _parseHeightToCm() {
    final value = double.tryParse(
      _heightController.text.trim(),
    );

    if (value == null) {
      return 0;
    }

    if (_heightUnit == 'feet') {
      return value * 30.48;
    }

    return value;
  }

  double _parseWeightToKg() {
    final value = double.tryParse(
      _weightController.text.trim(),
    );

    if (value == null) {
      return 0;
    }

    if (_weightUnit == 'lbs') {
      return value * 0.453592;
    }

    return value;
  }

  void _changeHeightUnit(
      String unit,
      ) {
    if (unit == _heightUnit) {
      return;
    }

    final value = double.tryParse(
      _heightController.text.trim(),
    );

    if (value != null) {
      double converted;

      if (unit == 'feet') {
        converted = value / 30.48;
      } else {
        converted = value * 30.48;
      }

      _heightController.text =
          _formatNumber(converted);
    }

    setState(() {
      _heightUnit = unit;
    });

    _saveDraft();
  }

  void _changeWeightUnit(
      String unit,
      ) {
    if (unit == _weightUnit) {
      return;
    }

    final value = double.tryParse(
      _weightController.text.trim(),
    );

    if (value != null) {
      double converted;

      if (unit == 'lbs') {
        converted = value * 2.20462;
      } else {
        converted = value / 2.20462;
      }

      _weightController.text =
          _formatNumber(converted);
    }

    setState(() {
      _weightUnit = unit;
    });

    _saveDraft();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  void _onContinue() {
    _saveDraft();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) =>
        const QuestionsFlowScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final List<String> sexOptions = [
      l10n.sexFemale,
      l10n.sexMale,
    ];

    // Fall back to (or re-validate) the selected sex against the
    // localized options now that l10n is available.
    if (!sexOptions.contains(_selectedSex)) {
      _selectedSex = sexOptions.first;
    }

    return Scaffold(
      backgroundColor:
      AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 44),

            Expanded(
              child:
              SingleChildScrollView(
                padding:
                const EdgeInsets.fromLTRB(
                  20,
                  16,
                  20,
                  0,
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.tellUsAboutYourself,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.w700,
                        fontSize: 28,
                        color:
                        AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(
                      height: 8,
                    ),

                    Text(
                      l10n.detailsSubtitle,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 14,
                        height: 1.4,
                        color:
                        AppColors.textGrey,
                      ),
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    _buildLabel(l10n.nameLabel),

                    const SizedBox(
                      height: 8,
                    ),

                    _buildTextField(
                      controller:
                      _nameController,
                      hint: l10n.nameHint,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    _buildLabel(l10n.ageLabel),

                    const SizedBox(
                      height: 8,
                    ),

                    _buildTextField(
                      controller:
                      _ageController,
                      hint: l10n.ageHint,
                      keyboardType:
                      TextInputType.number,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    _buildLabel(
                      l10n.sexAssignedAtBirth,
                    ),

                    const SizedBox(
                      height: 8,
                    ),

                    Container(
                      padding:
                      const EdgeInsets.all(
                        4,
                      ),
                      decoration:
                      BoxDecoration(
                        color: AppColors
                            .outlineGrey2,
                        borderRadius:
                        BorderRadius
                            .circular(
                          12,
                        ),
                      ),
                      child: Row(
                        children:
                        sexOptions
                            .map(
                              (option) {
                            final bool
                            isSelected =
                                _selectedSex ==
                                    option;

                            return Expanded(
                              child: InkWell(
                                borderRadius:
                                BorderRadius
                                    .circular(
                                  10,
                                ),
                                onTap: () {
                                  setState(
                                        () {
                                      _selectedSex =
                                          option;
                                    },
                                  );

                                  _saveDraft();
                                },
                                child:
                                Container(
                                  padding:
                                  const EdgeInsets
                                      .symmetric(
                                    vertical:
                                    12,
                                  ),
                                  decoration:
                                  BoxDecoration(
                                    color:
                                    isSelected
                                        ? AppColors
                                        .white
                                        : Colors
                                        .transparent,
                                    borderRadius:
                                    BorderRadius
                                        .circular(
                                      10,
                                    ),
                                  ),
                                  alignment:
                                  Alignment
                                      .center,
                                  child:
                                  Text(
                                    option,
                                    style:
                                    TextStyle(
                                      fontWeight:
                                      isSelected
                                          ? FontWeight
                                          .w700
                                          : FontWeight
                                          .w400,
                                      fontSize:
                                      14,
                                      color:
                                      isSelected
                                          ? AppColors
                                          .textBlack
                                          : AppColors
                                          .textGrey,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                            children: [
                              _buildLabel(
                                l10n.heightLabel,
                              ),

                              const SizedBox(
                                height: 8,
                              ),

                              _buildUnitTextField(
                                controller:
                                _heightController,
                                hint: l10n.heightHint,
                                unit:
                                _heightUnit,
                                units:
                                _heightUnits,
                                onUnitChanged:
                                _changeHeightUnit,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          width: 16,
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                            children: [
                              _buildLabel(
                                l10n.weightLabel,
                              ),

                              const SizedBox(
                                height: 8,
                              ),

                              _buildUnitTextField(
                                controller:
                                _weightController,
                                hint: l10n.weightHint,
                                unit:
                                _weightUnit,
                                units:
                                _weightUnits,
                                onUnitChanged:
                                _changeWeightUnit,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding:
              const EdgeInsets.fromLTRB(
                20,
                12,
                20,
                20,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _canContinue
                      ? _onContinue
                      : null,
                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor:
                    _canContinue
                        ? AppColors
                        .primary
                        : AppColors
                        .cardBackground,
                    disabledBackgroundColor:
                    AppColors
                        .cardBackground,
                    foregroundColor:
                    _canContinue
                        ? AppColors.white
                        : AppColors
                        .textLightGrey,
                    elevation: 0,
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
                        l10n.continueButton,
                        style: const TextStyle(
                          fontWeight:
                          FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),

                      const SizedBox(
                        width: 8,
                      ),

                      Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: _canContinue
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
    );
  }

  Widget _buildLabel(
      String text,
      ) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: AppColors.textBlack,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController
    controller,
    required String hint,
    TextInputType keyboardType =
        TextInputType.text,
  }) {
    return Container(
      decoration: BoxDecoration(
        color:
        AppColors.outlineGrey2,
        borderRadius:
        BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(
          fontSize: 16,
          color:
          AppColors.textBlack,
        ),
        decoration:
        InputDecoration(
          hintText: hint,
          hintStyle:
          const TextStyle(
            color:
            AppColors.textLightGrey,
          ),
          border:
          InputBorder.none,
          contentPadding:
          const EdgeInsets
              .symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
      ),
    );
  }

  /// Inline unit toggle shown as e.g. "kg · lbs" — the currently
  /// selected unit is bold/dark, the other is light grey. Tapping
  /// the unselected label switches the unit (matches the reference
  /// design where both options are always visible, no dropdown).
  ///
  /// NOTE: 'feet' / 'cm' / 'kg' / 'lbs' are intentionally left
  /// untranslated — these are universal measurement abbreviations.
  Widget _buildUnitToggle({
    required String selectedUnit,
    required List<String> units,
    required ValueChanged<String>
    onUnitChanged,
  }) {
    final List<Widget> children = [];

    for (int i = 0; i < units.length; i++) {
      final unit = units[i];
      final bool isSelected =
          unit == selectedUnit;

      if (i > 0) {
        children.add(
          Padding(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: Text(
              '·',
              style: TextStyle(
                fontSize: 13,
                color: AppColors
                    .textLightGrey,
              ),
            ),
          ),
        );
      }

      children.add(
        GestureDetector(
          behavior:
          HitTestBehavior.opaque,
          onTap: () =>
              onUnitChanged(unit),
          child: Text(
            unit,
            style: TextStyle(
              fontSize: 13,
              fontWeight: isSelected
                  ? FontWeight.w600
                  : FontWeight.w400,
              color: isSelected
                  ? AppColors.textBlack
                  : AppColors
                  .textLightGrey,
            ),
          ),
        ),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: children,
    );
  }

  Widget _buildUnitTextField({
    required TextEditingController
    controller,
    required String hint,
    required String unit,
    required List<String> units,
    required ValueChanged<String>
    onUnitChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
        color:
        AppColors.outlineGrey2,
        borderRadius:
        BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        keyboardType:
        const TextInputType.numberWithOptions(
          decimal: true,
        ),
        style: const TextStyle(
          fontSize: 16,
          color:
          AppColors.textBlack,
        ),
        decoration:
        InputDecoration(
          hintText: hint,
          hintStyle:
          const TextStyle(
            color:
            AppColors.textLightGrey,
          ),
          border:
          InputBorder.none,
          contentPadding:
          const EdgeInsets
              .symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          suffixIconConstraints:
          const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          suffixIcon: Padding(
            padding:
            const EdgeInsets.only(
              right: 14,
            ),
            child: Align(
              alignment:
              Alignment.centerRight,
              widthFactor: 1,
              child: _buildUnitToggle(
                selectedUnit: unit,
                units: units,
                onUnitChanged:
                onUnitChanged,
              ),
            ),
          ),
        ),
      ),
    );
  }
}