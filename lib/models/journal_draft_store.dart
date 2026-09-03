import 'package:flutter/foundation.dart';

import '../services/local_storage_service.dart';
import '../services/achievement_service.dart';

class JournalEntryData {
  final String id;
  final DateTime date;

  String? currentEnergy; // from old Screen 1 (kept for backward compat)
  String? gratitudeReflection; // from old Screen 1 (kept for backward compat)
  String? feeling; // from old Screen 2 (kept for backward compat)
  List<String> tags;
  String entryText;
  bool hasPhoto;
  bool voiceUsed;
  bool isFavorite;

  // ---- New fields (Today Reflection redesign) ----
  int? moodIndex;
  String? trigger;
  String? whatHelped;
  String? whatWillTryNextTime;

  JournalEntryData({
    required this.id,
    required this.date,
    this.currentEnergy,
    this.gratitudeReflection,
    this.feeling,
    List<String>? tags,
    this.entryText = '',
    this.hasPhoto = false,
    this.voiceUsed = false,
    this.isFavorite = false,
    this.moodIndex,
    this.trigger,
    this.whatHelped,
    this.whatWillTryNextTime,
  }) : tags = tags ?? [];

  String get previewText =>
      entryText.isNotEmpty ? entryText : (gratitudeReflection ?? '');

  String? get moodLabel => feeling ?? currentEnergy;

  Map<String, dynamic> toJson() => {
    'id': id,
    'date': date.toIso8601String(),
    'currentEnergy': currentEnergy,
    'gratitudeReflection': gratitudeReflection,
    'feeling': feeling,
    'tags': tags,
    'entryText': entryText,
    'hasPhoto': hasPhoto,
    'voiceUsed': voiceUsed,
    'isFavorite': isFavorite,
    'moodIndex': moodIndex,
    'trigger': trigger,
    'whatHelped': whatHelped,
    'whatWillTryNextTime': whatWillTryNextTime,
  };

  factory JournalEntryData.fromJson(Map<String, dynamic> data) {
    final rawDate = data['date'] as String?;
    final date =
    rawDate != null ? (DateTime.tryParse(rawDate) ?? DateTime.now()) : DateTime.now();

    return JournalEntryData(
      id: data['id']?.toString() ?? '',
      date: date,
      currentEnergy: data['currentEnergy'] as String?,
      gratitudeReflection: data['gratitudeReflection'] as String?,
      feeling: data['feeling'] as String?,
      tags: (data['tags'] as List?)?.map((e) => e.toString()).toList(),
      entryText: data['entryText'] as String? ?? '',
      hasPhoto: data['hasPhoto'] == true,
      voiceUsed: data['voiceUsed'] == true,
      isFavorite: data['isFavorite'] == true,
      moodIndex: data['moodIndex'] as int?,
      trigger: data['trigger'] as String?,
      whatHelped: data['whatHelped'] as String?,
      whatWillTryNextTime: data['whatWillTryNextTime'] as String?,
    );
  }
}

/// Local replacement for the old Firestore-backed store. There's no auth
/// listener anymore — entries just load once at startup and persist to
/// shared_preferences on every change.
class JournalDraftStore extends ChangeNotifier {
  JournalDraftStore._internal() {
    _load();
  }
  static final JournalDraftStore instance = JournalDraftStore._internal();

  static const _storageKey = 'journal_entries';

  final LocalStorageService _storage = LocalStorageService.instance;
  final List<JournalEntryData> _entries = [];

  bool isLoaded = false;

  Future<void> _load() async {
    final raw = await _storage.getJsonList(_storageKey);

    _entries
      ..clear()
      ..addAll(raw.map(JournalEntryData.fromJson));

    isLoaded = true;
    notifyListeners();
  }

  Future<void> _persist() async {
    await _storage.setJsonList(
      _storageKey,
      _entries.map((e) => e.toJson()).toList(),
    );
  }

  /// Most-recent-first — this is the order every screen wants.
  List<JournalEntryData> get entries => List.unmodifiable(
    [..._entries]..sort((a, b) => b.date.compareTo(a.date)),
  );

  String _generateId() => DateTime.now().microsecondsSinceEpoch.toString();

  Future<void> addEntry(Map<String, dynamic> draft) async {
    final date = DateTime.tryParse(draft['savedAt']?.toString() ?? '') ??
        DateTime.tryParse(draft['date']?.toString() ?? '') ??
        DateTime.now();

    final entry = JournalEntryData(
      id: _generateId(),
      date: date,
      currentEnergy: draft['currentEnergy']?.toString(),
      gratitudeReflection: draft['gratitudeReflection']?.toString(),
      feeling: draft['feeling']?.toString(),
      tags: (draft['tags'] as List?)?.map((t) => t.toString()).toList(),
      entryText: draft['entryText']?.toString() ?? '',
      hasPhoto: draft['hasPhoto'] == true,
      voiceUsed: draft['voiceUsed'] == true,
      moodIndex: draft['moodIndex'] as int?,
      trigger: draft['trigger']?.toString(),
      whatHelped: draft['whatHelped']?.toString(),
      whatWillTryNextTime: draft['whatWillTryNextTime']?.toString(),
    );

    _entries.add(entry);
    notifyListeners();
    await _persist();

    // Live badge counter — every saved entry counts toward the
    // Journal journey badges (First Reflection / Open Book / Dedicated Writer).
    await AchievementService.instance.incrementJournalEntries();
  }

  JournalEntryData? getById(String id) {
    for (final e in _entries) {
      if (e.id == id) return e;
    }
    return null;
  }

  Future<void> updateEntry(
      String id, {
        String? feeling,
        List<String>? tags,
        String? entryText,
        bool? hasPhoto,
        bool? voiceUsed,
        int? moodIndex,
        String? trigger,
        String? whatHelped,
        String? whatWillTryNextTime,
      }) async {
    final entry = getById(id);
    if (entry == null) return;

    if (feeling != null) entry.feeling = feeling;
    if (tags != null) entry.tags = tags;
    if (entryText != null) entry.entryText = entryText;
    if (hasPhoto != null) entry.hasPhoto = hasPhoto;
    if (voiceUsed != null) entry.voiceUsed = voiceUsed;
    if (moodIndex != null) entry.moodIndex = moodIndex;
    if (trigger != null) entry.trigger = trigger;
    if (whatHelped != null) entry.whatHelped = whatHelped;
    if (whatWillTryNextTime != null) {
      entry.whatWillTryNextTime = whatWillTryNextTime;
    }

    notifyListeners();
    await _persist();
  }

  Future<void> toggleFavorite(String id) async {
    final entry = getById(id);
    if (entry == null) return;

    entry.isFavorite = !entry.isFavorite;
    notifyListeners();
    await _persist();
  }

  Future<void> deleteEntry(String id) async {
    _entries.removeWhere((e) => e.id == id);
    notifyListeners();
    await _persist();
  }
  /// How many entries have been saved since the most recent Monday
  /// 00:00 (local time). Used for the free-tier weekly limit — resets
  /// naturally every Monday without any separate reset logic.
  int entriesThisWeek() {
    final now = DateTime.now();
    final startOfWeek = DateTime(now.year, now.month, now.day)
        .subtract(Duration(days: now.weekday - 1)); // Monday 00:00
    return _entries.where((e) => !e.date.isBefore(startOfWeek)).length;
  }
}