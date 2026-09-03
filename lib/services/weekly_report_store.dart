import 'local_storage_service.dart';

/// Caches the most recently generated weekly report so it isn't
/// regenerated (and re-billed to Gemini) every time the user opens
/// the screen — only once per newly completed week.
class WeeklyReportStore {
  WeeklyReportStore._();

  static final WeeklyReportStore instance = WeeklyReportStore._();

  static const String _storageKey = 'weekly_report';

  final LocalStorageService _storage = LocalStorageService.instance;

  /// Returns the cached report only if it was generated for
  /// [weekStartKey] (format 'yyyy-MM-dd', the Monday the report
  /// covers). Returns null if there's no cache or it's for an
  /// older week.
  Future<Map<String, dynamic>?> getCachedReport(String weekStartKey) async {
    try {
      final saved = await _storage.getJson(_storageKey);
      if (saved == null) return null;
      if (saved['weekStart'] != weekStartKey) return null;

      final report = saved['report'];
      if (report is Map) {
        return Map<String, dynamic>.from(report);
      }
      return null;
    } catch (_) {
      return null;
    }
  }

  Future<void> saveReport({
    required String weekStartKey,
    required Map<String, dynamic> report,
  }) async {
    await _storage.setJson(_storageKey, {
      'weekStart': weekStartKey,
      'generatedAt': DateTime.now().toIso8601String(),
      'report': report,
    });
  }
}