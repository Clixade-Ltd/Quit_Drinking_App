import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../services/home_dashboard_service.dart';
import '../../../services/premium_service.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen>
    with WidgetsBindingObserver {
  final HomeDashboardService _service =
      HomeDashboardService.instance;

  Timer? _refreshTimer;

  bool _isLoading = true;
  bool _isPremium = false;

  int _daysSober = 0;
  double _moneySaved = 0;
  double _drinksAvoided = 0;

  List<Map<String, dynamic>> _moneyChart = [];
  List<Map<String, dynamic>> _moodChart = [];
  List<Map<String, dynamic>> _cravingChart = [];

  Map<String, int> _calendarData = {};

  List<Map<String, dynamic>> _milestones = [];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    _loadStats();

    _refreshTimer = Timer.periodic(
      const Duration(seconds: 2),
          (_) => _loadStats(silent: true),
    );
  }

  @override
  void dispose() {
    _refreshTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(
      AppLifecycleState state,
      ) {
    if (state == AppLifecycleState.resumed) {
      _loadStats(silent: true);
    }
  }

  Future<void> _loadStats({
    bool silent = false,
  }) async {
    try {
      final stats = await _service.getStats();

      final days = await _service.getDaysSober();

      final moneyChart =
      await _service.getWeeklyMoneySaved();

      final moodChart =
      await _service.getWeeklyMoodData();

      final cravingChart =
      await _service.getWeeklyCravingData();

      final calendar =
      await _service.getSoberCalendarData();

      final milestones =
      await _service.getHealthMilestones();

      final isPremium =
      await PremiumService.instance.isPremium();

      if (!mounted) return;

      setState(() {
        _daysSober = days;

        _moneySaved =
            (stats['moneySaved'] ?? 0).toDouble();

        _drinksAvoided =
            (stats['drinksAvoided'] ?? 0).toDouble();

        _moneyChart = moneyChart;
        _moodChart = moodChart;
        _cravingChart = cravingChart;
        _calendarData = calendar;
        _milestones = milestones;
        _isPremium = isPremium;

        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;

      if (!silent) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (_isLoading) {
      return const Scaffold(
        backgroundColor: AppColors.dashboardBackground,
        body: Center(
          child: CircularProgressIndicator(
            color: AppColors.primary,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.dashboardBackground,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(l10n),

            Expanded(
              child: RefreshIndicator(
                color: AppColors.primary,
                onRefresh: () => _loadStats(),
                child: SingleChildScrollView(
                  physics:
                  const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(
                    16,
                    8,
                    16,
                    32,
                  ),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      _buildTopStats(l10n),

                      const SizedBox(height: 14),

                      _buildMoneyChart(l10n),

                      const SizedBox(height: 10),

                      _buildMoodChart(),

                      const SizedBox(height: 10),

                      _buildCravingChart(),

                      const SizedBox(height: 10),

                      _buildMilestones(l10n),

                      const SizedBox(height: 10),

                      _buildCalendar(l10n),
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

  // =========================================================
  // APP BAR
  // =========================================================

  Widget _buildAppBar(AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        16,
        10,
        16,
        12,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  l10n.myProgress,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppColors.textBlack,
                  ),
                ),
              ),

              Container(
                height: 36,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color:
                  AppColors.white.withOpacity(0.35),
                  borderRadius:
                  BorderRadius.circular(9),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildPeriodButton(
                      l10n.weekLabel,
                      selected: true,
                    ),
                    _buildPeriodButton(
                      l10n.monthLabel,
                      selected: false,
                    ),
                    _buildPeriodButton(
                      l10n.allLabel,
                      selected: false,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Container(
            height: 1,
            color: AppColors.outlineGrey,
          ),
        ],
      ),
    );
  }

  Widget _buildPeriodButton(
      String text, {
        required bool selected,
      }) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected
            ? AppColors.primary
            : Colors.transparent,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 13,
          color: selected
              ? AppColors.white
              : AppColors.textGrey,
        ),
      ),
    );
  }

  // =========================================================
  // TOP STATS
  // =========================================================

  Widget _buildTopStats(AppLocalizations l10n) {
    return Row(
      children: [
        Expanded(
          child: _statCard(
            label: l10n.daysSoberStatLabel,
            value: _daysSober.toString(),
          ),
        ),

        const SizedBox(width: 8),

        Expanded(
          child: _statCard(
            label: l10n.savedStatLabel,
            value:
            '\$${_formatMoney(_moneySaved)}',
          ),
        ),

        const SizedBox(width: 8),

        Expanded(
          child: _statCard(
            label: l10n.avoidedStatLabel,
            value:
            _formatDecimal(_drinksAvoided),
          ),
        ),
      ],
    );
  }

  Widget _statCard({
    required String label,
    required String value,
  }) {
    return Container(
      height: 102,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.outlineGrey,
          width: 0.7,
        ),
      ),
      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              height: 1.2,
              color: AppColors.textGrey,
            ),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // MONEY CHART
  // =========================================================

  Widget _buildMoneyChart(AppLocalizations l10n) {
    final values = _moneyChart
        .map(
          (e) =>
      (e['value'] as num?)?.toDouble() ?? 0,
    )
        .toList();

    final maxValue = values.isEmpty
        ? 1.0
        : values.fold<double>(
      0,
          (max, value) =>
      value > max ? value : max,
    );

    final chartMax =
    maxValue <= 0 ? 1.0 : maxValue;

    return _chartCard(
      padding: const EdgeInsets.fromLTRB(
        14,
        14,
        14,
        12,
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Text(
            l10n.moneySaved,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColors.textBlack,
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 82,
            child: Row(
              crossAxisAlignment:
              CrossAxisAlignment.end,
              children: [
                for (int i = 0;
                i < _moneyChart.length;
                i++) ...[
                  if (i != 0)
                    const SizedBox(width: 6),

                  Expanded(
                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Align(
                            alignment:
                            Alignment.bottomCenter,
                            child:
                            AnimatedContainer(
                              duration:
                              const Duration(
                                milliseconds: 350,
                              ),
                              width:
                              double.infinity,
                              height: maxValue <= 0
                                  ? 5
                                  : 55 *
                                  (((_moneyChart[i]
                                  ['value']
                                  as num?)
                                      ?.toDouble() ??
                                      0) /
                                      chartMax),
                              decoration:
                              BoxDecoration(
                                color: AppColors
                                    .primary
                                    .withOpacity(
                                  _moneyChart[i]
                                  ['hasData'] ==
                                      true
                                      ? 1
                                      : 0.12,
                                ),
                                borderRadius:
                                const BorderRadius
                                    .vertical(
                                  top:
                                  Radius.circular(
                                    5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          _moneyChart[i]['label']
                              .toString(),
                          style: const TextStyle(
                            fontSize: 11,
                            color: AppColors
                                .textLightGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // MOOD CHART
  // =========================================================

  Widget _buildMoodChart() {
    return _gatedChart(
      isPremium: _isPremium,
      chart: _chartCard(
        padding:
        const EdgeInsets.fromLTRB(
          14,
          14,
          14,
          12,
        ),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.moodTrends,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColors.textBlack,
              ),
            ),

            const SizedBox(height: 10),

            _InteractiveMoodBarChart(
              data: _moodChart,
            ),
          ],
        ),
      ),
    );
  }

  // =========================================================
  // CRAVINGS PATTERN
  // =========================================================

  Widget _buildCravingChart() {
    return _gatedChart(
      isPremium: _isPremium,
      chart: _chartCard(
        padding:
        const EdgeInsets.fromLTRB(
          14,
          14,
          14,
          12,
        ),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!
                  .cravingsPattern,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: AppColors.textBlack,
              ),
            ),

            const SizedBox(height: 10),

            _InteractiveCravingBarChart(
              data: _cravingChart,
            ),
          ],
        ),
      ),
    );
  }

  // =========================================================
  // PREMIUM GATING
  // =========================================================

  Widget _gatedChart({
    required Widget chart,
    required bool isPremium,
  }) {
    final l10n = AppLocalizations.of(context)!;

    if (isPremium) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: chart,
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _showPremiumPaywall,
        child: Stack(
          children: [
            chart,

            Positioned.fill(
              child: Container(
                color:
                AppColors.white.withOpacity(0.58),
                child: BackdropFilter(
                  filter:
                  ImageFilter.blur(
                    sigmaX: 1.5,
                    sigmaY: 1.5,
                  ),
                  child: Container(
                    color:
                    Colors.white.withOpacity(0.10),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 14,
              right: 14,
              child: Container(
                padding:
                const EdgeInsets.symmetric(
                  horizontal: 9,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                  BorderRadius.circular(4),
                ),
                child: Text(
                  l10n.premiumBadgeLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),

            Positioned.fill(
              child: Center(
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                    BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color:
                        Color(0x12000000),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize:
                    MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.lock_outline,
                        size: 17,
                        color:
                        AppColors.primary,
                      ),

                      const SizedBox(width: 7),

                      Text(
                        l10n.unlockLabel,
                        style: const TextStyle(
                          fontWeight:
                          FontWeight.w700,
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
          ],
        ),
      ),
    );
  }

  void _showPremiumPaywall() {
    final l10n = AppLocalizations.of(context)!;

    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          title: Text(
            l10n.unlockFullStats,
            style: const TextStyle(
              color: AppColors.textBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          content: Text(
            l10n.premiumStatsMessage,
            style: const TextStyle(
              color: AppColors.textGrey,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(),
              child: Text(
                l10n.maybeLater,
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context).pop();

                // TODO: navigate to
                // PremiumPlanScreen once its route
                // is reachable from here.
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

  // =========================================================
  // HEALTH MILESTONES
  // =========================================================

  Widget _buildMilestones(
      AppLocalizations l10n,
      ) {
    if (_milestones.isEmpty) {
      return _emptyCard(
        l10n.healthMilestonesWillAppear,
      );
    }

    final sorted = [..._milestones];

    sorted.sort(
          (a, b) =>
          ((a['day'] as num?)?.toInt() ?? 0)
              .compareTo(
            (b['day'] as num?)?.toInt() ?? 0,
          ),
    );

    int nextIndex = -1;

    for (int i = 0;
    i < sorted.length;
    i++) {
      final day =
          (sorted[i]['day'] as num?)?.toInt() ??
              0;

      if (day > _daysSober) {
        nextIndex = i;
        break;
      }
    }

    return _chartCard(
      padding: const EdgeInsets.fromLTRB(
        14,
        14,
        14,
        2,
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Text(
            l10n.healthMilestones,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColors.textBlack,
            ),
          ),

          const SizedBox(height: 12),

          for (int i = 0;
          i < sorted.length;
          i++)
            _milestoneItem(
              milestone: sorted[i],
              isLast:
              i == sorted.length - 1,
              isNext:
              i == nextIndex,
              l10n: l10n,
            ),
        ],
      ),
    );
  }

  Widget _milestoneItem({
    required Map<String, dynamic> milestone,
    required bool isLast,
    required bool isNext,
    required AppLocalizations l10n,
  }) {
    final day =
        (milestone['day'] as num?)?.toInt() ?? 0;

    final title =
        milestone['title']?.toString() ?? '';

    final description =
        milestone['description']?.toString() ?? '';

    final reached = day <= _daysSober;

    final Color iconColor;

    if (reached) {
      iconColor = Colors.green;
    } else if (isNext) {
      iconColor = Colors.orange;
    } else {
      iconColor = AppColors.textLightGrey;
    }

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 30,
            child: Column(
              children: [
                Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color:
                    iconColor.withOpacity(0.10),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    reached
                        ? Icons.check
                        : Icons.access_time_rounded,
                    size: 14,
                    color: iconColor,
                  ),
                ),

                if (!isLast)
                  Expanded(
                    child: Container(
                      width: 1.5,
                      margin:
                      const EdgeInsets.only(
                        top: 4,
                        bottom: 4,
                      ),
                      color:
                      AppColors.outlineGrey,
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Padding(
              padding:
              const EdgeInsets.only(
                bottom: 14,
              ),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style:
                          const TextStyle(
                            fontWeight:
                            FontWeight.w700,
                            fontSize: 14,
                            color:
                            AppColors
                                .textBlack,
                          ),
                        ),
                      ),

                      const SizedBox(width: 6),

                      Text(
                        l10n.dayNumber(day),
                        style: TextStyle(
                          fontWeight:
                          FontWeight.w600,
                          fontSize: 11,
                          color: iconColor,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 3),

                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      height: 1.35,
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
    );
  }

  // =========================================================
  // SOBER CALENDAR
  // =========================================================

  Widget _buildCalendar(
      AppLocalizations l10n,
      ) {
    final today = DateTime.now();

    final firstDay = DateTime(
      today.year,
      today.month,
      today.day,
    ).subtract(
      Duration(days: today.weekday - 1),
    );

    final dates = List.generate(
      42,
          (index) =>
          firstDay.add(
            Duration(days: index),
          ),
    );

    final materialLocalizations =
    MaterialLocalizations.of(context);

    final narrowWeekdays =
        materialLocalizations.narrowWeekdays;

    // MaterialLocalizations weekday order is
    // Sunday -> Saturday. Calendar here starts
    // Monday, so reorder them.
    final mondayFirstWeekdays = [
      narrowWeekdays[1],
      narrowWeekdays[2],
      narrowWeekdays[3],
      narrowWeekdays[4],
      narrowWeekdays[5],
      narrowWeekdays[6],
      narrowWeekdays[0],
    ];

    return _chartCard(
      padding: const EdgeInsets.fromLTRB(
        14,
        14,
        14,
        12,
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Text(
            materialLocalizations.formatMonthYear(
              today,
            ),
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColors.textBlack,
            ),
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              for (final weekday
              in mondayFirstWeekdays)
                _WeekLabel(
                  weekday,
                ),
            ],
          ),

          const SizedBox(height: 5),

          GridView.builder(
            shrinkWrap: true,
            physics:
            const NeverScrollableScrollPhysics(),
            itemCount: dates.length,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              crossAxisSpacing: 7,
              mainAxisSpacing: 6,
              childAspectRatio: 1.15,
            ),
            itemBuilder:
                (context, index) {
              final date = dates[index];

              final key = _dateKey(date);

              final status =
                  _calendarData[key] ?? 0;

              final isToday =
                  date.year == today.year &&
                      date.month == today.month &&
                      date.day == today.day;

              return _calendarDay(
                date: date,
                status: status,
                isToday: isToday,
              );
            },
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              _calendarLegend(
                color: Colors.green,
                label: l10n.soberLabel,
              ),

              const SizedBox(width: 12),

              _calendarLegend(
                color: Colors.redAccent,
                label: l10n.slipLabel,
              ),

              const SizedBox(width: 12),

              _calendarLegend(
                color:
                AppColors.textLightGrey,
                label: l10n.noDataLabel,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _calendarLegend({
    required Color color,
    required String label,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),

        const SizedBox(width: 5),

        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            color:
            AppColors.textLightGrey,
          ),
        ),
      ],
    );
  }

  Widget _calendarDay({
    required DateTime date,
    required int status,
    required bool isToday,
  }) {
    Color background;
    Color textColor;

    if (status == 1) {
      background =
          Colors.green.withOpacity(0.18);
      textColor = Colors.green.shade700;
    } else if (status == 2) {
      background =
          Colors.redAccent.withOpacity(0.16);
      textColor = Colors.redAccent;
    } else {
      background =
          AppColors.journalChipBackground;
      textColor = AppColors.textLightGrey;
    }

    return Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius:
        BorderRadius.circular(6),
        border: isToday
            ? Border.all(
          color: AppColors.primary,
          width: 1.5,
        )
            : null,
      ),
      alignment: Alignment.center,
      child: Text(
        '${date.day}',
        style: TextStyle(
          fontWeight: isToday
              ? FontWeight.w800
              : FontWeight.w600,
          fontSize: 11,
          color: textColor,
        ),
      ),
    );
  }

  // =========================================================
  // HELPERS
  // =========================================================

  Widget _chartCard({
    required Widget child,
    EdgeInsetsGeometry padding =
    const EdgeInsets.all(14),
  }) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius:
        BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.outlineGrey,
          width: 0.7,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 12,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: child,
    );
  }

  Widget _emptyCard(String text) {
    return _chartCard(
      child: Center(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              color:
              AppColors.textLightGrey,
            ),
          ),
        ),
      ),
    );
  }

  String _dateKey(DateTime date) {
    return '${date.year}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  String _formatMoney(double value) {
    return value.toStringAsFixed(0);
  }

  String _formatDecimal(double value) {
    if (value == value.roundToDouble()) {
      return value.toInt().toString();
    }

    return value.toStringAsFixed(1);
  }
}

// =============================================================
// WEEK LABEL
// =============================================================

class _WeekLabel extends StatelessWidget {
  final String text;

  const _WeekLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 11,
            color:
            AppColors.textLightGrey,
          ),
        ),
      ),
    );
  }
}

// =============================================================
// INTERACTIVE MOOD BAR CHART
// =============================================================

class _InteractiveMoodBarChart
    extends StatefulWidget {
  final List<Map<String, dynamic>> data;

  const _InteractiveMoodBarChart({
    required this.data,
  });

  @override
  State<_InteractiveMoodBarChart> createState() =>
      _InteractiveMoodBarChartState();
}

class _InteractiveMoodBarChartState
    extends State<_InteractiveMoodBarChart> {
  int? _selectedIndex;

  Color _barColor(int mood) {
    switch (mood) {
      case 3:
      case 4:
        return Colors.green;

      case 2:
        return Colors.amber;

      case 0:
      case 1:
      default:
        return Colors.red;
    }
  }

  String _moodLabel(
      AppLocalizations l10n,
      int mood,
      ) {
    switch (mood) {
      case 0:
        return l10n.moodBad;

      case 1:
        return l10n.moodLow;

      case 2:
        return l10n.moodOkay;

      case 3:
        return l10n.moodGood;

      case 4:
        return l10n.moodGreat;

      default:
        return l10n.noDataLabel;
    }
  }

  String _moodEmoji(int mood) {
    const emojis = [
      '😞',
      '🙁',
      '😐',
      '🙂',
      '😄',
    ];

    if (mood < 0 ||
        mood >= emojis.length) {
      return '—';
    }

    return emojis[mood];
  }

  @override
  Widget build(BuildContext context) {
    final l10n =
    AppLocalizations.of(context)!;

    final selected =
    _selectedIndex != null &&
        _selectedIndex! <
            widget.data.length
        ? widget.data[_selectedIndex!]
        : null;

    final selectedMood =
    (selected?['moodIndex'] as num?)
        ?.toInt();

    final selectedDate =
    selected?['date'] as DateTime?;

    final dateFormatter =
    MaterialLocalizations.of(context);

    return Column(
      children: [
        SizedBox(
          height: 34,
          child: selectedMood != null
              ? Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Text(
                _moodEmoji(
                  selectedMood,
                ),
                style:
                const TextStyle(
                  fontSize: 20,
                ),
              ),

              const SizedBox(
                width: 7,
              ),

              Text(
                _moodLabel(
                  l10n,
                  selectedMood,
                ),
                style:
                const TextStyle(
                  fontWeight:
                  FontWeight.w700,
                  fontSize: 13,
                  color:
                  AppColors
                      .textBlack,
                ),
              ),

              if (selectedDate !=
                  null) ...[
                const SizedBox(
                  width: 7,
                ),

                Text(
                  dateFormatter
                      .formatShortDate(
                    selectedDate,
                  ),
                  style:
                  const TextStyle(
                    fontSize: 11,
                    color: AppColors
                        .textLightGrey,
                  ),
                ),
              ],
            ],
          )
              : const SizedBox.shrink(),
        ),

        SizedBox(
          height: 125,
          child: Row(
            crossAxisAlignment:
            CrossAxisAlignment.end,
            children: List.generate(
              widget.data.length,
                  (index) {
                final item =
                widget.data[index];

                final mood =
                (item['moodIndex']
                as num?)
                    ?.toInt();

                final hasData =
                    item['hasData'] == true &&
                        mood != null;

                final value = hasData
                    ? mood!.toDouble() + 1
                    : 0.08;

                final isSelected =
                    _selectedIndex == index;

                return Expanded(
                  child: GestureDetector(
                    behavior:
                    HitTestBehavior.opaque,
                    onTap: hasData
                        ? () {
                      setState(() {
                        _selectedIndex =
                        isSelected
                            ? null
                            : index;
                      });
                    }
                        : null,
                    child: Padding(
                      padding:
                      EdgeInsets.only(
                        left:
                        index == 0
                            ? 0
                            : 3,
                        right: index ==
                            widget.data
                                .length -
                                1
                            ? 0
                            : 3,
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Align(
                              alignment:
                              Alignment
                                  .bottomCenter,
                              child:
                              AnimatedContainer(
                                duration:
                                const Duration(
                                  milliseconds:
                                  250,
                                ),
                                width:
                                double.infinity,
                                height:
                                88 *
                                    (value /
                                        5),
                                decoration:
                                BoxDecoration(
                                  color: hasData
                                      ? _barColor(
                                    mood!,
                                  )
                                      : AppColors
                                      .textLightGrey
                                      .withOpacity(
                                    0.18,
                                  ),
                                  borderRadius:
                                  const BorderRadius
                                      .vertical(
                                    top:
                                    Radius
                                        .circular(
                                      5,
                                    ),
                                  ),
                                  border:
                                  isSelected
                                      ? Border.all(
                                    color:
                                    AppColors
                                        .primary,
                                    width:
                                    2,
                                  )
                                      : null,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 6,
                          ),

                          Text(
                            item['label']
                                .toString(),
                            style:
                            const TextStyle(
                              fontSize: 10,
                              color: AppColors
                                  .textLightGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

// =============================================================
// INTERACTIVE CRAVING BAR CHART
// =============================================================

class _InteractiveCravingBarChart
    extends StatefulWidget {
  final List<Map<String, dynamic>> data;

  const _InteractiveCravingBarChart({
    required this.data,
  });

  @override
  State<_InteractiveCravingBarChart> createState() =>
      _InteractiveCravingBarChartState();
}

class _InteractiveCravingBarChartState
    extends State<_InteractiveCravingBarChart> {
  int? _selectedIndex;

  Color _barColor(int level) {
    switch (level) {
      case 3:
        return Colors.green;

      case 2:
        return Colors.amber;

      case 1:
        return Colors.red;

      case 0:
      default:
        return AppColors.textLightGrey;
    }
  }

  String _cravingLabel(
      AppLocalizations l10n,
      int level,
      ) {
    switch (level) {
      case 3:
        return l10n.cravingStrong;

      case 2:
        return l10n.cravingMedium;

      case 1:
        return l10n.cravingLow;

      case 0:
      default:
        return l10n.cravingNone;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n =
    AppLocalizations.of(context)!;

    final selected =
    _selectedIndex != null &&
        _selectedIndex! <
            widget.data.length
        ? widget.data[_selectedIndex!]
        : null;

    final selectedLevel =
    (selected?['cravingLevel']
    as num?)
        ?.toInt();

    final selectedDate =
    selected?['date'] as DateTime?;

    final dateFormatter =
    MaterialLocalizations.of(context);

    return Column(
      children: [
        SizedBox(
          height: 34,
          child: selectedLevel != null
              ? Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Text(
                _cravingLabel(
                  l10n,
                  selectedLevel,
                ),
                style:
                const TextStyle(
                  fontWeight:
                  FontWeight.w700,
                  fontSize: 13,
                  color:
                  AppColors
                      .textBlack,
                ),
              ),

              if (selectedDate !=
                  null) ...[
                const SizedBox(
                  width: 7,
                ),

                Text(
                  dateFormatter
                      .formatShortDate(
                    selectedDate,
                  ),
                  style:
                  const TextStyle(
                    fontSize: 11,
                    color: AppColors
                        .textLightGrey,
                  ),
                ),
              ],
            ],
          )
              : const SizedBox.shrink(),
        ),

        SizedBox(
          height: 125,
          child: Row(
            crossAxisAlignment:
            CrossAxisAlignment.end,
            children: List.generate(
              widget.data.length,
                  (index) {
                final item =
                widget.data[index];

                final level =
                (item['cravingLevel']
                as num?)
                    ?.toInt();

                final hasData =
                    item['hasData'] == true &&
                        level != null;

                final value = hasData
                    ? level!.toDouble() +
                    0.35
                    : 0.08;

                final isSelected =
                    _selectedIndex == index;

                return Expanded(
                  child: GestureDetector(
                    behavior:
                    HitTestBehavior.opaque,
                    onTap: hasData
                        ? () {
                      setState(() {
                        _selectedIndex =
                        isSelected
                            ? null
                            : index;
                      });
                    }
                        : null,
                    child: Padding(
                      padding:
                      EdgeInsets.only(
                        left:
                        index == 0
                            ? 0
                            : 3,
                        right: index ==
                            widget.data
                                .length -
                                1
                            ? 0
                            : 3,
                      ),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Align(
                              alignment:
                              Alignment
                                  .bottomCenter,
                              child:
                              AnimatedContainer(
                                duration:
                                const Duration(
                                  milliseconds:
                                  250,
                                ),
                                width:
                                double.infinity,
                                height:
                                88 *
                                    (value /
                                        3.35),
                                decoration:
                                BoxDecoration(
                                  color: hasData
                                      ? _barColor(
                                    level!,
                                  )
                                      : AppColors
                                      .textLightGrey
                                      .withOpacity(
                                    0.18,
                                  ),
                                  borderRadius:
                                  const BorderRadius
                                      .vertical(
                                    top:
                                    Radius
                                        .circular(
                                      5,
                                    ),
                                  ),
                                  border:
                                  isSelected
                                      ? Border.all(
                                    color:
                                    AppColors
                                        .primary,
                                    width:
                                    2,
                                  )
                                      : null,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 6,
                          ),

                          Text(
                            item['label']
                                .toString(),
                            style:
                            const TextStyle(
                              fontSize: 10,
                              color: AppColors
                                  .textLightGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}