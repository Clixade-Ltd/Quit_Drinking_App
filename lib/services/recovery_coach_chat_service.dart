import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../constants/api_constants.dart';
import 'achievement_service.dart';

class RecoveryCoachChatService {
  RecoveryCoachChatService._();

  static final RecoveryCoachChatService instance =
  RecoveryCoachChatService._();

  // ============================================================
  // SEND MESSAGE
  // ============================================================

  Future<String> sendMessage({
    required Map<String, dynamic> userData,
    required List<Map<String, dynamic>> conversationHistory,
  }) async {
    try {
      // ============================================================
      // VALIDATE CONVERSATION
      // ============================================================

      if (conversationHistory.isEmpty) {
        throw Exception(
          'Conversation history is empty.',
        );
      }

      // ------------------------------------------------------------
      // Make sure the latest message is actually from the user.
      // ------------------------------------------------------------

      final lastMessage = conversationHistory.last;

      final lastRole =
      lastMessage['role']?.toString().trim();

      final lastText =
      lastMessage['text']?.toString().trim();

      if (lastRole != 'user' ||
          lastText == null ||
          lastText.isEmpty) {
        throw Exception(
          'No user message was provided to the coach.',
        );
      }

      // ============================================================
      // GEMINI URL
      // ============================================================

      final url = Uri.parse(
        '${ApiConstants.geminiBaseUrl}/'
            '${ApiConstants.geminiModel}:generateContent'
            '?key=${ApiConstants.geminiApiKey}',
      );

      // ============================================================
      // SYSTEM PROMPT
      // ============================================================

      final systemPrompt =
      _buildCoachPrompt(userData);

      // ============================================================
      // BUILD GEMINI CONVERSATION
      // ============================================================

      final contents =
      <Map<String, dynamic>>[];

      for (final message in conversationHistory) {
        final role =
        message['role']?.toString().trim();

        final text =
        message['text']?.toString().trim();

        // Ignore invalid messages.
        if (text == null || text.isEmpty) {
          continue;
        }

        // Gemini supports:
        // user
        // model
        if (role != 'user' &&
            role != 'model') {
          continue;
        }

        contents.add({
          'role': role,
          'parts': [
            {
              'text': text,
            },
          ],
        });
      }

      // ============================================================
      // FINAL SAFETY CHECK
      // ============================================================

      if (contents.isEmpty) {
        throw Exception(
          'No valid conversation messages were created.',
        );
      }

      // The final Gemini message must be from the user.
      final finalGeminiMessage =
          contents.last;

      if (finalGeminiMessage['role'] !=
          'user') {
        throw Exception(
          'The latest Gemini message is not a user message.',
        );
      }

      // ============================================================
      // LOG REQUEST
      // ============================================================

      log(
        'Recovery Coach: sending '
            '${contents.length} messages to Gemini',
      );

      log(
        'Recovery Coach latest user message: '
            '$lastText',
      );

      // ============================================================
      // SEND REQUEST
      // ============================================================

      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'systemInstruction': {
            'parts': [
              {
                'text': systemPrompt,
              },
            ],
          },
          'contents': contents,
          'generationConfig': {
            'temperature': 0.7,
            'maxOutputTokens': 500,
          },
        }),
      );

      // ============================================================
      // LOG RESPONSE
      // ============================================================

      log(
        'Recovery Coach Gemini status: '
            '${response.statusCode}',
      );

      log(
        'Recovery Coach Gemini response: '
            '${response.body}',
      );

      // ============================================================
      // CHECK HTTP STATUS
      // ============================================================

      if (response.statusCode != 200) {
        throw Exception(
          'Gemini API Error '
              '(${response.statusCode}): '
              '${response.body}',
        );
      }

      // ============================================================
      // DECODE RESPONSE
      // ============================================================

      final decoded =
      jsonDecode(response.body);

      if (decoded is! Map) {
        throw Exception(
          'Gemini returned an invalid response.',
        );
      }

      // ============================================================
      // CANDIDATES
      // ============================================================

      final candidates =
      decoded['candidates'];

      if (candidates is! List ||
          candidates.isEmpty) {
        throw Exception(
          'Gemini returned no candidates.',
        );
      }

      final candidate =
          candidates.first;

      if (candidate is! Map) {
        throw Exception(
          'Gemini returned an invalid candidate.',
        );
      }

      // ============================================================
      // CONTENT
      // ============================================================

      final content =
      candidate['content'];

      if (content is! Map) {
        throw Exception(
          'Gemini returned no valid content.',
        );
      }

      // ============================================================
      // PARTS
      // ============================================================

      final parts =
      content['parts'];

      if (parts is! List ||
          parts.isEmpty) {
        throw Exception(
          'Gemini returned no response parts.',
        );
      }

      // ============================================================
      // FIND TEXT RESPONSE
      // ============================================================

      String? responseText;

      for (final part in parts) {
        if (part is Map) {
          final text =
          part['text']?.toString();

          if (text != null &&
              text.trim().isNotEmpty) {
            responseText =
                text.trim();
            break;
          }
        }
      }

      if (responseText == null ||
          responseText.isEmpty) {
        throw Exception(
          'Gemini returned an empty response.',
        );
      }

      // ============================================================
      // LIVE BADGE COUNTER
      // ============================================================
      //
      // A real, successful reply from the coach counts as one
      // conversation toward the AI Coach journey badges
      // (First Conversation / Keep Talking / Coach Companion).
      // ============================================================

      await AchievementService.instance.incrementAiCoachConversations();

      // ============================================================
      // RETURN RESPONSE
      // ============================================================

      return responseText;
    } catch (e, stackTrace) {
      log(
        'Recovery Coach Error: $e',
        stackTrace: stackTrace,
      );

      rethrow;
    }
  }

  // ============================================================
  // COACH PROMPT
  // ============================================================
  //
  // NOTE: every {field} below is a real Dart string interpolation
  // ($variable), not literal placeholder text — Gemini receives
  // the actual values, never the braces themselves.
  //
  // ============================================================

  String _buildCoachPrompt(
      Map<String, dynamic> userData,
      ) {
    final userName =
        userData['name'] ??
            userData['userName'] ??
            'there';

    final userGoal =
        userData['goal'] ??
            userData['userGoal'] ??
            'Reduce drinking';

    final drinkingLevel =
        userData['drinkingLevel'] ??
            '';

    final triggers =
        userData['triggers'] ??
            <dynamic>[];

    final motivations =
        userData['motivations'] ??
            userData['quitReasons'] ??
            <dynamic>[];

    final daysSober =
        userData['daysSober'] ??
            0;

    final currentStreak =
        userData['currentStreak'] ??
            daysSober;

    final moneySaved =
        userData['moneySaved'] ??
            0;

    // ------------------------------------------------------------
    // Not currently populated by the chat screen — defaulted here
    // so the prompt still works until those are wired up.
    // ------------------------------------------------------------

    final lastMood =
        userData['lastMood'] ??
            'No data';

    final lastCraving =
        userData['lastCraving'] ??
            'No data';

    final slipCount =
        userData['slipCount'] ??
            0;

    return '''
You are a compassionate, supportive recovery coach in the Sober Flow app. You are talking to $userName. Be warm, empathetic, non-judgmental. Never give medical advice. Keep responses short (2-3 paragraphs max).

USER PROFILE:
- Name: $userName
- Goal: $userGoal
- Drinking Level: $drinkingLevel
- Triggers: $triggers
- Motivations: $motivations

CURRENT STATE:
- Days sober: $daysSober
- Current streak: $currentStreak
- Money saved: $moneySaved
- Last check-in mood: $lastMood
- Last craving level: $lastCraving
- Total slip days: $slipCount

RULES:
- Use their name naturally
- Reference their specific triggers and motivations
- Mention their progress stats when encouraging
- If they report a slip, be compassionate not judgmental
- If craving is strong, suggest breathing exercise or SOS
- Never recommend specific medications
- If they seem in crisis, suggest professional help
''';
  }
}