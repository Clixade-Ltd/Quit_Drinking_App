import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../constants/api_constants.dart';
import '../models/journal_draft_store.dart';
import 'daily_check_in_service.dart';
import 'home_dashboard_service.dart';
import 'weekly_report_store.dart';

class WeeklyReportService {
  WeeklyReportService._();

  static final WeeklyReportService instance = WeeklyReportService._();

  final HomeDashboardService _dashboardService = HomeDashboardService.instance;

  // ============================================================
  // WEEK BOUNDARIES
  // ============================================================
  //
  // The report always covers the most recently *completed* week
  // (Monday 00:00 -> Sunday 23:59) — same Mon-Sun definition
  // JournalDraftStore.entriesThisWeek() already uses.
  //
  // ============================================================

  DateTime _mostRecentMonday(DateTime date) {
    final day = DateTime(date.year, date.month, date.day);
    return day.subtract(Duration(days: day.weekday - 1));
  }

  /// Monday 00:00 of the last fully-completed week.
  DateTime get _reportWeekStart =>
      _mostRecentMonday(DateTime.now()).subtract(const Duration(days: 7));

  /// The instant just before the following Monday — i.e. end of
  /// that week's Sunday.
  DateTime get _reportWeekEnd => _reportWeekStart
      .add(const Duration(days: 7))
      .subtract(const Duration(seconds: 1));

  String _dateKey(DateTime date) {
    return '${date.year}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  bool _inReportWeek(DateTime date) {
    return !date.isBefore(_reportWeekStart) && !date.isAfter(_reportWeekEnd);
  }

  // ============================================================
  // GET OR GENERATE
  // ============================================================

  /// Returns the report for the last completed week, generating it
  /// with Gemini (and caching it) only if it hasn't been generated
  /// yet. Pass [forceRegenerate] to bypass the cache.
  Future<Map<String, dynamic>> getWeeklyReport({
    bool forceRegenerate = false,
  }) async {
    final weekKey = _dateKey(_reportWeekStart);

    if (!forceRegenerate) {
      final cached = await WeeklyReportStore.instance.getCachedReport(weekKey);
      if (cached != null) return cached;
    }

    final report = await _generateReport();

    await WeeklyReportStore.instance.saveReport(
      weekStartKey: weekKey,
      report: report,
    );

    return report;
  }

  // ============================================================
  // GENERATE (GEMINI CALL)
  // ============================================================

  Future<Map<String, dynamic>> _generateReport() async {
    try {
      // ----------------------------------------------------------
      // GATHER WEEK'S JOURNAL ENTRIES
      // ----------------------------------------------------------

      final weekEntries = JournalDraftStore.instance.entries
          .where((e) => _inReportWeek(e.date))
          .toList();

      final weekJournalEntries = weekEntries
          .map((e) => {
        'date': _dateKey(e.date),
        'entryText': e.entryText,
        'moodIndex': e.moodIndex,
        'trigger': e.trigger,
        'whatHelped': e.whatHelped,
      })
          .toList();

      // ----------------------------------------------------------
      // GATHER WEEK'S CHECK-INS
      // ----------------------------------------------------------

      final allCheckIns = await DailyCheckInService.instance.getAll();

      final weekCheckIns = allCheckIns
          .where((c) => _inReportWeek(c.date))
          .map((c) => {
        'date': _dateKey(c.date),
        'stayedOnTrack': c.stayedOnTrack,
        'moodIndex': c.moodIndex,
        'cravingLevel': c.cravingLevel,
        'note': c.note.isEmpty ? null : c.note,
      })
          .toList();

      // ----------------------------------------------------------
      // USER PROFILE
      // ----------------------------------------------------------

      final profile = await _dashboardService.getProfile() ?? {};
      final daysSober = await _dashboardService.getDaysSober();

      final userName = profile['name'] ?? 'there';
      final userGoal = profile['goal'] ?? 'Reduce drinking';

      // ----------------------------------------------------------
      // BUILD PROMPT — template text is unchanged, only the
      // {placeholder} values below are substituted.
      // ----------------------------------------------------------

      final prompt = _buildWeeklyReportPrompt(
        weekJournalEntries: jsonEncode(weekJournalEntries),
        weekCheckIns: jsonEncode(weekCheckIns),
        userName: userName.toString(),
        userGoal: userGoal.toString(),
        daysSober: daysSober,
      );

      // ----------------------------------------------------------
      // GEMINI URL — same pattern as RecoveryCoachChatService
      // ----------------------------------------------------------

      final url = Uri.parse(
        '${ApiConstants.geminiBaseUrl}/'
            '${ApiConstants.geminiModel}:generateContent'
            '?key=${ApiConstants.geminiApiKey}',
      );

      log('Weekly Report: requesting report for week $_reportWeekStart');

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'contents': [
            {
              'role': 'user',
              'parts': [
                {'text': prompt},
              ],
            },
          ],
          'generationConfig': {
            'temperature': 0.6,
            'maxOutputTokens': 700,
          },
        }),
      );

      log('Weekly Report Gemini status: ${response.statusCode}');
      log('Weekly Report Gemini response: ${response.body}');

      if (response.statusCode != 200) {
        throw Exception(
          'Gemini API Error (${response.statusCode}): ${response.body}',
        );
      }

      final decoded = jsonDecode(response.body);

      if (decoded is! Map) {
        throw Exception('Gemini returned an invalid response.');
      }

      final candidates = decoded['candidates'];
      if (candidates is! List || candidates.isEmpty) {
        throw Exception('Gemini returned no candidates.');
      }

      final content = (candidates.first as Map)['content'];
      if (content is! Map) {
        throw Exception('Gemini returned no valid content.');
      }

      final parts = content['parts'];
      if (parts is! List || parts.isEmpty) {
        throw Exception('Gemini returned no response parts.');
      }

      String? rawText;
      for (final part in parts) {
        if (part is Map) {
          final text = part['text']?.toString();
          if (text != null && text.trim().isNotEmpty) {
            rawText = text.trim();
            break;
          }
        }
      }

      if (rawText == null || rawText.isEmpty) {
        throw Exception('Gemini returned an empty response.');
      }

      // ----------------------------------------------------------
      // PARSE JSON (strip ```json fences if Gemini adds them)
      // ----------------------------------------------------------

      final cleaned = rawText
          .replaceAll(RegExp(r'^```json', multiLine: true), '')
          .replaceAll(RegExp(r'^```', multiLine: true), '')
          .replaceAll('```', '')
          .trim();

      final parsed = jsonDecode(cleaned);

      if (parsed is! Map) {
        throw Exception('Gemini response was not a JSON object.');
      }

      final journalInsights = (parsed['journalInsights'] as List?)
          ?.map((e) => e.toString())
          .toList() ??
          <String>[];

      final weeklySummaryRaw = parsed['weeklySummary'];
      final weeklySummary = weeklySummaryRaw is Map
          ? Map<String, dynamic>.from(weeklySummaryRaw)
          : <String, dynamic>{};

      return {
        'journalInsights': journalInsights,
        'weeklySummary': weeklySummary,
        'weekStart': _dateKey(_reportWeekStart),
        'weekEnd': _dateKey(_reportWeekEnd),
      };
    } catch (e, stackTrace) {
      log('Weekly Report Error: $e', stackTrace: stackTrace);
      rethrow;
    }
  }

  // ============================================================
  // PROMPT — TEMPLATE TEXT UNCHANGED, EXACTLY AS GIVEN
  // ============================================================

  String _buildWeeklyReportPrompt({
    required String weekJournalEntries,
    required String weekCheckIns,
    required String userName,
    required String userGoal,
    required int daysSober,
  }) {
    return '''
You are a recovery coach. Analyze this week's data and respond ONLY in valid JSON:
JOURNAL ENTRIES: $weekJournalEntries
CHECK-IN DATA: $weekCheckIns
USER PROFILE:

* Name: $userName
* Goal: $userGoal
* Days sober: $daysSober

{
  "journalInsights": [
    "insight about writing patterns",
    "insight about emotional trends",
    "insight about progress"
  ],
  "weeklySummary": {
    "soberDays": 6,
    "avgMood": "Good",
    "cravingCount": 3,
    "moneySaved": 85,
    "overallFeedback": "Personalized 2-3 line feedback"
  }
}
''';
  }
}