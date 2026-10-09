import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  ThemeController._();
  static final ThemeController instance = ThemeController._();

  static const String _key = 'is_dark_mode';

  // Dark theme background: #002E51
  static const Color darkBackground = Color(0xFF002E51);
  static const Color darkCard = Color(0xFF0A4170);
  static const Color darkAccent = Color(0xFF0875BB);

  bool _isDark = false;

  bool get isDark => _isDark;

  ThemeMode get mode => _isDark ? ThemeMode.dark : ThemeMode.light;

  /// main() mein runApp se pehle call karein
  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    _isDark = prefs.getBool(_key) ?? false;
  }

  Future<void> setDark(bool value) async {
    if (_isDark == value) return;
    _isDark = value;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key, value);
  }
}