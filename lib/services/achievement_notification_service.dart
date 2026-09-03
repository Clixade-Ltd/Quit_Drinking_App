// import 'package:shared_preferences/shared_preferences.dart';
//
// import 'journey_badge_definitions.dart';
//
// class AchievementNotification {
//   final JourneyBadgeDefinition badge;
//
//   const AchievementNotification({
//     required this.badge,
//   });
// }
//
// /// Detects newly unlocked Journey Badges.
// ///
// /// IMPORTANT:
// /// This service does NOT decide whether a badge is unlocked by
// /// looking at the BadgesScreen.
// ///
// /// It is called directly when the real activity counter changes.
// ///
// /// Example:
// ///
// /// Journal:
// /// 0 -> 1  => First Reflection
// /// 1 -> 10 => Open Book
// /// 10 -> 30 => Dedicated Writer
// ///
// /// Already-notified badges are persisted so the same badge is
// /// never announced repeatedly after an app restart.
// class AchievementNotificationService {
//   AchievementNotificationService._();
//
//   static final AchievementNotificationService instance =
//   AchievementNotificationService._();
//
//   static const String _notifiedPrefix =
//       'journey_badge_notified_';
//
//   final List<AchievementNotification> _pending = [];
//
//   bool _checking = false;
//
//   // ============================================================
//   // LISTENER
//   // ============================================================
//
//   final List<void Function(AchievementNotification)> _listeners =
//   [];
//
//   void addListener(
//       void Function(AchievementNotification) listener,
//       ) {
//     if (!_listeners.contains(listener)) {
//       _listeners.add(listener);
//     }
//   }
//
//   void removeListener(
//       void Function(AchievementNotification) listener,
//       ) {
//     _listeners.remove(listener);
//   }
//
//   // ============================================================
//   // CHECK COUNTER
//   // ============================================================
//
//   Future<void> checkCounter({
//     required JourneyBadgeCounter counterId,
//     required double oldValue,
//     required double newValue,
//   }) async {
//     if (_checking) {
//       return;
//     }
//
//     if (newValue <= oldValue) {
//       return;
//     }
//
//     _checking = true;
//
//     try {
//       final prefs =
//       await SharedPreferences.getInstance();
//
//       final badges = JourneyBadgeDefinitions.all
//           .where(
//             (badge) => badge.counter == counterId,
//       )
//           .toList();
//
//       for (final badge in badges) {
//         // The threshold must actually be crossed.
//         //
//         // This prevents:
//         // 10 -> 11
//         //
//         // from incorrectly notifying "Open Book" again.
//         final crossedThreshold =
//             oldValue < badge.threshold &&
//                 newValue >= badge.threshold;
//
//         if (!crossedThreshold) {
//           continue;
//         }
//
//         final alreadyNotified =
//             prefs.getBool(
//               '$_notifiedPrefix${badge.id}',
//             ) ??
//                 false;
//
//         if (alreadyNotified) {
//           continue;
//         }
//
//         await prefs.setBool(
//           '$_notifiedPrefix${badge.id}',
//           true,
//         );
//
//         final notification =
//         AchievementNotification(
//           badge: badge,
//         );
//
//         _pending.add(notification);
//
//         for (final listener
//         in List<void Function(AchievementNotification)>.from(
//           _listeners,
//         )) {
//           listener(notification);
//         }
//       }
//     } finally {
//       _checking = false;
//     }
//   }
//
//   // ============================================================
//   // PENDING
//   // ============================================================
//
//   AchievementNotification? takePending() {
//     if (_pending.isEmpty) {
//       return null;
//     }
//
//     return _pending.removeAt(0);
//   }
//
//   // ============================================================
//   // RESET
//   // ============================================================
//
//   Future<void> resetNotifications() async {
//     final prefs =
//     await SharedPreferences.getInstance();
//
//     for (final badge in JourneyBadgeDefinitions.all) {
//       await prefs.remove(
//         '$_notifiedPrefix${badge.id}',
//       );
//     }
//
//     _pending.clear();
//   }
// }