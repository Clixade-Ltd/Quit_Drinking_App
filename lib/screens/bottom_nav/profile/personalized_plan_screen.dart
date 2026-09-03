// import 'package:flutter/material.dart';
//
// import 'package:new_quit_drinking_app/constants/app_colors.dart';
// import 'package:new_quit_drinking_app/screens/bottom_nav/profile/premium_plan_screen.dart';
// import 'package:new_quit_drinking_app/services/home_dashboard_service.dart';
//
// class PersonalizedPlanScreen extends StatefulWidget {
//   const PersonalizedPlanScreen({super.key});
//
//   @override
//   State<PersonalizedPlanScreen> createState() =>
//       _PersonalizedPlanScreenState();
// }
//
// class _PersonalizedPlanScreenState extends State<PersonalizedPlanScreen> {
//   Map<String, dynamic>? _plan;
//   bool _isLoading = true;
//   String? _error;
//
//   String get _firstName {
//     final name = _plan?['userName'] as String?;
//
//     if (name != null && name.trim().isNotEmpty) {
//       return name.trim().split(RegExp(r'\s+')).first;
//     }
//
//     return 'there';
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _loadAIPlan();
//   }
//
//   Future<void> _loadAIPlan() async {
//     try {
//       final service = HomeDashboardService.instance;
//
//       final profile = await service.getProfile();
//       final plan = await service.getAIPlan();
//
//       if (!mounted) return;
//
//       if (plan == null) {
//         setState(() {
//           _error = 'Your personalized plan could not be found.';
//           _isLoading = false;
//         });
//         return;
//       }
//
//       final name = profile?['name'] as String?;
//
//       if (name != null && name.trim().isNotEmpty) {
//         plan['userName'] = name;
//       }
//
//       setState(() {
//         _plan = plan;
//         _isLoading = false;
//       });
//     } catch (e) {
//       if (!mounted) return;
//
//       setState(() {
//         _error = 'Unable to load your personalized plan.';
//         _isLoading = false;
//       });
//     }
//   }
//
//   String _formatWithCommas(int value) {
//     final str = value.toString();
//     final buffer = StringBuffer();
//
//     for (int i = 0; i < str.length; i++) {
//       final posFromEnd = str.length - i;
//
//       buffer.write(str[i]);
//
//       if (posFromEnd > 1 && posFromEnd % 3 == 1) {
//         buffer.write(',');
//       }
//     }
//
//     return buffer.toString();
//   }
//
//   int _getInt(dynamic value) {
//     if (value is num) {
//       return value.toInt();
//     }
//
//     return int.tryParse(value?.toString() ?? '') ?? 0;
//   }
//
//   List<Map<String, dynamic>> _getWeeks() {
//     final rawWeeks = _plan?['weeks'];
//
//     if (rawWeeks is! List) {
//       return [];
//     }
//
//     return rawWeeks
//         .whereType<Map>()
//         .map((week) => Map<String, dynamic>.from(week))
//         .toList();
//   }
//
//   List<String> _getDailyFundamentals() {
//     final raw = _plan?['dailyFundamentals'];
//
//     if (raw is! List) {
//       return [];
//     }
//
//     return raw.map((item) => item.toString()).toList();
//   }
//
//   void _startJourney(BuildContext context) {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (_) => const PremiumPlanScreen(),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return Scaffold(
//         backgroundColor: AppColors.dashboardBackground,
//         body: const SafeArea(
//           child: Center(
//             child: CircularProgressIndicator(
//               color: AppColors.primary,
//             ),
//           ),
//         ),
//       );
//     }
//
//     if (_error != null || _plan == null) {
//       return Scaffold(
//         backgroundColor: AppColors.dashboardBackground,
//         body: SafeArea(
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(24),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const Icon(
//                     Icons.error_outline,
//                     size: 48,
//                     color: AppColors.textGrey,
//                   ),
//                   const SizedBox(height: 16),
//                   Text(
//                     _error ?? 'Something went wrong.',
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       fontFamily: 'Liberation Sans',
//                       fontSize: 16,
//                       color: AppColors.textBlack,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         _isLoading = true;
//                         _error = null;
//                       });
//
//                       _loadAIPlan();
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: AppColors.primary,
//                       foregroundColor: AppColors.white,
//                     ),
//                     child: const Text('Try Again'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     }
//
//     final startingPoint =
//         (_plan!['startingPoint'] as Map?)?.cast<String, dynamic>() ??
//             <String, dynamic>{};
//
//     final drinksPerWeek = _getInt(startingPoint['drinksPerWeek']);
//
//     final weeklyCalories = _getInt(startingPoint['weeklyCalories']);
//
//     final weeks = _getWeeks();
//
//     final fundamentals = _getDailyFundamentals();
//
//     return Scaffold(
//       backgroundColor: AppColors.dashboardBackground,
//       body: SafeArea(
//         child: Column(
//           children: [
//             // ==================================================
//             // FIXED APP BAR
//             // ==================================================
//             SizedBox(
//               height: 52,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Positioned(
//                     left: 24,
//                     top: 6,
//                     child: InkWell(
//                       onTap: () => Navigator.of(context).maybePop(),
//                       borderRadius: BorderRadius.circular(20),
//                       child: const SizedBox(
//                         width: 40,
//                         height: 40,
//                         child: Center(
//                           child: Icon(
//                             Icons.arrow_back,
//                             size: 23,
//                             color: AppColors.textBlack,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Center(
//                     child: Text(
//                       'YOUR PLAN',
//                       style: TextStyle(
//                         fontFamily: 'Liberation Sans',
//                         fontWeight: FontWeight.w600,
//                         fontSize: 14,
//                         height: 16 / 14,
//                         letterSpacing: 1.4,
//                         color: AppColors.textBlack,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             // ==================================================
//             // SCROLLABLE CONTENT
//             // ==================================================
//             Expanded(
//               child: SingleChildScrollView(
//                 padding: const EdgeInsets.fromLTRB(24, 22, 24, 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // HELLO
//                     Text(
//                       'Hello, $_firstName 👋',
//                       style: const TextStyle(
//                         fontFamily: 'Liberation Sans',
//                         fontWeight: FontWeight.w700,
//                         fontSize: 28,
//                         height: 36 / 28,
//                         letterSpacing: -0.56,
//                         color: AppColors.textBlack,
//                       ),
//                     ),
//
//                     const SizedBox(height: 8),
//
//                     // GEMINI SUMMARY
//                     Text(
//                       (_plan!['summary'] as String?) ??
//                           "We've analyzed your responses and crafted a "
//                               "personalized roadmap to help you reach your goals.",
//                       style: const TextStyle(
//                         fontFamily: 'Liberation Sans',
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14,
//                         height: 1.45,
//                         color: AppColors.textGrey,
//                       ),
//                     ),
//
//                     const SizedBox(height: 34),
//
//                     // YOUR STARTING POINT
//                     const Text(
//                       'Your Starting Point',
//                       style: TextStyle(
//                         fontFamily: 'Liberation Sans',
//                         fontWeight: FontWeight.w600,
//                         fontSize: 20,
//                         height: 28 / 20,
//                         color: AppColors.textBlack,
//                       ),
//                     ),
//
//                     const SizedBox(height: 14),
//
//                     // CURRENT INTAKE CARD
//                     _StartingPointCard(
//                       icon: Icons.local_bar,
//                       iconColor: const Color(0xFFD64C4C),
//                       iconBackground: const Color(0xFFFFDEDE),
//                       label: 'CURRENT INTAKE',
//                       value: '$drinksPerWeek Drinks / wk',
//                     ),
//
//                     const SizedBox(height: 14),
//
//                     // CALORIES CARD
//                     _StartingPointCard(
//                       icon: Icons.local_fire_department_outlined,
//                       iconColor: AppColors.textGrey,
//                       iconBackground: const Color(0xFFE8E9E9),
//                       label: 'EST. CALORIES',
//                       value: '${_formatWithCommas(weeklyCalories)} / wk',
//                     ),
//
//                     const SizedBox(height: 34),
//
//                     // YOUR 4-WEEK PLAN
//                     const Text(
//                       'Your 4-Week Plan',
//                       style: TextStyle(
//                         fontFamily: 'Liberation Sans',
//                         fontWeight: FontWeight.w600,
//                         fontSize: 20,
//                         height: 28 / 20,
//                         color: AppColors.textBlack,
//                       ),
//                     ),
//
//                     const SizedBox(height: 16),
//
//                     if (weeks.length >= 4)
//                       _buildTimeline(weeks)
//                     else
//                       const Text(
//                         'Your weekly plan is being prepared.',
//                         style: TextStyle(
//                           fontFamily: 'Liberation Sans',
//                           fontSize: 14,
//                           color: AppColors.textGrey,
//                         ),
//                       ),
//
//                     const SizedBox(height: 30),
//
//                     // DAILY FUNDAMENTALS
//                     const Text(
//                       'Daily Fundamentals',
//                       style: TextStyle(
//                         fontFamily: 'Liberation Sans',
//                         fontWeight: FontWeight.w600,
//                         fontSize: 20,
//                         height: 28 / 20,
//                         color: AppColors.textBlack,
//                       ),
//                     ),
//
//                     const SizedBox(height: 5),
//
//                     const Text(
//                       'Small habits to anchor your day.',
//                       style: TextStyle(
//                         fontFamily: 'Liberation Sans',
//                         fontWeight: FontWeight.w400,
//                         fontSize: 12,
//                         height: 16 / 12,
//                         color: AppColors.textGrey,
//                       ),
//                     ),
//
//                     const SizedBox(height: 16),
//
//                     if (fundamentals.isNotEmpty)
//                       ..._buildFundamentalCards(fundamentals)
//                     else
//                       const Text(
//                         'Your daily habits are being prepared.',
//                         style: TextStyle(
//                           fontFamily: 'Liberation Sans',
//                           fontSize: 14,
//                           color: AppColors.textGrey,
//                         ),
//                       ),
//
//                     const SizedBox(height: 20),
//                   ],
//                 ),
//               ),
//             ),
//
//             // ==================================================
//             // FIXED BOTTOM BUTTON
//             // ==================================================
//             Padding(
//               padding: const EdgeInsets.fromLTRB(24, 4, 24, 20),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 48,
//                 child: ElevatedButton(
//                   onPressed: () => _startJourney(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.primary,
//                     foregroundColor: AppColors.white,
//                     elevation: 0,
//                     shadowColor: AppColors.primary.withOpacity(0.2),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(9999),
//                     ),
//                   ),
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Start My Journey',
//                         style: TextStyle(
//                           fontFamily: 'Liberation Sans',
//                           fontWeight: FontWeight.w600,
//                           fontSize: 14,
//                           color: AppColors.white,
//                         ),
//                       ),
//                       SizedBox(width: 8),
//                       Icon(
//                         Icons.arrow_forward,
//                         size: 18,
//                         color: AppColors.white,
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
//
//   // ==================================================
//   // 4-WEEK TIMELINE
//   // ==================================================
//   // Rebuilt with a Column of IntrinsicHeight rows instead of a
//   // Stack + hardcoded "top" pixel offsets. This lets every card /
//   // text block take up exactly the height it needs (including
//   // multi-line titles and descriptions), and the dot + connecting
//   // line stretch to match — so nothing overlaps or gets cut off.
//   Widget _buildTimeline(List<Map<String, dynamic>> weeks) {
//     return Column(
//       children: List.generate(weeks.length, (index) {
//         final week = weeks[index];
//         final isFirst = index == 0;
//         final isLast = index == weeks.length - 1;
//
//         return IntrinsicHeight(
//           child: Padding(
//             padding: EdgeInsets.only(bottom: isLast ? 0 : 20),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Dot + connecting line column
//                 SizedBox(
//                   width: 14,
//                   child: Column(
//                     children: [
//                       Container(
//                         width: 14,
//                         height: 14,
//                         margin: const EdgeInsets.only(top: 4),
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: isFirst
//                               ? AppColors.primary
//                               : const Color(0xFFE9EAEA),
//                         ),
//                       ),
//                       if (!isLast)
//                         Expanded(
//                           child: Container(
//                             width: 2,
//                             margin: const EdgeInsets.only(top: 4),
//                             color: const Color(0xFFE5E7E7),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//
//                 const SizedBox(width: 18),
//
//                 // Card / text content — sized by its own content, not
//                 // by a fixed pixel offset from the item above it.
//                 Expanded(
//                   child: isFirst
//                       ? _WeekDetailCard(week: week)
//                       : _TimelineText(
//                     week: 'Week ${week['number'] ?? index + 1}',
//                     title: week['title']?.toString() ?? '',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }),
//     );
//   }
//
//   List<Widget> _buildFundamentalCards(List<String> fundamentals) {
//     final icons = [
//       Icons.water_drop_outlined,
//       Icons.directions_walk,
//       Icons.self_improvement,
//     ];
//
//     final iconColors = [
//       const Color(0xFF4E91F7),
//       const Color(0xFF35A866),
//       const Color(0xFF9B59D0),
//     ];
//
//     final iconBackgrounds = [
//       const Color(0xFFEAF2FF),
//       const Color(0xFFE9F8EE),
//       const Color(0xFFF6ECFF),
//     ];
//
//     final cards = <Widget>[];
//
//     for (int i = 0; i < fundamentals.length; i++) {
//       final iconIndex = i % icons.length;
//
//       cards.add(
//         _DailyTaskCard(
//           icon: icons[iconIndex],
//           iconColor: iconColors[iconIndex],
//           iconBackground: iconBackgrounds[iconIndex],
//           title: fundamentals[i],
//         ),
//       );
//
//       if (i < fundamentals.length - 1) {
//         cards.add(const SizedBox(height: 10));
//       }
//     }
//
//     return cards;
//   }
// }
//
// // ======================================================
// // WEEK 1 DETAIL CARD (the highlighted "Start Here" card)
// // ======================================================
//
// class _WeekDetailCard extends StatelessWidget {
//   final Map<String, dynamic> week;
//
//   const _WeekDetailCard({required this.week});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.fromLTRB(18, 15, 16, 16),
//       decoration: BoxDecoration(
//         color: AppColors.white,
//         borderRadius: BorderRadius.circular(17),
//         border: Border.all(
//           color: AppColors.primary.withOpacity(0.25),
//           width: 1.5,
//         ),
//         boxShadow: const [
//           BoxShadow(
//             color: Color(0x07000000),
//             blurRadius: 8,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Text(
//                   'Week ${week['number'] ?? 1}',
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 12,
//                     color: AppColors.primary,
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 8,
//                   vertical: 4,
//                 ),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFD9F2EF),
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 child: const Text(
//                   'Start Here',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 9,
//                     color: AppColors.primary,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 8),
//           Text(
//             week['title']?.toString() ?? 'Week 1',
//             style: const TextStyle(
//               fontWeight: FontWeight.w700,
//               fontSize: 16,
//               color: AppColors.textBlack,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             week['description']?.toString() ?? '',
//             style: const TextStyle(
//               fontWeight: FontWeight.w400,
//               fontSize: 12,
//               height: 1.35,
//               color: AppColors.textGrey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // ======================================================
// // STARTING POINT CARD (horizontal: icon + label/value)
// // Shared by CURRENT INTAKE and EST. CALORIES so they always
// // look identical.
// // ======================================================
//
// class _StartingPointCard extends StatelessWidget {
//   final IconData icon;
//   final Color iconColor;
//   final Color iconBackground;
//   final String label;
//   final String value;
//
//   const _StartingPointCard({
//     required this.icon,
//     required this.iconColor,
//     required this.iconBackground,
//     required this.label,
//     required this.value,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(24),
//       decoration: BoxDecoration(
//         color: AppColors.white,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(
//           color: AppColors.outlineGrey,
//           width: 1,
//         ),
//       ),
//       child: Row(
//         children: [
//           Container(
//             width: 50,
//             height: 50,
//             decoration: BoxDecoration(
//               color: iconBackground,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(
//               icon,
//               size: 22,
//               color: iconColor,
//             ),
//           ),
//           const SizedBox(width: 14),
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: const TextStyle(
//                     fontFamily: 'Liberation Sans',
//                     fontWeight: FontWeight.w600,
//                     fontSize: 10,
//                     letterSpacing: 0.5,
//                     color: AppColors.textGrey,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: const TextStyle(
//                     fontFamily: 'Liberation Sans',
//                     fontWeight: FontWeight.w700,
//                     fontSize: 18,
//                     color: AppColors.textBlack,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // ======================================================
// // TIMELINE TEXT (Week 2 / 3 / 4 rows)
// // ======================================================
//
// class _TimelineText extends StatelessWidget {
//   final String week;
//   final String title;
//
//   const _TimelineText({
//     required this.week,
//     required this.title,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(
//           week,
//           style: const TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 11,
//             color: AppColors.textGrey,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           title,
//           // No maxLines/overflow — let it wrap fully so long AI-generated
//           // titles are never clipped.
//           style: const TextStyle(
//             fontWeight: FontWeight.w400,
//             fontSize: 15,
//             color: AppColors.textGrey,
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// // ======================================================
// // DAILY TASK CARD
// // ======================================================
//
// class _DailyTaskCard extends StatelessWidget {
//   final IconData icon;
//   final Color iconColor;
//   final Color iconBackground;
//   final String title;
//
//   const _DailyTaskCard({
//     required this.icon,
//     required this.iconColor,
//     required this.iconBackground,
//     required this.title,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       // Fixed height removed — the card now grows to fit however many
//       // lines the fundamental text wraps to, instead of clipping it.
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: AppColors.white,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: AppColors.outlineGrey,
//           width: 1,
//         ),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             width: 40,
//             height: 40,
//             decoration: BoxDecoration(
//               color: iconBackground,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(
//               icon,
//               size: 19,
//               color: iconColor,
//             ),
//           ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: Text(
//               title,
//               style: const TextStyle(
//                 fontFamily: 'Liberation Sans',
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: AppColors.textBlack,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }