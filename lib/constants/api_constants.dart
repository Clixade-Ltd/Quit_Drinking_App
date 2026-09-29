import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  ApiConstants._();

  static String get geminiApiKey =>
      dotenv.env['GEMINI_API_KEY'] ?? '';

  static const String geminiModel =
      'gemini-flash-lite-latest';

  static const String geminiBaseUrl =
      'https://generativelanguage.googleapis.com/v1beta/models';
}