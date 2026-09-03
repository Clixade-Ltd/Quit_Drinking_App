import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/journal/today_reflection_screen.dart';

import '../../../constants/app_colors.dart';
import '../../../models/journal_draft_store.dart';
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

    final query =
    _searchController.text.trim().toLowerCase();

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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(
                Icons.open_in_new,
                color: AppColors.primary,
              ),
              title: Text(l10n.openEntry),
              onTap: () {
                Navigator.pop(context);
                _openEntry(entry);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.edit_outlined,
                color: AppColors.primary,
              ),
              title: Text(l10n.editEntry),
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
              leading: const Icon(
                Icons.delete_outline,
                color: Colors.redAccent,
              ),
              title: Text(
                l10n.deleteEntry,
                style: const TextStyle(
                  color: Colors.redAccent,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                JournalDraftStore.instance.deleteEntry(entry.id);
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(
            16,
            12,
            16,
            24,
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
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.textBlack,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: _pickDateFilter,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color:
                        AppColors.journalHeaderIconBackground,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.calendar_today_outlined,
                        size: 18,
                        color: _dateFilter != null
                            ? AppColors.primary
                            : AppColors.textBlack,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () => setState(
                          () => _searchVisible = !_searchVisible,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color:
                        AppColors.journalHeaderIconBackground,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.search,
                        size: 18,
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
                const SizedBox(height: 12),
                TextField(
                  controller: _searchController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: l10n.searchJournalEntries,
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    contentPadding:
                    const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],

              // ------------------------------------------------------------
              // DATE FILTER
              // ------------------------------------------------------------
              if (_dateFilter != null) ...[
                const SizedBox(height: 12),
                InputChip(
                  label: Text(
                    MaterialLocalizations.of(context)
                        .formatMediumDate(_dateFilter!),
                  ),
                  onDeleted: () => setState(
                        () => _dateFilter = null,
                  ),
                ),
              ],

              // ------------------------------------------------------------
              // TODAY'S PROMPT
              // ------------------------------------------------------------
              const SizedBox(height: 16),

              TodayPromptCard(
                userData: _buildDailyUpdateUserData(),
              ),

              const SizedBox(height: 16),

              // ------------------------------------------------------------
              // WRITE NEW ENTRY BUTTON
              // ------------------------------------------------------------
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => _openComposer(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: -0.7,
                        child: const Icon(
                          Icons.edit_outlined,
                          color: AppColors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        l10n.writeNewEntry,
                        style: const TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // ------------------------------------------------------------
              // RECENT ENTRIES
              // ------------------------------------------------------------
              Text(
                l10n.recentEntries,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: AppColors.textBlack,
                ),
              ),

              const SizedBox(height: 12),

              if (!hasAnyEntries)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                  ),
                  child: Center(
                    child: Text(
                      l10n.noJournalEntriesYet,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: AppColors.textLightGrey,
                      ),
                    ),
                  ),
                )
              else if (entries.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 40,
                  ),
                  child: Center(
                    child: Text(
                      l10n.noEntriesMatchFilters,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: AppColors.textLightGrey,
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
                  const SizedBox(height: 12),
                ],

              // ------------------------------------------------------------
              // PREMIUM INSIGHTS CARD
              // ------------------------------------------------------------
              const SizedBox(height: 12),

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

              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}

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
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.outlineGrey,
          ),
        ),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  MaterialLocalizations.of(context)
                      .formatMediumDate(entry.date),
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: AppColors.textBlack,
                  ),
                ),
                if (moodIcon != null)
                  Icon(
                    moodIcon,
                    color: AppColors.primary,
                    size: 22,
                  ),
              ],
            ),
            if (entry.previewText.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                entry.previewText,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
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