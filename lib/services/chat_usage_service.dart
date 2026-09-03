import 'local_storage_service.dart';

/// Tracks how many AI chat messages the free-tier user has sent today.
///
/// Persisted as {date: 'yyyy-MM-dd', count: N} and auto-resets once the
/// stored date no longer matches today's date — no cron/reset job needed.
class ChatUsageService {
  ChatUsageService._();

  static final ChatUsageService instance = ChatUsageService._();

  static const String _storageKey = 'chat_usage';

  final LocalStorageService _storage = LocalStorageService.instance;

  String _todayKey() {
    final now = DateTime.now();
    return '${now.year.toString().padLeft(4, '0')}-'
        '${now.month.toString().padLeft(2, '0')}-'
        '${now.day.toString().padLeft(2, '0')}';
  }

  /// Messages sent today. Auto-resets to 0 if the saved date isn't today.
  Future<int> getTodayCount() async {
    try {
      final saved = await _storage.getJson(_storageKey);
      if (saved == null) return 0;
      if (saved['date'] != _todayKey()) return 0;
      return (saved['count'] as int?) ?? 0;
    } catch (_) {
      return 0;
    }
  }

  /// Increments today's count (resetting first if the date rolled over)
  /// and returns the new count. Call this only after a message actually
  /// succeeds — a failed send shouldn't cost the user a free message.
  Future<int> incrementTodayCount() async {
    final current = await getTodayCount();
    final updated = current + 1;
    await _storage.setJson(_storageKey, {
      'date': _todayKey(),
      'count': updated,
    });
    return updated;
  }
}