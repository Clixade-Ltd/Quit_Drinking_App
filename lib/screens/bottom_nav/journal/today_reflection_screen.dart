import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../models/journal_draft_store.dart';
import '../../../services/premium_service.dart';
import '../../../services/analytics_service.dart';
import 'journal_prompt_cards.dart';
import '../../../services/achievement_service.dart';
import '../../../theme/theme_controller.dart';

/// Which field a "Quick Prompt" tap on the main journal screen should
/// jump straight into and focus.
enum ReflectionField { main }

class TodayReflectionScreen extends StatefulWidget {
  final JournalEntryData? existingEntry;
  final ReflectionField? focusField;

  const TodayReflectionScreen({
    super.key,
    this.existingEntry,
    this.focusField,
  });

  @override
  State<TodayReflectionScreen> createState() =>
      _TodayReflectionScreenState();
}

class _TodayReflectionScreenState
    extends State<TodayReflectionScreen> {
  // Kept in the same worst → best order so moodIndex
  // remains compatible with existing saved entries.
  static const List<String> _moodEmojis = [
    '😞',
    '🙁',
    '😐',
    '🙂',
    '😊',
  ];

  static const int _freeWeeklyLimit = 3;

  final AnalyticsService _analytics = AnalyticsService.instance;

  int? _selectedMood;

  final _mainController = TextEditingController();
  final _mainFocus = FocusNode();
  final _mainKey = GlobalKey();

  bool _isPremium = false;
  int _entriesUsedThisWeek = 0;

  bool get _isEditing => widget.existingEntry != null;
  bool get _isDark => AppColors.isDark(context);

  @override
  void initState() {
    super.initState();

    final entry = widget.existingEntry;

    if (entry != null) {
      _selectedMood = entry.moodIndex;
      _mainController.text = entry.entryText;
    }

    if (widget.focusField != null) {
      WidgetsBinding.instance.addPostFrameCallback(
            (_) => _jumpToField(),
      );
    }

    _loadPremiumStatus();

    if (!_isEditing) {
      _analytics.journalEntryStarted();
    }
  }

  Future<void> _loadPremiumStatus() async {
    final isPremium =
    await PremiumService.instance.isPremium();

    if (!mounted) return;

    setState(() {
      _isPremium = isPremium;
      _entriesUsedThisWeek =
          JournalDraftStore.instance.entriesThisWeek();
    });
  }

  void _jumpToField() {
    switch (widget.focusField!) {
      case ReflectionField.main:
        if (_mainKey.currentContext != null) {
          Scrollable.ensureVisible(
            _mainKey.currentContext!,
            duration: const Duration(milliseconds: 300),
            alignment: 0.1,
          );
        }

        _mainFocus.requestFocus();
        break;
    }
  }

  @override
  void dispose() {
    _mainController.dispose();
    _mainFocus.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final l10n = AppLocalizations.of(context)!;

    // Editing an existing entry is never blocked by the weekly limit.
    if (!_isEditing) {
      final isPremium =
      await PremiumService.instance.isPremium();

      if (!isPremium &&
          JournalDraftStore.instance.entriesThisWeek() >=
              _freeWeeklyLimit) {
        if (!mounted) return;

        _analytics.journalLimitReached();

        await _showPaywallDialog(
          title: l10n.weeklyJournalLimitReached,
          message: l10n.weeklyJournalLimitMessage(
            _freeWeeklyLimit,
          ),
        );

        return;
      }
    }

    if (_isEditing) {
      JournalDraftStore.instance.updateEntry(
        widget.existingEntry!.id,
        entryText: _mainController.text,
        moodIndex: _selectedMood,
      );

      _analytics.journalEntryEdited();
    } else {
      JournalDraftStore.instance.addEntry({
        'savedAt': DateTime.now().toIso8601String(),
        'entryText': _mainController.text,
        'moodIndex': _selectedMood,
      });

      final wordCount = _mainController.text
          .trim()
          .split(RegExp(r'\s+'))
          .where((w) => w.isNotEmpty)
          .length;

      _analytics.journalEntrySaved(wordCount: wordCount);
    }

    if (!mounted) return;

    Navigator.pop(context);
  }

  Future<void> _showPaywallDialog({
    required String title,
    required String message,
  }) {
    final l10n = AppLocalizations.of(context)!;

    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: _isDark
              ? ThemeController.darkCard
              : AppColors.white,
          title: Text(
            title,
            style: TextStyle(
              color: _isDark ? Colors.white : AppColors.textBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          content: Text(
            message,
            style: TextStyle(
              color: _isDark ? Colors.white70 : AppColors.textGrey,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(),
              child: Text(l10n.maybeLater),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();

                // TODO: navigate to PremiumPlanScreen
                // once its route is reachable from here.
              },
              child: Text(
                l10n.upgrade,
                style: TextStyle(
                  color: _isDark
                      ? ThemeController.darkAccent
                      : AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Map<String, dynamic> _buildDailyUpdateUserData() {
    return const {};
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.pageBackground(
        context,
        light: AppColors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                16,
                12,
                16,
                12,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).maybePop(),
                    child: Icon(
                      Icons.close,
                      color: _isDark
                          ? Colors.white
                          : AppColors.textBlack,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    _isEditing
                        ? l10n.editEntry
                        : l10n.newEntry,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                        color: _isDark
                          ? Colors.white
                          : AppColors.textBlack,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    MaterialLocalizations.of(context)
                        .formatMediumDate(
                      widget.existingEntry?.date ??
                          DateTime.now(),
                    ),
                    style: TextStyle(
                      fontSize: 13,
                      color: _isDark
                          ? Colors.white70
                          : AppColors.textLightGrey,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(
                  16,
                  4,
                  16,
                  24,
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    TodayPromptCard(
                      userData:
                      _buildDailyUpdateUserData(),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      l10n.howAreYouFeeling,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: _isDark
                          ? Colors.white
                          : AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        _moodEmojis.length,
                            (i) {
                          final isSelected =
                              _selectedMood == i;

                          return InkWell(
                            onTap: () => setState(
                                  () => _selectedMood = i,
                            ),
                            borderRadius:
                            BorderRadius.circular(12),
                            child: Container(
                              width: 52,
                              height: 52,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: _isDark
                                  ? isSelected
                                    ? ThemeController.darkAccent.withOpacity(0.36)
                                    : ThemeController.darkCard
                                  : isSelected
                                    ? AppColors.primary.withOpacity(0.12)
                                    : AppColors.journalChipBackground,
                                borderRadius:
                                BorderRadius.circular(12),
                                border: Border.all(
                                    color: _isDark
                                      ? isSelected
                                        ? Colors.white
                                        : ThemeController.darkAccent
                                      : isSelected
                                        ? AppColors.primary
                                        : Colors.transparent,
                                  width: 1.5,
                                ),
                              ),
                              child: Text(
                                _moodEmojis[i],
                                style: const TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 24),

                    _ReflectionField(
                      fieldKey: _mainKey,
                      label: l10n.writeYourThoughts,
                      controller: _mainController,
                      focusNode: _mainFocus,
                      hint: l10n.writeYourThoughts,
                      maxLines: 5,
                    ),

                    const SizedBox(height: 32),

                    if (!_isEditing && !_isPremium)
                      Padding(
                        padding:
                        const EdgeInsets.only(bottom: 16),
                        child: Container(
                          width: double.infinity,
                          padding:
                          const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: _isDark
                              ? ThemeController.darkCard
                              : AppColors.journalChipBackground,
                            border: _isDark
                              ? Border.all(
                                color: ThemeController.darkAccent,
                                )
                              : null,
                            borderRadius:
                            BorderRadius.circular(12),
                          ),
                          child: Text(
                            l10n.freeEntriesLeftThisWeek(
                              ((_freeWeeklyLimit -
                                  _entriesUsedThisWeek)
                                  .clamp(
                                0,
                                _freeWeeklyLimit,
                              ))
                                  .toString(),
                              _freeWeeklyLimit.toString(),
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                                color: _isDark
                                  ? Colors.white70
                                  : AppColors.textGrey,
                            ),
                          ),
                        ),
                      ),

                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: _save,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.accent(context),
                          elevation: 0,
                          shape:
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(26),
                          ),
                        ),
                        child: Text(
                          l10n.saveEntry,
                          style: const TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReflectionField extends StatelessWidget {
  final Key fieldKey;
  final String label;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hint;
  final int maxLines;

  const _ReflectionField({
    required this.fieldKey,
    required this.label,
    required this.controller,
    required this.focusNode,
    required this.hint,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      key: fieldKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: AppColors.isDark(context)
              ? Colors.white
              : AppColors.textBlack,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          focusNode: focusNode,
          maxLines: maxLines,
          style: TextStyle(
            fontSize: 14,
            color: AppColors.isDark(context)
              ? Colors.white
              : AppColors.textBlack,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: AppColors.isDark(context)
                  ? Colors.white70
                  : AppColors.textLightGrey,
            ),
            contentPadding: const EdgeInsets.all(14),
            filled: AppColors.isDark(context),
            fillColor: AppColors.isDark(context)
              ? ThemeController.darkCard
              : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.isDark(context)
                    ? ThemeController.darkAccent
                    : AppColors.outlineGrey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.isDark(context)
                    ? ThemeController.darkAccent
                    : AppColors.outlineGrey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.accent(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
