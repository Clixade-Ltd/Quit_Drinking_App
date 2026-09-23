import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../models/milestone_definition.dart';
import '../../../services/achievement_service.dart';
import '../../../services/analytics_service.dart';
import '../../../services/home_dashboard_service.dart';

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
  void initState() {
    super.initState();
  }

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
    debugPrint('BADGES: _load() STARTED');

    final l10n = AppLocalizations.of(context)!;

    debugPrint('BADGES: LOCALIZATION OK');

    if (mounted) {
      setState(() {
        _isLoading = true;
        _hasError = false;
      });
    }

    try {
      // ============================================================
      // LIVE SOBRIETY DATA
      // ============================================================

      debugPrint(
        'BADGES: Loading days sober from Local Storage...',
      );

      final daysSober =
          await HomeDashboardService.instance.getDaysSober();

      debugPrint('BADGES: DAYS SOBER = $daysSober');

      final nextLocked =
          MilestoneDefinitions.nextLocked(daysSober);

      debugPrint(
        'BADGES: Next locked milestone = '
        '${nextLocked?.days ?? 'none'} days',
      );

      // ============================================================
      // LIVE SOBRIETY MILESTONES
      // ============================================================

      final milestoneBadges =
          MilestoneDefinitions.all.map((def) {
        final unlocked = daysSober >= def.days;

        double? progress;
        String subtitle;

        if (unlocked) {
          subtitle = l10n.unlocked;
        } else if (identical(def, nextLocked)) {
          final prevDays =
              MilestoneDefinitions.previousThreshold(def);

          final span =
              (def.days - prevDays).clamp(1, def.days);

          progress =
              ((daysSober - prevDays) / span)
                  .clamp(0.0, 1.0);

          final daysLeft =
              def.days - daysSober;

          subtitle =
              l10n.daysLeft(daysLeft);
        } else {
          subtitle =
              l10n.daysCount(def.days);
        }

        return _BadgeItem(
          icon: unlocked
              ? def.icon
              : Icons.lock_outline,
          title: _localizedMilestoneTitle(
            def,
            l10n,
          ),
          subtitle: subtitle,
          tier: def.tier,
          category: BadgeCategory.milestone,
          unlocked: unlocked,
          progress: progress,
        );
      }).toList();

      debugPrint(
        'BADGES: Milestones loaded = '
        '${milestoneBadges.length}',
      );

      // ============================================================
      // LIVE JOURNEY BADGES
      // ============================================================

      final achievementDefs = <_AchievementDef>[
        // Journal
        _AchievementDef(
          icon: Icons.edit_note,
          title: l10n.firstReflection,
          unlockedSubtitle: l10n.oneJournalEntry,
          tier: BadgeTier.bronze,
          threshold: 1,
          getCount:
              AchievementService.instance.getJournalEntries,
        ),

        _AchievementDef(
          icon: Icons.menu_book,
          title: l10n.openBook,
          unlockedSubtitle: l10n.tenJournalEntries,
          tier: BadgeTier.silver,
          threshold: 10,
          getCount:
              AchievementService.instance.getJournalEntries,
        ),

        _AchievementDef(
          icon: Icons.history_edu,
          title: l10n.dedicatedWriter,
          unlockedSubtitle: l10n.thirtyJournalEntries,
          tier: BadgeTier.gold,
          threshold: 30,
          getCount:
              AchievementService.instance.getJournalEntries,
        ),

        // AI Coach
        _AchievementDef(
          icon: Icons.smart_toy,
          title: l10n.firstConversation,
          unlockedSubtitle: l10n.oneAiCoachChat,
          tier: BadgeTier.bronze,
          threshold: 1,
          getCount:
              AchievementService.instance.getAiCoachConversations,
        ),

        _AchievementDef(
          icon: Icons.chat_bubble_outline,
          title: l10n.keepTalking,
          unlockedSubtitle: l10n.fiveConversations,
          tier: BadgeTier.silver,
          threshold: 5,
          getCount:
              AchievementService.instance.getAiCoachConversations,
        ),

        _AchievementDef(
          icon: Icons.handshake,
          title: l10n.coachCompanion,
          unlockedSubtitle: l10n.twentyConversations,
          tier: BadgeTier.gold,
          threshold: 20,
          getCount:
              AchievementService.instance.getAiCoachConversations,
        ),

        // Check-ins
        _AchievementDef(
          icon: Icons.calendar_today,
          title: l10n.checkInHabit,
          unlockedSubtitle: l10n.sevenCheckIns,
          tier: BadgeTier.bronze,
          threshold: 7,
          getCount:
              AchievementService.instance.getCheckIns,
        ),

        _AchievementDef(
          icon: Icons.autorenew,
          title: l10n.consistencyPro,
          unlockedSubtitle: l10n.thirtyCheckIns,
          tier: BadgeTier.silver,
          threshold: 30,
          getCount:
              AchievementService.instance.getCheckIns,
        ),

        _AchievementDef(
          icon: Icons.star_outline,
          title: l10n.dedicatedJourney,
          unlockedSubtitle: l10n.hundredCheckIns,
          tier: BadgeTier.gold,
          threshold: 100,
          getCount:
              AchievementService.instance.getCheckIns,
        ),

        // Goals
        _AchievementDef(
          icon: Icons.flag_outlined,
          title: l10n.goalGetter,
          unlockedSubtitle: l10n.threeGoalsCompleted,
          tier: BadgeTier.silver,
          threshold: 3,
          getCount:
              AchievementService.instance.getPersonalGoalsCompleted,
        ),

        _AchievementDef(
          icon: Icons.emoji_events,
          title: l10n.goalAchiever,
          unlockedSubtitle: l10n.tenGoalsCompleted,
          tier: BadgeTier.gold,
          threshold: 10,
          getCount:
              AchievementService.instance.getPersonalGoalsCompleted,
        ),

        // Money Saved
        _AchievementDef(
          icon: Icons.savings,
          title: l10n.firstSavings,
          unlockedSubtitle: l10n.fiveHundredSaved,
          tier: BadgeTier.bronze,
          threshold: 500,
          isCurrency: true,
          getCount:
              AchievementService.instance.getMoneySaved,
        ),

        _AchievementDef(
          icon: Icons.attach_money,
          title: l10n.smartSaver,
          unlockedSubtitle: l10n.oneThousandSaved,
          tier: BadgeTier.silver,
          threshold: 1000,
          isCurrency: true,
          getCount:
              AchievementService.instance.getMoneySaved,
        ),

        _AchievementDef(
          icon: Icons.diamond,
          title: l10n.bigSaver,
          unlockedSubtitle: l10n.fiveThousandSaved,
          tier: BadgeTier.platinum,
          threshold: 5000,
          isCurrency: true,
          getCount:
              AchievementService.instance.getMoneySaved,
        ),
      ];

      debugPrint(
        'BADGES: Achievement definitions = '
        '${achievementDefs.length}',
      );

      final achievementBadges = <_BadgeItem>[];

      // ============================================================
      // LOAD EACH ACHIEVEMENT COUNTER
      // ============================================================

      for (final def in achievementDefs) {
        num count;

        try {
          debugPrint(
            'BADGES: Loading achievement "${def.title}"...',
          );

          count = await def.getCount().timeout(
            const Duration(seconds: 10),
            onTimeout: () {
              debugPrint(
                'BADGES: AchievementService timed out for '
                '"${def.title}"',
              );
              return 0;
            },
          );

          debugPrint(
            'BADGES: "${def.title}" count = $count',
          );
        } catch (e, stackTrace) {
          debugPrint(
            'BADGES: AchievementService error for '
            '"${def.title}": $e',
          );

          debugPrint('$stackTrace');

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
                    def.threshold.toStringAsFixed(0),
                  )
                : l10n.countProgress(
                    count.toInt(),
                    def.threshold.toInt(),
                  );

        achievementBadges.add(
          _BadgeItem(
            icon: unlocked
                ? def.icon
                : Icons.lock_outline,
            title: def.title,
            subtitle: unlocked
                ? def.unlockedSubtitle
                : lockedSubtitle,
            tier: def.tier,
            category: BadgeCategory.achievement,
            unlocked: unlocked,
            progress: unlocked
                ? null
                : progress,
          ),
        );
      }

      debugPrint(
        'BADGES: Achievements loaded = '
        '${achievementBadges.length}',
      );

      if (!mounted) return;

      setState(() {
        _milestones = milestoneBadges;
        _achievements = achievementBadges;
        _isLoading = false;
        _hasError = false;
      });

      debugPrint(
        'BADGES: LOAD COMPLETE ✓ '
        '(${_milestones.length} milestones, '
        '${_achievements.length} achievements)',
      );
    } catch (e, stackTrace) {
      debugPrint('BADGES: LOAD ERROR: $e');

      debugPrint(
        'BADGES: STACK TRACE:\n$stackTrace',
      );

      if (!mounted) return;

      setState(() {
        _hasError = true;
        _isLoading = false;
      });
    }
  }

  // ============================================================
  // LOCALIZED MILESTONE TITLES
  // ============================================================

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

      default:
        return l10n.milestoneDayCount(
          def.days,
        );
    }
  }

  // ============================================================
  // COUNTERS
  // ============================================================

  int get _unlockedCount =>
      _milestones
          .where((b) => b.unlocked)
          .length +
      _achievements
          .where((b) => b.unlocked)
          .length;

  int get _totalCount =>
      _milestones.length +
      _achievements.length;

  int get _remainingCount =>
      _totalCount - _unlockedCount;

  _BadgeItem? get _nextMilestone {
    for (final b in _milestones) {
      if (!b.unlocked &&
          b.progress != null) {
        return b;
      }
    }

    return null;
  }

  // ============================================================
  // VIEW ACHIEVED MILESTONES
  // ============================================================

  void _viewAchievedMilestones() {
    final l10n =
        AppLocalizations.of(context)!;

    final unlockedMilestoneDefinitions =
        MilestoneDefinitions.all
            .where(
              (milestone) => _milestones.any(
                (badge) =>
                    badge.title ==
                        _localizedMilestoneTitle(
                          milestone,
                          l10n,
                        ) &&
                    badge.unlocked,
              ),
            )
            .toList();

    if (unlockedMilestoneDefinitions
        .isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            l10n.firstMilestoneWaiting,
          ),
          behavior:
              SnackBarBehavior.floating,
        ),
      );

      return;
    }

    final latestMilestone =
        unlockedMilestoneDefinitions.last;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) =>
            MilestoneAchievedScreen(
          milestone: latestMilestone,
        ),
      ),
    );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    final l10n =
        AppLocalizations.of(context)!;

    if (_isLoading) {
      return Scaffold(
        backgroundColor:
            AppColors.dashboardBackground,
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (_hasError) {
      return Scaffold(
        backgroundColor:
            AppColors.dashboardBackground,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(24.w),
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

                SizedBox(height: 16.h),

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

                SizedBox(height: 20.h),

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

    final nextMilestone =
        _nextMilestone;

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
              child: RefreshIndicator(
                onRefresh: _load,
                child: SingleChildScrollView(
                  physics:
                      const AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.fromLTRB(
                    16.w,
                    4.h,
                    16.w,
                    24.h,
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.stretch,
                    children: [
                      _buildSummaryCard(l10n),

                      SizedBox(height: 16.h),

                      _buildAchievedMilestonesCard(
                        l10n,
                      ),

                      if (nextMilestone != null) ...[
                        SizedBox(height: 16.h),
                        _buildNextMilestoneCard(
                          nextMilestone,
                          l10n,
                        ),
                      ],

                      SizedBox(height: 28.h),

                      _buildSectionHeader(
                        l10n.sobrietyMilestones,
                        _milestones
                            .where(
                              (b) => b.unlocked,
                            )
                            .length,
                        _milestones.length,
                      ),

                      SizedBox(height: 12.h),

                      _buildBadgeGrid(
                        _milestones,
                      ),

                      SizedBox(height: 28.h),

                      _buildSectionHeader(
                        l10n.journeyBadges,
                        _achievements
                            .where(
                              (b) => b.unlocked,
                            )
                            .length,
                        _achievements.length,
                      ),

                      SizedBox(height: 12.h),

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
  // YOUR MILESTONE JOURNEY CARD
  // ============================================================

  Widget _buildAchievedMilestonesCard(
    AppLocalizations l10n,
  ) {
    final unlockedCount =
        _milestones
            .where(
              (badge) => badge.unlocked,
            )
            .length;

    final hasMilestones =
        unlockedCount > 0;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: hasMilestones
            ? _viewAchievedMilestones
            : null,
        borderRadius:
            BorderRadius.circular(28.r),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius:
                BorderRadius.circular(28.r),
            border: Border.all(
              color: AppColors.primary
                  .withOpacity(0.12),
              width: 1.w,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0A000000),
                blurRadius: 20,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 54.w,
                height: 54.w,
                decoration:
                    BoxDecoration(
                  shape: BoxShape.circle,
                  gradient:
                      LinearGradient(
                    begin:
                        Alignment.topLeft,
                    end:
                        Alignment.bottomRight,
                    colors: [
                      AppColors.primary,
                      AppColors.primary
                          .withOpacity(0.72),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors
                          .primary
                          .withOpacity(0.22),
                      blurRadius: 12.r,
                      offset:
                          Offset(0, 5.h),
                    ),
                  ],
                ),
                child: Icon(
                  Icons
                      .emoji_events_rounded,
                  color:
                      AppColors.white,
                  size: 26.sp,
                ),
              ),

              SizedBox(width: 16.w),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                  children: [
                    Text(
                      l10n
                          .yourMilestoneJourney,
                      maxLines: 2,
                      overflow:
                          TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight:
                            FontWeight.w700,
                        fontSize: 16.sp,
                        color:
                            AppColors
                                .textBlack,
                      ),
                    ),

                    SizedBox(height: 4.h),

                    Text(
                      hasMilestones
                          ? l10n
                              .milestonesAchieved(
                              unlockedCount,
                            )
                          : l10n
                              .firstMilestoneWaiting,
                      maxLines: 2,
                      overflow:
                          TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight:
                            FontWeight.w400,
                        fontSize: 12.sp,
                        height: 1.35,
                        color:
                            AppColors
                                .textGrey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 10.w),

              Container(
                width: 36.w,
                height: 36.w,
                decoration:
                    BoxDecoration(
                  color: hasMilestones
                      ? AppColors.primary
                          .withOpacity(0.10)
                      : AppColors
                          .progressBarBackground,
                  shape:
                      BoxShape.circle,
                ),
                child: Icon(
                  Icons
                      .arrow_forward_ios_rounded,
                  size: 15.sp,
                  color: hasMilestones
                      ? AppColors.primary
                      : AppColors
                          .textLightGrey,
                ),
              ),
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
      padding: EdgeInsets.fromLTRB(
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
                l10n.badgesAndMilestones,
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
  // SUMMARY CARD
  // ============================================================

  Widget _buildSummaryCard(
    AppLocalizations l10n,
  ) {
    final double overallProgress =
        _totalCount == 0
            ? 0
            : _unlockedCount /
                _totalCount;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius:
            BorderRadius.circular(32.r),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 30,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            l10n.youAreDoingGreat,
            textAlign:
                TextAlign.center,
            maxLines: 2,
            overflow:
                TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight:
                  FontWeight.w600,
              fontSize: 18.sp,
              color:
                  AppColors.primary,
            ),
          ),

          SizedBox(height: 6.h),

          Text(
            l10n
                .unlockedMilestonesMessage(
              _unlockedCount,
              _totalCount,
            ),
            textAlign:
                TextAlign.center,
            maxLines: 3,
            overflow:
                TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight:
                  FontWeight.w400,
              fontSize: 14.sp,
              height: 1.4,
              color:
                  AppColors.textGrey,
            ),
          ),

          SizedBox(height: 18.h),

          ClipRRect(
            borderRadius:
                BorderRadius.circular(10.r),
            child:
                LinearProgressIndicator(
              value: overallProgress
                  .clamp(0.0, 1.0),
              minHeight: 10.h,
              backgroundColor:
                  AppColors
                      .progressBarBackground,
              valueColor:
                  const AlwaysStoppedAnimation<
                      Color>(
                AppColors.primary,
              ),
            ),
          ),

          SizedBox(height: 20.h),

          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '$_unlockedCount',
                        style: TextStyle(
                          fontWeight:
                              FontWeight.w700,
                          fontSize: 24.sp,
                          color:
                              AppColors
                                  .primary,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        l10n.unlocked,
                        maxLines: 1,
                        overflow:
                            TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight:
                              FontWeight.w400,
                          fontSize: 14.sp,
                          color:
                              AppColors
                                  .textGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                VerticalDivider(
                  width: 1.w,
                  thickness: 1.w,
                  color: AppColors
                      .progressBarBackground,
                ),

                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '$_remainingCount',
                        style: TextStyle(
                          fontWeight:
                              FontWeight.w700,
                          fontSize: 24.sp,
                          color: AppColors
                              .textLightGrey,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        l10n.remaining,
                        maxLines: 1,
                        overflow:
                            TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight:
                              FontWeight.w400,
                          fontSize: 14.sp,
                          color:
                              AppColors
                                  .textGrey,
                        ),
                      ),
                    ],
                  ),
                ),

                VerticalDivider(
                  width: 1.w,
                  thickness: 1.w,
                  color: AppColors
                      .progressBarBackground,
                ),

                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '${(overallProgress * 100).round()}%',
                        style: TextStyle(
                          fontWeight:
                              FontWeight.w700,
                          fontSize: 24.sp,
                          color:
                              AppColors
                                  .primary,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        l10n.complete,
                        maxLines: 1,
                        overflow:
                            TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight:
                              FontWeight.w400,
                          fontSize: 14.sp,
                          color:
                              AppColors
                                  .textGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // NEXT MILESTONE SPOTLIGHT
  // ============================================================

  Widget _buildNextMilestoneCard(
    _BadgeItem item,
    AppLocalizations l10n,
  ) {
    final percent =
        ((item.progress ?? 0) * 100)
            .round();

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(28.r),
        gradient:
            LinearGradient(
          begin:
              Alignment.topLeft,
          end:
              Alignment.bottomRight,
          colors: [
            AppColors.primary,
            AppColors.primary
                .withOpacity(0.75),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary
                .withOpacity(0.25),
            blurRadius: 20.r,
            offset:
                Offset(0, 8.h),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 56.w,
            height: 56.w,
            child: Stack(
              alignment:
                  Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: (item.progress ??
                          0)
                      .clamp(0.02, 1.0),
                  strokeWidth: 5.w,
                  strokeCap:
                      StrokeCap.round,
                  backgroundColor:
                      AppColors.white
                          .withOpacity(
                    0.25,
                  ),
                  valueColor:
                      const AlwaysStoppedAnimation<
                          Color>(
                    AppColors.white,
                  ),
                ),
                Icon(
                  item.icon,
                  color:
                      AppColors.white,
                  size: 22.sp,
                ),
              ],
            ),
          ),

          SizedBox(width: 16.w),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment
                      .start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        l10n.nextMilestone,
                        overflow:
                            TextOverflow
                                .ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight:
                              FontWeight.w600,
                          color:
                              Colors.white70,
                          letterSpacing:
                              0.4,
                        ),
                      ),
                    ),

                    SizedBox(width: 8.w),

                    _tierPill(
                      item.tier,
                      onDark: true,
                      l10n: l10n,
                    ),
                  ],
                ),

                SizedBox(height: 4.h),

                Text(
                  item.title,
                  maxLines: 2,
                  overflow:
                      TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight:
                        FontWeight.w700,
                    color:
                        AppColors.white,
                  ),
                ),

                SizedBox(height: 2.h),

                Text(
                  l10n.percentThere(
                    item.subtitle,
                    percent,
                  ),
                  maxLines: 2,
                  overflow:
                      TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color:
                        Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
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

        SizedBox(width: 8.w),

        Container(
          padding:
              EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 4.h,
          ),
          decoration:
              BoxDecoration(
            color: AppColors
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
    final rows = <Widget>[];

    for (
      int i = 0;
      i < items.length;
      i += 2
    ) {
      final hasSecond =
          i + 1 < items.length;

      rows.add(
        Padding(
          padding:
              EdgeInsets.only(
            bottom:
                i + 2 < items.length
                    ? 16.h
                    : 0,
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment
                      .stretch,
              children: [
                Expanded(
                  child:
                      _buildBadgeCard(
                    items[i],
                  ),
                ),

                SizedBox(width: 16.w),

                Expanded(
                  child: hasSecond
                      ? _buildBadgeCard(
                          items[i + 1],
                        )
                      : const SizedBox
                          .shrink(),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: rows,
    );
  }

  // ============================================================
  // BADGE CARD
  // ============================================================

  Widget _buildBadgeCard(
    _BadgeItem item,
  ) {
    final l10n =
        AppLocalizations.of(context)!;

    final bool isLocked =
        !item.unlocked &&
        item.progress == null;

    final bool isInProgress =
        !item.unlocked &&
        item.progress != null;

    return Container(
      width: double.infinity,

      // IMPORTANT:
      // Fixed height was causing RenderFlex overflow.
      // We now use minimum height so the card can grow
      // when localized text needs more space.
      constraints: BoxConstraints(
        minHeight: 190.h,
      ),

      padding:
          EdgeInsets.symmetric(
        vertical: 18.h,
        horizontal: 14.w,
      ),

      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius:
            BorderRadius.circular(28.r),
        border: item.unlocked
            ? Border.all(
                color: _tierColor(
                  item.tier,
                ).withOpacity(0.25),
                width: 1.2.w,
              )
            : null,
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        mainAxisSize:
            MainAxisSize.min,
        children: [
          // ------------------------------------------------------
          // TIER PILL
          // ------------------------------------------------------

          Align(
            alignment:
                Alignment.topRight,
            child: SizedBox(
              height: 18.h,
              child: item.unlocked
                  ? _tierPill(
                      item.tier,
                      l10n: l10n,
                    )
                  : null,
            ),
          ),

          SizedBox(height: 4.h),

          // ------------------------------------------------------
          // BADGE ICON
          // ------------------------------------------------------

          _buildBadgeIcon(
            item,
            isLocked,
            isInProgress,
          ),

          SizedBox(height: 10.h),

          // ------------------------------------------------------
          // TITLE
          // ------------------------------------------------------

          Flexible(
            child: Text(
              item.title,
              textAlign:
                  TextAlign.center,
              maxLines: 2,
              overflow:
                  TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight:
                    FontWeight.w700,
                fontSize: 14.sp,
                height: 1.2,
                color: isLocked
                    ? AppColors
                        .textLightGrey
                    : AppColors
                        .textBlack,
              ),
            ),
          ),

          SizedBox(height: 4.h),

          // ------------------------------------------------------
          // SUBTITLE
          // ------------------------------------------------------

          Text(
            item.subtitle,
            textAlign:
                TextAlign.center,
            maxLines: 2,
            overflow:
                TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight:
                  FontWeight.w400,
              fontSize: 12.sp,
              height: 1.2,
              color:
                  AppColors.textGrey,
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // BADGE ICON
  // ============================================================

  Widget _buildBadgeIcon(
    _BadgeItem item,
    bool isLocked,
    bool isInProgress,
  ) {
    if (isInProgress) {
      return SizedBox(
        width: 56.w,
        height: 56.w,
        child: Stack(
          alignment:
              Alignment.center,
          children: [
            CircularProgressIndicator(
              value: item.progress!
                  .clamp(0.02, 1.0),
              strokeWidth: 5.w,
              strokeCap:
                  StrokeCap.round,
              backgroundColor:
                  AppColors
                      .progressBarBackground,
              valueColor:
                  AlwaysStoppedAnimation<
                      Color>(
                _tierColor(
                  item.tier,
                ),
              ),
            ),

            Icon(
              item.icon,
              size: 20.sp,
              color: _tierColor(
                item.tier,
              ),
            ),
          ],
        ),
      );
    }

    final Color bgColor =
        isLocked
            ? AppColors
                .progressBarBackground
            : _tierColor(item.tier);

    return SizedBox(
      width: 56.w,
      height: 56.w,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: isLocked
              ? null
              : LinearGradient(
                  begin:
                      Alignment.topLeft,
                  end:
                      Alignment.bottomRight,
                  colors: [
                    bgColor,
                    bgColor.withOpacity(
                      0.75,
                    ),
                  ],
                ),
          color: isLocked
              ? bgColor
              : null,
          boxShadow: isLocked
              ? null
              : [
                  BoxShadow(
                    color: bgColor
                        .withOpacity(
                      0.35,
                    ),
                    blurRadius: 10.r,
                    offset:
                        Offset(0, 4.h),
                  ),
                ],
        ),
        child: Icon(
          item.icon,
          size: 26.sp,
          color: isLocked
              ? AppColors
                  .textLightGrey
              : AppColors.white,
        ),
      ),
    );
  }

  // ============================================================
  // TIER HELPERS
  // ============================================================

  Color _tierColor(
    BadgeTier tier,
  ) {
    switch (tier) {
      case BadgeTier.bronze:
        return const Color(0xFFB87A4B);

      case BadgeTier.silver:
        return const Color(0xFF9AA3AF);

      case BadgeTier.gold:
        return const Color(0xFFD9A441);

      case BadgeTier.platinum:
        return const Color(0xFF6C7BD1);

      case BadgeTier.diamond:
        return const Color(0xFF3FB6C9);
    }
  }

  String _tierLabel(
    BadgeTier tier,
    AppLocalizations l10n,
  ) {
    switch (tier) {
      case BadgeTier.bronze:
        return l10n.bronze;

      case BadgeTier.silver:
        return l10n.silver;

      case BadgeTier.gold:
        return l10n.gold;

      case BadgeTier.platinum:
        return l10n.platinum;

      case BadgeTier.diamond:
        return l10n.diamond;
    }
  }

  Widget _tierPill(
    BadgeTier tier, {
    bool onDark = false,
    required AppLocalizations l10n,
  }) {
    final color = _tierColor(tier);

    return Container(
      padding:
          EdgeInsets.symmetric(
        horizontal: 7.w,
        vertical: 2.h,
      ),
      decoration: BoxDecoration(
        color: onDark
            ? Colors.white
                .withOpacity(0.2)
            : color.withOpacity(0.12),
        borderRadius:
            BorderRadius.circular(20.r),
      ),
      child: Text(
        _tierLabel(
          tier,
          l10n,
        ),
        maxLines: 1,
        overflow:
            TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 9.sp,
          fontWeight:
              FontWeight.w700,
          letterSpacing: 0.4,
          color: onDark
              ? AppColors.white
              : color,
        ),
      ),
    );
  }
}

// =============================================================
// LOCAL MODELS
// =============================================================

enum BadgeCategory {
  milestone,
  achievement,
}

class _BadgeItem {
  final IconData icon;
  final String title;
  final String subtitle;
  final BadgeTier tier;
  final BadgeCategory category;
  final bool unlocked;
  final double? progress;

  const _BadgeItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.tier,
    required this.category,
    required this.unlocked,
    this.progress,
  });
}

class _AchievementDef {
  final IconData icon;
  final String title;
  final String unlockedSubtitle;
  final BadgeTier tier;
  final num threshold;
  final bool isCurrency;
  final Future<num> Function() getCount;

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