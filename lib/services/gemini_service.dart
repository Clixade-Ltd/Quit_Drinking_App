import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../constants/api_constants.dart';

class GeminiService {
  GeminiService._();

  static final GeminiService instance = GeminiService._();

  // =========================================================
  // GENERATE PERSONALIZED RECOVERY PLAN
  // =========================================================

  Future<Map<String, dynamic>> generatePersonalizedPlan({
    required Map<String, dynamic> userData,
    String languageCode = 'en',
  }) async {
    try {
      final prompt = _buildPrompt(userData, languageCode);

      final url = Uri.parse(
        '${ApiConstants.geminiBaseUrl}/'
            '${ApiConstants.geminiModel}:generateContent'
            '?key=${ApiConstants.geminiApiKey}',
      );

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'contents': [
            {
              'parts': [
                {'text': prompt},
              ],
            },
          ],
          'generationConfig': {
            'responseMimeType': 'application/json',
          },
        }),
      );

      log('the response from ai is ${response.body}');

      if (response.statusCode != 200) {
        throw Exception(
          'Gemini API Error (${response.statusCode}): ${response.body}',
        );
      }

      final responseJson = jsonDecode(response.body);

      final text =
      responseJson['candidates']?[0]?['content']?['parts']?[0]?['text'];

      if (text == null || text.toString().trim().isEmpty) {
        throw Exception('Gemini returned an empty response.');
      }

      final generatedText = text.toString().trim();

      debugPrint('');
      debugPrint(
        '============================================================',
      );
      debugPrint('🤖 AI PERSONALIZED PLAN RESPONSE');
      debugPrint(
        '============================================================',
      );

      _printFullResponse(generatedText);

      debugPrint(
        '============================================================',
      );
      debugPrint('');

      final cleanJson = _cleanJson(generatedText);

      final decoded = jsonDecode(cleanJson);

      if (decoded is! Map) {
        throw Exception('Gemini returned an invalid plan format.');
      }

      final plan = Map<String, dynamic>.from(decoded);

      final weeklyGoals = plan['weeklyGoals'];

      if (weeklyGoals is! List || weeklyGoals.length != 4) {
        throw Exception(
          'Gemini returned an invalid weeklyGoals structure.',
        );
      }

      final healthMilestones = plan['healthMilestones'];

      if (healthMilestones is! List || healthMilestones.length != 6) {
        throw Exception(
          'Gemini returned an invalid healthMilestones structure.',
        );
      }

      final copingStrategies = plan['copingStrategies'];

      if (copingStrategies is! Map) {
        throw Exception(
          'Gemini returned an invalid copingStrategies structure.',
        );
      }

      return plan;
    } catch (e) {
      throw Exception('Failed to generate personalized plan: $e');
    }
  }

  // =========================================================
  // GENERATE DAILY UPDATE
  // =========================================================
  //
  // Returns:
  //
  // - motivationQuote
  // - healthScore
  // - journalPrompt
  //
  // =========================================================

  Future<Map<String, dynamic>> generateDailyUpdate({
    required Map<String, dynamic> userData,
    String languageCode = 'en',
  }) async {
    try {
      final prompt = _buildDailyUpdatePrompt(userData, languageCode);

      final url = Uri.parse(
        '${ApiConstants.geminiBaseUrl}/'
            '${ApiConstants.geminiModel}:generateContent'
            '?key=${ApiConstants.geminiApiKey}',
      );

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'contents': [
            {
              'parts': [
                {'text': prompt},
              ],
            },
          ],
          'generationConfig': {
            'responseMimeType': 'application/json',
          },
        }),
      );

      if (response.statusCode != 200) {
        throw Exception(
          'Gemini API Error (${response.statusCode}): ${response.body}',
        );
      }

      final responseJson = jsonDecode(response.body);

      final text =
      responseJson['candidates']?[0]?['content']?['parts']?[0]?['text'];

      if (text == null || text.toString().trim().isEmpty) {
        throw Exception('Gemini returned an empty daily update.');
      }

      final generatedText = text.toString().trim();

      debugPrint('');
      debugPrint(
        '============================================================',
      );
      debugPrint('🤖 AI DAILY UPDATE RESPONSE');
      debugPrint(
        '============================================================',
      );

      _printFullResponse(generatedText);

      debugPrint(
        '============================================================',
      );
      debugPrint('');

      final cleanJson = _cleanJson(generatedText);

      final decoded = jsonDecode(cleanJson);

      if (decoded is! Map) {
        throw Exception(
          'Gemini returned an invalid daily update format.',
        );
      }

      final dailyUpdate = Map<String, dynamic>.from(decoded);

      // ---------------------------------------------------------
      // VALIDATE MOTIVATION
      // ---------------------------------------------------------

      final motivationQuote = dailyUpdate['motivationQuote'];

      if (motivationQuote == null ||
          motivationQuote.toString().trim().isEmpty) {
        throw Exception(
          'Gemini returned an invalid motivationQuote.',
        );
      }

      // ---------------------------------------------------------
      // VALIDATE HEALTH SCORE
      // ---------------------------------------------------------

      final healthScore = dailyUpdate['healthScore'];

      if (healthScore is! num) {
        throw Exception(
          'Gemini returned an invalid healthScore.',
        );
      }

      if (healthScore < 10 || healthScore > 100) {
        throw Exception(
          'Gemini returned a healthScore outside the 10-100 range.',
        );
      }

      // ---------------------------------------------------------
      // VALIDATE JOURNAL PROMPT
      // ---------------------------------------------------------

      final journalPrompt = dailyUpdate['journalPrompt'];

      if (journalPrompt == null ||
          journalPrompt.toString().trim().isEmpty) {
        throw Exception(
          'Gemini returned an invalid journalPrompt.',
        );
      }

      return dailyUpdate;
    } catch (e) {
      throw Exception('Failed to generate daily update: $e');
    }
  }

  // =========================================================
  // CLEAN GEMINI JSON
  // =========================================================

  String _cleanJson(String text) {
    var cleanJson = text.trim();

    if (cleanJson.startsWith('```json')) {
      cleanJson = cleanJson.substring(7);
    } else if (cleanJson.startsWith('```')) {
      cleanJson = cleanJson.substring(3);
    }

    if (cleanJson.endsWith('```')) {
      cleanJson = cleanJson.substring(
        0,
        cleanJson.length - 3,
      );
    }

    return cleanJson.trim();
  }

  // =========================================================
  // PRINT COMPLETE RESPONSE
  // =========================================================

  void _printFullResponse(String text) {
    const chunkSize = 800;

    for (int i = 0; i < text.length; i += chunkSize) {
      final end =
      (i + chunkSize < text.length) ? i + chunkSize : text.length;

      debugPrint(
        text.substring(i, end),
        wrapWidth: 800,
      );
    }
  }

  // =========================================================
  // LANGUAGE CODE -> FULL NAME (for clearer AI instruction)
  // =========================================================

  String _languageNameFor(String languageCode) {
    switch (languageCode) {
      case 'ar':
        return 'Arabic';
      case 'ur':
        return 'Urdu';
      case 'tr':
        return 'Turkish';
      case 'en':
      default:
        return 'English';
    }
  }

  // =========================================================
  // MAIN PERSONALIZED PLAN PROMPT
  // =========================================================

  String _buildPrompt(
      Map<String, dynamic> userData,
      String languageCode,
      ) {
    final drinksPerWeek = userData['drinksPerWeek'] ?? 0;
    final name = userData['name'] ?? 'there';
    final goal = userData['goal'] ?? 'Reduce drinking';
    final drinkingLevel = userData['drinkingLevel'] ?? '';
    final triggers = userData['triggers'] ?? [];
    final motivations = userData['quitReasons'] ?? [];
    final languageName = _languageNameFor(languageCode);

    return '''
You are a compassionate recovery coach AI.

Based on the user's profile below, generate a personalized recovery plan.

Be warm, encouraging, practical, and non-judgmental.

IMPORTANT: Respond entirely in $languageName (language code: $languageCode). All text values in the JSON (welcomeMessage, motivationQuote, titles, focus, tips, descriptions, coping strategies, etc.) must be written in $languageName.

USER PROFILE:

- Name: $name
- Goal: $goal
- Drinking Level: $drinkingLevel
- Drinks per week: $drinksPerWeek
- Triggers: $triggers
- Motivations: $motivations

Generate a recovery plan and respond ONLY in valid JSON format with no extra text:

{
  "welcomeMessage": "Personal welcome message using their name, 2-3 lines",
  "healthScore": number between 10-30 based on their drinking level,
  "motivationQuote": "A personalized motivational quote for day 1",

  "weeklyGoals": [
    {
      "week": 1,
      "title": "Week 1 title",
      "focus": "What to focus on",
      "tips": ["tip1", "tip2", "tip3"]
    },
    {
      "week": 2,
      "title": "...",
      "focus": "...",
      "tips": ["...", "...", "..."]
    },
    {
      "week": 3,
      "title": "...",
      "focus": "...",
      "tips": ["...", "...", "..."]
    },
    {
      "week": 4,
      "title": "...",
      "focus": "...",
      "tips": ["...", "...", "..."]
    }
  ],

  "healthMilestones": [
    {
      "day": 1,
      "title": "24 Hours",
      "description": "What happens to body"
    },
    {
      "day": 3,
      "title": "72 Hours",
      "description": "..."
    },
    {
      "day": 7,
      "title": "1 Week",
      "description": "..."
    },
    {
      "day": 30,
      "title": "1 Month",
      "description": "..."
    },
    {
      "day": 90,
      "title": "3 Months",
      "description": "..."
    },
    {
      "day": 365,
      "title": "1 Year",
      "description": "..."
    }
  ],

  "copingStrategies": {
    "trigger_name": [
      "strategy1",
      "strategy2",
      "strategy3"
    ]
  }
}
''';
  }

  // =========================================================
  // DAILY UPDATE PROMPT
  // =========================================================

  String _buildDailyUpdatePrompt(
      Map<String, dynamic> userData,
      String languageCode,
      ) {
    final userName =
        userData['userName'] ??
            userData['name'] ??
            'there';

    final userGoal =
        userData['userGoal'] ??
            userData['goal'] ??
            'Reduce drinking';

    final drinkingLevel =
        userData['drinkingLevel'] ?? '';

    final triggers =
        userData['triggers'] ?? [];

    final motivations =
        userData['motivations'] ??
            userData['quitReasons'] ??
            [];

    final daysSober =
        userData['daysSober'] ?? 1;

    final currentStreak =
        userData['currentStreak'] ?? daysSober;

    final moneySaved =
        userData['moneySaved'] ?? 0;

    final drinksAvoided =
        userData['drinksAvoided'] ?? 0;

    final yesterdayMood =
        userData['yesterdayMood'] ?? 'No data';

    final yesterdayDidDrink =
        userData['yesterdayDidDrink'] ?? 'No data';

    final yesterdayCravingLevel =
        userData['yesterdayCravingLevel'] ?? 'No data';

    final yesterdayNote =
        userData['yesterdayNote'] ?? 'No note';

    final languageName = _languageNameFor(languageCode);

    return '''
You are a compassionate recovery coach.

Generate today's personalized recovery update for this user.

The update must be based on the user's profile, recovery progress,
and yesterday's check-in.

IMPORTANT: Respond entirely in $languageName (language code: $languageCode). The motivationQuote and journalPrompt values in the JSON must be written in $languageName.

USER PROFILE:

- Name: $userName
- Goal: $userGoal
- Drinking Level: $drinkingLevel
- Triggers: $triggers
- Motivations: $motivations

CURRENT PROGRESS:

- Days sober: $daysSober
- Current streak: $currentStreak
- Money saved: $moneySaved
- Drinks avoided: $drinksAvoided

YESTERDAY'S CHECK-IN:

- Mood: $yesterdayMood
- Did drink: $yesterdayDidDrink
- Craving level: $yesterdayCravingLevel
- Note: "$yesterdayNote"

Generate a fresh update for TODAY.

IMPORTANT:

1. The motivation quote should feel personally relevant to the user's
   current recovery progress.
2. The health score should be between 10 and 100.
3. The journal prompt should encourage the user to reflect on their
   recovery, emotions, cravings, triggers, progress, or goals.
4. The journal prompt must be a QUESTION.
5. Do not repeat generic prompts such as "How are you feeling today?"
   unless the user's current situation genuinely calls for it.
6. Keep the journal prompt short enough to comfortably display on a
   mobile screen.
7. Do not include medical diagnosis or unsafe medical advice.

Respond ONLY in valid JSON:

{
  "motivationQuote": "A personalized motivational quote for today",
  "healthScore": 10,
  "journalPrompt": "A personalized journal question for today"
}
''';
  }
}