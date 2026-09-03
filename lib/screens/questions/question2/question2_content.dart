// import 'package:flutter/material.dart';
// import '../../../constants/app_colors.dart';
// import '../../../models/user_details_draft.dart';
// import '../../../widgets/outlined_select_row.dart';
//
// class Question2Content extends StatefulWidget {
//   final ValueChanged<bool> onCanContinueChanged;
//
//   const Question2Content({
//     super.key,
//     required this.onCanContinueChanged,
//   });
//
//   @override
//   State<Question2Content> createState() =>
//       _Question2ContentState();
// }
//
// class _Question2ContentState
//     extends State<Question2Content>
//     with AutomaticKeepAliveClientMixin {
//   static const List<String> _weekdayLabels = [
//     'S',
//     'M',
//     'T',
//     'W',
//     'T',
//     'F',
//     'S',
//   ];
//
//   static const List<String> _monthNames = [
//     'January',
//     'February',
//     'March',
//     'April',
//     'May',
//     'June',
//     'July',
//     'August',
//     'September',
//     'October',
//     'November',
//     'December',
//   ];
//
//   String? _selectedTiming;
//   DateTime? _selectedDate;
//
//   late DateTime _today;
//   late DateTime _displayedMonth;
//
//   @override
//   bool get wantKeepAlive => true;
//
//   @override
//   void initState() {
//     super.initState();
//
//     final now = DateTime.now();
//
//     _today = DateTime(now.year, now.month, now.day);
//     _displayedMonth = DateTime(now.year, now.month);
//
//     final savedAnswers = UserDetailsDraft.instance;
//
//     _selectedTiming = savedAnswers.quitTiming;
//     _selectedDate = savedAnswers.customQuitDate;
//
//     if (_selectedDate != null) {
//       _displayedMonth = DateTime(
//         _selectedDate!.year,
//         _selectedDate!.month,
//       );
//     }
//
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (!mounted) return;
//
//       widget.onCanContinueChanged(_canContinue);
//     });
//   }
//
//   bool _isSameDay(
//       DateTime a,
//       DateTime b,
//       ) {
//     return a.year == b.year &&
//         a.month == b.month &&
//         a.day == b.day;
//   }
//
//   bool get _canContinue {
//     return _selectedTiming != null &&
//         (_selectedTiming != 'Choose a date' ||
//             _selectedDate != null);
//   }
//
//   void _selectTiming(String value) {
//     setState(() {
//       _selectedTiming = value;
//
//       if (value != 'Choose a date') {
//         _selectedDate = null;
//       }
//     });
//
//     UserDetailsDraft.instance.setQuitTiming(value);
//
//     widget.onCanContinueChanged(
//       _canContinue,
//     );
//   }
//
//   void _selectDate(DateTime date) {
//     setState(() {
//       _selectedDate = date;
//       _selectedTiming = 'Choose a date';
//
//       _displayedMonth = DateTime(
//         date.year,
//         date.month,
//       );
//     });
//
//     UserDetailsDraft.instance.setQuitTiming(
//       'Choose a date',
//       date: date,
//     );
//
//     widget.onCanContinueChanged(
//       _canContinue,
//     );
//   }
//
//   void _goToPreviousMonth() {
//     // Don't allow navigating before the current month.
//     final currentMonth = DateTime(
//       _today.year,
//       _today.month,
//     );
//
//     final previousMonth = DateTime(
//       _displayedMonth.year,
//       _displayedMonth.month - 1,
//     );
//
//     if (previousMonth.isBefore(currentMonth)) {
//       return;
//     }
//
//     setState(() {
//       _displayedMonth = previousMonth;
//     });
//   }
//
//   void _goToNextMonth() {
//     setState(() {
//       _displayedMonth = DateTime(
//         _displayedMonth.year,
//         _displayedMonth.month + 1,
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//
//     final int daysInMonth = DateTime(
//       _displayedMonth.year,
//       _displayedMonth.month + 1,
//       0,
//     ).day;
//
//     final int firstWeekdayOffset = DateTime(
//       _displayedMonth.year,
//       _displayedMonth.month,
//       1,
//     ).weekday %
//         7;
//
//     final bool isCurrentMonth =
//         _displayedMonth.year == _today.year &&
//             _displayedMonth.month == _today.month;
//
//     return SingleChildScrollView(
//       padding:
//       const EdgeInsets.symmetric(horizontal: 24),
//       child: Column(
//         children: [
//           const SizedBox(height: 12),
//
//           const Text(
//             'When would you like to begin?',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontWeight: FontWeight.w700,
//               fontSize: 26,
//               height: 1.2,
//               color: AppColors.primary,
//             ),
//           ),
//
//           const SizedBox(height: 24),
//
//           OutlinedSelectRow(
//             label: 'Today',
//             isSelected:
//             _selectedTiming == 'Today',
//             onTap: () =>
//                 _selectTiming('Today'),
//           ),
//
//           const SizedBox(height: 10),
//
//           OutlinedSelectRow(
//             label: 'Tomorrow',
//             isSelected:
//             _selectedTiming == 'Tomorrow',
//             onTap: () =>
//                 _selectTiming('Tomorrow'),
//           ),
//
//           const SizedBox(height: 10),
//
//           OutlinedSelectRow(
//             label: 'Choose a date',
//             isSelected:
//             _selectedTiming == 'Choose a date',
//             onTap: () =>
//                 _selectTiming('Choose a date'),
//           ),
//
//           const SizedBox(height: 20),
//
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.fromLTRB(
//               16,
//               16,
//               16,
//               20,
//             ),
//             decoration: BoxDecoration(
//               color: AppColors.white,
//               borderRadius:
//               BorderRadius.circular(20),
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment:
//                   MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       '${_monthNames[_displayedMonth.month - 1]} '
//                           '${_displayedMonth.year}',
//                       style: const TextStyle(
//                         fontWeight:
//                         FontWeight.w700,
//                         fontSize: 18,
//                         color:
//                         AppColors.textBlack,
//                       ),
//                     ),
//
//                     Row(
//                       children: [
//                         InkWell(
//                           onTap:
//                           isCurrentMonth
//                               ? null
//                               : _goToPreviousMonth,
//                           child: Padding(
//                             padding:
//                             const EdgeInsets.all(6),
//                             child: Icon(
//                               Icons.chevron_left,
//                               color:
//                               isCurrentMonth
//                                   ? AppColors
//                                   .outlineGrey
//                                   : AppColors
//                                   .divider,
//                               size: 20,
//                             ),
//                           ),
//                         ),
//
//                         InkWell(
//                           onTap:
//                           _goToNextMonth,
//                           child: const Padding(
//                             padding:
//                             EdgeInsets.all(6),
//                             child: Icon(
//                               Icons.chevron_right,
//                               color:
//                               AppColors.divider,
//                               size: 20,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//
//                 const SizedBox(height: 12),
//
//                 Row(
//                   children: _weekdayLabels
//                       .map(
//                         (label) => Expanded(
//                       child: Center(
//                         child: Text(
//                           label,
//                           style:
//                           const TextStyle(
//                             fontSize: 13,
//                             color: AppColors
//                                 .textLightGrey,
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                       .toList(),
//                 ),
//
//                 const SizedBox(height: 6),
//
//                 GridView.builder(
//                   shrinkWrap: true,
//                   physics:
//                   const NeverScrollableScrollPhysics(),
//                   itemCount:
//                   firstWeekdayOffset +
//                       daysInMonth,
//                   gridDelegate:
//                   const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 7,
//                     mainAxisSpacing: 6,
//                   ),
//                   itemBuilder:
//                       (context, index) {
//                     if (index < firstWeekdayOffset) {
//                       return const SizedBox.shrink();
//                     }
//
//                     final int day =
//                         index -
//                             firstWeekdayOffset +
//                             1;
//
//                     final DateTime date =
//                     DateTime(
//                       _displayedMonth.year,
//                       _displayedMonth.month,
//                       day,
//                     );
//
//                     final bool isToday =
//                     _isSameDay(
//                       date,
//                       _today,
//                     );
//
//                     final bool isSelected =
//                         _selectedDate != null &&
//                             _isSameDay(
//                               date,
//                               _selectedDate!,
//                             );
//
//                     final bool isPast =
//                     date.isBefore(_today);
//
//                     return Center(
//                       child: InkWell(
//                         customBorder:
//                         const CircleBorder(),
//
//                         // Past dates cannot be selected.
//                         onTap: isPast
//                             ? null
//                             : () =>
//                             _selectDate(date),
//
//                         child: Container(
//                           width: 32,
//                           height: 32,
//                           alignment:
//                           Alignment.center,
//                           decoration:
//                           BoxDecoration(
//                             shape:
//                             BoxShape.circle,
//                             color: isSelected
//                                 ? AppColors.divider
//                                 : Colors.transparent,
//                             border: (isToday &&
//                                 !isSelected)
//                                 ? Border.all(
//                               color: AppColors
//                                   .divider,
//                               width: 1.4,
//                             )
//                                 : null,
//                           ),
//                           child: Text(
//                             '$day',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: isSelected
//                                   ? AppColors.white
//                                   : isPast
//                                   ? AppColors
//                                   .textBlack
//                                   .withOpacity(
//                                 0.35,
//                               )
//                                   : isToday
//                                   ? AppColors
//                                   .divider
//                                   : AppColors
//                                   .textBlack,
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }