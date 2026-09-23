import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/journal/today_reflection_screen.dart';

import '../../../constants/app_colors.dart';
import '../../../models/journal_draft_store.dart';
import '../../../services/analytics_service.dart';
import '../profile/premium_plan_screen.dart';
import 'journal_entry_view_screen.dart';
import 'journal_prompt_cards.dart';

/// Screen 1 — "My Journal" main screen.
class JournalScreen extends StatefulWidget {
  const JournalScreen({super.key});

  @override
  State<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  static const List<IconData> _moodIcons = [
    Icons.sentiment_very_dissatisfied,
    Icons.sentiment_dissatisfied,
    Icons.sentiment_neutral,
    Icons.sentiment_satisfied,
    Icons.sentiment_very_satisfied,
  ];

  final AnalyticsService _analytics = AnalyticsService.instance;

  bool _searchVisible = false;

  final TextEditingController _searchController =
      TextEditingController();

  DateTime? _dateFilter;

  @override
  void initState() {
    super.initState();

    _searchController.addListener(() => setState(() {}));
    JournalDraftStore.instance.addListener(_onStoreChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    JournalDraftStore.instance.removeListener(_onStoreChanged);
    super.dispose();
  }

  void _onStoreChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  // TODO: replace with your real user-profile / progress source.
  Map<String, dynamic> _buildDailyUpdateUserData() {
    return const {};
  }

  List<JournalEntryData> get _visibleEntries {
    var entries = JournalDraftStore.instance.entries;

    if (_dateFilter != null) {
      entries = entries
          .where(
            (e) =>
                e.date.year == _dateFilter!.year &&
                e.date.month == _dateFilter!.month &&
                e.date.day == _dateFilter!.day,
          )
          .toList();
    }

    final query = _searchController.text.trim().toLowerCase();

    if (query.isNotEmpty) {
      entries = entries.where((e) {
        final haystack = [
          e.entryText,
          e.trigger ?? '',
          e.whatHelped ?? '',
          e.whatWillTryNextTime ?? '',
        ].join(' ').toLowerCase();

        return haystack.contains(query);
      }).toList();
    }

    return entries;
  }

  Future<void> _pickDateFilter() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _dateFilter ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(
        () => _dateFilter = DateTime(
          picked.year,
          picked.month,
          picked.day,
        ),
      );
    }
  }

  void _openComposer({ReflectionField? focusField}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => TodayReflectionScreen(
          focusField: focusField,
        ),
      ),
    );
  }

  void _openEntry(JournalEntryData entry) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => JournalEntryViewScreen(
          entryId: entry.id,
        ),
      ),
    );
  }

  void _onLongPressEntry(JournalEntryData entry) {
    final l10n = AppLocalizations.of(context)!;

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                Icons.open_in_new,
                color: AppColors.primary,
                size: 24.r,
              ),
              title: Text(
                l10n.openEntry,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                _openEntry(entry);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.edit_outlined,
                color: AppColors.primary,
                size: 24.r,
              ),
              title: Text(
                l10n.editEntry,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TodayReflectionScreen(
                      existingEntry: entry,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.delete_outline,
                color: Colors.redAccent,
                size: 24.r,
              ),
              title: Text(
                l10n.deleteEntry,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 16.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                JournalDraftStore.instance.deleteEntry(entry.id);
                _analytics.journalEntryDeleted();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final entries = _visibleEntries;

    final hasAnyEntries =
        JournalDraftStore.instance.entries.isNotEmpty;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        top: true,
        bottom: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            16.w,
            12.h,
            16.w,
            24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ------------------------------------------------------------
              // HEADER
              // ------------------------------------------------------------
              Row(
                children: [
                  Expanded(
                    child: Text(
                      l10n.navJournalLabel,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        color: AppColors.textBlack,
                      ),
                    ),
                  ),

                  // Calendar
                  InkWell(
                    onTap: _pickDateFilter,
                    borderRadius: BorderRadius.circular(20.r),
                    child: Container(
                      width: 40.w,
                      height: 40.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color:
                            AppColors.journalHeaderIconBackground,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.calendar_today_outlined,
                        size: 18.r,
                        color: _dateFilter != null
                            ? AppColors.primary
                            : AppColors.textBlack,
                      ),
                    ),
                  ),

                  SizedBox(width: 10.w),

                  // Search
                  InkWell(
                    onTap: () => setState(
                      () => _searchVisible = !_searchVisible,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                    child: Container(
                      width: 40.w,
                      height: 40.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color:
                            AppColors.journalHeaderIconBackground,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.search,
                        size: 18.r,
                        color: _searchVisible
                            ? AppColors.primary
                            : AppColors.textBlack,
                      ),
                    ),
                  ),
                ],
              ),

              // ------------------------------------------------------------
              // SEARCH
              // ------------------------------------------------------------
              if (_searchVisible) ...[
                SizedBox(height: 12.h),
                TextField(
                  controller: _searchController,
                  autofocus: true,
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                  decoration: InputDecoration(
                    hintText: l10n.searchJournalEntries,
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20.r,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12.h,
                      horizontal: 12.w,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ],

              // ------------------------------------------------------------
              // DATE FILTER
              // ------------------------------------------------------------
              if (_dateFilter != null) ...[
                SizedBox(height: 12.h),
                InputChip(
                  label: Text(
                    MaterialLocalizations.of(context)
                        .formatMediumDate(_dateFilter!),
                    style: TextStyle(
                      fontSize: 13.sp,
                    ),
                  ),
                  onDeleted: () => setState(
                    () => _dateFilter = null,
                  ),
                ),
              ],

              // ------------------------------------------------------------
              // TODAY'S PROMPT
              // ------------------------------------------------------------
              SizedBox(height: 16.h),

              TodayPromptCard(
                userData: _buildDailyUpdateUserData(),
              ),

              SizedBox(height: 16.h),

              // ------------------------------------------------------------
              // WRITE NEW ENTRY BUTTON
              // ------------------------------------------------------------
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () => _openComposer(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.white,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: -0.7,
                        child: Icon(
                          Icons.edit_outlined,
                          color: AppColors.white,
                          size: 20.r,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Flexible(
                        child: Text(
                          l10n.writeNewEntry,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 24.h),

              // ------------------------------------------------------------
              // RECENT ENTRIES
              // ------------------------------------------------------------
              Text(
                l10n.recentEntries,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                  color: AppColors.textBlack,
                ),
              ),

              SizedBox(height: 12.h),

              if (!hasAnyEntries)
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 40.h,
                  ),
                  child: Center(
                    child: Text(
                      l10n.noJournalEntriesYet,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.textLightGrey,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                )
              else if (entries.isEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 40.h,
                  ),
                  child: Center(
                    child: Text(
                      l10n.noEntriesMatchFilters,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.textLightGrey,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                )
              else
                for (final entry in entries) ...[
                  _EntryCard(
                    entry: entry,
                    moodIcon: entry.moodIndex != null
                        ? _moodIcons[entry.moodIndex!]
                        : null,
                    onTap: () => _openEntry(entry),
                    onLongPress: () =>
                        _onLongPressEntry(entry),
                  ),
                  SizedBox(height: 12.h),
                ],

              // ------------------------------------------------------------
              // PREMIUM INSIGHTS CARD
              // ------------------------------------------------------------
              SizedBox(height: 12.h),

              JournalInsightsPremiumCard(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          const PremiumPlanScreen(),
                    ),
                  );
                },
              ),

              SizedBox(height: 80.h),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================================
// JOURNAL ENTRY CARD
// ============================================================================

class _EntryCard extends StatelessWidget {
  final JournalEntryData entry;
  final IconData? moodIcon;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  const _EntryCard({
    required this.entry,
    required this.moodIcon,
    required this.onTap,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.outlineGrey,
            width: 1.r,
          ),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            // --------------------------------------------------------------
            // DATE + MOOD
            // --------------------------------------------------------------
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    MaterialLocalizations.of(context)
                        .formatMediumDate(entry.date),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                      color: AppColors.textBlack,
                    ),
                  ),
                ),

                if (moodIcon != null) ...[
                  SizedBox(width: 8.w),
                  Icon(
                    moodIcon,
                    color: AppColors.primary,
                    size: 22.r,
                  ),
                ],
              ],
            ),

            // --------------------------------------------------------------
            // PREVIEW TEXT
            // --------------------------------------------------------------
            if (entry.previewText.isNotEmpty) ...[
              SizedBox(height: 8.h),
              Text(
                entry.previewText,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.sp,
                  height: 1.4,
                  color: AppColors.textGrey,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}