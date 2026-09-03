import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../models/daily_check_in.dart';
import '../../services/daily_check_in_service.dart';
import '../bottom_nav/main_nav_screen.dart';
import '../../services/home_dashboard_service.dart';

class DailyCheckInScreen extends StatefulWidget {
  const DailyCheckInScreen({super.key});

  @override
  State<DailyCheckInScreen> createState() =>
      _DailyCheckInScreenState();
}

class _DailyCheckInScreenState
    extends State<DailyCheckInScreen> {
  static const List<IconData> _moodIcons = [
    Icons.sentiment_very_dissatisfied,
    Icons.sentiment_dissatisfied,
    Icons.sentiment_neutral,
    Icons.sentiment_satisfied,
    Icons.sentiment_very_satisfied,
  ];

  static const List<String> _moodEmojis = [
    '😞',
    '🙁',
    '😐',
    '🙂',
    '😄',
  ];

  bool? _stayedOnTrack;

  // 0 = None
  // 1 = Low
  // 2 = Medium
  // 3 = Strong
  int _cravingLevel = 1;

  int? _moodIndex;

  final TextEditingController _noteController =
  TextEditingController();

  bool _isLoading = true;
  bool _isSaving = false;

  bool _alreadyCheckedIn = false;

  @override
  void initState() {
    super.initState();
    _loadExistingCheckIn();
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  Future<void> _loadExistingCheckIn() async {
    final existing =
    await DailyCheckInService.instance
        .getToday();

    if (!mounted) return;

    setState(() {
      if (existing != null) {
        _alreadyCheckedIn = true;

        _stayedOnTrack =
            existing.stayedOnTrack;

        _cravingLevel =
            existing.cravingLevel;

        _moodIndex =
            existing.moodIndex;

        _noteController.text =
            existing.note;
      }

      _isLoading = false;
    });
  }

  bool get _canSave =>
      _stayedOnTrack != null &&
          _moodIndex != null;

  Future<void> _saveCheckIn() async {
    final l10n = AppLocalizations.of(context)!;

    if (_alreadyCheckedIn) {
      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            l10n.alreadyCompletedTodayCheckIn,
          ),
        ),
      );

      return;
    }

    if (!_canSave) {
      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            l10n.pleaseAnswerBothQuestions,
          ),
        ),
      );

      return;
    }

    setState(() => _isSaving = true);

    final entry = DailyCheckIn(
      date: DateTime.now(),
      stayedOnTrack:
      _stayedOnTrack!,
      cravingLevel:
      _cravingLevel,
      moodIndex:
      _moodIndex!,
      note:
      _noteController.text.trim(),
    );

    final saved =
    await DailyCheckInService.instance
        .save(entry);

    if (!mounted) return;

    if (!saved) {
      setState(() {
        _isSaving = false;
        _alreadyCheckedIn = true;
      });

      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            l10n.alreadyCompletedTodayCheckIn,
          ),
        ),
      );

      return;
    }

    // Invalidate today's AI update so HomeScreen
    // can refresh today's motivation + health score.
    await HomeDashboardService.instance
        .invalidateTodayAIUpdate();

    if (!mounted) return;

    setState(() => _isSaving = false);

    ScaffoldMessenger.of(context)
        .showSnackBar(
      SnackBar(
        content: Text(l10n.checkInSaved),
      ),
    );

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (_) =>
        const MainNavScreen(),
      ),
          (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final List<String> cravingLabels = [
      l10n.cravingNone,
      l10n.cravingLow,
      l10n.cravingMedium,
      l10n.cravingStrong,
    ];

    final List<String> moodLabels = [
      l10n.moodBad,
      l10n.moodLow,
      l10n.moodOkay,
      l10n.moodGood,
      l10n.moodGreat,
    ];

    return Scaffold(
      backgroundColor:
      AppColors.dashboardBackground,
      body: SafeArea(
        child: _isLoading
            ? const Center(
          child:
          CircularProgressIndicator(),
        )
            : Column(
          children: [
            // =================================================
            // HEADER
            // =================================================

            Padding(
              padding:
              const EdgeInsets.fromLTRB(
                8,
                12,
                16,
                8,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(
                        context,
                      ).pop();
                    },
                    child: const Icon(
                      Icons.chevron_left,
                      color:
                      AppColors.textBlack,
                      size: 30,
                    ),
                  ),

                  const SizedBox(width: 8),

                  Text(
                    l10n.dailyCheckInTitle,
                    style: const TextStyle(
                      fontWeight:
                      FontWeight.w600,
                      fontSize: 20,
                      color:
                      AppColors.textBlack,
                    ),
                  ),
                ],
              ),
            ),

            const Divider(
              height: 1,
              thickness: 1,
              color:
              AppColors.outlineGrey,
            ),

            Expanded(
              child:
              SingleChildScrollView(
                padding:
                const EdgeInsets.fromLTRB(
                  20,
                  20,
                  20,
                  24,
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    // =================================================
                    // MOOD
                    // =================================================

                    Text(
                      l10n.howAreYouFeelingToday,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.w700,
                        fontSize: 15,
                        color:
                        AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(
                        height: 4),

                    Text(
                      l10n.honestAnswerHelp,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 13,
                        color:
                        AppColors.textGrey,
                      ),
                    ),

                    const SizedBox(
                        height: 14),

                    Row(
                      children:
                      List.generate(
                        _moodIcons.length,
                            (index) {
                          final isSelected =
                              _moodIndex ==
                                  index;

                          return Expanded(
                            child: Padding(
                              padding:
                              EdgeInsets.only(
                                right: index ==
                                    _moodIcons
                                        .length -
                                        1
                                    ? 0
                                    : 8,
                              ),
                              child:
                              _MoodOption(
                                emoji:
                                _moodEmojis[
                                index],
                                label:
                                moodLabels[
                                index],
                                isSelected:
                                isSelected,
                                onTap: () {
                                  setState(
                                        () {
                                      _moodIndex =
                                          index;
                                    },
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(
                        height: 28),

                    // =================================================
                    // DRANK TODAY?
                    // =================================================

                    Text(
                      l10n.didYouDrinkToday,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.w700,
                        fontSize: 15,
                        color:
                        AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(
                        height: 12),

                    Row(
                      children: [
                        Expanded(
                          child:
                          _ChoiceCard(
                            label: l10n.noLabel,
                            icon:
                            Icons.close,
                            isSelected:
                            _stayedOnTrack ==
                                true,
                            onTap: () {
                              setState(
                                    () {
                                  _stayedOnTrack =
                                  true;
                                },
                              );
                            },
                          ),
                        ),

                        const SizedBox(
                            width: 12),

                        Expanded(
                          child:
                          _ChoiceCard(
                            label: l10n.yesLabel,
                            icon:
                            Icons.check,
                            isSelected:
                            _stayedOnTrack ==
                                false,
                            onTap: () {
                              setState(
                                    () {
                                  _stayedOnTrack =
                                  false;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                        height: 28),

                    // =================================================
                    // CRAVING LEVEL
                    // =================================================

                    Text(
                      l10n.cravingLevelNow,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.w700,
                        fontSize: 15,
                        color:
                        AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(
                        height: 12),

                    Wrap(
                      spacing: 5,
                      runSpacing: 10,
                      children:
                      List.generate(
                        cravingLabels
                            .length,
                            (index) {
                          final isSelected =
                              _cravingLevel ==
                                  index;

                          return _PillOption(
                            label:
                            cravingLabels[
                            index],
                            isSelected:
                            isSelected,
                            onTap: () {
                              setState(
                                    () {
                                  _cravingLevel =
                                      index;
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),

                    const SizedBox(
                        height: 24),

                    // =================================================
                    // NOTE
                    // =================================================

                    Row(
                      crossAxisAlignment:
                      CrossAxisAlignment
                          .end,
                      children: [
                        Text(
                          l10n.anythingOnMind,
                          style: const TextStyle(
                            fontWeight:
                            FontWeight
                                .w700,
                            fontSize: 15,
                            color:
                            AppColors
                                .textBlack,
                          ),
                        ),

                        const SizedBox(width: 6),

                        Text(
                          l10n.optionalLabel,
                          style: const TextStyle(
                            fontWeight:
                            FontWeight
                                .w400,
                            fontSize: 13,
                            color:
                            AppColors
                                .textGrey,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                        height: 10),

                    Container(
                      width:
                      double.infinity,
                      height: 90,
                      padding:
                      const EdgeInsets
                          .all(12),
                      decoration:
                      BoxDecoration(
                        color:
                        AppColors.white,
                        borderRadius:
                        BorderRadius
                            .circular(
                          12,
                        ),
                        border:
                        Border.all(
                          color: AppColors
                              .outlineGrey,
                        ),
                      ),
                      child: TextField(
                        controller:
                        _noteController,
                        maxLines: null,
                        expands: true,
                        textAlignVertical:
                        TextAlignVertical
                            .top,
                        style:
                        const TextStyle(
                          fontSize: 14,
                          color: AppColors
                              .textBlack,
                        ),
                        decoration:
                        InputDecoration(
                          border:
                          InputBorder
                              .none,
                          hintText:
                          l10n.dailyNoteHint,
                          hintStyle:
                          const TextStyle(
                            color: AppColors
                                .textLightGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // =================================================
            // SAVE BUTTON
            // =================================================

            Container(
              width:
              double.infinity,
              padding:
              const EdgeInsets.fromLTRB(
                20,
                12,
                20,
                20,
              ),
              decoration:
              BoxDecoration(
                color: AppColors
                    .dashboardBackground,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(
                      0.05,
                    ),
                    blurRadius: 12,
                    offset:
                    const Offset(
                      0,
                      -4,
                    ),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    width:
                    double.infinity,
                    height: 56,
                    child:
                    ElevatedButton(
                      onPressed:
                      (_isSaving ||
                          _alreadyCheckedIn)
                          ? null
                          : _saveCheckIn,
                      style:
                      ElevatedButton
                          .styleFrom(
                        backgroundColor:
                        AppColors
                            .primary,
                        disabledBackgroundColor:
                        AppColors
                            .primary
                            .withOpacity(
                          0.6,
                        ),
                        elevation: 0,
                        shape:
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius
                              .circular(
                            28,
                          ),
                        ),
                      ),
                      child: _isSaving
                          ? const SizedBox(
                        width: 22,
                        height: 22,
                        child:
                        CircularProgressIndicator(
                          strokeWidth:
                          2,
                          valueColor:
                          AlwaysStoppedAnimation<
                              Color>(
                            AppColors
                                .white,
                          ),
                        ),
                      )
                          : Text(
                        _alreadyCheckedIn
                            ? l10n.alreadyCheckedInToday
                            : l10n.saveCheckIn,
                        style:
                        const TextStyle(
                          color:
                          AppColors
                              .white,
                          fontWeight:
                          FontWeight
                              .w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                      height: 10),

                  Text(
                    l10n.checkInsHelpTrack,
                    textAlign:
                    TextAlign.center,
                    style: const TextStyle(
                      fontWeight:
                      FontWeight.w400,
                      fontSize: 12,
                      color: AppColors
                          .textLightGrey,
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
}

// =============================================================
// MOOD OPTION
// =============================================================

class _MoodOption
    extends StatelessWidget {
  final String emoji;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _MoodOption({
    required this.emoji,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius:
      BorderRadius.circular(14),
      child: Container(
        padding:
        const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 4,
        ),
        decoration:
        BoxDecoration(
          color: isSelected
              ? AppColors.primary
              .withOpacity(0.08)
              : AppColors.white,
          borderRadius:
          BorderRadius.circular(14),
          border: Border.all(
            color: isSelected
                ? AppColors.primary
                : AppColors.outlineGrey,
            width: 1.4,
          ),
        ),
        child: Column(
          mainAxisSize:
          MainAxisSize.min,
          children: [
            Text(
              emoji,
              style:
              const TextStyle(
                fontSize: 24,
                height: 1.1,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              label,
              style: TextStyle(
                fontWeight:
                FontWeight.w600,
                fontSize: 11,
                color: isSelected
                    ? AppColors.primary
                    : AppColors
                    .textLightGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================
// CHOICE CARD
// =============================================================

class _ChoiceCard
    extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _ChoiceCard({
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius:
      BorderRadius.circular(14),
      child: Container(
        width:
        double.infinity,
        padding:
        const EdgeInsets.symmetric(
          vertical: 18,
        ),
        decoration:
        BoxDecoration(
          color: isSelected
              ? AppColors.primary
              .withOpacity(0.08)
              : AppColors.white,
          borderRadius:
          BorderRadius.circular(14),
          border: Border.all(
            color: isSelected
                ? AppColors.primary
                : AppColors.outlineGrey,
            width: 1.4,
          ),
        ),
        child: Column(
          mainAxisSize:
          MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 22,
              color: isSelected
                  ? AppColors.primary
                  : AppColors
                  .textLightGrey,
            ),

            const SizedBox(height: 8),

            Text(
              label,
              style: TextStyle(
                fontWeight:
                FontWeight.w600,
                fontSize: 15,
                color: isSelected
                    ? AppColors.primary
                    : AppColors.textBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================
// CRAVING PILL
// =============================================================

class _PillOption
    extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _PillOption({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius:
      BorderRadius.circular(999),
      child: Container(
        padding:
        const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),
        decoration:
        BoxDecoration(
          color: isSelected
              ? AppColors.primary
              .withOpacity(0.08)
              : AppColors.white,
          borderRadius:
          BorderRadius.circular(999),
          border: Border.all(
            color: isSelected
                ? AppColors.primary
                : AppColors.outlineGrey,
            width: 1.4,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight:
            FontWeight.w600,
            fontSize: 13,
            color: isSelected
                ? AppColors.primary
                : AppColors.textBlack,
          ),
        ),
      ),
    );
  }
}