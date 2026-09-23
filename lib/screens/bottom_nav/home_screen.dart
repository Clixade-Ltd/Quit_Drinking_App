
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
import 'package:new_quit_drinking_app/services/gemini_service.dart';
import 'package:new_quit_drinking_app/services/home_dashboard_service.dart';
import 'package:new_quit_drinking_app/services/premium_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<_TaskItem> _taskDefinitions(AppLocalizations l10n) => [
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
  List<bool> _tasksDone = [false, false, false];
  String? _userName;
  Uint8List? _photoBytes;

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
    final service = HomeDashboardService.instance;

    final days = await service.getDaysSober();
    final mood = await service.getTodayMood();
    final stats = await service.getStats();
    final tasks = await service.getTodayTasks(3);
    final name = await service.getUserName();
    final isPremium = await PremiumService.instance.isPremium();

    final profile = await service.getProfile();

    Uint8List? photoBytes;
    final photoBase64 = profile?['photoBase64'] as String?;

    if (photoBase64 != null && photoBase64.isNotEmpty) {
      try {
        photoBytes = base64Decode(photoBase64);
      } catch (_) {
        photoBytes = null;
      }
    }

    // ============================================================
    // TODAY'S DAILY CHECK-IN
    // ============================================================

    final todayCheckIn =
        await DailyCheckInService.instance.getToday();

    final resolvedMood = todayCheckIn != null
        ? _mapCheckInMoodToHomeMood(todayCheckIn.moodIndex)
        : mood;

    // ============================================================
    // LOAD SAVED AI PERSONALIZED PLAN
    // ============================================================

    final aiPlan = await service.getAIPlan();

    String? welcomeMessage;

    if (aiPlan != null) {
      final rawWelcome = aiPlan['welcomeMessage'];

      if (rawWelcome != null &&
          rawWelcome.toString().trim().isNotEmpty) {
        welcomeMessage = rawWelcome.toString().trim();
      }
    }

    // ============================================================
    // LOAD TODAY'S AI UPDATE
    // ============================================================

    String? motivationQuote;
    num? healthScore;

    final todayAIUpdate = await service.getTodayAIUpdate();

    if (todayAIUpdate != null) {
      final rawQuote = todayAIUpdate['motivationQuote'];

      if (rawQuote != null &&
          rawQuote.toString().trim().isNotEmpty) {
        motivationQuote = rawQuote.toString().trim();
      }

      final rawHealthScore = todayAIUpdate['healthScore'];

      if (rawHealthScore is num) {
        healthScore = rawHealthScore;
      } else if (rawHealthScore != null) {
        healthScore = num.tryParse(rawHealthScore.toString());
      }
    } else {
      try {
        final profile = await service.getProfile() ?? {};

        final yesterdayCheckIn =
            await DailyCheckInService.instance.getYesterday();

        String? yesterdayMood;
        String? yesterdayDidDrink;
        String? yesterdayCravingLevel;
        String? yesterdayNote;

        if (yesterdayCheckIn != null) {
          const moodLabels = [
            'Very Low',
            'Low',
            'Okay',
            'Good',
            'Very Good',
          ];

          const cravingLabels = [
            'Low',
            'Medium',
            'Strong',
          ];

          yesterdayMood =
              moodLabels[yesterdayCheckIn.moodIndex];

          yesterdayDidDrink =
              yesterdayCheckIn.stayedOnTrack ? 'No' : 'Yes';

          yesterdayCravingLevel =
              cravingLabels[yesterdayCheckIn.cravingLevel];

          yesterdayNote =
              yesterdayCheckIn.note.isEmpty
                  ? null
                  : yesterdayCheckIn.note;
        }

        final dailyUserData = {
          'userName': profile['name'] ?? 'there',
          'userGoal': profile['goal'] ?? 'Reduce drinking',
          'drinkingLevel': profile['drinkingLevel'] ?? '',
          'triggers': profile['triggers'] ?? [],
          'motivations': profile['quitReasons'] ?? [],
          'daysSober': days,
          'currentStreak': days,
          'moneySaved': stats['moneySaved'] ?? 0,
          'drinksAvoided': stats['drinksAvoided'] ?? 0,
          'yesterdayMood': yesterdayMood,
          'yesterdayDidDrink': yesterdayDidDrink,
          'yesterdayCravingLevel': yesterdayCravingLevel,
          'yesterdayNote': yesterdayNote,
        };

        final dailyUpdate =
            await GeminiService.instance.generateDailyUpdate(
          userData: dailyUserData,
          languageCode:
              Localizations.localeOf(context).languageCode,
        );

        await service.saveDailyAIUpdate(dailyUpdate);

        final rawQuote = dailyUpdate['motivationQuote'];

        if (rawQuote != null &&
            rawQuote.toString().trim().isNotEmpty) {
          motivationQuote = rawQuote.toString().trim();
        }

        final rawHealthScore = dailyUpdate['healthScore'];

        if (rawHealthScore is num) {
          healthScore = rawHealthScore;
        } else if (rawHealthScore != null) {
          healthScore =
              num.tryParse(rawHealthScore.toString());
        }
      } catch (e) {
        debugPrint('Daily AI update failed: $e');
      }
    }

    if (!mounted) return;

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

      _isLoading = false;
      _isPremium = isPremium;
    });
  }

  Future<void> _selectMood(String mood) async {
    setState(() => _selectedMood = mood);

    await HomeDashboardService.instance.setTodayMood(mood);
  }

  Future<void> _toggleTask(int index) async {
    final newValue = !_tasksDone[index];

    setState(() => _tasksDone[index] = newValue);

    await HomeDashboardService.instance.setTaskDone(
      index,
      newValue,
    );
  }

  String _greeting(AppLocalizations l10n) {
    final hour = DateTime.now().hour;

    if (hour < 12) return l10n.goodMorning;
    if (hour < 17) return l10n.goodAfternoon;
    if (hour < 21) return l10n.goodEvening;

    return l10n.goodNight;
  }

  void _shareMilestone(AppLocalizations l10n) {
    Share.share(
      l10n.shareMilestoneMessage(_daysSober),
      subject: l10n.shareMilestoneSubject,
    );
  }

  // ============================================================
  // FULL WELCOME MESSAGE DIALOG
  // ============================================================

  void _showWelcomeMessageDialog(BuildContext context) {
    if (_welcomeMessage == null || _welcomeMessage!.isEmpty) {
      return;
    }

    final l10n = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(24.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _welcomeMessage!,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    color: AppColors.textBlack,
                  ),
                ),
                SizedBox(height: 20.h),
                InkWell(
                  borderRadius: BorderRadius.circular(9999.r),
                  onTap: () =>
                      Navigator.of(dialogContext).pop(),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 12.h,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD7E5E2),
                      borderRadius:
                          BorderRadius.circular(9999.r),
                    ),
                    child: Text(
                      l10n.close,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: AppColors.textGrey,
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
        builder: (_) => const WeeklyReportScreen(),
      ),
    );
  }

  void _showWeeklyReportPaywall() {
    final l10n = AppLocalizations.of(context)!;

    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          title: Text(
            l10n.unlockWeeklyReportsTitle,
            style: TextStyle(
              color: AppColors.textBlack,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
            ),
          ),
          content: Text(
            l10n.unlockWeeklyReportsMessage,
            style: TextStyle(
              color: AppColors.textGrey,
              fontSize: 14.sp,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(),
              child: Text(
                l10n.maybeLater,
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        const PremiumPlanScreen(),
                  ),
                );
              },
              child: Text(
                l10n.upgrade,
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
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (_isLoading) {
      return const Scaffold(
        backgroundColor: AppColors.dashboardBackground,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final String displayName =
        (_userName != null && _userName!.trim().isNotEmpty)
            ? _userName!.trim()
            : 'there';

    return Scaffold(
      backgroundColor: AppColors.dashboardBackground,
      body: SafeArea(
        child: Column(
          children: [
            // ============================================================
            // HEADER
            // ============================================================

            Padding(
              padding: EdgeInsets.fromLTRB(
                16.w,
                12.h,
                16.w,
                8.h,
              ),
              child: SizedBox(
                height: 44.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 23.sp,
                          ),
                          children: const [
                            TextSpan(
                              text: 'Quit ',
                              style: TextStyle(
                                color: AppColors.textBlack,
                              ),
                            ),
                            TextSpan(
                              text: 'Drinking',
                              style: TextStyle(
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // PREMIUM CROWN
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
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
                            BorderRadius.circular(999.r),
                        child: Container(
                          width: 40.r,
                          height: 40.r,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.crown,
                            color: Colors.amber,
                            size: 18.r,
                          ),
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
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(
                  20.w,
                  2.h,
                  20.w,
                  24.h,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    // ======================================================
                    // PROFILE ROW
                    // ======================================================

                    Row(
                      children: [
                        Container(
                          width: 38.r,
                          height: 38.r,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primary,
                              width: 1.5,
                            ),
                            color: AppColors.iconBackground,
                            image: _photoBytes != null
                                ? DecorationImage(
                                    image: MemoryImage(
                                      _photoBytes!,
                                    ),
                                    fit: BoxFit.cover,
                                  )
                                : null,
                          ),
                          child: _photoBytes == null
                              ? Icon(
                                  Icons.person_outline,
                                  color: AppColors.primary,
                                  size: 22.r,
                                )
                              : null,
                        ),

                        SizedBox(width: 10.w),

                        Expanded(
                          child: Text(
                            '${_greeting(l10n)}, $displayName',
                            maxLines: 1,
                            overflow:
                                TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                              color: AppColors.textBlack,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 4.h),
                    SizedBox(height: 10.h),

                    // ======================================================
                    // CARD 1 — SOBRIETY
                    // ======================================================

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(24.r),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.circular(48.r),
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
                          if (_welcomeMessage != null &&
                              _welcomeMessage!.isNotEmpty) ...[
                            GestureDetector(
                              onTap: () =>
                                  _showWelcomeMessageDialog(
                                context,
                              ),
                              child: Text(
                                _welcomeMessage!,
                                maxLines: 2,
                                overflow:
                                    TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight:
                                      FontWeight.w400,
                                  fontSize: 15.sp,
                                  color:
                                      AppColors.textBlack,
                                ),
                              ),
                            ),

                            SizedBox(height: 28.h),
                          ],

                          // SOBRIETY CIRCLE
                          //
                          // Intentionally fixed at 140x140.
                          // This prevents it becoming too large on tablets.

                          const SizedBox(
                            width: 140,
                            height: 140,
                            child: _FixedSobrietyCircle(),
                          ),

                          SizedBox(height: 28.h),

                          Text(
                            l10n.youAreDoingGreat,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22.sp,
                              color: AppColors.textBlack,
                            ),
                          ),

                          SizedBox(height: 15.h),

                          InkWell(
                            borderRadius:
                                BorderRadius.circular(
                              9999.r,
                            ),
                            onTap: () =>
                                _shareMilestone(l10n),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 24.w,
                                vertical: 12.h,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFFD7E5E2),
                                borderRadius:
                                    BorderRadius.circular(
                                  9999.r,
                                ),
                              ),
                              child: Row(
                                mainAxisSize:
                                    MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.share_outlined,
                                    size: 16.r,
                                    color:
                                        AppColors.textGrey,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    l10n.shareMilestone,
                                    style: TextStyle(
                                      fontWeight:
                                          FontWeight.w600,
                                      fontSize: 14.sp,
                                      color:
                                          AppColors.textGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16.h),

                    // ======================================================
                    // WEEKLY REPORT CARD
                    // ======================================================

                    if (DateTime.now().weekday ==
                        DateTime.monday) ...[
                      InkWell(
                        borderRadius:
                            BorderRadius.circular(24.r),
                        onTap: _openWeeklyReport,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(18.r),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius:
                                BorderRadius.circular(24.r),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x1A000000),
                                blurRadius: 20,
                                offset: Offset(0, 6),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 44.r,
                                height: 44.r,
                                decoration: BoxDecoration(
                                  color: AppColors.white
                                      .withOpacity(0.18),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.insights_outlined,
                                  color: AppColors.white,
                                  size: 22.r,
                                ),
                              ),

                              SizedBox(width: 14.w),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment
                                          .start,
                                  children: [
                                    Text(
                                      l10n
                                          .weeklyReportReadyTitle,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight.w700,
                                        fontSize: 15.sp,
                                        color:
                                            AppColors.white,
                                      ),
                                    ),

                                    SizedBox(height: 3.h),

                                    Text(
                                      l10n
                                          .weeklyReportReadySubtitle,
                                      style: TextStyle(
                                        fontWeight:
                                            FontWeight.w400,
                                        fontSize: 12.sp,
                                        color:
                                            AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Icon(
                                Icons.chevron_right,
                                color: AppColors.white,
                                size: 22.r,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 16.h),
                    ],

                    // ======================================================
                    // CARD 2 — MOOD
                    // ======================================================

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(24.r),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.circular(48.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x0A000000),
                            blurRadius: 30,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.howAreYouFeeling,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: AppColors.textBlack,
                            ),
                          ),

                          SizedBox(height: 16.h),

                         Padding(
  padding: EdgeInsets.symmetric(horizontal: 18.w),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildMoodButton(
        mood: 'tough',
        icon: Icons.sentiment_very_dissatisfied_outlined,
        label: l10n.moodTough,
        color: const Color(0xFFE8746B),
      ),
      _buildMoodButton(
        mood: 'okay',
        icon: Icons.sentiment_neutral,
        label: l10n.moodOkay,
        color: AppColors.textLightGrey,
      ),
      _buildMoodButton(
        mood: 'good',
        icon: Icons.sentiment_satisfied_alt,
        label: l10n.moodGood,
        color: AppColors.primary,
      ),
    ],
  ),
),
                        ],
                      ),
                    ),

                    SizedBox(height: 16.h),

                    // ======================================================
                    // STAT GRID
                    // ======================================================

                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.w,

                      // Keep the existing card proportions.
                      childAspectRatio: 140 / 145,

                      children: [
                        _buildStatCard(
                          icon: Icons
                              .account_balance_wallet_outlined,
                          label: l10n.moneySaved,
                          value:
                              '\$${_stats['moneySaved'] ?? 0}',
                          subtitle: l10n.estimated,
                        ),
                        _buildStatCard(
                          icon: Icons
                              .local_fire_department_outlined,
                          label: l10n.caloriesSaved,
                          value:
                              '${_stats['caloriesAvoided'] ?? 0}',
                          subtitle: l10n.estimated,
                        ),
                        _buildStatCard(
                          icon: Icons.favorite_border,
                          label: l10n.healthScore,
                          value:
                              '${_healthScore ?? 0}/100',
                          subtitle: l10n.aiGenerated,
                        ),
                        _buildStatCard(
                          icon: Icons.water_drop_outlined,
                          label: l10n.drinksAvoided,
                          value: _formatDrinksAvoided(
                            _stats['drinksAvoided'],
                          ),
                          subtitle: l10n.estimated,
                        ),
                      ],
                    ),

                    SizedBox(height: 16.h),

                    // ======================================================
                    // TODAY'S MOTIVATION
                    // ======================================================

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(18.r),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.circular(24.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x0A000000),
                            blurRadius: 20,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.format_quote,
                                color: AppColors.textBlack,
                                size: 20.r,
                              ),

                              SizedBox(width: 6.w),

                              Text(
                                l10n.todaysMotivation,
                                style: TextStyle(
                                  fontWeight:
                                      FontWeight.w600,
                                  fontSize: 16.sp,
                                  color:
                                      AppColors.textBlack,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10.h),

                          Text(
                            (_motivationQuote != null &&
                                    _motivationQuote!
                                        .isNotEmpty)
                                ? _motivationQuote!
                                : l10n.defaultMotivationQuote,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              height: 1.5,
                              color: AppColors.textGrey,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16.h),

                    // ======================================================
                    // TALK TO COACH
                    // ======================================================

                    SizedBox(
                      width: double.infinity,
                      height: 50.h,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) =>
                                  const RecoveryCoachChatScreen(),
                            ),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor:
                              AppColors.primary,
                          side: const BorderSide(
                            color: AppColors.primary,
                            width: 1,
                          ),
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons
                                  .support_agent_outlined,
                              size: 19.r,
                            ),

                            SizedBox(width: 7.w),

                            Text(
                              l10n.talkToCoach,
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.w600,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 16.h),

                    // ======================================================
                    // CRAVING BUTTON
                    // ======================================================

                    InkWell(
                      borderRadius:
                          BorderRadius.circular(48.r),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) =>
                                const CravingScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: 16.h,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDB7361),
                          borderRadius:
                              BorderRadius.circular(32.r),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x33DB7361),
                              blurRadius: 20,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.emergency,
                              color: AppColors.white,
                              size: 20.r,
                            ),

                            SizedBox(width: 8.w),

                            Text(
                              l10n.havingACraving,
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.w600,
                                fontSize: 15.sp,
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
  // MOOD BUTTON
  // ============================================================

  Widget _buildMoodButton({
    required String mood,
    required IconData icon,
    required String label,
    required Color color,
  }) {
    final bool isSelected = _selectedMood == mood;

    return InkWell(
      borderRadius: BorderRadius.circular(30.r),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) =>
                const DailyCheckInScreen(),
          ),
        );
      },
      child: Column(
        children: [
          // Keep 56x56 fixed so tablet doesn't make
          // these buttons unnecessarily large.
          Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withOpacity(0.15),
              border: Border.all(
                color:
                    isSelected ? color : Colors.transparent,
                width: 2,
              ),
            ),
            child: Icon(
              icon,
              color: color,
              size: 26.r,
            ),
          ),

          SizedBox(height: 6.h),

          Text(
            label,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: isSelected
                  ? FontWeight.w700
                  : FontWeight.w400,
              color: isSelected
                  ? color
                  : AppColors.textLightGrey,
            ),
          ),
        ],
      ),
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
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 42.h,
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: AppColors.textGrey,
                  size: 18.r,
                ),

                SizedBox(width: 6.w),

                Expanded(
                  child: Text(
                    label,
                    maxLines: 2,
                    overflow:
                        TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      color: AppColors.textGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 8.h),

          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 23.sp,
              letterSpacing: -0.32,
              color: AppColors.textBlack,
            ),
          ),

          SizedBox(height: 2.h),

          Text(
            subtitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: subtitleColor,
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// FIXED SOBRIETY CIRCLE
// ============================================================
//
// Separate widget keeps the 140x140 visual size fixed.
// The actual days value is passed through inherited context
// using the parent state, so no UI structure change is needed.
//

class _FixedSobrietyCircle extends StatelessWidget {
  const _FixedSobrietyCircle();

  @override
  Widget build(BuildContext context) {
    final state =
        context.findAncestorStateOfType<_HomeScreenState>()!;

    final days = state._daysSober;

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 140,
          height: 140,
          child: CircularProgressIndicator(
            value: ((days % 30) / 30).clamp(0.02, 1.0),
            strokeWidth: 18,
            strokeCap: StrokeCap.round,
            backgroundColor:
                AppColors.progressBarBackground,
            valueColor:
                const AlwaysStoppedAnimation<Color>(
              AppColors.primary,
            ),
          ),
        ),

        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$days',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36.sp,
                color: AppColors.textBlack,
              ),
            ),
            Text(
              days == 1 ? 'DAY' : 'DAYS',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
                letterSpacing: 1.4,
                color: AppColors.textBlack,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TaskItem {
  final String label;

  const _TaskItem({
    required this.label,
  });
}
