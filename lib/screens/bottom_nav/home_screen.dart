import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/premium_plan_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import '../../constants/app_colors.dart';
import '../../services/daily_check_in_service.dart';
import '../../services/gemini_service.dart';
import '../../services/home_dashboard_service.dart';
import '../chat_screen/recovery_coach_chat_screen.dart';
import '../cravings/craving_screen.dart';
import '../daily_check_in/daily_check_in_screen.dart';
import 'package:new_quit_drinking_app/screens/weekly_report/weekly_report_screen.dart';
import '../../services/premium_service.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

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

  // DRINKS AVOIDED HERE
  String _formatDrinksAvoided(num? value) {
    if (value == null) return '0';

    final number = value.toDouble();

    if (number == number.roundToDouble()) {
      return number.toInt().toString();
    }

    return number.toStringAsFixed(2);
  }

  // ============================================================
  // MAP DAILY CHECK-IN MOOD (5 levels) -> HOME MOOD BUCKET (3 levels)
  // ============================================================
  //
  // DailyCheckInScreen stores moodIndex as one of:
  //   0 = Bad, 1 = Low, 2 = Okay, 3 = Good, 4 = Great
  //
  // The home screen only shows 3 buckets, so:
  //   Bad, Low        -> 'tough'
  //   Okay            -> 'okay'
  //   Good, Great     -> 'good'
  //
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
    // TODAY'S DAILY CHECK-IN — used to drive the home mood row
    // ============================================================
    //
    // If today's check-in exists, its 5-level moodIndex is mapped
    // down to the 3-level bucket the home screen displays. If no
    // check-in exists yet today, fall back to whatever quick-mood
    // was already stored via service.getTodayMood().
    //
    // ============================================================

    final todayCheckIn = await DailyCheckInService.instance.getToday();

    final resolvedMood = todayCheckIn != null
        ? _mapCheckInMoodToHomeMood(todayCheckIn.moodIndex)
        : mood;

    // ============================================================
    // LOAD SAVED AI PERSONALIZED PLAN
    // ============================================================
    //
    // This plan is generated once during onboarding.
    //
    // We ONLY use it here for the welcome message.
    //
    // Motivation + health score now come from the DAILY AI update.
    //
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
    //
    // If today's update already exists:
    //     use it
    //
    // If today's update does NOT exist:
    //     ask Gemini for a new motivation + health score
    //     save it for today
    //
    // This means Gemini is called only once per day.
    //
    // ============================================================

    String? motivationQuote;
    num? healthScore;

    final todayAIUpdate = await service.getTodayAIUpdate();

    if (todayAIUpdate != null) {
      // ----------------------------------------------------------
      // TODAY'S UPDATE ALREADY EXISTS
      // ----------------------------------------------------------

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
      // ----------------------------------------------------------
      // NO UPDATE FOR TODAY
      // ----------------------------------------------------------
      //
      // Generate a completely new daily update.
      //
      // ----------------------------------------------------------

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
          yesterdayCheckIn.stayedOnTrack
              ? 'No'
              : 'Yes';

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
          'motivations':
          profile['quitReasons'] ?? [],

          'daysSober': days,

          // Current streak
          'currentStreak': days,

          'moneySaved':
          stats['moneySaved'] ?? 0,

          'drinksAvoided':
          stats['drinksAvoided'] ?? 0,

          // Yesterday's check-in
          'yesterdayMood': yesterdayMood,
          'yesterdayDidDrink': yesterdayDidDrink,
          'yesterdayCravingLevel':
          yesterdayCravingLevel,
          'yesterdayNote': yesterdayNote,
        };

        // --------------------------------------------------------
        // SAVE TODAY'S UPDATE
        // --------------------------------------------------------

        final dailyUpdate =
        await GeminiService.instance.generateDailyUpdate(
          userData: dailyUserData,
          languageCode: Localizations.localeOf(context).languageCode,
        );

        await service.saveDailyAIUpdate(dailyUpdate);

        // --------------------------------------------------------
        // READ MOTIVATION
        // --------------------------------------------------------

        final rawQuote = dailyUpdate['motivationQuote'];

        if (rawQuote != null &&
            rawQuote.toString().trim().isNotEmpty) {
          motivationQuote = rawQuote.toString().trim();
        }

        // --------------------------------------------------------
        // READ HEALTH SCORE
        // --------------------------------------------------------

        final rawHealthScore = dailyUpdate['healthScore'];

        if (rawHealthScore is num) {
          healthScore = rawHealthScore;
        } else if (rawHealthScore != null) {
          healthScore = num.tryParse(
            rawHealthScore.toString(),
          );
        }
      } catch (e) {
        // --------------------------------------------------------
        // FALLBACK
        // --------------------------------------------------------
        //
        // If Gemini fails, don't stop the dashboard from loading.
        // The dashboard will simply use the fallback motivation
        // and health score below.
        //
        // --------------------------------------------------------

        debugPrint(
          'Daily AI update failed: $e',
        );
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

      // AI-generated data
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
  //
  // Tapping the (now-truncated) welcome text on Card 1 opens this
  // dialog, showing the full AI welcome message centered on screen.
  //
  // ============================================================

  void _showWelcomeMessageDialog(BuildContext context) {
    if (_welcomeMessage == null || _welcomeMessage!.isEmpty) return;
    final l10n = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _welcomeMessage!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppColors.textBlack,
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  borderRadius: BorderRadius.circular(9999),
                  onTap: () => Navigator.of(dialogContext).pop(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD7E5E2),
                      borderRadius: BorderRadius.circular(9999),
                    ),
                    child: Text(
                      l10n.close,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
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
      MaterialPageRoute(builder: (_) => const WeeklyReportScreen()),
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
            style: const TextStyle(
              color: AppColors.textBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          content: Text(
            l10n.unlockWeeklyReportsMessage,
            style: const TextStyle(color: AppColors.textGrey),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.maybeLater),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const PremiumPlanScreen(),
                  ),
                );
              },
              child: Text(
                l10n.upgrade,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
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
        : 'there'; // TODO: agar "there" ko bhi localize karna hai to l10n.thereFallback jaisi key add kar dena

    return Scaffold(
      backgroundColor: AppColors.dashboardBackground,
      body: SafeArea(
        child: Column(
          children: [
            // APP BAR — "Quit " / "Drinking" ko brand name treat kiya hai,
            // translate nahi kiya (previous message mein discuss hua tha)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: SizedBox(
                height: 44,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 23,
                          ),
                          children: [
                            TextSpan(
                              text: 'Quit ',
                              style: TextStyle(color: AppColors.textBlack),
                            ),
                            TextSpan(
                              text: 'Drinking',
                              style: TextStyle(color: AppColors.primary),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const PremiumPlanScreen(),
                            ),
                          );
                        },
                        borderRadius: BorderRadius.circular(999),
                        child: Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            FontAwesomeIcons.crown,
                            color: Colors.amber,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 2, 20, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.primary, width: 1.5),
                            color: AppColors.iconBackground,
                            image: _photoBytes != null
                                ? DecorationImage(
                              image: MemoryImage(_photoBytes!),
                              fit: BoxFit.cover,
                            )
                                : null,
                          ),
                          child: _photoBytes == null
                              ? const Icon(
                            Icons.person_outline,
                            color: AppColors.primary,
                            size: 22,
                          )
                              : null,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            '${_greeting(l10n)}, $displayName',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: AppColors.textBlack,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 4),
                    const SizedBox(height: 10),

                    // CARD 1 — SOBRIETY
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(48),
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
                              onTap: () => _showWelcomeMessageDialog(context),
                              child: Text(
                                _welcomeMessage!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: AppColors.textBlack,
                                ),
                              ),
                            ),
                            const SizedBox(height: 28),
                          ],

                          SizedBox(
                            width: 140,
                            height: 140,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 140,
                                  height: 140,
                                  child: CircularProgressIndicator(
                                    value: ((_daysSober % 30) / 30).clamp(0.02, 1.0),
                                    strokeWidth: 18,
                                    strokeCap: StrokeCap.round,
                                    backgroundColor: AppColors.progressBarBackground,
                                    valueColor: const AlwaysStoppedAnimation<Color>(
                                      AppColors.primary,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '$_daysSober',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 36,
                                        color: AppColors.textBlack,
                                      ),
                                    ),
                                    Text(
                                      l10n.daysCapsLabel,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        letterSpacing: 1.4,
                                        color: AppColors.textBlack,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 28),

                          Text(
                            l10n.youAreDoingGreat,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: AppColors.textBlack,
                            ),
                          ),

                          const SizedBox(height: 15),

                          InkWell(
                            borderRadius: BorderRadius.circular(9999),
                            onTap: () => _shareMilestone(l10n),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFD7E5E2),
                                borderRadius: BorderRadius.circular(9999),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.share_outlined,
                                    size: 16,
                                    color: AppColors.textGrey,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    l10n.shareMilestone,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: AppColors.textGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // WEEKLY REPORT CARD (Mondays only)
                    if (DateTime.now().weekday == DateTime.monday) ...[
                      InkWell(
                        borderRadius: BorderRadius.circular(24),
                        onTap: _openWeeklyReport,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(24),
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
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0.18),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.insights_outlined,
                                  color: AppColors.white,
                                  size: 22,
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      l10n.weeklyReportReadyTitle,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      l10n.weeklyReportReadySubtitle,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: AppColors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],

                    // CARD 2 — MOOD
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(48),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x0A000000),
                            blurRadius: 30,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.howAreYouFeeling,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.textBlack,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
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
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // STAT GRID
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 140 / 145,
                      children: [
                        _buildStatCard(
                          icon: Icons.account_balance_wallet_outlined,
                          label: l10n.moneySaved,
                          value: '\$${_stats['moneySaved'] ?? 0}',
                          subtitle: l10n.estimated,
                        ),
                        _buildStatCard(
                          icon: Icons.local_fire_department_outlined,
                          label: l10n.caloriesSaved,
                          value: '${_stats['caloriesAvoided'] ?? 0}',
                          subtitle: l10n.estimated,
                        ),
                        _buildStatCard(
                          icon: Icons.favorite_border,
                          label: l10n.healthScore,
                          value: '${_healthScore ?? 0}/100',
                          subtitle: l10n.aiGenerated,
                        ),
                        _buildStatCard(
                          icon: Icons.water_drop_outlined,
                          label: l10n.drinksAvoided,
                          value: _formatDrinksAvoided(_stats['drinksAvoided']),
                          subtitle: l10n.estimated,
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // TODAY'S MOTIVATION
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x0A000000),
                            blurRadius: 20,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.format_quote,
                                color: AppColors.textBlack,
                                size: 20,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                l10n.todaysMotivation,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: AppColors.textBlack,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            (_motivationQuote != null && _motivationQuote!.isNotEmpty)
                                ? _motivationQuote!
                                : l10n.defaultMotivationQuote,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.5,
                              color: AppColors.textGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // TALK TO COACH
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const RecoveryCoachChatScreen(),
                            ),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppColors.primary,
                          side: const BorderSide(
                            color: AppColors.primary,
                            width: 1,
                          ),
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.support_agent_outlined,
                              size: 19,
                            ),
                            const SizedBox(width: 7),
                            Text(
                              l10n.talkToCoach,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // CRAVING BUTTON
                    InkWell(
                      borderRadius: BorderRadius.circular(48),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const CravingScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDB7361),
                          borderRadius: BorderRadius.circular(32),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.emergency,
                              color: AppColors.white,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              l10n.havingACraving,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: AppColors.white,
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

  Widget _buildMoodButton({
    required String mood,
    required IconData icon,
    required String label,
    required Color color,
  }) {
    final bool isSelected = _selectedMood == mood;

    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const DailyCheckInScreen(),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

              // Every icon always has its tinted background —
              // selection adds the ring border on top of that,
              // it doesn't create the background.
              color: color.withOpacity(0.15),

              border: Border.all(
                color: isSelected ? color : Colors.transparent,
                width: 2,
              ),
            ),
            child: Icon(
              icon,
              color: color,
              size: 26,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight:
              isSelected ? FontWeight.w700 : FontWeight.w400,
              color:
              isSelected ? color : AppColors.textLightGrey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required String label,
    required String value,
    required String subtitle,
    Color subtitleColor = AppColors.textLightGrey,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 42,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: AppColors.textGrey,
                  size: 18,
                ),

                const SizedBox(width: 6),

                Expanded(
                  child: Text(
                    label,
                    maxLines: 2,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: AppColors.textGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 23,
              letterSpacing: -0.32,
              color: AppColors.textBlack,
            ),
          ),

          const SizedBox(height: 2),

          Text(
            subtitle,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: subtitleColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _TaskItem {
  final String label;

  const _TaskItem({
    required this.label,
  });
}