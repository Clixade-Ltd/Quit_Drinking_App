// import 'package:flutter/material.dart';
// import 'package:new_quit_drinking_app/constants/app_colors.dart';
//
// import '../bottom_nav/main_nav_screen.dart';
//
// class ProgressStillMattersScreen extends StatefulWidget {
//   const ProgressStillMattersScreen({super.key});
//
//   @override
//   State<ProgressStillMattersScreen> createState() =>
//       _ProgressStillMattersScreenState();
// }
//
// class _ProgressStillMattersScreenState
//     extends State<ProgressStillMattersScreen> {
//
//   // =====================================================================
//   // CONTINUE JOURNEY
//   // =====================================================================
//
//   void _continueJourney() {
//     Navigator.of(context).pushAndRemoveUntil(
//       MaterialPageRoute(
//         builder: (_) => const MainNavScreen(),
//       ),
//           (route) => false,
//     );
//   }
//
//   // =====================================================================
//   // NEED TO TALK
//   // =====================================================================
//
//   void _needToTalk() {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text(
//           'Support will be available here soon.',
//         ),
//         behavior: SnackBarBehavior.floating,
//       ),
//     );
//   }
//
//   // =====================================================================
//   // LEAF ICON
//   // =====================================================================
//
//   Widget _buildLeafIcon() {
//     return Container(
//       width: 125,
//       height: 125,
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.white,
//       ),
//       child: const Center(
//         child: Icon(
//           Icons.spa,
//           color: AppColors.primary,
//           size: 49,
//         ),
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
//         18,
//         18,
//         14,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.06),
//             blurRadius: 14,
//             offset: const Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           const Text(
//             '"Success is not final, failure is not fatal:\n'
//                 'it is the courage to continue that\n'
//                 'counts."',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'Manrope',
//               fontWeight: FontWeight.w400,
//               fontSize: 14,
//               height: 1.5,
//               color: AppColors.textBlack,
//             ),
//           ),
//
//           const SizedBox(height: 10),
//
//           const Text(
//             'WINSTON CHURCHILL',
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
//       backgroundColor: AppColors.iconbg,
//       body: SafeArea(
//         child: Stack(
//           children: [
//
//             // ============================================================
//             // CONTENT
//             // ============================================================
//
//             Padding(
//               padding: const EdgeInsets.fromLTRB(
//                 20,
//                 46,
//                 20,
//                 24,
//               ),
//               child: Column(
//                 children: [
//                   // ========================================================
//                   // LEAF
//                   // ========================================================
//
//                   _buildLeafIcon(),
//
//                   const SizedBox(height: 40),
//
//                   // ========================================================
//                   // TITLE
//                   // ========================================================
//
//                   const Text(
//                     'Your Progress Still Matters',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontFamily: 'Manrope',
//                       fontWeight: FontWeight.w700,
//                       fontSize: 19,
//                       height: 1.2,
//                       color: AppColors.primary,
//                     ),
//                   ),
//
//                   const SizedBox(height: 14),
//
//                   // ========================================================
//                   // DESCRIPTION
//                   // ========================================================
//
//                   const Text(
//                     'Recovery is rarely a straight line. Every\n'
//                         'day you chose sobriety before today is a\n'
//                         'testament to your strength. This is just a\n'
//                         'detour, not the end of the road.',
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
//                   const SizedBox(height: 26),
//
//                   // ========================================================
//                   // QUOTE
//                   // ========================================================
//
//                   _buildQuoteCard(),
//
//                   const Spacer(),
//
//                   // ========================================================
//                   // CONTINUE JOURNEY
//                   // ========================================================
//
//                   SizedBox(
//                     width: 342,
//                     height: 48,
//                     child: ElevatedButton(
//                       onPressed: _continueJourney,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: AppColors.primary,
//                         foregroundColor: Colors.white,
//                         elevation: 1,
//                         padding: EdgeInsets.zero,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Continue Journey',
//                             style: TextStyle(
//                               fontFamily: 'Manrope',
//                               fontWeight: FontWeight.w600,
//                               fontSize: 14,
//                             ),
//                           ),
//                           SizedBox(width: 7),
//                           Icon(
//                             Icons.arrow_forward,
//                             size: 17,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//
//                   const SizedBox(height: 10),
//
//                   // ========================================================
//                   // I NEED TO TALK
//                   // ========================================================
//
//                   SizedBox(
//                     width: 342,
//                     height: 50,
//                     child: OutlinedButton(
//                       onPressed: _needToTalk,
//                       style: OutlinedButton.styleFrom(
//                         foregroundColor: AppColors.primary,
//                         side: const BorderSide(
//                           color: AppColors.primary,
//                           width: 1,
//                         ),
//                         padding: EdgeInsets.zero,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.support_agent_outlined,
//                             size: 17,
//                           ),
//                           SizedBox(width: 6),
//                           Text(
//                             'I Need to Talk',
//                             style: TextStyle(
//                               fontFamily: 'Manrope',
//                               fontWeight: FontWeight.w600,
//                               fontSize: 14,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//
//                   const SizedBox(height: 52),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }