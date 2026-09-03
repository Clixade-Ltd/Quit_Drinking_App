// import 'package:flutter/material.dart';
// import 'package:new_quit_drinking_app/constants/app_colors.dart';
//
// import '../bottom_nav/main_nav_screen.dart';
//
// class AwesomeScreen extends StatefulWidget {
//   const AwesomeScreen({super.key});
//
//   @override
//   State<AwesomeScreen> createState() => _AwesomeScreenState();
// }
//
// class _AwesomeScreenState extends State<AwesomeScreen> {
//
//   // =====================================================================
//   // CELEBRATION ICON
//   // =====================================================================
//
//   Widget _buildCelebrationIcon() {
//     return SizedBox(
//       width: 108,
//       height: 108,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           // OUTER CIRCLE
//
//           Container(
//             width: 108,
//             height: 108,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(
//                 color: const Color(0xFFD7EEEE),
//                 width: 1,
//               ),
//             ),
//           ),
//
//           // MIDDLE CIRCLE
//
//           Container(
//             width: 94,
//             height: 94,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(
//                 color: const Color(0xFFD7EEEE),
//                 width: 1,
//               ),
//             ),
//           ),
//
//           // INNER CIRCLE
//
//           Container(
//             width: 82,
//             height: 82,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               color: Color(0xFF7DEBDD),
//             ),
//             child: const Icon(
//               Icons.celebration,
//               color: Color(0xFF006F6D),
//               size: 39,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // =====================================================================
//   // QUOTE CARD
//   // =====================================================================
//
//   Widget _buildQuoteCard() {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.fromLTRB(
//         18,
//         27,
//         18,
//         17,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         border: const Border(
//           top: BorderSide(
//             color: AppColors.primary,
//             width: 3,
//           ),
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.07),
//             blurRadius: 15,
//             offset: const Offset(0, 6),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           const SizedBox(height: 20),
//
//           // QUOTE
//
//           const Text(
//             '"The journey of a thousand\n'
//                 'miles begins with one step."',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'Manrope',
//               fontWeight: FontWeight.w600,
//               fontSize: 18,
//               height: 1.45,
//               color: AppColors.primary,
//             ),
//           ),
//
//           const SizedBox(height: 8),
//
//           // AUTHOR
//
//           const Text(
//             'LAO TZU',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'Manrope',
//               fontWeight: FontWeight.w500,
//               fontSize: 10,
//               letterSpacing: 0.7,
//               color: AppColors.textGrey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // =====================================================================
//   // BUILD
//   // =====================================================================
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.cardBackground,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             // ============================================================
//             // BACKGROUND DECORATIONS
//             // ============================================================
//
//             Positioned(
//               left: 58,
//               bottom: 165,
//               child: Transform.rotate(
//                 angle: -0.25,
//                 child: Container(
//                   width: 8,
//                   height: 8,
//                   decoration: const BoxDecoration(
//                     color: Color(0xFFB9DEDC),
//                   ),
//                 ),
//               ),
//             ),
//
//             Positioned(
//               right: -1,
//               bottom: 155,
//               child: Transform.rotate(
//                 angle: 0.7,
//                 child: Container(
//                   width: 8,
//                   height: 8,
//                   decoration: const BoxDecoration(
//                     color: Color(0xFFB9DEDC),
//                   ),
//                 ),
//               ),
//             ),
//
//             Positioned(
//               right: 62,
//               bottom: 60,
//               child: Container(
//                 width: 6,
//                 height: 6,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: const Color(0xFFB9DEDC).withOpacity(0.35),
//                 ),
//               ),
//             ),
//
//             Positioned(
//               left: 118,
//               bottom: 68,
//               child: Container(
//                 width: 5,
//                 height: 5,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: const Color(0xFFB9DEDC).withOpacity(0.28),
//                 ),
//               ),
//             ),
//
//             // ============================================================
//             // MAIN CONTENT
//             // ============================================================
//
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 50),
//
//                   // ========================================================
//                   // CELEBRATION
//                   // ========================================================
//
//                   _buildCelebrationIcon(),
//
//                   const SizedBox(height: 20),
//
//                   // ========================================================
//                   // AWESOME
//                   // ========================================================
//
//                   const Text(
//                     'Awesome! 🎉',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontFamily: 'Manrope',
//                       fontWeight: FontWeight.w700,
//                       fontSize: 26,
//                       height: 1.2,
//                       color: AppColors.primary,
//                     ),
//                   ),
//
//                   const SizedBox(height: 8),
//
//                   const Text(
//                     "We're proud of you for making it this far.\nEvery single day counts towards a\nhealthier you.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontFamily: 'Manrope',
//                       fontWeight: FontWeight.w400,
//                       fontSize: 14,
//                       height: 1.5,
//                       color: AppColors.textGrey,
//                     ),
//                   ),
//
//                   const SizedBox(height: 28),
//
//                   // ========================================================
//                   // QUOTE CARD
//                   // ========================================================
//
//                   _buildQuoteCard(),
//
//                   const Spacer(),
//
//                   // ========================================================
//                   // CONTINUE TO HOME
//                   // ========================================================
//
//                   SizedBox(
//                     width: 342,
//                     height: 56,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.of(context).pushAndRemoveUntil(
//                           MaterialPageRoute(
//                             builder: (_) => const MainNavScreen(),
//                           ),
//                               (route) => false,
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: AppColors.primary,
//                         foregroundColor: Colors.white,
//                         elevation: 2,
//                         shadowColor: Colors.black.withOpacity(0.15),
//                         padding: EdgeInsets.zero,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(22),
//                         ),
//                       ),
//                       child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Continue to Home',
//                             style: TextStyle(
//                               fontFamily: 'Manrope',
//                               fontWeight: FontWeight.w600,
//                               fontSize: 14,
//                             ),
//                           ),
//                           SizedBox(width: 6),
//                           Icon(
//                             Icons.arrow_forward,
//                             size: 15,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//
//                   const SizedBox(height: 28),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }