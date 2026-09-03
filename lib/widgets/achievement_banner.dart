// import 'package:flutter/material.dart';
//
// import '../constants/app_colors.dart';
// import '../models/milestone_definition.dart';
// import '../services/achievement_notification_service.dart';
// import '../services/journey_badge_definitions.dart';
// import '../screens/bottom_nav/badges/badges_screen.dart';
//
// class AchievementBannerHost extends StatefulWidget {
//   final Widget child;
//
//   const AchievementBannerHost({
//     super.key,
//     required this.child,
//   });
//
//   @override
//   State<AchievementBannerHost> createState() =>
//       _AchievementBannerHostState();
// }
//
// class _AchievementBannerHostState
//     extends State<AchievementBannerHost>
//     with SingleTickerProviderStateMixin {
//   AchievementNotification? _notification;
//
//   late final AnimationController _animationController;
//
//   @override
//   void initState() {
//     super.initState();
//
//     _animationController =
//         AnimationController(
//           vsync: this,
//           duration: const Duration(
//             milliseconds: 280,
//           ),
//         );
//
//     AchievementNotificationService.instance
//         .addListener(
//       _onAchievementUnlocked,
//     );
//   }
//
//   @override
//   void dispose() {
//     AchievementNotificationService.instance
//         .removeListener(
//       _onAchievementUnlocked,
//     );
//
//     _animationController.dispose();
//
//     super.dispose();
//   }
//
//   void _onAchievementUnlocked(
//       AchievementNotification notification,
//       ) {
//     if (!mounted) return;
//
//     // If another badge is currently visible, queue the new one.
//     if (_notification != null) {
//       return;
//     }
//
//     setState(() {
//       _notification = notification;
//     });
//
//     _animationController.forward();
//   }
//
//   Future<void> _dismiss() async {
//     await _animationController.reverse();
//
//     if (!mounted) return;
//
//     setState(() {
//       _notification = null;
//     });
//
//     // If another badge was waiting, display it.
//     final next =
//     AchievementNotificationService.instance
//         .takePending();
//
//     if (next != null && mounted) {
//       _onAchievementUnlocked(next);
//     }
//   }
//
//   void _openBadges() {
//     _dismiss();
//
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (_) => const BadgesScreen(),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final notification = _notification;
//
//     return Stack(
//       children: [
//         widget.child,
//
//         if (notification != null)
//           Positioned(
//             top: 0,
//             left: 12,
//             right: 12,
//             child: SafeArea(
//               bottom: false,
//               child: SlideTransition(
//                 position: Tween<Offset>(
//                   begin: const Offset(0, -1.2),
//                   end: Offset.zero,
//                 ).animate(
//                   CurvedAnimation(
//                     parent: _animationController,
//                     curve: Curves.easeOutCubic,
//                   ),
//                 ),
//                 child: _AchievementBanner(
//                   badge: notification.badge,
//                   onTap: _openBadges,
//                   onDismiss: _dismiss,
//                 ),
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
//
//
// // ============================================================
// // BANNER UI
// // ============================================================
//
// class _AchievementBanner extends StatelessWidget {
//   final JourneyBadgeDefinition badge;
//   final VoidCallback onTap;
//   final VoidCallback onDismiss;
//
//   const _AchievementBanner({
//     required this.badge,
//     required this.onTap,
//     required this.onDismiss,
//   });
//
//   Color _tierColor() {
//     switch (badge.tier) {
//       case BadgeTier.bronze:
//         return const Color(0xFFB87A4B);
//
//       case BadgeTier.silver:
//         return const Color(0xFF9AA3AF);
//
//       case BadgeTier.gold:
//         return const Color(0xFFD9A441);
//
//       case BadgeTier.platinum:
//         return const Color(0xFF6C7BD1);
//
//       case BadgeTier.diamond:
//         return const Color(0xFF3FB6C9);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final tierColor = _tierColor();
//
//     return Material(
//       color: Colors.transparent,
//       child: InkWell(
//         onTap: onTap,
//         borderRadius: BorderRadius.circular(22),
//         child: Container(
//           width: double.infinity,
//           padding: const EdgeInsets.symmetric(
//             horizontal: 14,
//             vertical: 12,
//           ),
//           decoration: BoxDecoration(
//             color: AppColors.white,
//             borderRadius: BorderRadius.circular(22),
//             border: Border.all(
//               color: tierColor.withOpacity(0.25),
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.14),
//                 blurRadius: 18,
//                 offset: const Offset(0, 6),
//               ),
//             ],
//           ),
//           child: Row(
//             children: [
//               Container(
//                 width: 46,
//                 height: 46,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   gradient: LinearGradient(
//                     colors: [
//                       tierColor,
//                       tierColor.withOpacity(0.72),
//                     ],
//                   ),
//                 ),
//                 child: Icon(
//                   badge.icon,
//                   color: AppColors.white,
//                   size: 23,
//                 ),
//               ),
//
//               const SizedBox(width: 12),
//
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment:
//                   CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'New Badge Unlocked!',
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w600,
//                         color: AppColors.primary,
//                       ),
//                     ),
//
//                     const SizedBox(height: 2),
//
//                     Text(
//                       badge.title.replaceAll('\n', ' '),
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: const TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w700,
//                         color: AppColors.textBlack,
//                       ),
//                     ),
//
//                     const SizedBox(height: 1),
//
//                     const Text(
//                       'Tap to view your achievement',
//                       style: TextStyle(
//                         fontSize: 11,
//                         color: AppColors.textGrey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//               IconButton(
//                 onPressed: onDismiss,
//                 splashRadius: 20,
//                 icon: const Icon(
//                   Icons.close_rounded,
//                   size: 20,
//                   color: AppColors.textGrey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }