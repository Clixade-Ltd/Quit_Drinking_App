import '../models/daily_check_in.dart';
import 'local_storage_service.dart';
import 'achievement_service.dart';

/// All check-ins are stored as one map:
/// { "2026-08-20": {...}, ... }
/// under a single local key.
class DailyCheckInService {
  DailyCheckInService._internal();

  static final DailyCheckInService instance =
  DailyCheckInService._internal();

  static const _storageKey = 'daily_check_ins';

  final LocalStorageService _storage = LocalStorageService.instance;

  String _dateKeyFor(DateTime date) {
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  Future<Map<String, dynamic>> _readAll() async {
    return await _storage.getJson(_storageKey) ?? {};
  }

  /// Saves one check-in per day.
  ///
  /// Returns false if today's check-in already exists.
  Future<bool> save(DailyCheckIn entry) async {
    final all = await _readAll();

    // ------------------------------------------------------------
    // ONE CHECK-IN PER DAY
    // ------------------------------------------------------------
    if (all.containsKey(entry.dateKey)) {
      return false;
    }

    all[entry.dateKey] = {
      ...entry.toJson(),
      'updatedAt': DateTime.now().toIso8601String(),
    };

    await _storage.setJson(_storageKey, all);

    // Live badge counter — only counts genuinely new check-ins (not the
    // false/duplicate path above), toward the Check-In journey badges
    // (Check-In Habit / Consistency Pro / Dedicated Journey).
    await AchievementService.instance.incrementCheckIns();

    return true;
  }

  Future<DailyCheckIn?> getForDate(DateTime date) async {
    final all = await _readAll();
    final raw = all[_dateKeyFor(date)];

    if (raw == null) return null;

    return DailyCheckIn.fromJson(
      Map<String, dynamic>.from(raw),
    );
  }

  Future<DailyCheckIn?> getToday() {
    return getForDate(DateTime.now());
  }

  /// Returns yesterday's check-in.
  Future<DailyCheckIn?> getYesterday() {
    final yesterday = DateTime.now().subtract(
      const Duration(days: 1),
    );

    return getForDate(yesterday);
  }

  Future<List<DailyCheckIn>> getAll() async {
    final all = await _readAll();

    final entries = all.values
        .map(
          (raw) => DailyCheckIn.fromJson(
        Map<String, dynamic>.from(raw),
      ),
    )
        .toList();

    entries.sort(
          (a, b) => b.date.compareTo(a.date),
    );

    return entries;
  }

  Future<List<DailyCheckIn>> getRecent(int count) async {
    final all = await getAll();
    return all.take(count).toList();
  }

  Future<void> delete(DateTime date) async {
    final all = await _readAll();

    all.remove(_dateKeyFor(date));

    await _storage.setJson(
      _storageKey,
      all,
    );
  }
}