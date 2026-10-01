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

  int _selectedStreakTab = 1;

  Timer? _streakTimer;

  Duration _streakDuration = Duration.zero;

  String? _welcomeMessage;

  String? _motivationQuote;

  num? _healthScore;

  bool _isPremium = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  // ============================================================
  // LOAD DASHBOARD
  // ============================================================

  Future<void> _load() async {
    final service = HomeDashboardService.instance;

    final days = await service.getDaysSober();
    final mood = await service.getTodayMood();
    final stats = await service.getStats();
    final tasks = await service.getTodayTasks(3);
    final name = await service.getUserName();

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
        photoBytes = base64Decode(photoBase64);
      } catch (_) {
        photoBytes = null;
      }
    }

    // ==========================================================
    // DAILY CHECK-IN MOOD
    // ==========================================================

    final todayCheckIn =
        await DailyCheckInService.instance.getToday();

    final resolvedMood =
        todayCheckIn != null
            ? _mapCheckInMoodToHomeMood(
                todayCheckIn.moodIndex,
              )
            : mood;

    // ==========================================================
    // AI PLAN
    // ==========================================================

    final aiPlan =
        await service.getAIPlan();

    String? welcomeMessage;

    if (aiPlan != null) {
      final rawWelcome =
          aiPlan['welcomeMessage'];

      if (rawWelcome != null &&
          rawWelcome.toString().trim().isNotEmpty) {
        welcomeMessage =
            rawWelcome.toString().trim();
      }
    }

    // ==========================================================
    // TODAY AI UPDATE
    // ==========================================================

    String? motivationQuote;
    num? healthScore;

    final todayAIUpdate =
        await service.getTodayAIUpdate();

    if (todayAIUpdate != null) {
      final rawQuote =
          todayAIUpdate['motivationQuote'];

      if (rawQuote != null &&
          rawQuote.toString().trim().isNotEmpty) {
        motivationQuote =
            rawQuote.toString().trim();
      }

      final rawHealthScore =
          todayAIUpdate['healthScore'];

      if (rawHealthScore is num) {
        healthScore = rawHealthScore;
      } else if (rawHealthScore != null) {
        healthScore =
            num.tryParse(
          rawHealthScore.toString(),
        );
      }
    } else {
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
          rawQuote.toString().trim().isNotEmpty) {
        motivationQuote =
            rawQuote.toString().trim();
      }

      final rawHealthScore =
          dailyUpdate['healthScore'];

      if (rawHealthScore is num) {
        healthScore = rawHealthScore;
      } else if (rawHealthScore != null) {
        healthScore =
            num.tryParse(
          rawHealthScore.toString(),
        );
      }
    }

    if (!mounted) return;

    _streakTimer?.cancel();

    _journeyStartDate = startDate;

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
      _daysSober = days;
      _selectedMood = resolvedMood;
      _stats = stats;
      _tasksDone = tasks;
      _userName = name;
      _photoBytes = photoBytes;
      _welcomeMessage = welcomeMessage;
      _motivationQuote = motivationQuote;
      _healthScore = healthScore;
      _isPremium = isPremium;
      _isLoading = false;
    });
  }

  // ============================================================
  // MOOD MAPPING
  // ============================================================

  String _mapCheckInMoodToHomeMood(
    int moodIndex,
  ) {
    if (moodIndex <= 1) return 'tough';
    if (moodIndex == 2) return 'okay';
    return 'good';
  }

  // ============================================================
  // STREAK TIMER
  // ============================================================

  void _updateStreakDuration() {
    if (_journeyStartDate == null) {
      _streakDuration = Duration.zero;
      return;
    }

    final now = DateTime.now();

    final diff =
        now.difference(
      _journeyStartDate!,
    );

    if (!mounted) return;

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

  // ============================================================
  // FORMAT DRINKS
  // ============================================================

  String _formatDrinksAvoided(
    num? value,
  ) {
    if (value == null) return '0';

    final number =
        value.toDouble();

    if (number ==
        number.roundToDouble()) {
      return number.toInt().toString();
    }

    return number.toStringAsFixed(2);
  }

  // ============================================================
  // SELECT MOOD
  // ============================================================

  Future<void> _selectMood(
    String mood,
  ) async {
    setState(() {
      _selectedMood = mood;
    });

    await HomeDashboardService
        .instance
        .setTodayMood(mood);
  }

  // ============================================================
  // GREETING
  // ============================================================

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

  // ============================================================
  // SHARE MILESTONE
  // ============================================================

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
  // RESET STREAK
  // ============================================================

  Future<void> _resetStreakCounter() async {
    final l10n =
        AppLocalizations.of(context)!;

    final confirmed =
        await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor:
              AppColors.white,
          shape:
              RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(
              22.r,
            ),
          ),
          title: Text(
            'Reset Counter?',
            style: TextStyle(
              color:
                  AppColors.textBlack,
              fontWeight:
                  FontWeight.w700,
              fontSize:
                  19.sp,
            ),
          ),
          content: Text(
            'This will reset your current streak back to zero. '
            'This can\'t be undone.',
            style: TextStyle(
              color:
                  AppColors.textGrey,
              fontSize:
                  14.sp,
              height:
                  1.45,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(
                context,
              ).pop(false),
              child: Text(
                l10n.maybeLater,
              ),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.of(
                context,
              ).pop(true),
              child: Text(
                'Reset',
                style:
                    TextStyle(
                  color:
                      AppColors.primary,
                  fontWeight:
                      FontWeight.w700,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (confirmed != true) {
      return;
    }

    final now =
        DateTime.now();

    await HomeDashboardService
        .instance
        .updateProfile({
      'journeyStartDate':
          now.toIso8601String(),
    });

    if (!mounted) return;

    _streakTimer?.cancel();

    setState(() {
      _journeyStartDate = now;
      _selectedStreakTab = 0;
      _streakDuration =
          Duration.zero;
    });

    _streakTimer =
        Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (mounted) {
          _updateStreakDuration();
        }
      },
    );
  }

  // ============================================================
  // WEEKLY REPORT
  // ============================================================

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
              fontSize:
                  20.sp,
            ),
          ),
          content: Text(
            l10n.unlockWeeklyReportsMessage,
            style: TextStyle(
              color:
                  AppColors.textGrey,
              fontSize:
                  14.sp,
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
                style:
                    TextStyle(
                  color:
                      AppColors.primary,
                  fontWeight:
                      FontWeight.w700,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // ============================================================
  // WELCOME DIALOG
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
                EdgeInsets.all(
              24.r,
            ),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min,
              children: [
                Text(
                  _welcomeMessage!,
                  style:
                      TextStyle(
                    fontSize:
                        15.sp,
                    height:
                        1.5,
                    color:
                        AppColors.textBlack,
                  ),
                ),
                SizedBox(
                  height:
                      20.h,
                ),
                InkWell(
                  borderRadius:
                      BorderRadius.circular(
                    999.r,
                  ),
                  onTap: () =>
                      Navigator.of(
                    dialogContext,
                  ).pop(),
                  child:
                      Container(
                    padding:
                        EdgeInsets.symmetric(
                      horizontal:
                          24.w,
                      vertical:
                          12.h,
                    ),
                    decoration:
                        BoxDecoration(
                      color:
                          const Color(
                        0xFFD7E5E2,
                      ),
                      borderRadius:
                          BorderRadius.circular(
                        999.r,
                      ),
                    ),
                    child:
                        Text(
                      l10n.close,
                      style:
                          TextStyle(
                        fontWeight:
                            FontWeight.w600,
                        fontSize:
                            14.sp,
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

  // ============================================================
  // BUILD
  // ============================================================

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
            // ========================================================
            // HEADER
            // ========================================================

            Padding(
              padding:
                  EdgeInsets.fromLTRB(
                20.w,
                12.h,
                20.w,
                8.h,
              ),
              child:
                  SizedBox(
                height:
                    44.h,
                child:
                    Row(
                  children: [
                    Expanded(
                      child:
                          RichText(
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

                    InkWell(
                      borderRadius:
                          BorderRadius.circular(
                        999.r,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                const PremiumPlanScreen(),
                          ),
                        );
                      },
                      child:
                          Container(
                        width:
                            40.r,
                        height:
                            40.r,
                        alignment:
                            Alignment.center,
                        decoration:
                            const BoxDecoration(
                          color:
                              AppColors.primary,
                          shape:
                              BoxShape.circle,
                        ),
                        child:
                            FaIcon(
                          FontAwesomeIcons.crown,
                          color:
                              Colors.amber,
                          size:
                              18.r,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ========================================================
            // MAIN CONTENT
            // ========================================================

            Expanded(
              child:
                  SingleChildScrollView(
                padding:
                    EdgeInsets.fromLTRB(
                  20.w,
                  2.h,
                  20.w,
                  28.h,
                ),
                child:
                    Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    // ==================================================
                    // CURRENT STREAK
                    // ==================================================

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
                          40.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withValues(
                              alpha:
                                  0.05,
                            ),
                            blurRadius:
                                30,
                            offset:
                                const Offset(
                              0,
                              8,
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
                          setState(() {
                            _selectedStreakTab =
                                index;
                          });
                        },
                        onShare:
                            () =>
                                _shareMilestone(
                          l10n,
                        ),
                        onReset:
                            _resetStreakCounter,
                      ),
                    ),

                    SizedBox(
                      height:
                          16.h,
                    ),

                    // ==================================================
                    // WEEKLY REPORT
                    // ==================================================

                    if (DateTime.now().weekday ==
                        DateTime.monday) ...[
                      InkWell(
                        borderRadius:
                            BorderRadius.circular(
                          24.r,
                        ),
                        onTap:
                            _openWeeklyReport,
                        child:
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
                                AppColors.primary,
                            borderRadius:
                                BorderRadius.circular(
                              24.r,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    AppColors.primary
                                        .withValues(
                                  alpha:
                                      0.22,
                                ),
                                blurRadius:
                                    24,
                                offset:
                                    const Offset(
                                  0,
                                  8,
                                ),
                              ),
                            ],
                          ),
                          child:
                              Row(
                            children: [
                              Container(
                                width:
                                    44.r,
                                height:
                                    44.r,
                                decoration:
                                    BoxDecoration(
                                  color:
                                      Colors.white
                                          .withValues(
                                    alpha:
                                        0.16,
                                  ),
                                  shape:
                                      BoxShape.circle,
                                ),
                                child:
                                    Icon(
                                  Icons
                                      .insights_outlined,
                                  color:
                                      Colors.white,
                                  size:
                                      22.r,
                                ),
                              ),
                              SizedBox(
                                width:
                                    14.w,
                              ),
                              Expanded(
                                child:
                                    Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment
                                          .start,
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
                                            Colors.white,
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
                                        fontSize:
                                            12.sp,
                                        color:
                                            Colors.white.withValues(
                                          alpha:
                                              0.80,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons
                                    .chevron_right_rounded,
                                color:
                                    Colors.white,
                                size:
                                    22.r,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height:
                            16.h,
                      ),
                    ],

                    // ==================================================
                    // MOOD
                    // ==================================================

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
                          40.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withValues(
                              alpha:
                                  0.045,
                            ),
                            blurRadius:
                                28,
                            offset:
                                const Offset(
                              0,
                              7,
                            ),
                          ),
                        ],
                      ),
                      child:
                          Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n
                                .howAreYouFeeling,
                            style:
                                TextStyle(
                              fontWeight:
                                  FontWeight.w700,
                              fontSize:
                                  17.sp,
                              color:
                                  AppColors.textBlack,
                            ),
                          ),
                          SizedBox(
                            height:
                                18.h,
                          ),
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                            children: [
                              _buildMoodButton(
                                mood:
                                    'bad',
                                emoji:
                                    '😞',
                                label:
                                    l10n.moodBad,
                                color:
                                    const Color(
                                  0xFFE8746B,
                                ),
                              ),
                              _buildMoodButton(
                                mood:
                                    'low',
                                emoji:
                                    '🙁',
                                label:
                                    l10n.moodLow,
                                color:
                                    const Color(
                                  0xFFE8A51C,
                                ),
                              ),
                              _buildMoodButton(
                                mood:
                                    'okay',
                                emoji:
                                    '😐',
                                label:
                                    l10n.moodOkay,
                                color:
                                    AppColors
                                        .textLightGrey,
                              ),
                              _buildMoodButton(
                                mood:
                                    'good',
                                emoji:
                                    '🙂',
                                label:
                                    l10n.moodGood,
                                color:
                                    const Color(
                                  0xFF3985C6,
                                ),
                              ),
                              _buildMoodButton(
                                mood:
                                    'great',
                                emoji:
                                    '😄',
                                label:
                                    l10n.moodGreat,
                                color:
                                    AppColors.primary,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height:
                          16.h,
                    ),

                    // ==================================================
                    // STATS GRID
                    // ==================================================

                    GridView.count(
                      crossAxisCount:
                          2,
                      shrinkWrap:
                          true,
                      physics:
                          const NeverScrollableScrollPhysics(),
                      mainAxisSpacing:
                          14.h,
                      crossAxisSpacing:
                          14.w,
                      childAspectRatio:
                          1.04,
                      children: [
                        _buildMoneySavedCard(
                          value:
                              '\$${_stats['moneySaved'] ?? 0}',
                          subtitle:
                              l10n.estimated,
                        ),

                        _buildCaloriesSavedCard(
                          value:
                              '${_stats['caloriesAvoided'] ?? 0}',
                          subtitle:
                              l10n.estimated,
                        ),

                        _buildHealthScoreCard(
                          value:
                              '${_healthScore ?? 0}/100',
                          subtitle:
                              l10n.aiGenerated,
                        ),

                        _buildDrinksAvoidedCard(
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
                      height:
                          16.h,
                    ),

                    // ==================================================
                    // MOTIVATION
                    // ==================================================

                    Container(
                      width:
                          double.infinity,
                      padding:
                          EdgeInsets.all(
                        20.r,
                      ),
                      decoration:
                          BoxDecoration(
                        color:
                            AppColors.white,
                        borderRadius:
                            BorderRadius.circular(
                          28.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withValues(
                              alpha:
                                  0.045,
                            ),
                            blurRadius:
                                24,
                            offset:
                                const Offset(
                              0,
                              6,
                            ),
                          ),
                        ],
                      ),
                      child:
                          Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width:
                                    38.r,
                                height:
                                    38.r,
                                decoration:
                                    BoxDecoration(
                                  color:
                                      const Color(
                                    0xFFE8F6EF,
                                  ),
                                  shape:
                                      BoxShape.circle,
                                ),
                                child:
                                    Icon(
                                  Icons
                                      .format_quote_rounded,
                                  color:
                                      AppColors.primary,
                                  size:
                                      20.r,
                                ),
                              ),
                              SizedBox(
                                width:
                                    10.w,
                              ),
                              Text(
                                l10n
                                    .todaysMotivation,
                                style:
                                    TextStyle(
                                  fontWeight:
                                      FontWeight.w700,
                                  fontSize:
                                      16.sp,
                                  color:
                                      AppColors.textBlack,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height:
                                12.h,
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
                      height:
                          16.h,
                    ),

                    // ==================================================
                    // TALK TO COACH
                    // ==================================================

                    SizedBox(
                      width:
                          double.infinity,
                      height:
                          52.h,
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
                              BorderSide(
                            color:
                                AppColors.primary,
                            width:
                                1.2,
                          ),
                          shape:
                              RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(
                              16.r,
                            ),
                          ),
                        ),
                        child:
                            Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons
                                  .support_agent_rounded,
                              size:
                                  20.r,
                            ),
                            SizedBox(
                              width:
                                  8.w,
                            ),
                            Text(
                              l10n
                                  .talkToCoach,
                              style:
                                  TextStyle(
                                fontWeight:
                                    FontWeight.w700,
                                fontSize:
                                    14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height:
                          16.h,
                    ),

                    // ==================================================
                    // CRAVING
                    // ==================================================

                    InkWell(
                      borderRadius:
                          BorderRadius.circular(
                        32.r,
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
                              17.h,
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
                          boxShadow: [
                            BoxShadow(
                              color:
                                  const Color(
                                0xFFDB7361,
                              ).withValues(
                                alpha:
                                    0.23,
                              ),
                              blurRadius:
                                  22,
                              offset:
                                  const Offset(
                                0,
                                8,
                              ),
                            ),
                          ],
                        ),
                        child:
                            Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .center,
                          children: [
                            Icon(
                              Icons
                                  .emergency_rounded,
                              color:
                                  Colors.white,
                              size:
                                  20.r,
                            ),
                            SizedBox(
                              width:
                                  8.w,
                            ),
                            Text(
                              l10n
                                  .havingACraving,
                              style:
                                  TextStyle(
                                fontWeight:
                                    FontWeight.w700,
                                fontSize:
                                    15.sp,
                                color:
                                    Colors.white,
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
  // MOOD BUTTON
  // ============================================================

  Widget _buildMoodButton({
    required String mood,
    required String emoji,
    required String label,
    required Color color,
  }) {
    final isSelected =
        _selectedMood == mood;

    return _MoodEmojiButton(
      emoji: emoji,
      label: label,
      color: color,
      isSelected: isSelected,
      onTap: () async {
        setState(() {
          _selectedMood = mood;
        });

        await HomeDashboardService
            .instance
            .setTodayMood(mood);

        if (!mounted) return;

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                DailyCheckInScreen(
              initialMood: mood,
            ),
          ),
        );
      },
    );
  }

  // ============================================================
  // MONEY SAVED CARD
  // ============================================================

  Widget _buildMoneySavedCard({
    required String value,
    required String subtitle,
  }) {
    return Container(
      clipBehavior:
          Clip.antiAlias,
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
            Color(0xFF176B4A),
            Color(0xFF0F5138),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color:
                AppColors.primary
                    .withValues(
              alpha:
                  0.22,
            ),
            blurRadius:
                24,
            offset:
                const Offset(
              0,
              9,
            ),
          ),
        ],
      ),
      child:
          Stack(
        children: [
         
          Positioned(
            right:
                18.r,
            bottom:
                -35.r,
            child:
                Container(
              width:
                  70.r,
              height:
                  70.r,
              decoration:
                  BoxDecoration(
                shape:
                    BoxShape.circle,
                color:
                    Colors.white.withValues(
                  alpha:
                      0.035,
                ),
              ),
            ),
          ),

          Padding(
            padding:
                EdgeInsets.all(
              17.r,
            ),
            child:
                Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width:
                          42.r,
                      height:
                          42.r,
                      decoration:
                          BoxDecoration(
                        color:
                            Colors.white.withValues(
                          alpha:
                              0.12,
                        ),
                        borderRadius:
                            BorderRadius.circular(
                          14.r,
                        ),
                        border:
                            Border.all(
                          color:
                              Colors.white.withValues(
                            alpha:
                                0.10,
                          ),
                        ),
                      ),
                      child:
                          Icon(
                        Icons
                            .account_balance_wallet_rounded,
                        color:
                            Colors.white,
                        size:
                            21.r,
                      ),
                    ),

                    const Spacer(),

                    Container(
                      padding:
                          EdgeInsets.all(
                        8.r,
                      ),
                      decoration:
                          BoxDecoration(
                        color:
                            Colors.white.withValues(
                          alpha:
                              0.10,
                        ),
                        shape:
                            BoxShape.circle,
                      ),
                      child:
                          Icon(
                        Icons
                            .trending_up_rounded,
                        color:
                            const Color(
                          0xFF9DE8C1,
                        ),
                        size:
                            17.r,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                Text(
                  'Money Saved',
                  maxLines:
                      1,
                  overflow:
                      TextOverflow.ellipsis,
                  style: TextStyle(
  fontSize: 13.5.sp,
  fontWeight: FontWeight.w800,
  letterSpacing: -0.15,
  color: Colors.white.withValues(
    alpha: 0.92,
  ),
),
                ),

                SizedBox(
                  height:
                      3.h,
                ),

                FittedBox(
                  fit:
                      BoxFit.scaleDown,
                  alignment:
                      Alignment.centerLeft,
                  child:
                      Text(
                    value,
                    maxLines:
                        1,
                    style:
                        TextStyle(
                     fontSize: 27.sp,
fontWeight: FontWeight.w900,
letterSpacing: -0.9,
                      color:
                          Colors.white,
                    ),
                  ),
                ),

                SizedBox(
                  height:
                      4.h,
                ),

                Row(
                  children: [
                    Container(
                      width:
                          6.r,
                      height:
                          6.r,
                      decoration:
                          const BoxDecoration(
                        color:
                            Color(
                          0xFF78DDAA,
                        ),
                        shape:
                            BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width:
                          6.w,
                    ),
                    Text(
                      subtitle,
                      style:
                          TextStyle(
                      fontSize: 11.sp,
fontWeight: FontWeight.w600,
                        color: Colors.white.withValues(
  alpha: 0.72,
),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // CALORIES SAVED CARD
  // ============================================================

  Widget _buildCaloriesSavedCard({
    required String value,
    required String subtitle,
  }) {
    return Container(
      clipBehavior:
          Clip.antiAlias,
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
            Color(0xFFFFA45B),
            Color(0xFFE97845),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color:
                const Color(
              0xFFE97845,
            ).withValues(
              alpha:
                  0.20,
            ),
            blurRadius:
                24,
            offset:
                const Offset(
              0,
              9,
            ),
          ),
        ],
      ),
      child:
          Stack(
        children: [
          

          Positioned(
            right:
                13.r,
            bottom:
                -30.r,
            child:
                Container(
              width:
                  75.r,
              height:
                  75.r,
              decoration:
                  BoxDecoration(
                shape:
                    BoxShape.circle,
                color:
                    Colors.white.withValues(
                  alpha:
                      0.05,
                ),
              ),
            ),
          ),

          Padding(
            padding:
                EdgeInsets.all(
              17.r,
            ),
            child:
                Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width:
                          42.r,
                      height:
                          42.r,
                      decoration:
                          BoxDecoration(
                        color:
                            Colors.white.withValues(
                          alpha:
                              0.13,
                        ),
                        borderRadius:
                            BorderRadius.circular(
                          14.r,
                        ),
                        border:
                            Border.all(
                          color:
                              Colors.white.withValues(
                            alpha:
                                0.11,
                          ),
                        ),
                      ),
                      child:
                          Icon(
                        Icons
                            .local_fire_department_rounded,
                        color:
                            Colors.white,
                        size:
                            22.r,
                      ),
                    ),

                    const Spacer(),

                    Container(
                      padding:
                          EdgeInsets.all(
                        8.r,
                      ),
                      decoration:
                          BoxDecoration(
                        color:
                            Colors.white.withValues(
                          alpha:
                              0.11,
                        ),
                        shape:
                            BoxShape.circle,
                      ),
                      child:
                          Icon(
                        Icons
                            .bolt_rounded,
                        color:
                            const Color(
                          0xFFFFF0C7,
                        ),
                        size:
                            18.r,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                Text(
                  'Calories Saved',
                  maxLines:
                      1,
                  overflow:
                      TextOverflow.ellipsis,
                style: TextStyle(
  fontSize: 13.5.sp,
  fontWeight: FontWeight.w800,
  letterSpacing: -0.15,
  color: Colors.white.withValues(
    alpha: 0.92,
  ),
),
                ),

                SizedBox(
                  height:
                      3.h,
                ),

                FittedBox(
                  fit:
                      BoxFit.scaleDown,
                  alignment:
                      Alignment.centerLeft,
                  child:
                      Text(
                    value,
                    maxLines:
                        1,
                    style:
                        TextStyle(
                     fontSize: 27.sp,
fontWeight: FontWeight.w900,
letterSpacing: -0.9,
                      color:
                          Colors.white,
                    ),
                  ),
                ),

                SizedBox(
                  height:
                      4.h,
                ),

                Row(
                  children: [
                    Container(
                      width:
                          6.r,
                      height:
                          6.r,
                      decoration:
                          const BoxDecoration(
                        color:
                            Color(
                          0xFFFFE1A8,
                        ),
                        shape:
                            BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width:
                          6.w,
                    ),
                    Text(
                      subtitle,
                      style:
                          TextStyle(
                        fontSize: 11.sp,
fontWeight: FontWeight.w900,
                        color: Colors.white.withValues(
  alpha: 0.72,
),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // HEALTH SCORE CARD
  // ============================================================

  Widget _buildHealthScoreCard({
    required String value,
    required String subtitle,
  }) {
    const startColor = Color(0xFFC95C78);
    const endColor = Color(0xFF8F3554);

    return Container(
      clipBehavior:
          Clip.antiAlias,
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
            startColor,
            endColor,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color:
                startColor.withValues(
              alpha:
                  0.22,
            ),
            blurRadius:
                24,
            offset:
                const Offset(
              0,
              9,
            ),
          ),
        ],
      ),
      child:
          Stack(
        children: [
        
         

          Padding(
            padding:
                EdgeInsets.all(
              17.r,
            ),
            child:
                Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width:
                          42.r,
                      height:
                          42.r,
                      decoration:
                          BoxDecoration(
                        color:
                            Colors.white.withValues(
                          alpha:
                              0.13,
                        ),
                        borderRadius:
                            BorderRadius.circular(
                          14.r,
                        ),
                        border:
                            Border.all(
                          color:
                              Colors.white.withValues(
                            alpha:
                                0.10,
                          ),
                        ),
                      ),
                      child:
                          Icon(
                        Icons.favorite_rounded,
                        color:
                            Colors.white,
                        size:
                            21.r,
                      ),
                    ),

                    const Spacer(),

                    Container(
                      padding:
                          EdgeInsets.all(
                        8.r,
                      ),
                      decoration:
                          BoxDecoration(
                        color:
                            Colors.white.withValues(
                          alpha:
                              0.10,
                        ),
                        shape:
                            BoxShape.circle,
                      ),
                      child:
                          Icon(
                        Icons
                            .favorite_border_rounded,
                        color:
                            const Color(
                          0xFFFFD7E2,
                        ),
                        size:
                            17.r,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                Text(
                  'Health Score',
                  maxLines:
                      1,
                  overflow:
                      TextOverflow.ellipsis,
                  style: TextStyle(
  fontSize: 13.5.sp,
  fontWeight: FontWeight.w800,
  letterSpacing: -0.15,
  color: Colors.white.withValues(
    alpha: 0.92,
  ),
),
                ),

                SizedBox(
                  height:
                      3.h,
                ),

                FittedBox(
                  fit:
                      BoxFit.scaleDown,
                  alignment:
                      Alignment.centerLeft,
                  child:
                      Text(
                    value,
                    maxLines:
                        1,
                    style:
                        TextStyle(
                     fontSize: 27.sp,
fontWeight: FontWeight.w900,
letterSpacing: -0.9,
                      color:
                          Colors.white,
                    ),
                  ),
                ),

                SizedBox(
                  height:
                      4.h,
                ),

                Row(
                  children: [
                    Container(
                      width:
                          6.r,
                      height:
                          6.r,
                      decoration:
                          const BoxDecoration(
                        color:
                            Color(
                          0xFFFFB6C9,
                        ),
                        shape:
                            BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width:
                          6.w,
                    ),
                    Expanded(
                      child:
                          Text(
                        subtitle,
                        maxLines:
                            1,
                        overflow:
                            TextOverflow.ellipsis,
                        style:
                            TextStyle(
                       fontSize: 11.sp,
fontWeight: FontWeight.w600,
                        color: Colors.white.withValues(
  alpha: 0.72,
),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // DRINKS AVOIDED CARD
  // ============================================================

  Widget _buildDrinksAvoidedCard({
    required String value,
    required String subtitle,
  }) {
    const startColor = Color(0xFF3F83C4);
    const endColor = Color(0xFF245F9B);

    return Container(
      clipBehavior:
          Clip.antiAlias,
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
            startColor,
            endColor,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color:
                startColor.withValues(
              alpha:
                  0.20,
            ),
            blurRadius:
                24,
            offset:
                const Offset(
              0,
              9,
            ),
          ),
        ],
      ),
      child:
          Stack(
        children: [
          

          Positioned(
            right:
                10.r,
            bottom:
                -32.r,
            child:
                Container(
              width:
                  74.r,
              height:
                  74.r,
              decoration:
                  BoxDecoration(
                shape:
                    BoxShape.circle,
                color:
                    Colors.white.withValues(
                  alpha:
                      0.045,
                ),
              ),
            ),
          ),

          Padding(
            padding:
                EdgeInsets.all(
              17.r,
            ),
            child:
                Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width:
                          42.r,
                      height:
                          42.r,
                      decoration:
                          BoxDecoration(
                        color:
                            Colors.white.withValues(
                          alpha:
                              0.13,
                        ),
                        borderRadius:
                            BorderRadius.circular(
                          14.r,
                        ),
                        border:
                            Border.all(
                          color:
                              Colors.white.withValues(
                            alpha:
                                0.11,
                          ),
                        ),
                      ),
                      child:
                          Icon(
                        Icons.local_bar_rounded,
                        color:
                            Colors.white,
                        size:
                            21.r,
                      ),
                    ),

                    const Spacer(),

                    Container(
                      padding:
                          EdgeInsets.all(
                        8.r,
                      ),
                      decoration:
                          BoxDecoration(
                        color:
                            Colors.white.withValues(
                          alpha:
                              0.11,
                        ),
                        shape:
                            BoxShape.circle,
                      ),
                      child:
                          Icon(
                        Icons.check_rounded,
                        color:
                            const Color(
                          0xFFBDE6FF,
                        ),
                        size:
                            18.r,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                Text(
                  'Drinks Avoided',
                  maxLines:
                      1,
                  overflow:
                      TextOverflow.ellipsis,
                 style: TextStyle(
  fontSize: 13.5.sp,
  fontWeight: FontWeight.w800,
  letterSpacing: -0.15,
  color: Colors.white.withValues(
    alpha: 0.92,
  ),
),
                ),

                SizedBox(
                  height:
                      3.h,
                ),

                FittedBox(
                  fit:
                      BoxFit.scaleDown,
                  alignment:
                      Alignment.centerLeft,
                  child:
                      Text(
                    value,
                    maxLines:
                        1,
                    style:
                        TextStyle(
                      fontSize: 27.sp,
fontWeight: FontWeight.w900,
letterSpacing: -0.9,
                      color:
                          Colors.white,
                    ),
                  ),
                ),

                SizedBox(
                  height:
                      4.h,
                ),

                Row(
                  children: [
                    Container(
                      width:
                          6.r,
                      height:
                          6.r,
                      decoration:
                          const BoxDecoration(
                        color:
                            Color(
                          0xFFAEDBFF,
                        ),
                        shape:
                            BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width:
                          6.w,
                    ),
                    Expanded(
                      child:
                          Text(
                        subtitle,
                        maxLines:
                            1,
                        overflow:
                            TextOverflow.ellipsis,
                        style:
                            TextStyle(
                           fontSize: 11.sp,
fontWeight: FontWeight.w600,
                        color: Colors.white.withValues(
  alpha: 0.72,
),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ================================================================
// MOOD EMOJI BUTTON
// ================================================================

class _MoodEmojiButton
    extends StatefulWidget {
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

class _MoodEmojiButtonState
    extends State<_MoodEmojiButton> {
  bool _pressed = false;
  bool _hovered = false;

  @override
  Widget build(
    BuildContext context,
  ) {
    final highlighted =
        _pressed ||
        _hovered ||
        widget.isSelected;

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _hovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _hovered = false;
        });
      },
      child:
          GestureDetector(
        behavior:
            HitTestBehavior.opaque,
        onTapDown: (_) {
          setState(() {
            _pressed = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            _pressed = false;
          });

          widget.onTap();
        },
        onTapCancel: () {
          setState(() {
            _pressed = false;
          });
        },
        child:
            Column(
          children: [
            AnimatedScale(
              scale: _pressed
                  ? 0.90
                  : _hovered
                      ? 1.08
                      : widget.isSelected
                          ? 1.05
                          : 1.0,
              duration:
                  const Duration(
                milliseconds:
                    150,
              ),
              curve:
                  Curves.easeOut,
              child:
                  AnimatedContainer(
                duration:
                    const Duration(
                  milliseconds:
                      220,
                ),
                curve:
                    Curves.easeOut,
                width:
                    52.r,
                height:
                    52.r,
                alignment:
                    Alignment.center,
                decoration:
                    BoxDecoration(
                  shape:
                      BoxShape.circle,
                  color:
                      widget.isSelected
                          ? widget.color.withValues(
                              alpha:
                                  0.28,
                            )
                          : _pressed
                              ? widget.color.withValues(
                                  alpha:
                                      0.24,
                                )
                              : _hovered
                                  ? widget.color.withValues(
                                      alpha:
                                          0.18,
                                    )
                                  : widget.color.withValues(
                                      alpha:
                                          0.12,
                                    ),
                  border:
                      Border.all(
                    color:
                        widget.isSelected
                            ? widget.color
                            : Colors.transparent,
                    width:
                        2,
                  ),
                  boxShadow:
                      highlighted
                          ? [
                              BoxShadow(
                                color:
                                    widget.color.withValues(
                                  alpha:
                                      _pressed
                                          ? 0.50
                                          : 0.25,
                                ),
                                blurRadius:
                                    _pressed
                                        ? 20
                                        : 12,
                                spreadRadius:
                                    _pressed
                                        ? 2
                                        : 1,
                              ),
                            ]
                          : [],
                ),
                child:
                    Text(
                  widget.emoji,
                  style:
                      TextStyle(
                    fontSize:
                        26.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height:
                  6.h,
            ),
            Text(
              widget.label,
              style:
                  TextStyle(
                fontSize:
                    12.sp,
                fontWeight:
                    widget.isSelected
                        ? FontWeight.w700
                        : FontWeight.w400,
                color:
                    widget.isSelected
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

// ================================================================
// STREAK COUNTER
// ================================================================

class _StreakCounter
    extends StatelessWidget {
  final DateTime? startDate;
  final Duration duration;
  final int selectedTab;
  final ValueChanged<int> onTabSelected;
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
  // DATE
  // ============================================================

  String _formatStartDate() {
    if (startDate == null) {
      return '';
    }

    return '${startDate!.day.toString().padLeft(2, '0')} '
        '${_monthName(startDate!.month)} '
        '${startDate!.year}';
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

  // ============================================================
  // VALUES
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
      case 0:
        return [
          _StreakValue(
            totalHours.toString(),
            'Hours',
          ),
          _StreakValue(
            (totalMinutes % 60).toString(),
            'Minutes',
          ),
          _StreakValue(
            (totalSeconds % 60).toString(),
            'Seconds',
          ),
        ];

      case 1:
        return [
          _StreakValue(
            totalDays.toString(),
            totalDays == 1
                ? 'Day'
                : 'Days',
          ),
          _StreakValue(
            (totalHours % 24).toString(),
            'Hours',
          ),
          _StreakValue(
            (totalMinutes % 60).toString(),
            'Minutes',
          ),
          _StreakValue(
            (totalSeconds % 60).toString(),
            'Seconds',
          ),
        ];

      case 2:
        final weeks =
            totalDays ~/ 7;

        return [
          _StreakValue(
            weeks.toString(),
            weeks == 1
                ? 'Week'
                : 'Weeks',
          ),
          _StreakValue(
            (totalDays % 7).toString(),
            'Days',
          ),
          _StreakValue(
            (totalHours % 24).toString(),
            'Hours',
          ),
          _StreakValue(
            (totalMinutes % 60).toString(),
            'Minutes',
          ),
        ];

      case 3:
        final months =
            totalDays ~/ 30;

        return [
          _StreakValue(
            months.toString(),
            months == 1
                ? 'Month'
                : 'Months',
          ),
          _StreakValue(
            (totalDays % 30).toString(),
            'Days',
          ),
          _StreakValue(
            (totalHours % 24).toString(),
            'Hours',
          ),
          _StreakValue(
            (totalMinutes % 60).toString(),
            'Minutes',
          ),
        ];

      case 4:
        final years =
            totalDays ~/ 365;

        final remainingDays =
            totalDays % 365;

        final months =
            remainingDays ~/ 30;

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
            (remainingDays % 30).toString(),
            'Days',
          ),
          _StreakValue(
            (totalHours % 24).toString(),
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
    const tabs = [
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
        // HEADER
        // ========================================================

        Row(
          children: [
            Expanded(
              child:
                  Text(
                'Current Streak',
                style:
                    TextStyle(
                  fontWeight:
                      FontWeight.w800,
                  fontSize:
                      19.sp,
                  letterSpacing:
                      -0.3,
                  color:
                      AppColors.textBlack,
                ),
              ),
            ),

            // SHARE BUTTON
            InkWell(
              borderRadius:
                  BorderRadius.circular(
                999.r,
              ),
              onTap:
                  onShare,
              child:
                  Container(
                padding:
                    EdgeInsets.symmetric(
                  horizontal:
                      16.w,
                  vertical:
                      10.h,
                ),
                decoration:
                    BoxDecoration(
                  color:
                      AppColors.primary.withValues(
                    alpha:
                        0.08,
                  ),
                  borderRadius:
                      BorderRadius.circular(
                    999.r,
                  ),
                  border:
                      Border.all(
                    color:
                        AppColors.primary.withValues(
                      alpha:
                          0.12,
                    ),
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
                      size:
                          16.r,
                      color:
                          AppColors.primary,
                    ),
                    SizedBox(
                      width:
                          6.w,
                    ),
                    Text(
                      'Share',
                      style:
                          TextStyle(
                        fontWeight:
                            FontWeight.w700,
                        fontSize:
                            12.5.sp,
                        color:
                            AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        // ========================================================
        // START DATE
        // ========================================================

        if (formattedDate.isNotEmpty) ...[
          SizedBox(
            height:
                5.h,
          ),
          Align(
            alignment:
                Alignment.centerLeft,
            child:
                Row(
              children: [
                Icon(
                  Icons
                      .calendar_today_rounded,
                  size:
                      13.r,
                  color:
                      AppColors.textLightGrey,
                ),
                SizedBox(
                  width:
                      5.w,
                ),
                Text(
                  'Started on $formattedDate',
                  style:
                      TextStyle(
                    fontWeight:
                        FontWeight.w500,
                    fontSize:
                        12.5.sp,
                    color:
                        AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ),
        ],

        SizedBox(
          height:
              18.h,
        ),

        // ========================================================
        // STREAK PILL
        // ========================================================

        LayoutBuilder(
          builder:
              (
            context,
            constraints,
          ) {
            const double outerPadding =
                4;

            final availableWidth =
                constraints.maxWidth -
                    (outerPadding * 2);

            final tabWidth =
                availableWidth /
                    tabs.length;

            return Container(
              padding:
                  const EdgeInsets.all(
                outerPadding,
              ),
              decoration:
                  BoxDecoration(
                color:
                    AppColors.primary.withValues(
                  alpha:
                      0.07,
                ),
                borderRadius:
                    BorderRadius.circular(
                  999.r,
                ),
                border:
                    Border.all(
                  color:
                      AppColors.primary.withValues(
                    alpha:
                        0.10,
                  ),
                ),
              ),
              child:
                  SizedBox(
                height:
                    39.h,
                child:
                    Stack(
                  clipBehavior:
                      Clip.none,
                  children: [
                    // ==================================================
                    // DARK GREEN MOVING PILL
                    // ==================================================

                    AnimatedPositioned(
                      duration:
                          const Duration(
                        milliseconds:
                            650,
                      ),
                      curve:
                          Curves.easeInOutCubicEmphasized,
                      left:
                          (tabWidth *
                                  selectedTab)
                              .clamp(
                        0.0,
                        availableWidth -
                            tabWidth,
                      ),
                      top:
                          0,
                      bottom:
                          0,
                      width:
                          tabWidth,
                      child:
                          Container(
                        decoration:
                            BoxDecoration(
                          gradient:
                              LinearGradient(
                            begin:
                                Alignment.topLeft,
                            end:
                                Alignment.bottomRight,
                            colors: [
                              AppColors.primary,
                              AppColors.primary
                                  .withValues(
                                alpha:
                                    0.88,
                              ),
                            ],
                          ),
                          borderRadius:
                              BorderRadius.circular(
                            999.r,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  AppColors.primary
                                      .withValues(
                                alpha:
                                    0.30,
                              ),
                              blurRadius:
                                  15,
                              spreadRadius:
                                  0.5,
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

                    // ==================================================
                    // TAB LABELS
                    // ==================================================

                    Row(
                      children:
                          List.generate(
                        tabs.length,
                        (index) {
                          final isSelected =
                              selectedTab ==
                                  index;

                          return Expanded(
                            child:
                                GestureDetector(
                              behavior:
                                  HitTestBehavior.opaque,
                              onTap:
                                  () =>
                                      onTabSelected(
                                index,
                              ),
                              child:
                                  Center(
                                child:
                                    AnimatedDefaultTextStyle(
                                  duration:
                                      const Duration(
                                    milliseconds:
                                        300,
                                  ),
                                  curve:
                                      Curves.easeOut,
                                  style:
                                      TextStyle(
                                    fontWeight:
                                        isSelected
                                            ? FontWeight.w800
                                            : FontWeight.w500,
                                    fontSize:
                                        12.5.sp,
                                    color:
                                        isSelected
                                            ? Colors.white
                                            : const Color(
                                                0xFF587068,
                                              ),
                                  ),
                                  child:
                                      Text(
                                    tabs[index],
                                    maxLines:
                                        1,
                                    overflow:
                                        TextOverflow.clip,
                                    textAlign:
                                        TextAlign.center,
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
              ),
            );
          },
        ),

        SizedBox(
          height:
              25.h,
        ),

        // ========================================================
        // COUNTER VALUES
        // ========================================================

        // ========================================================
// COUNTER VALUES
// ========================================================

SizedBox(
  height: 82.h,
  child: AnimatedSwitcher(
    duration: const Duration(milliseconds: 520),
    switchInCurve: Curves.easeOutCubic,
    switchOutCurve: Curves.easeInCubic,

    // Keep both old and new values in exactly the same
    // position while transitioning.
    layoutBuilder: (currentChild, previousChildren) {
      return Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          ...previousChildren,
          if (currentChild != null) currentChild,
        ],
      );
    },

    transitionBuilder: (child, animation) {
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
        reverseCurve: Curves.easeInCubic,
      );

      return FadeTransition(
        opacity: curvedAnimation,
        child: child,
      );
    },

    child: Row(
      key: ValueKey(selectedTab),
      children: List.generate(
        values.length,
        (index) {
          final item = values[index];

          return Expanded(
            child: _buildCounterValue(
              value: item.value,
              label: item.label,
            ),
          );
        },
      ),
    ),
  ),
),

        SizedBox(
          height:
              22.h,
        ),

        // ========================================================
        // RESET COUNTER
        // ========================================================

        SizedBox(
          width:
              double.infinity,
          child:
              Material(
            color:
                Colors.transparent,
            child:
                InkWell(
              borderRadius:
                  BorderRadius.circular(
                999.r,
              ),
              onTap:
                  onReset,
              child:
                  Ink(
                padding:
                    EdgeInsets.symmetric(
                  vertical:
                      14.h,
                ),
                decoration:
                    BoxDecoration(
                  gradient:
                      LinearGradient(
                    begin:
                        Alignment.centerLeft,
                    end:
                        Alignment.centerRight,
                    colors: [
                      AppColors.primary,
                      AppColors.primary.withValues(
                        alpha:
                            0.88,
                      ),
                    ],
                  ),
                  borderRadius:
                      BorderRadius.circular(
                    999.r,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color:
                          AppColors.primary
                              .withValues(
                        alpha:
                            0.22,
                      ),
                      blurRadius:
                          18,
                      offset:
                          const Offset(
                        0,
                        6,
                      ),
                    ),
                  ],
                ),
                child:
                    Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                  children: [
                    Icon(
                      Icons
                          .restart_alt_rounded,
                      color:
                          Colors.white,
                      size:
                          18.r,
                    ),
                    SizedBox(
                      width:
                          7.w,
                    ),
                    Text(
                      'Reset Counter',
                      style:
                          TextStyle(
                        fontWeight:
                            FontWeight.w700,
                        fontSize:
                            14.sp,
                        color:
                            Colors.white,
                      ),
                    ),
                  ],
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
  return SizedBox(
    height: 82.h,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 52.h,
          child: Center(
            child: Text(
              value,
              maxLines: 1,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 43.sp,
                height: 1.0,
                letterSpacing: -1.2,
                color: AppColors.textBlack,
              ),
            ),
          ),
        ),

        SizedBox(height: 3.h),

        SizedBox(
          height: 18.h,
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
              height: 1.0,
              color: AppColors.textGrey,
            ),
          ),
        ),
      ],
    ),
  );
}
}

// ================================================================
// STREAK VALUE
// ================================================================

class _StreakValue {
  final String value;
  final String label;

  const _StreakValue(
    this.value,
    this.label,
  );
}