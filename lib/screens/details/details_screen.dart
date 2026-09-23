// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
// import 'package:new_quit_drinking_app/screens/questions/flow_screen/questions_flow_screen.dart';

// import '../../constants/app_colors.dart';
// import '../../models/user_details_draft.dart';

// class DetailsScreen extends StatefulWidget {
//   const DetailsScreen({super.key});

//   @override
//   State<DetailsScreen> createState() => _DetailsScreenState();
// }

// class _DetailsScreenState extends State<DetailsScreen> {
//   final FocusNode _nameFocus = FocusNode();
//   final FocusNode _ageFocus = FocusNode();
//   final FocusNode _heightFocus = FocusNode();
//   final FocusNode _weightFocus = FocusNode();

//   final TextEditingController _nameController =
//       TextEditingController();

//   final TextEditingController _ageController =
//       TextEditingController();

//   final TextEditingController _heightController =
//       TextEditingController();

//   final TextEditingController _weightController =
//       TextEditingController();

//   String _selectedSex = '';

//   String _heightUnit = 'cm';
//   String _weightUnit = 'kg';

//   // 'feet' means decimal feet.
//   // Example: 170 cm = 5.58 ft
//   static const List<String> _heightUnits = [
//     'feet',
//     'cm',
//   ];

//   static const List<String> _weightUnits = [
//     'kg',
//     'lbs',
//   ];

//   bool get _canContinue =>
//       _nameController.text.trim().isNotEmpty &&
//       _ageController.text.trim().isNotEmpty &&
//       _heightController.text.trim().isNotEmpty &&
//       _weightController.text.trim().isNotEmpty;

//   @override
//   void initState() {
//     super.initState();

//     _restoreSavedData();

//     _nameController.addListener(_onFieldsChanged);
//     _ageController.addListener(_onFieldsChanged);
//     _heightController.addListener(_onFieldsChanged);
//     _weightController.addListener(_onFieldsChanged);
//   }

//   void _restoreSavedData() {
//     final draft = UserDetailsDraft.instance;

//     if (draft.name != null && draft.name!.isNotEmpty) {
//       _nameController.text = draft.name!;
//     }

//     if (draft.age != null && draft.age! > 0) {
//       _ageController.text = draft.age!.toString();
//     }

//     // Sex is validated against localized options in build().
//     if (draft.sex != null && draft.sex!.isNotEmpty) {
//       _selectedSex = draft.sex!;
//     }

//     _heightUnit = _heightUnits.contains(draft.heightUnit)
//         ? draft.heightUnit
//         : 'cm';

//     _weightUnit = _weightUnits.contains(draft.weightUnit)
//         ? draft.weightUnit
//         : 'kg';

//     if (draft.heightCm != null && draft.heightCm! > 0) {
//       if (_heightUnit == 'feet') {
//         final feet = draft.heightCm! / 30.48;

//         _heightController.text = _formatNumber(feet);
//       } else {
//         _heightController.text =
//             _formatNumber(draft.heightCm!);
//       }
//     }

//     if (draft.weightKg != null && draft.weightKg! > 0) {
//       if (_weightUnit == 'lbs') {
//         final lbs = draft.weightKg! * 2.20462;

//         _weightController.text = _formatNumber(lbs);
//       } else {
//         _weightController.text =
//             _formatNumber(draft.weightKg!);
//       }
//     }
//   }

//   String _formatNumber(double value) {
//     return value
//         .toStringAsFixed(1)
//         .replaceFirst(
//           RegExp(r'\.0$'),
//           '',
//         );
//   }

//   void _onFieldsChanged() {
//     if (mounted) {
//       setState(() {});
//     }

//     _saveDraft();
//   }

//   void _saveDraft() {
//     final height = _parseHeightToCm();
//     final weight = _parseWeightToKg();

//     UserDetailsDraft.instance.set(
//       name: _nameController.text.trim(),
//       age: int.tryParse(
//             _ageController.text.trim(),
//           ) ??
//           0,
//       sex: _selectedSex,
//       heightCm: height,
//       weightKg: weight,
//       heightUnit: _heightUnit,
//       weightUnit: _weightUnit,
//     );
//   }

//   double _parseHeightToCm() {
//     final value = double.tryParse(
//       _heightController.text.trim(),
//     );

//     if (value == null) {
//       return 0;
//     }

//     if (_heightUnit == 'feet') {
//       return value * 30.48;
//     }

//     return value;
//   }

//   double _parseWeightToKg() {
//     final value = double.tryParse(
//       _weightController.text.trim(),
//     );

//     if (value == null) {
//       return 0;
//     }

//     if (_weightUnit == 'lbs') {
//       return value * 0.453592;
//     }

//     return value;
//   }

//   void _changeHeightUnit(String unit) {
//     if (unit == _heightUnit) {
//       return;
//     }

//     final value = double.tryParse(
//       _heightController.text.trim(),
//     );

//     if (value != null) {
//       double converted;

//       if (unit == 'feet') {
//         converted = value / 30.48;
//       } else {
//         converted = value * 30.48;
//       }

//       _heightController.text = _formatNumber(converted);
//     }

//     setState(() {
//       _heightUnit = unit;
//     });

//     _saveDraft();
//   }

//   void _changeWeightUnit(String unit) {
//     if (unit == _weightUnit) {
//       return;
//     }

//     final value = double.tryParse(
//       _weightController.text.trim(),
//     );

//     if (value != null) {
//       double converted;

//       if (unit == 'lbs') {
//         converted = value * 2.20462;
//       } else {
//         converted = value / 2.20462;
//       }

//       _weightController.text = _formatNumber(converted);
//     }

//     setState(() {
//       _weightUnit = unit;
//     });

//     _saveDraft();
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _ageController.dispose();
//     _heightController.dispose();
//     _weightController.dispose();

//     _nameFocus.dispose();
//     _ageFocus.dispose();
//     _heightFocus.dispose();
//     _weightFocus.dispose();

//     super.dispose();
//   }

//   void _onContinue() {
//     _saveDraft();

//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (_) => const QuestionsFlowScreen(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final l10n = AppLocalizations.of(context)!;

//     final List<String> sexOptions = [
//       l10n.sexFemale,
//       l10n.sexMale,
//     ];

//     if (!sexOptions.contains(_selectedSex)) {
//       _selectedSex = sexOptions.first;
//     }

//     return Scaffold(
//       backgroundColor: AppColors.bgColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             SizedBox(height: 44.h),

//             Expanded(
//               child: SingleChildScrollView(
//                 padding: EdgeInsets.fromLTRB(
//                   20.w,
//                   16.h,
//                   20.w,
//                   0,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // ==================================================
//                     // TITLE
//                     // ==================================================

//                     Text(
//                       l10n.tellUsAboutYourself,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 28.sp,
//                         color: AppColors.textBlack,
//                       ),
//                     ),

//                     SizedBox(height: 8.h),

//                     Text(
//                       l10n.detailsSubtitle,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14.sp,
//                         height: 1.4,
//                         color: AppColors.textGrey,
//                       ),
//                     ),

//                     SizedBox(height: 24.h),

//                     // ==================================================
//                     // NAME
//                     // ==================================================

//                     _buildLabel(l10n.nameLabel),

//                     SizedBox(height: 8.h),

//                     _buildTextField(
//                       controller: _nameController,
//                       hint: l10n.nameHint,
//                       focusNode: _nameFocus,
//                       textInputAction: TextInputAction.next,
//                       onSubmitted: (_) {
//                         FocusScope.of(context).requestFocus(
//                           _ageFocus,
//                         );
//                       },
//                     ),

//                     SizedBox(height: 20.h),

//                     // ==================================================
//                     // AGE
//                     // ==================================================

//                     _buildLabel(l10n.ageLabel),

//                     SizedBox(height: 8.h),

//                     _buildTextField(
//                       controller: _ageController,
//                       hint: l10n.ageHint,
//                       keyboardType: TextInputType.number,
//                       focusNode: _ageFocus,
//                       textInputAction: TextInputAction.next,
//                       onSubmitted: (_) {
//                         FocusScope.of(context).requestFocus(
//                           _heightFocus,
//                         );
//                       },
//                     ),

//                     SizedBox(height: 20.h),

//                     // ==================================================
//                     // SEX
//                     // ==================================================

//                     _buildLabel(
//                       l10n.sexAssignedAtBirth,
//                     ),

//                     SizedBox(height: 8.h),

//                     Container(
//                       padding: EdgeInsets.all(4.r),
//                       decoration: BoxDecoration(
//                         color: AppColors.outlineGrey2,
//                         borderRadius:
//                             BorderRadius.circular(12.r),
//                       ),
//                       child: Row(
//                         children: sexOptions.map(
//                           (option) {
//                             final bool isSelected =
//                                 _selectedSex == option;

//                             return Expanded(
//                               child: InkWell(
//                                 borderRadius:
//                                     BorderRadius.circular(
//                                   10.r,
//                                 ),
//                                 onTap: () {
//                                   setState(() {
//                                     _selectedSex = option;
//                                   });

//                                   _saveDraft();
//                                 },
//                                 child: Container(
//                                   padding:
//                                       EdgeInsets.symmetric(
//                                     vertical: 12.h,
//                                   ),
//                                   decoration: BoxDecoration(
//                                     color: isSelected
//                                         ? AppColors.white
//                                         : Colors.transparent,
//                                     borderRadius:
//                                         BorderRadius.circular(
//                                       10.r,
//                                     ),
//                                   ),
//                                   alignment: Alignment.center,
//                                   child: Text(
//                                     option,
//                                     style: TextStyle(
//                                       fontWeight: isSelected
//                                           ? FontWeight.w700
//                                           : FontWeight.w400,
//                                       fontSize: 14.sp,
//                                       color: isSelected
//                                           ? AppColors.textBlack
//                                           : AppColors.textGrey,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ).toList(),
//                       ),
//                     ),

//                     SizedBox(height: 20.h),

//                     // ==================================================
//                     // HEIGHT + WEIGHT
//                     // ==================================================

//                     Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                             children: [
//                               _buildLabel(
//                                 l10n.heightLabel,
//                               ),

//                               SizedBox(height: 8.h),

//                               _buildUnitTextField(
//                                 controller: _heightController,
//                                 hint: _heightUnit == 'cm'
//                                     ? '170'
//                                     : '5.6',
//                                 unit: _heightUnit,
//                                 units: _heightUnits,
//                                 onUnitChanged:
//                                     _changeHeightUnit,
//                                 focusNode: _heightFocus,
//                                 textInputAction:
//                                     TextInputAction.next,
//                                 onSubmitted: (_) {
//                                   FocusScope.of(context)
//                                       .requestFocus(
//                                     _weightFocus,
//                                   );
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),

//                         SizedBox(width: 16.w),

//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                             children: [
//                               _buildLabel(
//                                 l10n.weightLabel,
//                               ),

//                               SizedBox(height: 8.h),

//                               _buildUnitTextField(
//                                 controller: _weightController,
//                                 hint: l10n.weightHint,
//                                 unit: _weightUnit,
//                                 units: _weightUnits,
//                                 onUnitChanged:
//                                     _changeWeightUnit,
//                                 focusNode: _weightFocus,
//                                 textInputAction:
//                                     TextInputAction.done,
//                                 onSubmitted: (_) {
//                                   _weightFocus.unfocus();
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),

//                     SizedBox(height: 24.h),
//                   ],
//                 ),
//               ),
//             ),

//             // ==========================================================
//             // CONTINUE BUTTON
//             // ==========================================================

//             Padding(
//               padding: EdgeInsets.fromLTRB(
//                 20.w,
//                 12.h,
//                 20.w,
//                 20.h,
//               ),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 56.h,
//                 child: ElevatedButton(
//                   onPressed:
//                       _canContinue ? _onContinue : null,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: _canContinue
//                         ? AppColors.primary
//                         : AppColors.cardBackground,
//                     disabledBackgroundColor:
//                         AppColors.cardBackground,
//                     foregroundColor: _canContinue
//                         ? AppColors.white
//                         : AppColors.textLightGrey,
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius:
//                           BorderRadius.circular(9999.r),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisAlignment:
//                         MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         l10n.continueButton,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 17.sp,
//                         ),
//                       ),

//                       SizedBox(width: 8.w),

//                       Icon(
//                         Icons.arrow_forward,
//                         size: 18.sp,
//                         color: _canContinue
//                             ? AppColors.white
//                             : AppColors.textLightGrey,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // ================================================================
//   // LABEL
//   // ================================================================

//   Widget _buildLabel(String text) {
//     return Text(
//       text,
//       style: TextStyle(
//         fontWeight: FontWeight.w600,
//         fontSize: 14.sp,
//         color: AppColors.textBlack,
//       ),
//     );
//   }

//   // ================================================================
//   // NORMAL TEXT FIELD
//   // ================================================================

//   Widget _buildTextField({
//     required TextEditingController controller,
//     required String hint,
//     TextInputType keyboardType = TextInputType.text,
//     FocusNode? focusNode,
//     TextInputAction textInputAction =
//         TextInputAction.next,
//     ValueChanged<String>? onSubmitted,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.outlineGrey2,
//         borderRadius:
//             BorderRadius.circular(12.r),
//       ),
//       child: TextField(
//         controller: controller,
//         focusNode: focusNode,
//         keyboardType: keyboardType,
//         textInputAction: textInputAction,
//         onSubmitted: onSubmitted,
//         style: TextStyle(
//           fontSize: 16.sp,
//           color: AppColors.textBlack,
//         ),
//         decoration: InputDecoration(
//           hintText: hint,
//           hintStyle: TextStyle(
//             fontSize: 16.sp,
//             color: AppColors.textLightGrey,
//           ),
//           border: InputBorder.none,
//           contentPadding: EdgeInsets.symmetric(
//             horizontal: 16.w,
//             vertical: 16.h,
//           ),
//         ),
//       ),
//     );
//   }

//   // ================================================================
//   // UNIT TOGGLE
//   // ================================================================

//   Widget _buildUnitToggle({
//     required String selectedUnit,
//     required List<String> units,
//     required ValueChanged<String> onUnitChanged,
//   }) {
//     final List<Widget> children = [];

//     for (int i = 0; i < units.length; i++) {
//       final unit = units[i];

//       final bool isSelected =
//           unit == selectedUnit;

//       if (i > 0) {
//         children.add(
//           Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: 4.w,
//             ),
//             child: Text(
//               '·',
//               style: TextStyle(
//                 fontSize: 13.sp,
//                 color: AppColors.textLightGrey,
//               ),
//             ),
//           ),
//         );
//       }

//       children.add(
//         GestureDetector(
//           behavior: HitTestBehavior.opaque,
//           onTap: () => onUnitChanged(unit),
//           child: Text(
//             unit,
//             style: TextStyle(
//               fontSize: 13.sp,
//               fontWeight: isSelected
//                   ? FontWeight.w600
//                   : FontWeight.w400,
//               color: isSelected
//                   ? AppColors.textBlack
//                   : AppColors.textLightGrey,
//             ),
//           ),
//         ),
//       );
//     }

//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: children,
//     );
//   }

//   // ================================================================
//   // UNIT TEXT FIELD
//   // ================================================================

//   Widget _buildUnitTextField({
//     required TextEditingController controller,
//     required String hint,
//     required String unit,
//     required List<String> units,
//     required ValueChanged<String> onUnitChanged,
//     FocusNode? focusNode,
//     TextInputAction textInputAction =
//         TextInputAction.next,
//     ValueChanged<String>? onSubmitted,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.outlineGrey2,
//         borderRadius:
//             BorderRadius.circular(12.r),
//       ),
//       child: TextField(
//         controller: controller,
//         focusNode: focusNode,
//         textInputAction: textInputAction,
//         onSubmitted: onSubmitted,
//         keyboardType:
//             const TextInputType.numberWithOptions(
//           decimal: true,
//         ),
//         style: TextStyle(
//           fontSize: 16.sp,
//           color: AppColors.textBlack,
//         ),
//         decoration: InputDecoration(
//           hintText: hint,
//           hintStyle: TextStyle(
//             fontSize: 16.sp,
//             color: AppColors.textLightGrey,
//           ),
//           border: InputBorder.none,
//           contentPadding: EdgeInsets.symmetric(
//             horizontal: 16.w,
//             vertical: 16.h,
//           ),
//           suffixIconConstraints:
//               const BoxConstraints(
//             minWidth: 0,
//             minHeight: 0,
//           ),
//           suffixIcon: Padding(
//             padding: EdgeInsets.only(
//               right: 14.w,
//             ),
//             child: Align(
//               alignment: Alignment.centerRight,
//               widthFactor: 1,
//               child: _buildUnitToggle(
//                 selectedUnit: unit,
//                 units: units,
//                 onUnitChanged: onUnitChanged,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// } 