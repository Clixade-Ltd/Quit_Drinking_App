/// A single day's check-in entry.
class DailyCheckIn {
  /// The calendar day this check-in belongs to (time part is ignored).
  final DateTime date;

  /// true = "No, I Stayed on Track", false = "Yes I had a drink".
  final bool stayedOnTrack;

  /// 0 = Low, 1 = Medium, 2 = Strong.
  final int cravingLevel;

  /// 0..4, matching the 5 mood icons (very sad -> very happy).
  final int moodIndex;

  final String note;

  const DailyCheckIn({
    required this.date,
    required this.stayedOnTrack,
    required this.cravingLevel,
    required this.moodIndex,
    this.note = '',
  });

  /// yyyy-MM-dd — used as the storage key so there's one entry per day.
  String get dateKey =>
      '${date.year.toString().padLeft(4, '0')}-'
          '${date.month.toString().padLeft(2, '0')}-'
          '${date.day.toString().padLeft(2, '0')}';

  Map<String, dynamic> toJson() => {
    'date': date.toIso8601String(),
    'stayedOnTrack': stayedOnTrack,
    'cravingLevel': cravingLevel,
    'moodIndex': moodIndex,
    'note': note,
  };

  factory DailyCheckIn.fromJson(Map<String, dynamic> json) {
    return DailyCheckIn(
      date: DateTime.parse(json['date'] as String),
      stayedOnTrack: json['stayedOnTrack'] as bool,
      cravingLevel: json['cravingLevel'] as int,
      moodIndex: json['moodIndex'] as int,
      note: (json['note'] as String?) ?? '',
    );
  }

  DailyCheckIn copyWith({
    DateTime? date,
    bool? stayedOnTrack,
    int? cravingLevel,
    int? moodIndex,
    String? note,
  }) {
    return DailyCheckIn(
      date: date ?? this.date,
      stayedOnTrack: stayedOnTrack ?? this.stayedOnTrack,
      cravingLevel: cravingLevel ?? this.cravingLevel,
      moodIndex: moodIndex ?? this.moodIndex,
      note: note ?? this.note,
    );
  }
}