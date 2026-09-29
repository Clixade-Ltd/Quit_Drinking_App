import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

import 'package:new_quit_drinking_app/constants/app_colors.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/premium_plan_screen.dart';
import 'package:new_quit_drinking_app/screens/chat_screen/recovery_coach_chat_screen.dart';
import 'package:new_quit_drinking_app/screens/cravings/craving_screen.dart';
import 'package:new_quit_drinking_app/screens/daily_check_in/daily_check_in_screen.dart';
import 'package:new_quit_drinking_app/screens/weekly_report/weekly_report_screen.dart';
import 'package:new_quit_drinking_app/services/daily_check_in_service.dart';
import 'package:new_quit_drinking_app/services/home_dashboard_service.dart';
import 'package:new_quit_drinking_app/services/premium_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<_TaskItem> _taskDefinitions(
    AppLocalizations l10n,
  ) =>
      [
        _TaskItem(label: l10n.taskMorningMeditation),
        _TaskItem(label: l10n.taskReadChapter),
        _TaskItem(label: l10n.taskEveningJournal),
      ];

  // ============================================================
  // DRINKS AVOIDED
  // ============================================================

  String _formatDrinksAvoided(num? value) {
    if (value == null) return '0';

    final number = value.toDouble();

    if (number == number.roundToDouble()) {
      return number.toInt().toString();
    }

    return number.toStringAsFixed(2);
  }

  // ============================================================
  // MAP DAILY CHECK-IN MOOD
  // ============================================================

  String _mapCheckInMoodToHomeMood(int moodIndex) {
    if (moodIndex <= 1) return 'tough';
    if (moodIndex == 2) return 'okay';
    return 'good';
  }

  bool _isLoading = true;

  int _daysSober = 0;

  String? _selectedMood;

  Map<String, num> _stats = {};

  List<bool> _tasksDone = [
    false,
    false,
    false,
  ];

  String? _userName;

  Uint8List? _photoBytes;

  DateTime? _journeyStartDate;

  // ============================================================
  // CURRENT STREAK
  // ============================================================

  int _selectedStreakTab = 1;

  Timer? _streakTimer;

  Duration _streakDuration = Duration.zero;

  // ============================================================
  // AI PLAN DATA
  // ============================================================

  String? _welcomeMessage;

  String? _motivationQuote;

  num? _healthScore;

  bool _isPremium = false;

  @override
  void initState() {
    super.initState();

    _load();
  }

  Future<void> _load() async {
    final service =
        HomeDashboardService.instance;

    final days =
        await service.getDaysSober();

    final mood =
        await service.getTodayMood();

    final stats =
        await service.getStats();

    final tasks =
        await service.getTodayTasks(3);

    final name =
        await service.getUserName();

    final isPremium =
        await PremiumService.instance.isPremium();

    final startDate =
        await service.getJourneyStartDate();

    final profile =
        await service.getProfile();

    Uint8List? photoBytes;

    final photoBase64 =
        profile?['photoBase64'] as String?;

    if (photoBase64 != null &&
        photoBase64.isNotEmpty) {
      try {
        photoBytes =
            base64Decode(photoBase64);
      } catch (_) {
        photoBytes = null;
      }
    }

    // ============================================================
    // TODAY'S DAILY CHECK-IN
    // ============================================================

    final todayCheckIn =
        await DailyCheckInService.instance.getToday();

    final resolvedMood =
        todayCheckIn != null
            ? _mapCheckInMoodToHomeMood(
                todayCheckIn.moodIndex,
              )
            : mood;

    // ============================================================
    // LOAD SAVED AI PERSONALIZED PLAN
    // ============================================================

    final aiPlan =
        await service.getAIPlan();

    String? welcomeMessage;

    if (aiPlan != null) {
      final rawWelcome =
          aiPlan['welcomeMessage'];

      if (rawWelcome != null &&
          rawWelcome
              .toString()
              .trim()
              .isNotEmpty) {
        welcomeMessage =
            rawWelcome
                .toString()
                .trim();
      }
    }

    // ============================================================
    // LOAD TODAY'S AI UPDATE
    // ============================================================

    String? motivationQuote;

    num? healthScore;

    final todayAIUpdate =
        await service.getTodayAIUpdate();

    if (todayAIUpdate != null) {
      final rawQuote =
          todayAIUpdate['motivationQuote'];

      if (rawQuote != null &&
          rawQuote
              .toString()
              .trim()
              .isNotEmpty) {
        motivationQuote =
            rawQuote
                .toString()
                .trim();
      }

      final rawHealthScore =
          todayAIUpdate['healthScore'];

      if (rawHealthScore is num) {
        healthScore =
            rawHealthScore;
      } else if (rawHealthScore != null) {
        healthScore =
            num.tryParse(
          rawHealthScore.toString(),
        );
      }
    } else {
      // No network call, no loader.
      // The daily update is built locally.

      final profile =
          await service.getProfile() ?? {};

      final dailyUpdate =
          service.buildLocalDailyUpdate(
        profile: profile,
        daysSober: days,
      );

      await service.saveDailyAIUpdate(
        dailyUpdate,
      );

      final rawQuote =
          dailyUpdate['motivationQuote'];

      if (rawQuote != null &&
          rawQuote
              .toString()
              .trim()
              .isNotEmpty) {
        motivationQuote =
            rawQuote
                .toString()
                .trim();
      }

      final rawHealthScore =
          dailyUpdate['healthScore'];

      if (rawHealthScore is num) {
        healthScore =
            rawHealthScore;
      } else if (rawHealthScore != null) {
        healthScore =
            num.tryParse(
          rawHealthScore.toString(),
        );
      }
    }

    if (!mounted) return;

    _streakTimer?.cancel();

    _journeyStartDate =
        startDate;

    _updateStreakDuration();

    _streakTimer =
        Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (mounted) {
          _updateStreakDuration();
        }
      },
    );

    setState(() {
      _daysSober =
          days;

      _selectedMood =
          resolvedMood;

      _stats =
          stats;

      _tasksDone =
          tasks;

      _userName =
          name;

      _photoBytes =
          photoBytes;

      _welcomeMessage =
          welcomeMessage;

      _motivationQuote =
          motivationQuote;

      _healthScore =
          healthScore;

      _isLoading =
          false;

      _isPremium =
          isPremium;
    });
  }

  // ============================================================
  // UPDATE STREAK DURATION
  // ============================================================

  void _updateStreakDuration() {
    if (_journeyStartDate == null) {
      _streakDuration =
          Duration.zero;
      return;
    }

    final now =
        DateTime.now();

    final diff =
        now.difference(
      _journeyStartDate!,
    );

    setState(() {
      _streakDuration =
          diff < Duration.zero
              ? Duration.zero
              : diff;
    });
  }

  @override
  void dispose() {
    _streakTimer?.cancel();

    super.dispose();
  }

  Future<void> _selectMood(
    String mood,
  ) async {
    setState(
      () => _selectedMood = mood,
    );

    await HomeDashboardService
        .instance
        .setTodayMood(mood);
  }

  Future<void> _toggleTask(
    int index,
  ) async {
    final newValue =
        !_tasksDone[index];

    setState(
      () => _tasksDone[index] =
          newValue,
    );

    await HomeDashboardService
        .instance
        .setTaskDone(
      index,
      newValue,
    );
  }

  String _greeting(
    AppLocalizations l10n,
  ) {
    final hour =
        DateTime.now().hour;

    if (hour < 12) {
      return l10n.goodMorning;
    }

    if (hour < 17) {
      return l10n.goodAfternoon;
    }

    if (hour < 21) {
      return l10n.goodEvening;
    }

    return l10n.goodNight;
  }

  void _shareMilestone(
    AppLocalizations l10n,
  ) {
    Share.share(
      l10n.shareMilestoneMessage(
        _daysSober,
      ),
      subject:
          l10n.shareMilestoneSubject,
    );
  }

  // ============================================================
  // RESET STREAK COUNTER
  // ============================================================
  //
  // Confirms with the user, then sets journeyStartDate back to
  // right now (so the streak visually starts over from zero),
  // and refreshes the local timer/state to match.
  // ============================================================

  Future<void> _resetStreakCounter() async {
    final l10n = AppLocalizations.of(context)!;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          title: Text(
            'Reset Counter?',
            style: TextStyle(
              color: AppColors.textBlack,
              fontWeight: FontWeight.w700,
              fontSize: 19.sp,
            ),
          ),
          content: Text(
            'This will reset your current streak back to zero. '
            'This can\'t be undone.',
            style: TextStyle(
              color: AppColors.textGrey,
              fontSize: 14.sp,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(false),
              child: Text(
                l10n.maybeLater,
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(true),
              child: Text(
                'Reset',
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (confirmed != true) return;

    final now = DateTime.now();

    await HomeDashboardService.instance.updateProfile({
      'journeyStartDate': now.toIso8601String(),
    });

    if (!mounted) return;

    _streakTimer?.cancel();

    setState(() {
      _journeyStartDate = now;
      _selectedStreakTab = 0;
      _streakDuration = Duration.zero;
    });

    _streakTimer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (mounted) {
          _updateStreakDuration();
        }
      },
    );
  }

  // ============================================================
  // FULL WELCOME MESSAGE DIALOG
  // ============================================================

  void _showWelcomeMessageDialog(
    BuildContext context,
  ) {
    if (_welcomeMessage == null ||
        _welcomeMessage!.isEmpty) {
      return;
    }

    final l10n =
        AppLocalizations.of(context)!;

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor:
              AppColors.white,
          shape:
              RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(
              28.r,
            ),
          ),
          child: Padding(
            padding:
                EdgeInsets.all(24.r),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min,
              children: [
                Text(
                  _welcomeMessage!,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w400,
                    fontSize: 15.sp,
                    color:
                        AppColors.textBlack,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  borderRadius:
                      BorderRadius.circular(
                    9999.r,
                  ),
                  onTap: () =>
                      Navigator.of(
                    dialogContext,
                  ).pop(),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 12.h,
                    ),
                    decoration:
                        BoxDecoration(
                      color:
                          const Color(
                        0xFFD7E5E2,
                      ),
                      borderRadius:
                          BorderRadius.circular(
                        9999.r,
                      ),
                    ),
                    child: Text(
                      l10n.close,
                      style: TextStyle(
                        fontWeight:
                            FontWeight.w600,
                        fontSize: 14.sp,
                        color:
                            AppColors.textGrey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _openWeeklyReport() {
    if (!_isPremium) {
      _showWeeklyReportPaywall();
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) =>
            const WeeklyReportScreen(),
      ),
    );
  }

  void _showWeeklyReportPaywall() {
    final l10n =
        AppLocalizations.of(context)!;

    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor:
              AppColors.white,
          title: Text(
            l10n.unlockWeeklyReportsTitle,
            style: TextStyle(
              color:
                  AppColors.textBlack,
              fontWeight:
                  FontWeight.w700,
              fontSize: 20.sp,
            ),
          ),
          content: Text(
            l10n.unlockWeeklyReportsMessage,
            style: TextStyle(
              color:
                  AppColors.textGrey,
              fontSize: 14.sp,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(
                context,
              ).pop(),
              child: Text(
                l10n.maybeLater,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pop();

                Navigator.of(
                  context,
                ).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        const PremiumPlanScreen(),
                  ),
                );
              },
              child: Text(
                l10n.upgrade,
                style: TextStyle(
                  color:
                      AppColors.primary,
                  fontWeight:
                      FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final l10n =
        AppLocalizations.of(context)!;

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

    return Scaffold(
      backgroundColor:
          AppColors.dashboardBackground,
      body: SafeArea(
        child: Column(
          children: [
            // ============================================================
            // HEADER
            // ============================================================

            Padding(
              padding:
                  EdgeInsets.fromLTRB(
                16.w,
                12.h,
                16.w,
                8.h,
              ),
              child: SizedBox(
                height: 44.h,
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment:
                            Alignment.centerLeft,
                        child: RichText(
                          text:
                              TextSpan(
                            style:
                                TextStyle(
                              fontWeight:
                                  FontWeight.w600,
                              fontSize:
                                  23.sp,
                            ),
                            children:
                                const [
                              TextSpan(
                                text:
                                    'Quit ',
                                style:
                                    TextStyle(
                                  color:
                                      AppColors.textBlack,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Drinking',
                                style:
                                    TextStyle(
                                  color:
                                      AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // PREMIUM CROWN
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                const PremiumPlanScreen(),
                          ),
                        );
                      },
                      borderRadius:
                          BorderRadius.circular(
                        999.r,
                      ),
                      child: Container(
                        width: 40.r,
                        height: 40.r,
                        alignment:
                            Alignment.center,
                        decoration:
                            const BoxDecoration(
                          color:
                              AppColors.primary,
                          shape:
                              BoxShape.circle,
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.crown,
                          color:
                              Colors.amber,
                          size: 18.r,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ============================================================
            // CONTENT
            // ============================================================

            Expanded(
              child:
                  SingleChildScrollView(
                padding:
                    EdgeInsets.fromLTRB(
                  20.w,
                  2.h,
                  20.w,
                  24.h,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                  children: [
                    // ======================================================
                    // CARD 1 — CURRENT STREAK
                    // ======================================================

                    Container(
                      width:
                          double.infinity,
                      padding:
                          EdgeInsets.all(
                        24.r,
                      ),
                      decoration:
                          BoxDecoration(
                        color:
                            AppColors.white,
                        borderRadius:
                            BorderRadius.circular(
                          48.r,
                        ),
                        boxShadow:
                            const [
                          BoxShadow(
                            color:
                                Color(
                              0x0A000000,
                            ),
                            blurRadius:
                                30,
                            offset:
                                Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                      child:
                          _StreakCounter(
                        startDate:
                            _journeyStartDate,
                        duration:
                            _streakDuration,
                        selectedTab:
                            _selectedStreakTab,
                        onTabSelected:
                            (index) {
                          setState(
                            () =>
                                _selectedStreakTab =
                                    index,
                          );
                        },
                        onShare: () =>
                            _shareMilestone(
                          l10n,
                        ),
                        onReset:
                            _resetStreakCounter,
                      ),
                    ),

                    SizedBox(
                      height: 16.h,
                    ),

                    // ======================================================
                    // WEEKLY REPORT CARD
                    // ======================================================

                    if (DateTime.now()
                            .weekday ==
                        DateTime.monday) ...[
                      InkWell(
                        borderRadius:
                            BorderRadius.circular(
                          24.r,
                        ),
                        onTap:
                            _openWeeklyReport,
                        child: Container(
                          width:
                              double.infinity,
                          padding:
                              EdgeInsets.all(
                            18.r,
                          ),
                          decoration:
                              BoxDecoration(
                            color:
                                AppColors.primary,
                            borderRadius:
                                BorderRadius.circular(
                              24.r,
                            ),
                            boxShadow:
                                const [
                              BoxShadow(
                                color:
                                    Color(
                                  0x1A000000,
                                ),
                                blurRadius:
                                    20,
                                offset:
                                    Offset(
                                  0,
                                  6,
                                ),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width:
                                    44.r,
                                height:
                                    44.r,
                                decoration:
                                    BoxDecoration(
                                  color:
                                      AppColors.white.withOpacity(
                                    0.18,
                                  ),
                                  shape:
                                      BoxShape.circle,
                                ),
                                child:
                                    Icon(
                                  Icons
                                      .insights_outlined,
                                  color:
                                      AppColors.white,
                                  size:
                                      22.r,
                                ),
                              ),

                              SizedBox(
                                width: 14.w,
                              ),

                              Expanded(
                                child:
                                    Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      l10n
                                          .weeklyReportReadyTitle,
                                      style:
                                          TextStyle(
                                        fontWeight:
                                            FontWeight.w700,
                                        fontSize:
                                            15.sp,
                                        color:
                                            AppColors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          3.h,
                                    ),
                                    Text(
                                      l10n
                                          .weeklyReportReadySubtitle,
                                      style:
                                          TextStyle(
                                        fontWeight:
                                            FontWeight.w400,
                                        fontSize:
                                            12.sp,
                                        color:
                                            AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Icon(
                                Icons
                                    .chevron_right,
                                color:
                                    AppColors.white,
                                size:
                                    22.r,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 16.h,
                      ),
                    ],

                    // ======================================================
                    // CARD 2 — MOOD
                    // ======================================================

                    Container(
                      width:
                          double.infinity,
                      padding:
                          EdgeInsets.all(
                        24.r,
                      ),
                      decoration:
                          BoxDecoration(
                        color:
                            AppColors.white,
                        borderRadius:
                            BorderRadius.circular(
                          48.r,
                        ),
                        boxShadow:
                            const [
                          BoxShadow(
                            color:
                                Color(
                              0x0A000000,
                            ),
                            blurRadius:
                                30,
                            offset:
                                Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                      child:
                          Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        children: [
                          Text(
                            l10n
                                .howAreYouFeeling,
                            style:
                                TextStyle(
                              fontWeight:
                                  FontWeight.w600,
                              fontSize:
                                  16.sp,
                              color:
                                  AppColors.textBlack,
                            ),
                          ),

                          SizedBox(
                            height: 18.h,
                          ),

                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                            children: [
                              _buildMoodButton(
                                mood: 'bad',
                                emoji: '😞',
                                label:
                                    l10n.moodBad,
                                color:
                                    const Color(
                                  0xFFE8746B,
                                ),
                              ),
                              _buildMoodButton(
                                mood: 'low',
                                emoji: '🙁',
                                label:
                                    l10n.moodLow,
                                color:
                                    const Color(
                                  0xFFE8A51C,
                                ),
                              ),
                              _buildMoodButton(
                                mood: 'okay',
                                emoji: '😐',
                                label:
                                    l10n.moodOkay,
                                color:
                                    AppColors
                                        .textLightGrey,
                              ),
                              _buildMoodButton(
                                mood: 'good',
                                emoji: '🙂',
                                label:
                                    l10n.moodGood,
                                color:
                                    const Color(
                                  0xFF3985C6,
                                ),
                              ),
                              _buildMoodButton(
                                mood: 'great',
                                emoji: '😄',
                                label:
                                    l10n.moodGreat,
                                color:
                                    AppColors
                                        .primary,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 16.h,
                    ),

                    // ======================================================
                    // STAT GRID
                    // ======================================================

                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(),
                      mainAxisSpacing:
                          16.h,
                      crossAxisSpacing:
                          16.w,
                      childAspectRatio:
                          140 / 145,
                      children: [
                        _buildStatCard(
                          icon:
                              Icons.account_balance_wallet_outlined,
                          label:
                              l10n.moneySaved,
                          value:
                              '\$${_stats['moneySaved'] ?? 0}',
                          subtitle:
                              l10n.estimated,
                        ),
                        _buildStatCard(
                          icon:
                              Icons.local_fire_department_outlined,
                          label:
                              l10n.caloriesSaved,
                          value:
                              '${_stats['caloriesAvoided'] ?? 0}',
                          subtitle:
                              l10n.estimated,
                        ),
                        _buildStatCard(
                          icon:
                              Icons.favorite_border,
                          label:
                              l10n.healthScore,
                          value:
                              '${_healthScore ?? 0}/100',
                          subtitle:
                              l10n.aiGenerated,
                        ),
                        _buildStatCard(
                          icon:
                              Icons.water_drop_outlined,
                          label:
                              l10n.drinksAvoided,
                          value:
                              _formatDrinksAvoided(
                            _stats[
                                'drinksAvoided'],
                          ),
                          subtitle:
                              l10n.estimated,
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 16.h,
                    ),

                    // ======================================================
                    // TODAY'S MOTIVATION
                    // ======================================================

                    Container(
                      width:
                          double.infinity,
                      padding:
                          EdgeInsets.all(
                        18.r,
                      ),
                      decoration:
                          BoxDecoration(
                        color:
                            AppColors.white,
                        borderRadius:
                            BorderRadius.circular(
                          24.r,
                        ),
                        boxShadow:
                            const [
                          BoxShadow(
                            color:
                                Color(
                              0x0A000000,
                            ),
                            blurRadius:
                                20,
                            offset:
                                Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                      child:
                          Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons
                                    .format_quote,
                                color:
                                    AppColors.textBlack,
                                size:
                                    20.r,
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text(
                                l10n
                                    .todaysMotivation,
                                style:
                                    TextStyle(
                                  fontWeight:
                                      FontWeight.w600,
                                  fontSize:
                                      16.sp,
                                  color:
                                      AppColors.textBlack,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 10.h,
                          ),

                          Text(
                            (_motivationQuote !=
                                        null &&
                                    _motivationQuote!
                                        .isNotEmpty)
                                ? _motivationQuote!
                                : l10n
                                    .defaultMotivationQuote,
                            style:
                                TextStyle(
                              fontWeight:
                                  FontWeight.w400,
                              fontSize:
                                  14.sp,
                              height:
                                  1.5,
                              color:
                                  AppColors.textGrey,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 16.h,
                    ),

                    // ======================================================
                    // TALK TO COACH
                    // ======================================================

                    SizedBox(
                      width:
                          double.infinity,
                      height:
                          50.h,
                      child:
                          OutlinedButton(
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).push(
                            MaterialPageRoute(
                              builder: (_) =>
                                  const RecoveryCoachChatScreen(),
                            ),
                          );
                        },
                        style:
                            OutlinedButton.styleFrom(
                          foregroundColor:
                              AppColors.primary,
                          side:
                              const BorderSide(
                            color:
                                AppColors.primary,
                            width:
                                1,
                          ),
                          padding:
                              EdgeInsets.zero,
                          shape:
                              RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(
                              8.r,
                            ),
                          ),
                        ),
                        child:
                            Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .center,
                          children: [
                            Icon(
                              Icons
                                  .support_agent_outlined,
                              size:
                                  19.r,
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              l10n
                                  .talkToCoach,
                              style:
                                  TextStyle(
                                fontWeight:
                                    FontWeight.w600,
                                fontSize:
                                    14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 16.h,
                    ),

                    // ======================================================
                    // CRAVING BUTTON
                    // ======================================================

                    InkWell(
                      borderRadius:
                          BorderRadius.circular(
                        48.r,
                      ),
                      onTap: () {
                        Navigator.of(
                          context,
                        ).push(
                          MaterialPageRoute(
                            builder: (_) =>
                                const CravingScreen(),
                          ),
                        );
                      },
                      child:
                          Container(
                        width:
                            double.infinity,
                        padding:
                            EdgeInsets.symmetric(
                          vertical:
                              16.h,
                        ),
                        decoration:
                            BoxDecoration(
                          color:
                              const Color(
                            0xFFDB7361,
                          ),
                          borderRadius:
                              BorderRadius.circular(
                            32.r,
                          ),
                          boxShadow:
                              const [
                            BoxShadow(
                              color:
                                  Color(
                                0x33DB7361,
                              ),
                              blurRadius:
                                  20,
                              offset:
                                  Offset(
                                0,
                                6,
                              ),
                            ),
                          ],
                        ),
                        child:
                            Row(
                          mainAxisSize:
                              MainAxisSize.min,
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .center,
                          children: [
                            Icon(
                              Icons
                                  .emergency,
                              color:
                                  AppColors.white,
                              size:
                                  20.r,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              l10n
                                  .havingACraving,
                              style:
                                  TextStyle(
                                fontWeight:
                                    FontWeight.w600,
                                fontSize:
                                    15.sp,
                                color:
                                    AppColors.white,
                              ),
                            ),
                          ],
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

  // ============================================================
  // MOOD BUTTON (navigates to Daily Check-In, with a tap animation)
  // ============================================================

  Widget _buildMoodButton({
  required String mood,
  required String emoji,
  required String label,
  required Color color,
}) {
  final bool isSelected = _selectedMood == mood;

  return _MoodEmojiButton(
    emoji: emoji,
    label: label,
    color: color,
    isSelected: isSelected,
    onTap: () async {
      // Immediately show selected color
      setState(() {
        _selectedMood = mood;
      });

      // Save selected mood
      await HomeDashboardService.instance.setTodayMood(mood);

      if (!mounted) return;

      // Open daily check-in
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => DailyCheckInScreen(
            initialMood: mood,
          ),
        ),
      );
    },
  );
}
  // ============================================================
  // STAT CARD
  // ============================================================

  Widget _buildStatCard({
    required IconData icon,
    required String label,
    required String value,
    required String subtitle,
    Color subtitleColor =
        AppColors.textLightGrey,
  }) {
    return Container(
      padding:
          EdgeInsets.all(
        18.r,
      ),
      decoration:
          BoxDecoration(
        color:
            AppColors.white,
        borderRadius:
            BorderRadius.circular(
          24.r,
        ),
        boxShadow:
            const [
          BoxShadow(
            color:
                Color(0x0A000000),
            blurRadius:
                20,
            offset:
                Offset(0, 4),
          ),
        ],
      ),
      child:
          Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 42.h,
            child:
                Row(
              crossAxisAlignment:
                  CrossAxisAlignment
                      .start,
              children: [
                Icon(
                  icon,
                  color:
                      AppColors.textGrey,
                  size: 18.r,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Expanded(
                  child:
                      Text(
                    label,
                    maxLines:
                        2,
                    overflow:
                        TextOverflow
                            .ellipsis,
                    style:
                        TextStyle(
                      fontWeight:
                          FontWeight.w400,
                      fontSize:
                          13.sp,
                      color:
                          AppColors.textGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            value,
            style:
                TextStyle(
              fontWeight:
                  FontWeight.w700,
              fontSize:
                  23.sp,
              letterSpacing:
                  -0.32,
              color:
                  AppColors.textBlack,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            subtitle,
            maxLines:
                2,
            overflow:
                TextOverflow
                    .ellipsis,
            style:
                TextStyle(
              fontWeight:
                  FontWeight.w400,
              fontSize:
                  12.sp,
              color:
                  subtitleColor,
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// MOOD EMOJI BUTTON — scale + glow on tap
// ============================================================

class _MoodEmojiButton extends StatefulWidget {
  final String emoji;
  final String label;
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const _MoodEmojiButton({
    required this.emoji,
    required this.label,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<_MoodEmojiButton> createState() =>
      _MoodEmojiButtonState();
}

class _MoodEmojiButtonState extends State<_MoodEmojiButton> {
  bool _pressed = false;
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final bool highlighted =
        _pressed ||
        _hovered ||
        widget.isSelected;

    return MouseRegion(
      onEnter: (_) {
        setState(() => _hovered = true);
      },
      onExit: (_) {
        setState(() => _hovered = false);
      },
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,

        onTapDown: (_) {
          setState(() => _pressed = true);
        },

        onTapUp: (_) {
          setState(() => _pressed = false);
          widget.onTap();
        },

        onTapCancel: () {
          setState(() => _pressed = false);
        },

        child: Column(
          children: [
           AnimatedScale(
  scale: _pressed
      ? 0.90
      : _hovered
          ? 1.08
          : widget.isSelected
              ? 1.05
              : 1.0,
  duration: const Duration(
    milliseconds: 150,
  ),
  curve: Curves.easeOut,
              child: AnimatedContainer(
                duration: const Duration(
                  milliseconds: 220,
                ),
                curve: Curves.easeOut,
                width: 52,
                height: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  color: widget.isSelected
    ? widget.color.withValues(alpha: 0.28)
    : _pressed
        ? widget.color.withValues(alpha: 0.24)
        : _hovered
            ? widget.color.withValues(alpha: 0.18)
            : widget.color.withValues(alpha: 0.12),

                  boxShadow: highlighted
                      ? [
                          BoxShadow(
                           color: widget.color.withValues(
  alpha: _pressed ? 0.50 : 0.25,
),
                            blurRadius:
                                _pressed ? 20 : 12,
                            spreadRadius:
                                _pressed ? 2 : 1,
                          ),
                        ]
                      : [],

                  border: Border.all(
                    color: widget.isSelected
                        ? widget.color
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
                child: Text(
                  widget.emoji,
                  style: TextStyle(
                    fontSize: 26.sp,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 6.h,
            ),

            Text(
              widget.label,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: widget.isSelected
                    ? FontWeight.w700
                    : FontWeight.w400,
                color: widget.isSelected
                    ? widget.color
                    : AppColors.textLightGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ============================================================
// CURRENT STREAK
// ============================================================

class _StreakCounter
    extends StatelessWidget {
  final DateTime? startDate;

  final Duration duration;

  final int selectedTab;

  final ValueChanged<int>
      onTabSelected;

  final VoidCallback onShare;

  final VoidCallback onReset;

  const _StreakCounter({
    required this.startDate,
    required this.duration,
    required this.selectedTab,
    required this.onTabSelected,
    required this.onShare,
    required this.onReset,
  });

  // ============================================================
  // DATE FORMAT
  // ============================================================

  String _formatStartDate() {
    if (startDate == null) {
      return '';
    }

    return '${startDate!.day.toString().padLeft(2, '0')} '
        '${_monthName(startDate!.month)} '
        '${startDate!.year}';
  }

  // ============================================================
  // STREAK VALUES
  // ============================================================

  List<_StreakValue> _getValues() {
    final totalSeconds =
        duration.inSeconds;

    final totalMinutes =
        duration.inMinutes;

    final totalHours =
        duration.inHours;

    final totalDays =
        duration.inDays;

    switch (selectedTab) {
      // ========================================================
      // HOURS
      //
      // Hours -> Minutes -> Seconds
      // ========================================================

      case 0:
        final hours =
            totalHours;

        final minutes =
            totalMinutes % 60;

        final seconds =
            totalSeconds % 60;

        return [
          _StreakValue(
            hours.toString(),
            'Hours',
          ),
          _StreakValue(
            minutes.toString(),
            'Minutes',
          ),
          _StreakValue(
            seconds.toString(),
            'Seconds',
          ),
        ];

      // ========================================================
      // DAYS
      //
      // Days -> Hours -> Minutes -> Seconds
      // ========================================================

      case 1:
        final days =
            totalDays;

        final hours =
            totalHours % 24;

        final minutes =
            totalMinutes % 60;

        final seconds =
            totalSeconds % 60;

        return [
          _StreakValue(
            days.toString(),
            days == 1
                ? 'Day'
                : 'Days',
          ),
          _StreakValue(
            hours.toString(),
            'Hours',
          ),
          _StreakValue(
            minutes.toString(),
            'Minutes',
          ),
          _StreakValue(
            seconds.toString(),
            'Seconds',
          ),
        ];

      // ========================================================
      // WEEKS
      //
      // Weeks -> Days -> Hours -> Minutes
      // ========================================================

      case 2:
        final weeks =
            totalDays ~/ 7;

        final days =
            totalDays % 7;

        final hours =
            totalHours % 24;

        final minutes =
            totalMinutes % 60;

        return [
          _StreakValue(
            weeks.toString(),
            weeks == 1
                ? 'Week'
                : 'Weeks',
          ),
          _StreakValue(
            days.toString(),
            days == 1
                ? 'Day'
                : 'Days',
          ),
          _StreakValue(
            hours.toString(),
            'Hours',
          ),
          _StreakValue(
            minutes.toString(),
            'Minutes',
          ),
        ];

      // ========================================================
      // MONTHS
      //
      // Months -> Days -> Hours -> Minutes
      //
      // Uses 30 days as one month for streak duration.
      // ========================================================

      case 3:
        final months =
            totalDays ~/ 30;

        final days =
            totalDays % 30;

        final hours =
            totalHours % 24;

        final minutes =
            totalMinutes % 60;

        return [
          _StreakValue(
            months.toString(),
            months == 1
                ? 'Month'
                : 'Months',
          ),
          _StreakValue(
            days.toString(),
            days == 1
                ? 'Day'
                : 'Days',
          ),
          _StreakValue(
            hours.toString(),
            'Hours',
          ),
          _StreakValue(
            minutes.toString(),
            'Minutes',
          ),
        ];

      // ========================================================
      // YEARS
      //
      // Years -> Months -> Days -> Hours
      //
      // Uses 365 days as one year.
      // ========================================================

      case 4:
        final years =
            totalDays ~/ 365;

        final remainingDays =
            totalDays % 365;

        final months =
            remainingDays ~/ 30;

        final days =
            remainingDays % 30;

        final hours =
            totalHours % 24;

        return [
          _StreakValue(
            years.toString(),
            years == 1
                ? 'Year'
                : 'Years',
          ),
          _StreakValue(
            months.toString(),
            months == 1
                ? 'Month'
                : 'Months',
          ),
          _StreakValue(
            days.toString(),
            days == 1
                ? 'Day'
                : 'Days',
          ),
          _StreakValue(
            hours.toString(),
            'Hours',
          ),
        ];

      default:
        return [];
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final tabs = [
      'Hours',
      'Days',
      'Weeks',
      'Months',
      'Years',
    ];

    final values =
        _getValues();

    final formattedDate =
        _formatStartDate();

    return Column(
      children: [
        // ========================================================
        // HEADER ROW — TITLE + SHARE BUTTON
        // ========================================================

        Row(
          mainAxisAlignment:
              MainAxisAlignment
                  .spaceBetween,
          crossAxisAlignment:
              CrossAxisAlignment
                  .center,
          children: [
            Text(
              'Current Streak',
              style:
                  TextStyle(
                fontWeight:
                    FontWeight.w700,
                fontSize:
                    18.sp,
                color:
                    AppColors.textBlack,
              ),
            ),

            // ---------------- SHARE BUTTON (bigger) ----------------
            Padding(
  padding: EdgeInsets.only(
    top: 6.h,
  ),
  child: InkWell(
    borderRadius:
        BorderRadius.circular(
      9999.r,
    ),
    onTap: onShare,
    child:
        Container(
      padding:
          EdgeInsets.symmetric(
        horizontal: 22.w,
        vertical: 14.h,
      ),
      decoration:
          BoxDecoration(
        color:
            const Color(
          0xFFE3F3EA,
        ),
        borderRadius:
            BorderRadius.circular(
          9999.r,
        ),
      ),
                child:
                    Row(
                  mainAxisSize:
                      MainAxisSize.min,
                  children: [
                    Icon(
                      Icons
                          .ios_share_rounded,
                      size: 18.r,
                      color:
                          AppColors.primary,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      'Share',
                      style:
                          TextStyle(
                        fontWeight:
                            FontWeight.w700,
                        fontSize:
                            14.sp,
                        color:
                            AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),
          ],
        ),

        // ========================================================
        // STARTED ON DATE — RIGHT BELOW THE HEADING
        // ========================================================

        if (formattedDate
            .isNotEmpty) ...[
          SizedBox(
            height: 4.h,
          ),
          Align(
            alignment:
                Alignment.centerLeft,
            child: Text(
              'Started on $formattedDate',
              style:
                  TextStyle(
                fontWeight:
                    FontWeight.w400,
                fontSize:
                    13.sp,
                color:
                    AppColors.textGrey,
              ),
            ),
          ),
        ],

        SizedBox(
          height: 16.h,
        ),

        // ========================================================
        // STREAK TABS — GLASS-LIKE SLOW SLIDING PILL
        // ========================================================

        LayoutBuilder(
          builder:
              (context, constraints) {
            const outerPadding =
                4.0;

            final trackWidth =
                constraints
                        .maxWidth -
                    (outerPadding *
                        2);

            final tabWidth =
                trackWidth /
                    tabs.length;

            return Container(
              padding:
                  const EdgeInsets
                      .all(
                outerPadding,
              ),
              decoration:
                  BoxDecoration(
                color:
                    const Color(
                  0xFFE8ECEC,
                ),
                borderRadius:
                    BorderRadius.circular(
                  999.r,
                ),
              ),
              child: Stack(
                children: [
                  // -------- GLASS SLIDING HIGHLIGHT --------
                  AnimatedPositioned(
                    duration:
                        const Duration(
                      milliseconds:
                          650,
                    ),
                    curve: Curves
                        .easeInOutCubicEmphasized,
                    left: tabWidth *
                        selectedTab,
                    top: 0,
                    bottom: 0,
                    width: tabWidth,
                    child:
                        Container(
                      decoration:
                          BoxDecoration(
                        color: AppColors
                            .white
                            .withOpacity(
                          0.92,
                        ),
                        borderRadius:
                            BorderRadius.circular(
                          999.r,
                        ),
                        border:
                            Border.all(
                          color: Colors
                              .white
                              .withOpacity(
                            0.7,
                          ),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors
                                .black
                                .withOpacity(
                              0.08,
                            ),
                            blurRadius:
                                14,
                            offset:
                                const Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // -------- TAB LABELS --------
                  Row(
                    children:
                        List.generate(
                      tabs.length,
                      (index) {
                        final isSelected =
                            selectedTab ==
                                index;

                        return SizedBox(
                          width:
                              tabWidth,
                          child:
                              GestureDetector(
                            behavior:
                                HitTestBehavior
                                    .opaque,
                            onTap: () =>
                                onTabSelected(
                              index,
                            ),
                            child:
                                Padding(
                              padding:
                                  EdgeInsets.symmetric(
                                vertical:
                                    10.h,
                              ),
                              child:
                                  AnimatedDefaultTextStyle(
                                duration:
                                    const Duration(
                                  milliseconds:
                                      450,
                                ),
                                curve: Curves
                                    .easeInOut,
                                style:
                                    TextStyle(
                                  fontWeight: isSelected
                                      ? FontWeight
                                          .w700
                                      : FontWeight
                                          .w400,
                                  fontSize:
                                      14.sp,
                                  color: isSelected
                                      ? AppColors
                                          .textBlack
                                      : AppColors
                                          .textGrey,
                                ),
                                child:
                                    Text(
                                  tabs[
                                      index],
                                  textAlign:
                                      TextAlign
                                          .center,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),

        SizedBox(
          height: 24.h,
        ),

        // ========================================================
        // DYNAMIC STREAK VALUES
        // ========================================================

        AnimatedSwitcher(
          duration:
              const Duration(
            milliseconds: 250,
          ),
          switchInCurve:
              Curves.easeOut,
          switchOutCurve:
              Curves.easeIn,
          child:
              Row(
            key: ValueKey(
              selectedTab,
            ),
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
            children:
                values
                    .map(
                  (item) =>
                      _buildCounterValue(
                    value:
                        item.value,
                    label:
                        item.label,
                  ),
                )
                    .toList(),
          ),
        ),

        SizedBox(
          height: 20.h,
        ),

        // ========================================================
        // RESET COUNTER BUTTON — FULL WIDTH, SAME GREEN
        // ========================================================

        SizedBox(
          width:
              double.infinity,
          child: InkWell(
            borderRadius:
                BorderRadius.circular(
              9999.r,
            ),
            onTap: onReset,
            child:
                Container(
              alignment:
                  Alignment.center,
              padding:
                  EdgeInsets.symmetric(
                vertical:
                    14.h,
              ),
             decoration: BoxDecoration(
  color: AppColors.primary,
  borderRadius: BorderRadius.circular(
    9999.r,
  ),
),
child: Text(
  'Reset Counter',
  style: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.white,
  ),
),
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // COUNTER VALUE
  // ============================================================

  Widget _buildCounterValue({
    required String value,
    required String label,
  }) {
    return Flexible(
      child:
          Column(
        mainAxisSize:
            MainAxisSize.min,
        children: [
          Text(
            value,
            textAlign:
                TextAlign.center,
            style:
                TextStyle(
              fontWeight:
                  FontWeight.w700,
              fontSize:
                  48.sp,
              color:
                  AppColors.textBlack,
            ),
          ),
          Text(
            label,
            textAlign:
                TextAlign.center,
            style:
                TextStyle(
              fontWeight:
                  FontWeight.w500,
              fontSize:
                  15.sp,
              color:
                  AppColors.textGrey,
            ),
          ),
        ],
      ),
    );
  }

  String _monthName(
    int month,
  ) {
    const names = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    return names[month - 1];
  }
}

// ============================================================
// STREAK VALUE MODEL
// ============================================================

class _StreakValue {
  final String value;
  final String label;

  const _StreakValue(
    this.value,
    this.label,
  );
}

// ============================================================
// TASK ITEM
// ============================================================

class _TaskItem {
  final String label;

  const _TaskItem({
    required this.label,
  });
}