
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../models/milestone_definition.dart';
import '../../../services/achievement_service.dart';
import '../../../services/analytics_service.dart';
import '../../../services/home_dashboard_service.dart';
import '../../../widgets/badge_emblem.dart';

// Used to open the already-existing milestone achieved screen.
import '../../milestones/milestone_achieved_screen.dart';

class BadgesScreen extends StatefulWidget {
  const BadgesScreen({super.key});

  @override
  State<BadgesScreen> createState() => _BadgesScreenState();
}

class _BadgesScreenState extends State<BadgesScreen> {
  bool _isLoading = true;
  bool _hasError = false;
  bool _hasLoadedOnce = false;

  List<_BadgeItem> _milestones = [];
  List<_BadgeItem> _achievements = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_hasLoadedOnce) {
      _hasLoadedOnce = true;
      AnalyticsService.instance.badgesScreenViewed();
      _load();
    }
  }

  // ============================================================
  // LIVE DATA LOADING
  // ============================================================

  Future<void> _load() async {
    final l10n = AppLocalizations.of(context)!;

    if (mounted) {
      setState(() {
        _isLoading = true;
        _hasError = false;
      });
    }

    try {
      final daysSober =
          await HomeDashboardService.instance.getDaysSober();

      final nextLocked =
          MilestoneDefinitions.nextLocked(daysSober);

      // ---------------- SOBRIETY MILESTONES ----------------

      final milestoneBadges =
          MilestoneDefinitions.all.map((def) {
        final unlocked =
            daysSober >= def.days;

        double? progress;
        String subtitle;

        if (unlocked) {
          subtitle = l10n.unlocked;
        } else if (identical(def, nextLocked)) {
          final prevDays =
              MilestoneDefinitions.previousThreshold(
            def,
          );

          final span =
              (def.days - prevDays)
                  .clamp(1, def.days);

          progress =
              ((daysSober - prevDays) / span)
                  .clamp(0.0, 1.0);

          subtitle =
              l10n.daysLeft(
            def.days - daysSober,
          );
        } else {
          subtitle =
              l10n.daysCount(
            def.days,
          );
        }

        final style =
            _styleForDays(def.days);

        return _BadgeItem(
          icon: def.icon,

          // hex -> number in the middle
          // premium -> ribbon text
          // shield -> icon only
          label: style == BadgeStyle.hex
              ? '${def.days}'
              : (style == BadgeStyle.premium
                  ? def.shortLabel
                  : null),

          style: style,
          title:
              _localizedMilestoneTitle(
            def,
            l10n,
          ),
          subtitle: subtitle,
          tier: def.tier,
          unlocked: unlocked,
          progress: progress,
          definition: def,
        );
      }).toList();

      // ---------------- JOURNEY BADGES ----------------

      final achievementDefs =
          <_AchievementDef>[
        // ----------------------------------------------------
        // JOURNAL
        // ----------------------------------------------------

        _AchievementDef(
          icon: Icons.edit_note,
          title: l10n.firstReflection,
          unlockedSubtitle:
              l10n.oneJournalEntry,
          tier: BadgeTier.bronze,
          threshold: 1,
          getCount:
              AchievementService
                  .instance
                  .getJournalEntries,
        ),

        _AchievementDef(
          icon: Icons.menu_book,
          title: l10n.openBook,
          unlockedSubtitle:
              l10n.tenJournalEntries,
          tier: BadgeTier.silver,
          threshold: 10,
          getCount:
              AchievementService
                  .instance
                  .getJournalEntries,
        ),

        _AchievementDef(
          icon: Icons.history_edu,
          title: l10n.dedicatedWriter,
          unlockedSubtitle:
              l10n.thirtyJournalEntries,
          tier: BadgeTier.gold,
          threshold: 30,
          getCount:
              AchievementService
                  .instance
                  .getJournalEntries,
        ),

        // ----------------------------------------------------
        // AI COACH
        // ----------------------------------------------------

        _AchievementDef(
          icon: Icons.smart_toy,
          title: l10n.firstConversation,
          unlockedSubtitle:
              l10n.oneAiCoachChat,
          tier: BadgeTier.bronze,
          threshold: 1,
          getCount:
              AchievementService
                  .instance
                  .getAiCoachConversations,
        ),

        _AchievementDef(
          icon:
              Icons.chat_bubble_outline,
          title: l10n.keepTalking,
          unlockedSubtitle:
              l10n.fiveConversations,
          tier: BadgeTier.silver,
          threshold: 5,
          getCount:
              AchievementService
                  .instance
                  .getAiCoachConversations,
        ),

        _AchievementDef(
          icon: Icons.handshake,
          title: l10n.coachCompanion,
          unlockedSubtitle:
              l10n.twentyConversations,
          tier: BadgeTier.gold,
          threshold: 20,
          getCount:
              AchievementService
                  .instance
                  .getAiCoachConversations,
        ),

        // ----------------------------------------------------
        // CHECK-INS
        // ----------------------------------------------------

        _AchievementDef(
          icon: Icons.calendar_today,
          title: l10n.checkInHabit,
          unlockedSubtitle:
              l10n.sevenCheckIns,
          tier: BadgeTier.bronze,
          threshold: 7,
          getCount:
              AchievementService
                  .instance
                  .getCheckIns,
        ),

        _AchievementDef(
          icon: Icons.autorenew,
          title: l10n.consistencyPro,
          unlockedSubtitle:
              l10n.thirtyCheckIns,
          tier: BadgeTier.silver,
          threshold: 30,
          getCount:
              AchievementService
                  .instance
                  .getCheckIns,
        ),

        _AchievementDef(
          icon: Icons.star_outline,
          title: l10n.dedicatedJourney,
          unlockedSubtitle:
              l10n.hundredCheckIns,
          tier: BadgeTier.gold,
          threshold: 100,
          getCount:
              AchievementService
                  .instance
                  .getCheckIns,
        ),

        // ----------------------------------------------------
        // GOALS
        // ----------------------------------------------------

        _AchievementDef(
          icon: Icons.flag_outlined,
          title: l10n.goalGetter,
          unlockedSubtitle:
              l10n.threeGoalsCompleted,
          tier: BadgeTier.silver,
          threshold: 3,
          getCount:
              AchievementService
                  .instance
                  .getPersonalGoalsCompleted,
        ),

        _AchievementDef(
          icon: Icons.emoji_events,
          title: l10n.goalAchiever,
          unlockedSubtitle:
              l10n.tenGoalsCompleted,
          tier: BadgeTier.gold,
          threshold: 10,
          getCount:
              AchievementService
                  .instance
                  .getPersonalGoalsCompleted,
        ),

        // ----------------------------------------------------
        // MONEY SAVED
        // ----------------------------------------------------

        _AchievementDef(
          icon: Icons.savings,
          title: l10n.firstSavings,
          unlockedSubtitle:
              l10n.fiveHundredSaved,
          tier: BadgeTier.bronze,
          threshold: 500,
          isCurrency: true,
          getCount:
              AchievementService
                  .instance
                  .getMoneySaved,
        ),

        _AchievementDef(
          icon: Icons.attach_money,
          title: l10n.smartSaver,
          unlockedSubtitle:
              l10n.oneThousandSaved,
          tier: BadgeTier.silver,
          threshold: 1000,
          isCurrency: true,
          getCount:
              AchievementService
                  .instance
                  .getMoneySaved,
        ),

        _AchievementDef(
          icon: Icons.diamond,
          title: l10n.bigSaver,
          unlockedSubtitle:
              l10n.fiveThousandSaved,
          tier: BadgeTier.platinum,
          threshold: 5000,
          isCurrency: true,
          getCount:
              AchievementService
                  .instance
                  .getMoneySaved,
        ),
      ];

      final achievementBadges =
          <_BadgeItem>[];

      // ======================================================
      // LOAD ACHIEVEMENT COUNTS
      // ======================================================

      for (final def
          in achievementDefs) {
        num count;

        try {
          count =
              await def.getCount().timeout(
            const Duration(
              seconds: 10,
            ),

            // IMPORTANT:
            // The Future expects an int-compatible
            // timeout result. Do NOT return 0.0 here.
            onTimeout: () {
              debugPrint(
                'BADGES: timeout for "${def.title}"',
              );

              return 0;
            },
          );
        } catch (e, stackTrace) {
          debugPrint(
            'BADGES: error for "${def.title}": '
            '$e\n$stackTrace',
          );

          count = 0;
        }

        final unlocked =
            count >= def.threshold;

        final progress =
            def.threshold > 0
                ? (count / def.threshold)
                    .clamp(0.0, 1.0)
                : 0.0;

        final String lockedSubtitle =
            def.isCurrency
                ? l10n.currencyProgress(
                    count.toStringAsFixed(0),
                    def.threshold
                        .toStringAsFixed(0),
                  )
                : l10n.countProgress(
                    count.toInt(),
                    def.threshold.toInt(),
                  );

        achievementBadges.add(
          _BadgeItem(
            icon: def.icon,
            style: BadgeStyle.medal,
            title: def.title,
            subtitle: unlocked
                ? def.unlockedSubtitle
                : lockedSubtitle,
            tier: def.tier,
            unlocked: unlocked,
            progress:
                unlocked
                    ? null
                    : progress,
          ),
        );
      }

      if (!mounted) return;

      setState(() {
        _milestones =
            milestoneBadges;

        _achievements =
            achievementBadges;

        _isLoading = false;
        _hasError = false;
      });
    } catch (e, stackTrace) {
      debugPrint(
        'BADGES: LOAD ERROR: '
        '$e\n$stackTrace',
      );

      if (!mounted) return;

      setState(() {
        _hasError = true;
        _isLoading = false;
      });
    }
  }

  // ============================================================
  // MILESTONE HELPERS
  // ============================================================

  BadgeStyle _styleForDays(
    int days,
  ) {
    return BadgeVisuals.styleForDays(
      days,
    );
  }

  String _localizedMilestoneTitle(
    MilestoneDefinition def,
    AppLocalizations l10n,
  ) {
    switch (def.days) {
      case 1:
        return l10n.milestone24Hours;

      case 7:
        return l10n.milestoneOneWeek;

      case 30:
        return l10n.milestoneOneMonth;

      case 90:
        return l10n.milestoneThreeMonths;

      case 180:
        return l10n.milestoneSixMonths;

      case 365:
        return l10n.milestoneOneYear;

      case 730:
        return l10n.milestoneTwoYears;

      case 1825:
        return l10n.milestoneFiveYears;

      default:
        return l10n.milestoneDayCount(
          def.days,
        );
    }
  }

  _BadgeItem? get _nextMilestone {
    for (final b in _milestones) {
      if (!b.unlocked &&
          b.progress != null) {
        return b;
      }
    }

    return null;
  }

  _BadgeItem? get _latestUnlockedMilestone {
    for (final b
        in _milestones.reversed) {
      if (b.unlocked) {
        return b;
      }
    }

    return null;
  }

  // ============================================================
  // OPEN MILESTONE SCREEN
  // ============================================================

  void _openMilestone(
    MilestoneDefinition def,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) =>
            MilestoneAchievedScreen(
          milestone: def,
          returnToPreviousScreen: true,
        ),
      ),
    );
  }

  void _onMilestoneTap(
    _BadgeItem item,
  ) {
    final def =
        item.definition;

    if (def == null) {
      return;
    }

    // Unlocked -> open celebration screen.
    if (item.unlocked) {
      _openMilestone(def);
      return;
    }

    // Locked -> show progress.
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            '${item.title} · '
            '${item.subtitle}',
          ),
          behavior:
              SnackBarBehavior.floating,
        ),
      );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(
    BuildContext context,
  ) {
    final l10n =
        AppLocalizations.of(
      context,
    )!;

    if (_isLoading) {
      return const Scaffold(
        backgroundColor:
            AppColors.dashboardBackground,
        body: Center(
          child:
              CircularProgressIndicator(),
        ),
      );
    }

    if (_hasError) {
      return Scaffold(
        backgroundColor:
            AppColors.dashboardBackground,
        body: Center(
          child: Padding(
            padding:
                EdgeInsets.all(24.w),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 52.sp,
                  color:
                      AppColors.textLightGrey,
                ),

                SizedBox(
                  height: 16.h,
                ),

                Text(
                  l10n.unableToLoadProfile,
                  textAlign:
                      TextAlign.center,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w700,
                    fontSize: 18.sp,
                    color:
                        AppColors.textBlack,
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),

                ElevatedButton(
                  onPressed: _load,
                  style:
                      ElevatedButton.styleFrom(
                    backgroundColor:
                        AppColors.primary,
                    foregroundColor:
                        AppColors.white,
                  ),
                  child: Text(
                    l10n.tryAgain,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor:
          AppColors.dashboardBackground,
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: [
            _buildAppBar(l10n),

            Expanded(
              child:
                  RefreshIndicator(
                onRefresh: _load,
                child:
                    SingleChildScrollView(
                  physics:
                      const AlwaysScrollableScrollPhysics(),
                  padding:
                      EdgeInsets.fromLTRB(
                    16.w,
                    4.h,
                    16.w,
                    24.h,
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment
                            .stretch,
                    children: [
                      _buildHeroCard(
                        l10n,
                      ),

                      SizedBox(
                        height: 28.h,
                      ),

                      _buildSectionHeader(
                        l10n
                            .sobrietyMilestones,
                        _milestones
                            .where(
                              (b) =>
                                  b.unlocked,
                            )
                            .length,
                        _milestones.length,
                      ),

                      SizedBox(
                        height: 16.h,
                      ),

                      _buildBadgeGrid(
                        _milestones,
                      ),

                      SizedBox(
                        height: 28.h,
                      ),

                      _buildSectionHeader(
                        l10n.journeyBadges,
                        _achievements
                            .where(
                              (b) =>
                                  b.unlocked,
                            )
                            .length,
                        _achievements.length,
                      ),

                      SizedBox(
                        height: 16.h,
                      ),

                      _buildBadgeGrid(
                        _achievements,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // HERO CARD
  // ============================================================

  Widget _buildHeroCard(
    AppLocalizations l10n,
  ) {
    final latest =
        _latestUnlockedMilestone;

    final next =
        _nextMilestone;

    final unlockedCount =
        _milestones
            .where(
              (b) => b.unlocked,
            )
            .length;

    final _BadgeItem? shown =
        latest ?? next;

    if (shown == null) {
      return const SizedBox.shrink();
    }

    const greenLight =
        Color(0xFF1B6B47);

    const greenDark =
        Color(0xFF0A3D26);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius:
            BorderRadius.circular(
          28.r,
        ),
        onTap:
            latest?.definition != null
                ? () =>
                    _openMilestone(
                      latest!.definition!,
                    )
                : null,
        child: Container(
          width: double.infinity,
          padding:
              EdgeInsets.fromLTRB(
            20.w,
            24.h,
            20.w,
            20.h,
          ),
          decoration:
              BoxDecoration(
            borderRadius:
                BorderRadius.circular(
              28.r,
            ),
            gradient:
                const LinearGradient(
              begin:
                  Alignment.topLeft,
              end:
                  Alignment.bottomRight,
              colors: [
                greenLight,
                greenDark,
              ],
            ),
            border: Border.all(
              color: Colors.white
                  .withOpacity(
                0.18,
              ),
              width: 1.w,
            ),
            boxShadow: [
              BoxShadow(
                color: greenDark
                    .withOpacity(
                  0.35,
                ),
                blurRadius: 24,
                offset:
                    const Offset(
                  0,
                  8,
                ),
              ),
            ],
          ),
          child: Column(
            children: [
              BadgeEmblem(
                size: 96.w,
                color:
                    _tierColor(
                  shown.tier,
                ),
                style:
                    shown.style,
                label:
                    shown.label,
                icon:
                    shown.icon,
                locked:
                    !shown.unlocked,
              ),

              SizedBox(
                height: 14.h,
              ),

              Text(
                shown.title,
                textAlign:
                    TextAlign.center,
                maxLines: 2,
                overflow:
                    TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight:
                      FontWeight.w800,
                  color:
                      Colors.white,
                ),
              ),

              SizedBox(
                height: 4.h,
              ),

              Text(
                latest != null
                    ? l10n
                        .milestonesAchieved(
                        unlockedCount,
                      )
                    : l10n
                        .firstMilestoneWaiting,
                textAlign:
                    TextAlign.center,
                maxLines: 3,
                overflow:
                    TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13.sp,
                  height: 1.35,
                  color:
                      Colors.white70,
                ),
              ),

              if (next != null) ...[
                SizedBox(
                  height: 20.h,
                ),

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        l10n
                            .nextMilestone,
                        textAlign:
                            TextAlign.start,
                        maxLines: 1,
                        overflow:
                            TextOverflow
                                .ellipsis,
                        style:
                            TextStyle(
                          fontSize:
                              12.sp,
                          color:
                              Colors.white70,
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 8.w,
                    ),

                    Expanded(
                      child: Text(
                        next.subtitle,
                        textAlign:
                            TextAlign.end,
                        maxLines: 1,
                        overflow:
                            TextOverflow
                                .ellipsis,
                        style:
                            TextStyle(
                          fontSize:
                              12.sp,
                          fontWeight:
                              FontWeight.w700,
                          color:
                              Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 8.h,
                ),

                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(
                    10.r,
                  ),
                  child:
                      LinearProgressIndicator(
                    value: (next.progress ??
                            0)
                        .clamp(
                      0.02,
                      1.0,
                    ),
                    minHeight: 6.h,
                    backgroundColor:
                        Colors.white
                            .withOpacity(
                      0.25,
                    ),
                    valueColor:
                        const AlwaysStoppedAnimation<
                            Color>(
                      Colors.white,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================
  // APP BAR
  // ============================================================

  Widget _buildAppBar(
    AppLocalizations l10n,
  ) {
    return Padding(
      padding:
          EdgeInsets.fromLTRB(
        16.w,
        12.h,
        16.w,
        12.h,
      ),
      child: SizedBox(
        height: 44.h,
        child: Row(
          children: [
            Expanded(
              child: Text(
                l10n
                    .badgesAndMilestones,
                maxLines: 1,
                overflow:
                    TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight:
                      FontWeight.w600,
                  fontSize: 20.sp,
                  color:
                      AppColors.textBlack,
                ),
              ),
            ),

            SizedBox(
              width: 40.w,
              height: 40.w,
              child: InkWell(
                borderRadius:
                    BorderRadius.circular(
                  20.r,
                ),
                onTap: () {},
                child: Center(
                  child: Icon(
                    Icons
                        .notifications_none_rounded,
                    color:
                        AppColors.textBlack,
                    size: 24.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // SECTION HEADER
  // ============================================================

  Widget _buildSectionHeader(
    String title,
    int unlocked,
    int total,
  ) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            maxLines: 1,
            overflow:
                TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight:
                  FontWeight.w700,
              fontSize: 16.sp,
              color:
                  AppColors.textBlack,
            ),
          ),
        ),

        SizedBox(
          width: 8.w,
        ),

        Container(
          padding:
              EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 4.h,
          ),
          decoration:
              BoxDecoration(
            color:
                AppColors
                    .progressBarBackground,
            borderRadius:
                BorderRadius.circular(
              20.r,
            ),
          ),
          child: Text(
            '$unlocked/$total',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight:
                  FontWeight.w600,
              color:
                  AppColors.textGrey,
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // BADGE GRID
  // ============================================================

  Widget _buildBadgeGrid(
    List<_BadgeItem> items,
  ) {
    const columns = 4;

    final rows =
        <Widget>[];

    for (
      int i = 0;
      i < items.length;
      i += columns
    ) {
      final cells =
          <Widget>[];

      for (
        int j = 0;
        j < columns;
        j++
      ) {
        final index =
            i + j;

        cells.add(
          Expanded(
            child:
                index < items.length
                    ? _buildBadgeCell(
                        items[index],
                      )
                    : const SizedBox.shrink(),
          ),
        );
      }

      rows.add(
        Padding(
          padding:
              EdgeInsets.only(
            bottom:
                i + columns <
                        items.length
                    ? 20.h
                    : 0,
          ),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment
                    .start,
            children: cells,
          ),
        ),
      );
    }

    return Column(
      children: rows,
    );
  }

  // ============================================================
  // BADGE CELL
  // ============================================================

  Widget _buildBadgeCell(
    _BadgeItem item,
  ) {
    final cell =
        Padding(
      padding:
          EdgeInsets.symmetric(
        horizontal: 2.w,
      ),
      child: Column(
        mainAxisSize:
            MainAxisSize.min,
        children: [
          BadgeEmblem(
            size: 62.w,
            color:
                _tierColor(
              item.tier,
            ),
            style:
                item.style,
            label:
                item.label,
            icon:
                item.icon,
            locked:
                !item.unlocked,
          ),

          SizedBox(
            height: 8.h,
          ),

          Text(
            item.title,
            textAlign:
                TextAlign.center,
            maxLines: 2,
            overflow:
                TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight:
                  FontWeight.w700,
              fontSize: 11.sp,
              height: 1.2,
              color:
                  item.unlocked
                      ? AppColors
                          .textBlack
                      : AppColors
                          .textLightGrey,
            ),
          ),

          SizedBox(
            height: 2.h,
          ),

          Text(
            item.subtitle,
            textAlign:
                TextAlign.center,
            maxLines: 2,
            overflow:
                TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 9.sp,
              height: 1.2,
              color:
                  AppColors.textGrey,
            ),
          ),
        ],
      ),
    );

    // Only sobriety milestones
    // are tappable.
    if (item.definition ==
        null) {
      return cell;
    }

    return InkWell(
      borderRadius:
          BorderRadius.circular(
        16.r,
      ),
      onTap: () =>
          _onMilestoneTap(
        item,
      ),
      child: cell,
    );
  }

  // ============================================================
  // TIER COLORS
  // ============================================================

  Color _tierColor(
    BadgeTier tier,
  ) {
    return BadgeVisuals
        .tierColor(tier);
  }
}

// =============================================================
// LOCAL MODELS
// =============================================================

class _BadgeItem {
  final IconData icon;
  final String? label;
  final BadgeStyle style;
  final String title;
  final String subtitle;
  final BadgeTier tier;
  final bool unlocked;
  final double? progress;

  // Set for sobriety milestones.
  final MilestoneDefinition?
      definition;

  const _BadgeItem({
    required this.icon,
    required this.style,
    required this.title,
    required this.subtitle,
    required this.tier,
    required this.unlocked,
    this.label,
    this.progress,
    this.definition,
  });
}

class _AchievementDef {
  final IconData icon;
  final String title;
  final String unlockedSubtitle;
  final BadgeTier tier;
  final num threshold;
  final bool isCurrency;

  final Future<num> Function()
      getCount;

  const _AchievementDef({
    required this.icon,
    required this.title,
    required this.unlockedSubtitle,
    required this.tier,
    required this.threshold,
    required this.getCount,
    this.isCurrency = false,
  });
}

