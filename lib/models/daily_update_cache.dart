import '../services/gemini_service.dart';
import '../services/home_dashboard_service.dart';

class DailyUpdateCache {
  DailyUpdateCache._();

  static final DailyUpdateCache instance =
  DailyUpdateCache._();

  Future<Map<String, dynamic>>? _inFlight;

  // =========================================================
  // GET TODAY'S UPDATE
  // =========================================================

  Future<Map<String, dynamic>> getTodaysUpdate(
      Map<String, dynamic> userData, {
        required String languageCode,
      }) async {
    // ---------------------------------------------------------
    // FIRST: CHECK LOCAL STORAGE
    // ---------------------------------------------------------

    final savedUpdate =
    await HomeDashboardService.instance
        .getTodayAIUpdate();

    if (savedUpdate != null) {
      return savedUpdate;
    }

    // ---------------------------------------------------------
    // IF ANOTHER REQUEST IS ALREADY RUNNING,
    // WAIT FOR THAT SAME REQUEST.
    // ---------------------------------------------------------

    _inFlight ??=
        GeminiService.instance
            .generateDailyUpdate(
          userData: userData,
          languageCode: languageCode,
        )
            .then((update) async {
          await HomeDashboardService.instance
              .saveDailyAIUpdate(update);

          return update;
        })
            .whenComplete(() {
          _inFlight = null;
        });

    return await _inFlight!;
  }

  // =========================================================
  // JOURNAL PROMPT
  // =========================================================

  Future<String> getTodaysJournalPrompt(
      Map<String, dynamic> userData, {
        required String languageCode,
      }) async {
    final update =
    await getTodaysUpdate(userData, languageCode: languageCode);

    final prompt =
    update['journalPrompt']?.toString();

    if (prompt == null ||
        prompt.trim().isEmpty) {
      throw Exception(
        'No journalPrompt in daily update.',
      );
    }

    return prompt.trim();
  }
}