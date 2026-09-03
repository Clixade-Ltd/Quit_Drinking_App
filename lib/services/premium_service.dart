import 'package:flutter/foundation.dart';

import 'local_storage_service.dart';

/// Tracks whether the user currently has Premium access.
///
/// ============================================================
/// IMPORTANT — NO REAL PAYMENT FLOW YET
/// ============================================================
///
/// This is a LOCAL flag only, persisted via LocalStorageService.
/// There's no App Store / Play Billing / RevenueCat integration
/// behind it — `setPremium(true)` is called directly from the
/// "Start Premium" button on PremiumPlanScreen for now.
///
/// When a real purchase flow is wired up later, that flow should
/// call `setPremium(true)` on a successful purchase (and probably
/// `setPremium(false)` on expiry/cancellation) instead of the
/// button doing it directly. Every other feature that reads
/// premium status (AI chat limits, journal limits, unlocked
/// charts, weekly AI reports, etc.) can keep using `isPremium()`
/// exactly as-is — nothing downstream needs to change when real
/// payments are added.
///
/// ============================================================
///
/// NOTE: This is now a ChangeNotifier. Any widget that shows
/// premium-gated UI should listen to it (see
/// JournalInsightsPremiumCard for an example) instead of only
/// reading `isPremium()` once in `initState`/`initState`-style
/// loaders — otherwise the UI goes stale the moment the plan
/// changes (e.g. switching to free from a debug/dev toggle)
/// without a full screen rebuild.
class PremiumService extends ChangeNotifier {
  PremiumService._();

  static final PremiumService instance = PremiumService._();

  static const String _storageKey = 'premium_status';

  final LocalStorageService _storage = LocalStorageService.instance;

  /// Whether the user currently has premium access.
  Future<bool> isPremium() async {
    try {
      final saved = await _storage.getJson(_storageKey);
      return saved?['isPremium'] == true;
    } catch (_) {
      return false;
    }
  }

  /// The plan the user is on ('monthly' or 'yearly'), or null if
  /// they're not premium / no plan was recorded.
  Future<String?> getPlanType() async {
    try {
      final saved = await _storage.getJson(_storageKey);
      final plan = saved?['planType'];
      return (plan is String && plan.isNotEmpty) ? plan : null;
    } catch (_) {
      return null;
    }
  }

  /// Turns premium on or off, optionally recording which plan was
  /// selected. Persisted locally so it survives app restarts.
  ///
  /// Notifies listeners after saving, so any widget subscribed to
  /// this service (via `PremiumService.instance.addListener(...)`)
  /// can immediately re-check `isPremium()` and refresh its UI —
  /// no need to wait for the widget to be rebuilt/recreated.
  Future<void> setPremium(
      bool value, {
        String? planType,
      }) async {
    await _storage.setJson(_storageKey, {
      'isPremium': value,
      'planType': value ? planType : null,
      'updatedAt': DateTime.now().toIso8601String(),
    });

    notifyListeners();
  }
}