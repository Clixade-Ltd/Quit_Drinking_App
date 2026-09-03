import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  LocalStorageService._();
  static final LocalStorageService instance = LocalStorageService._();

  SharedPreferences? _prefs;

  Future<SharedPreferences> get _sp async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  Future<void> setJson(String key, Map<String, dynamic> value) async {
    final sp = await _sp;
    await sp.setString(key, jsonEncode(value));
  }

  Future<Map<String, dynamic>?> getJson(String key) async {
    final sp = await _sp;
    final raw = sp.getString(key);
    if (raw == null) return null;
    return jsonDecode(raw) as Map<String, dynamic>;
  }

  Future<void> setJsonList(
      String key,
      List<Map<String, dynamic>> value,
      ) async {
    final sp = await _sp;
    await sp.setString(key, jsonEncode(value));
  }

  Future<List<Map<String, dynamic>>> getJsonList(String key) async {
    final sp = await _sp;
    final raw = sp.getString(key);
    if (raw == null) return [];
    final decoded = jsonDecode(raw) as List<dynamic>;
    return decoded.cast<Map<String, dynamic>>();
  }

  Future<void> remove(String key) async {
    final sp = await _sp;
    await sp.remove(key);
  }

  /// Wipes every key this app has stored. Used for a "reset / start over"
  /// action now that there's no account to log out of.
  Future<void> clearAll() async {
    final sp = await _sp;
    await sp.clear();
  }
}