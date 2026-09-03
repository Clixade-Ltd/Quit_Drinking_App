import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'journal_draft_store.dart';

class TimelineEntry {
  final String id;
  final String title;
  final String preview;
  final String timeLabel;
  final String dateGroupLabel;
  final List<String> tags;
  final bool isFavorite;
  final bool isRecent;

  const TimelineEntry({
    required this.id,
    required this.title,
    required this.preview,
    required this.timeLabel,
    required this.tags,
    this.dateGroupLabel = '',
    this.isFavorite = false,
    this.isRecent = false,
  });
}

class TagStyle {
  final IconData icon;
  final Color background;
  final Color foreground;
  const TagStyle(this.icon, this.background, this.foreground);
}

TagStyle tagStyleFor(String tag) {
  switch (tag.toLowerCase()) {
    case 'proud':
      return const TagStyle(Icons.sentiment_satisfied,
          AppColors.iconBackground, AppColors.primary);
    case 'social':
      return const TagStyle(Icons.groups_outlined, AppColors.iconBackground,
          AppColors.primary);
    case 'calm':
      return const TagStyle(
          Icons.spa_outlined, AppColors.iconBackground, AppColors.primary);
    case 'stressed':
    case 'stress':
      return TagStyle(Icons.bolt, Colors.red.shade50, Colors.red.shade600);
    case 'craving':
      return TagStyle(Icons.local_fire_department_outlined,
          Colors.orange.shade50, Colors.orange.shade700);
    case 'happy':
      return const TagStyle(Icons.sentiment_very_satisfied,
          AppColors.iconBackground, AppColors.primary);
    default:
      return const TagStyle(
          Icons.label_outline, AppColors.iconBackground, AppColors.primary);
  }
}

const List<String> _weekdayNames = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];

const List<String> _monthNames = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

String _formatTime(DateTime d) {
  final hour12 = d.hour % 12 == 0 ? 12 : d.hour % 12;
  final minute = d.minute.toString().padLeft(2, '0');
  final period = d.hour >= 12 ? 'PM' : 'AM';
  return '$hour12:$minute$period';
}

/// Converts live [JournalEntryData] (most-recent-first, as returned by
/// JournalDraftStore.entries) into display-ready [TimelineEntry]s,
/// computing relative time labels ("Today"/"Yesterday"/weekday) and
/// inserting a "____ MONTH DAY ____" divider label whenever an entry
/// is from an earlier calendar day than the one before it.
List<TimelineEntry> buildTimelineEntries(List<JournalEntryData> source) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = today.subtract(const Duration(days: 1));

  DateTime? lastGroupDate;
  final result = <TimelineEntry>[];

  for (int i = 0; i < source.length; i++) {
    final e = source[i];
    final entryDay = DateTime(e.date.year, e.date.month, e.date.day);
    final isToday = entryDay == today;
    final isYesterday = entryDay == yesterday;

    final timeLabel = isToday
        ? 'Today, ${_formatTime(e.date)}'
        : isYesterday
        ? 'Yesterday, ${_formatTime(e.date)}'
        : '${_weekdayNames[e.date.weekday - 1]}, ${_formatTime(e.date)}';

    String groupLabel = '';
    if (!isToday && !isYesterday && entryDay != lastGroupDate) {
      groupLabel =
      '${_monthNames[e.date.month - 1].toUpperCase()} ${e.date.day}';
      lastGroupDate = entryDay;
    } else if (isToday || isYesterday) {
      lastGroupDate = entryDay;
    }

    result.add(TimelineEntry(
      id: e.id,
      title: e.previewText.isNotEmpty
          ? e.previewText.split('\n').first
          : 'Journal Entry',
      preview: e.previewText,
      timeLabel: timeLabel,
      dateGroupLabel: groupLabel,
      tags: [if (e.moodLabel != null) e.moodLabel!, ...e.tags],
      isFavorite: e.isFavorite,
      isRecent: i == 0, // source is already most-recent-first
    ));
  }

  return result;
}