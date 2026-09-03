// import 'dart:convert';
// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
// import 'package:new_quit_drinking_app/constants/app_colors.dart';
// import 'package:new_quit_drinking_app/screens/daily_check_in/progress_still_matters_screen.dart';
// import 'package:new_quit_drinking_app/services/home_dashboard_service.dart';
//
// import 'daily_check_in_screen.dart';
// import 'awesome_screen.dart';
//
// class DailyReminderScreen extends StatefulWidget {
//   const DailyReminderScreen({super.key});
//
//   @override
//   State<DailyReminderScreen> createState() => _DailyReminderScreenState();
// }
//
// class _DailyReminderScreenState extends State<DailyReminderScreen> {
//   final HomeDashboardService _service = HomeDashboardService.instance;
//
//   String _userName = 'there';
//   Uint8List? _profilePhoto;
//
//   bool _isLoadingProfile = true;
//
//   @override
//   void initState() {
//     super.initState();
//     _loadUserProfile();
//   }
//
//   // =====================================================================
//   // LOAD USER PROFILE
//   // =====================================================================
//
//   Future<void> _loadUserProfile() async {
//     try {
//       final profile = await _service.getProfile();
//
//       if (!mounted) return;
//
//       if (profile != null) {
//         final name = profile['name']?.toString().trim();
//
//         Uint8List? photoBytes;
//
//         final base64Photo = profile['photoBase64']?.toString();
//
//         if (base64Photo != null && base64Photo.isNotEmpty) {
//           try {
//             photoBytes = base64Decode(base64Photo);
//           } catch (_) {
//             photoBytes = null;
//           }
//         }
//
//         setState(() {
//           _userName =
//           (name != null && name.isNotEmpty) ? name : 'there';
//
//           _profilePhoto = photoBytes;
//           _isLoadingProfile = false;
//         });
//       } else {
//         setState(() {
//           _isLoadingProfile = false;
//         });
//       }
//     } catch (e) {
//       debugPrint('DAILY REMINDER PROFILE LOAD ERROR: $e');
//
//       if (!mounted) return;
//
//       setState(() {
//         _isLoadingProfile = false;
//       });
//     }
//   }
//
//   // =====================================================================
//   // NAVIGATION
//   // =====================================================================
//
//   void _goToDailyCheckIn() {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (_) => const DailyCheckInScreen(),
//       ),
//     );
//   }
//
//   void _goToAwesomeScreen() {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (_) => const AwesomeScreen(),
//       ),
//     );
//   }
//
//   void _goToYesDidScreen() {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (_) => const ProgressStillMattersScreen(),
//       ),
//     );
//   }
//
//   // =====================================================================
//   // TOP PROFILE IMAGE
//   // =====================================================================
//
//   Widget _buildProfileAvatar() {
//     return Container(
//       width: 42,
//       height: 42,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: const Color(0xFFE8ECEC),
//         border: Border.all(
//           color: AppColors.primary.withOpacity(0.9),
//           width: 1.5,
//         ),
//         image: _profilePhoto != null
//             ? DecorationImage(
//           image: MemoryImage(_profilePhoto!),
//           fit: BoxFit.cover,
//         )
//             : null,
//       ),
//       child: _profilePhoto == null
//           ? const Icon(
//         Icons.person_outline,
//         color: AppColors.primary,
//         size: 22,
//       )
//           : null,
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
//         child: Column(
//           children: [
//             // ============================================================
//             // APP BAR
//             // ============================================================
//
//             Padding(
//               padding: const EdgeInsets.fromLTRB(20, 10, 20, 6),
//               child: SizedBox(
//                 height: 52,
//                 child: Row(
//                   children: [
//                     _buildProfileAvatar(),
//
//                     Expanded(
//                       child: Center(
//                         child: Text(
//                           'Sober Flow',
//                           style: const TextStyle(
//                             fontFamily: 'Manrope',
//                             fontWeight: FontWeight.w700,
//                             fontSize: 24,
//                             color: AppColors.primary,
//                           ),
//                         ),
//                       ),
//                     ),
//
//                     SizedBox(
//                       width: 42,
//                       height: 42,
//                       child: Icon(
//                         Icons.support_agent_outlined,
//                         color: AppColors.primary,
//                         size: 25,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             // ============================================================
//             // CONTENT
//             // ============================================================
//
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(
//                   20,
//                   50,
//                   20,
//                   20,
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Good Morning, $_userName ☀️',
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         fontFamily: 'Manrope',
//                         fontWeight: FontWeight.w500,
//                         fontSize: 18,
//                         height: 1.4,
//                         color: AppColors.textBlack,
//                       ),
//                     ),
//
//                     const SizedBox(height: 8),
//
//                     const Text(
//                       "Let's take a moment to reflect on your journey.",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontFamily: 'Manrope',
//                         fontWeight: FontWeight.w400,
//                         fontSize: 15,
//                         height: 1.4,
//                         color: AppColors.textGrey,
//                       ),
//                     ),
//
//                     const SizedBox(height: 35),
//
//                     // ====================================================
//                     // MAIN CARD
//                     // ====================================================
//
//                     Container(
//                       width: double.infinity,
//                       padding: const EdgeInsets.fromLTRB(
//                         22,
//                         30,
//                         22,
//                         22,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(24),
//                         border: Border.all(
//                           color: const Color(0xFFEDEEEE),
//                           width: 1,
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.025),
//                             blurRadius: 10,
//                             offset: const Offset(0, 4),
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         children: [
//                           // ------------------------------------------------
//                           // ICON
//                           // ------------------------------------------------
//
//                           Container(
//                             width: 58,
//                             height: 58,
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Color(0xFFD7F0F0),
//                             ),
//                             child: const Icon(
//                               Icons.spa,
//                               color: AppColors.primary,
//                               size: 29,
//                             ),
//                           ),
//
//                           const SizedBox(height: 24),
//
//                           const Text(
//                             'Did you drink alcohol today?',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontFamily: 'Manrope',
//                               fontWeight: FontWeight.w500,
//                               fontSize: 16,
//                               height: 1.4,
//                               color: AppColors.textBlack,
//                             ),
//                           ),
//
//                           const SizedBox(height: 18),
//
//                           const Text(
//                             'This is a safe space. Whatever\n'
//                                 'your answer, you are fully\n'
//                                 'supported here.',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontFamily: 'Manrope',
//                               fontWeight: FontWeight.w400,
//                               fontSize: 14,
//                               height: 1.45,
//                               color: AppColors.textGrey,
//                             ),
//                           ),
//
//                           const SizedBox(height: 22),
//
//                           // ------------------------------------------------
//                           // NO, I DIDN'T
//                           // ------------------------------------------------
//
//                           SizedBox(
//                             width: double.infinity,
//                             height: 48,
//                             child: ElevatedButton(
//                               onPressed: _goToAwesomeScreen,
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: AppColors.primary,
//                                 foregroundColor: Colors.white,
//                                 elevation: 0,
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 20,
//                                 ),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                               ),
//                               child: const Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.check_circle_outline,
//                                     size: 21,
//                                   ),
//                                   SizedBox(width: 8),
//                                   Text(
//                                     "No, I Didn't",
//                                     style: TextStyle(
//                                       fontFamily: 'Manrope',
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//
//                           const SizedBox(height: 12),
//
//                           // ------------------------------------------------
//                           // YES, I DID
//                           // ------------------------------------------------
//
//                           SizedBox(
//                             width: double.infinity,
//                             height: 48,
//                             child: ElevatedButton(
//                               onPressed: _goToYesDidScreen,
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: const Color(0xFFE7E8E8),
//                                 foregroundColor: AppColors.textGrey,
//                                 elevation: 0,
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 20,
//                                 ),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                               ),
//                               child: const Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.volunteer_activism_outlined,
//                                     size: 21,
//                                   ),
//                                   SizedBox(width: 8),
//                                   Text(
//                                     'Yes, I Did',
//                                     style: TextStyle(
//                                       fontFamily: 'Manrope',
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     const Spacer(),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }