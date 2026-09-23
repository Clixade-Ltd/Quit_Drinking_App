class ApiConstants {
  ApiConstants._();

  static const String geminiApiKey =
      String.fromEnvironment('GEMINI_API_KEY');

  static const String geminiModel =
      'gemini-flash-lite-latest';

  static const String geminiBaseUrl =
      'https://generativelanguage.googleapis.com/v1beta/models';
}