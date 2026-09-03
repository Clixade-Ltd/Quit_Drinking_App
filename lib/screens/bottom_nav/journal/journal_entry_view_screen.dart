import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../models/journal_draft_store.dart';
import 'today_reflection_screen.dart';

class JournalEntryViewScreen extends StatefulWidget {
  final String entryId;

  const JournalEntryViewScreen({
    super.key,
    required this.entryId,
  });

  @override
  State<JournalEntryViewScreen> createState() =>
      _JournalEntryViewScreenState();
}

class _JournalEntryViewScreenState
    extends State<JournalEntryViewScreen> {
  static const List<IconData> _moodIcons = [
    Icons.sentiment_very_dissatisfied,
    Icons.sentiment_dissatisfied,
    Icons.sentiment_neutral,
    Icons.sentiment_satisfied,
    Icons.sentiment_very_satisfied,
  ];

  void _edit() async {
    final entry =
    JournalDraftStore.instance.getById(widget.entryId);

    if (entry == null) return;

    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            TodayReflectionScreen(existingEntry: entry),
      ),
    );

    if (mounted) {
      setState(() {});
    }
  }

  Future<void> _delete() async {
    final l10n = AppLocalizations.of(context)!;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text(
          l10n.deleteEntryQuestion,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 19,
            color: AppColors.textBlack,
          ),
        ),
        content: Text(
          l10n.deleteEntryConfirmation,
          style: const TextStyle(
            fontSize: 14,
            height: 1.4,
            color: AppColors.textGrey,
          ),
        ),
        actionsPadding:
        const EdgeInsets.fromLTRB(16, 0, 16, 12),
        actions: [
          TextButton(
            onPressed: () =>
                Navigator.pop(context, false),
            child: Text(
              l10n.cancel,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.textGrey,
              ),
            ),
          ),
          TextButton(
            onPressed: () =>
                Navigator.pop(context, true),
            child: Text(
              l10n.deleteEntry,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.redAccent,
              ),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      JournalDraftStore.instance
          .deleteEntry(widget.entryId);

      if (mounted) {
        Navigator.pop(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final entry =
    JournalDraftStore.instance.getById(widget.entryId);

    if (entry == null) {
      return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: const BoxDecoration(
                      color:
                      AppColors.journalChipBackground,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.menu_book_outlined,
                      size: 28,
                      color: AppColors.textLightGrey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.journalEntryNotFound,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: AppColors.textBlack,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    l10n.journalEntryMayHaveBeenDeleted,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.textGrey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () =>
                        Navigator.pop(context),
                    child: Text(
                      l10n.goBack,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            // -------------------------------------------------------
            // HEADER
            // -------------------------------------------------------
            Padding(
              padding: const EdgeInsets.fromLTRB(
                16,
                12,
                16,
                10,
              ),
              child: Row(
                children: [
                  Material(
                    color: AppColors
                        .journalHeaderIconBackground,
                    shape: const CircleBorder(),
                    child: InkWell(
                      onTap: () =>
                          Navigator.pop(context),
                      customBorder: const CircleBorder(),
                      child: const SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 17,
                          color: AppColors.textBlack,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Text(
                      l10n.journalEntryTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: AppColors.textBlack,
                      ),
                    ),
                  ),

                  // Edit button
                  Material(
                    color: AppColors
                        .journalHeaderIconBackground,
                    borderRadius:
                    BorderRadius.circular(20),
                    child: InkWell(
                      onTap: _edit,
                      borderRadius:
                      BorderRadius.circular(20),
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 9,
                        ),
                        child: Row(
                          mainAxisSize:
                          MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.edit_outlined,
                              size: 16,
                              color:
                              AppColors.primary,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              l10n.editEntry,
                              style: const TextStyle(
                                fontWeight:
                                FontWeight.w600,
                                fontSize: 13,
                                color:
                                AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  // Delete button
                  Material(
                    color: Colors.redAccent
                        .withOpacity(0.08),
                    shape: const CircleBorder(),
                    child: InkWell(
                      onTap: _delete,
                      customBorder:
                      const CircleBorder(),
                      child: const SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.delete_outline,
                          size: 19,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // -------------------------------------------------------
            // SCROLLABLE CONTENT
            // -------------------------------------------------------
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(
                  16,
                  10,
                  16,
                  20,
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    // -------------------------------------------------
                    // DATE / MOOD HEADER CARD
                    // -------------------------------------------------
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: AppColors
                            .journalPromptCardBackground,
                        borderRadius:
                        BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 42,
                                height: 42,
                                decoration:
                                BoxDecoration(
                                  color: AppColors
                                      .primary
                                      .withOpacity(0.10),
                                  borderRadius:
                                  BorderRadius
                                      .circular(12),
                                ),
                                child: const Icon(
                                  Icons
                                      .calendar_today_outlined,
                                  size: 19,
                                  color:
                                  AppColors.primary,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  MaterialLocalizations
                                      .of(context)
                                      .formatMediumDate(
                                    entry.date,
                                  ),
                                  style:
                                  const TextStyle(
                                    fontWeight:
                                    FontWeight.w700,
                                    fontSize: 19,
                                    color: AppColors
                                        .textBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          if (entry.moodIndex != null) ...[
                            const SizedBox(height: 16),
                            Container(
                              padding:
                              const EdgeInsets
                                  .symmetric(
                                horizontal: 12,
                                vertical: 9,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.white
                                    .withOpacity(0.75),
                                borderRadius:
                                BorderRadius.circular(
                                  14,
                                ),
                              ),
                              child: Row(
                                mainAxisSize:
                                MainAxisSize.min,
                                children: [
                                  Icon(
                                    _moodIcons[
                                    entry.moodIndex!],
                                    color: AppColors
                                        .primary,
                                    size: 22,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    _moodLabel(
                                      l10n,
                                      entry.moodIndex!,
                                    ),
                                    style:
                                    const TextStyle(
                                      fontWeight:
                                      FontWeight.w600,
                                      fontSize: 13,
                                      color: AppColors
                                          .textBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // -------------------------------------------------
                    // JOURNAL CONTENT
                    // -------------------------------------------------
                    if (entry.entryText.isNotEmpty)
                      _Section(
                        icon:
                        Icons.edit_note_outlined,
                        title:
                        l10n.whatHappenedToday,
                        body: entry.entryText,
                      ),

                    if (entry.trigger?.isNotEmpty ??
                        false)
                      _Section(
                        icon:
                        Icons.warning_amber_rounded,
                        title: l10n.trigger,
                        body: entry.trigger!,
                      ),

                    if (entry.whatHelped?.isNotEmpty ??
                        false)
                      _Section(
                        icon: Icons.favorite_border,
                        title: l10n.whatHelped,
                        body: entry.whatHelped!,
                      ),

                    if (entry.whatWillTryNextTime
                        ?.isNotEmpty ??
                        false)
                      _Section(
                        icon: Icons.lightbulb_outline,
                        title:
                        l10n.whatIllTryNextTime,
                        body:
                        entry.whatWillTryNextTime!,
                      ),

                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),

            // -------------------------------------------------------
            // FIXED PRIVACY CARD
            // -------------------------------------------------------
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(
                16,
                4,
                16,
                12,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              decoration: BoxDecoration(
                color:
                AppColors.journalChipBackground,
                borderRadius:
                BorderRadius.circular(14),
              ),
              child: Row(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.lock_outline,
                    size: 17,
                    color: AppColors.textLightGrey,
                  ),
                  const SizedBox(width: 9),
                  Expanded(
                    child: Text(
                      l10n.journalPrivacyMessage,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color:
                        AppColors.textLightGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _moodLabel(
      AppLocalizations l10n,
      int index,
      ) {
    switch (index) {
      case 0:
        return l10n.moodStruggling;
      case 1:
        return l10n.moodUnwell;
      case 2:
        return l10n.moodNeutral;
      case 3:
        return l10n.moodGood;
      case 4:
        return l10n.moodGreat;
      default:
        return l10n.moodNeutral;
    }
  }
}

// ===================================================================
// SECTION
// ===================================================================

class _Section extends StatelessWidget {
  final IconData icon;
  final String title;
  final String body;

  const _Section({
    required this.icon,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
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
              crossAxisAlignment:
              CrossAxisAlignment.center,
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: AppColors.primary
                        .withOpacity(0.09),
                    borderRadius:
                    BorderRadius.circular(10),
                  ),
                  child: Icon(
                    icon,
                    size: 18,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: AppColors.textBlack,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 13),
            Text(
              body,
              style: const TextStyle(
                fontSize: 15,
                height: 1.55,
                color: AppColors.textBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}