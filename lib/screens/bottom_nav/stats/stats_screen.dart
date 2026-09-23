
import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../services/analytics_service.dart';
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

  // =========================================================
  // ANALYTICS / PERIOD
  // =========================================================

  String _selectedPeriod = 'week';

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

  // =========================================================
  // BUILD
  // =========================================================

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
        top: true,
        bottom: false,
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
                  padding: EdgeInsets.fromLTRB(
                    16.w,
                    8.h,
                    16.w,
                    32.h,
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      _buildTopStats(l10n),

                      SizedBox(height: 14.h),

                      _buildMoneyChart(l10n),

                      SizedBox(height: 10.h),

                      _buildMoodChart(),

                      SizedBox(height: 10.h),

                      _buildCravingChart(),

                      SizedBox(height: 10.h),

                      _buildMilestones(l10n),

                      SizedBox(height: 10.h),

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

  Widget _buildAppBar(
    AppLocalizations l10n,
  ) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        16.w,
        10.h,
        16.w,
        12.h,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  l10n.myProgress,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                    color: AppColors.textBlack,
                  ),
                ),
              ),

              Container(
                height: 36.h,
                padding: EdgeInsets.all(3.r),
                decoration: BoxDecoration(
                  color:
                      AppColors.white.withOpacity(0.35),
                  borderRadius:
                      BorderRadius.circular(9.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildPeriodButton(
                      l10n.weekLabel,
                      period: 'week',
                    ),
                    _buildPeriodButton(
                      l10n.monthLabel,
                      period: 'month',
                    ),
                    _buildPeriodButton(
                      l10n.allLabel,
                      period: 'all',
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 12.h),

          Container(
            height: 1.h,
            color: AppColors.outlineGrey,
          ),
        ],
      ),
    );
  }

  Widget _buildPeriodButton(
    String text, {
    required String period,
  }) {
    final selected =
        _selectedPeriod == period;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        if (_selectedPeriod == period) {
          return;
        }

        setState(() {
          _selectedPeriod = period;
        });

        await AnalyticsService.instance
            .statsPeriodChanged(period);
      },
      child: Container(
        height: 30.h,
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected
              ? AppColors.primary
              : Colors.transparent,
          borderRadius:
              BorderRadius.circular(7.r),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 13.sp,
            color: selected
                ? AppColors.white
                : AppColors.textGrey,
          ),
        ),
      ),
    );
  }

  // =========================================================
  // TOP STATS
  // =========================================================

  Widget _buildTopStats(
    AppLocalizations l10n,
  ) {
    return Row(
      children: [
        Expanded(
          child: _statCard(
            label: l10n.daysSoberStatLabel,
            value: _daysSober.toString(),
          ),
        ),

        SizedBox(width: 8.w),

        Expanded(
          child: _statCard(
            label: l10n.savedStatLabel,
            value:
                '\$${_formatMoney(_moneySaved)}',
          ),
        ),

        SizedBox(width: 8.w),

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
    height: 102.h,
    padding: EdgeInsets.symmetric(
      horizontal: 4.w,
      vertical: 8.h,
    ),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12.r),
      border: Border.all(
        color: AppColors.outlineGrey,
        width: 0.7,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20.sp,
            color: AppColors.primary,
          ),
        ),

        SizedBox(height: 2.h),

        SizedBox(
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              label,
              maxLines: 1,
              softWrap: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
                color: AppColors.textGrey,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

  // =========================================================
  // MONEY CHART
  // =========================================================

  Widget _buildMoneyChart(
    AppLocalizations l10n,
  ) {
    final values = _moneyChart
        .map(
          (e) =>
              (e['value'] as num?)
                  ?.toDouble() ??
              0,
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
      padding: EdgeInsets.fromLTRB(
        14.w,
        14.h,
        14.w,
        12.h,
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            l10n.moneySaved,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: AppColors.textBlack,
            ),
          ),

          SizedBox(height: 12.h),

          SizedBox(
            height: 82.h,
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.end,
              children: [
                for (
                  int i = 0;
                  i < _moneyChart.length;
                  i++
                ) ...[
                  if (i != 0)
                    SizedBox(width: 6.w),

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
                              height:
                                  maxValue <= 0
                                      ? 5.h
                                      : 55.h *
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
                                    BorderRadius
                                        .vertical(
                                  top:
                                      Radius.circular(
                                    5.r,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 5.h),

                        Text(
                          _moneyChart[i]['label']
                              .toString(),
                          style: TextStyle(
                            fontSize: 11.sp,
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
        padding: EdgeInsets.fromLTRB(
          14.w,
          14.h,
          14.w,
          12.h,
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!
                  .moodTrends,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: AppColors.textBlack,
              ),
            ),

            SizedBox(height: 10.h),

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
        padding: EdgeInsets.fromLTRB(
          14.w,
          14.h,
          14.w,
          12.h,
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!
                  .cravingsPattern,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: AppColors.textBlack,
              ),
            ),

            SizedBox(height: 10.h),

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
    final l10n =
        AppLocalizations.of(context)!;

    if (isPremium) {
      return ClipRRect(
        borderRadius:
            BorderRadius.circular(12.r),
        child: chart,
      );
    }

    return ClipRRect(
      borderRadius:
          BorderRadius.circular(12.r),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _showPremiumPaywall,
        child: Stack(
          children: [
            chart,

            Positioned.fill(
              child: Container(
                color: AppColors.white
                    .withOpacity(0.58),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 1.5,
                    sigmaY: 1.5,
                  ),
                  child: Container(
                    color: Colors.white
                        .withOpacity(0.10),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 14.h,
              right: 14.w,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 9.w,
                  vertical: 4.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.circular(4.r),
                ),
                child: Text(
                  l10n.premiumBadgeLabel,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w600,
                    fontSize: 12.sp,
                    color:
                        AppColors.primary,
                  ),
                ),
              ),
            ),

            Positioned.fill(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                    vertical: 10.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        BorderRadius.circular(
                      10.r,
                    ),
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
                      Icon(
                        Icons.lock_outline,
                        size: 17.r,
                        color:
                            AppColors.primary,
                      ),

                      SizedBox(width: 7.w),

                      Text(
                        l10n.unlockLabel,
                        style: TextStyle(
                          fontWeight:
                              FontWeight.w700,
                          fontSize: 13.sp,
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
    final l10n =
        AppLocalizations.of(context)!;

    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor:
              AppColors.white,
          title: Text(
            l10n.unlockFullStats,
            style: TextStyle(
              color: AppColors.textBlack,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
            ),
          ),
          content: Text(
            l10n.premiumStatsMessage,
            style: TextStyle(
              color: AppColors.textGrey,
              fontSize: 14.sp,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context)
                      .pop(),
              child: Text(
                l10n.maybeLater,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop();

                // TODO: navigate to
                // PremiumPlanScreen once
                // its route is reachable
                // from here.
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
          ((a['day'] as num?)
                      ?.toInt() ??
                  0)
              .compareTo(
            (b['day'] as num?)
                    ?.toInt() ??
                0,
          ),
    );

    int nextIndex = -1;

    for (
      int i = 0;
      i < sorted.length;
      i++
    ) {
      final day =
          (sorted[i]['day'] as num?)
                  ?.toInt() ??
              0;

      if (day > _daysSober) {
        nextIndex = i;
        break;
      }
    }

    return _chartCard(
      padding: EdgeInsets.fromLTRB(
        14.w,
        14.h,
        14.w,
        2.h,
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            l10n.healthMilestones,
            style: TextStyle(
              fontWeight:
                  FontWeight.w700,
              fontSize: 16.sp,
              color:
                  AppColors.textBlack,
            ),
          ),

          SizedBox(height: 12.h),

          for (
            int i = 0;
            i < sorted.length;
            i++
          )
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
    required Map<String, dynamic>
        milestone,
    required bool isLast,
    required bool isNext,
    required AppLocalizations l10n,
  }) {
    final day =
        (milestone['day'] as num?)
                ?.toInt() ??
            0;

    final title =
        milestone['title']?.toString() ??
            '';

    final description =
        milestone['description']
                ?.toString() ??
            '';

    final reached =
        day <= _daysSober;

    final Color iconColor;

    if (reached) {
      iconColor = Colors.green;
    } else if (isNext) {
      iconColor = Colors.orange;
    } else {
      iconColor =
          AppColors.textLightGrey;
    }

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 30.w,
            child: Column(
              children: [
                Container(
                  width: 22.r,
                  height: 22.r,
                  decoration:
                      BoxDecoration(
                    color: iconColor
                        .withOpacity(
                      0.10,
                    ),
                    shape:
                        BoxShape.circle,
                  ),
                  child: Icon(
                    reached
                        ? Icons.check
                        : Icons
                            .access_time_rounded,
                    size: 14.r,
                    color: iconColor,
                  ),
                ),

                if (!isLast)
                  Expanded(
                    child: Container(
                      width: 1.5.w,
                      margin:
                          EdgeInsets.only(
                        top: 4.h,
                        bottom: 4.h,
                      ),
                      color: AppColors
                          .outlineGrey,
                    ),
                  ),
              ],
            ),
          ),

          SizedBox(width: 10.w),

          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.only(
                bottom: 14.h,
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
                              TextStyle(
                            fontWeight:
                                FontWeight
                                    .w700,
                            fontSize:
                                14.sp,
                            color:
                                AppColors
                                    .textBlack,
                          ),
                        ),
                      ),

                      SizedBox(width: 6.w),

                      Text(
                        l10n.dayNumber(day),
                        style: TextStyle(
                          fontWeight:
                              FontWeight
                                  .w600,
                          fontSize: 11.sp,
                          color:
                              iconColor,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 3.h),

                  Text(
                    description,
                    style: TextStyle(
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
      Duration(
        days: today.weekday - 1,
      ),
    );

    final dates = List.generate(
      42,
      (index) => firstDay.add(
        Duration(days: index),
      ),
    );

    final materialLocalizations =
        MaterialLocalizations.of(context);

    final narrowWeekdays =
        materialLocalizations
            .narrowWeekdays;

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
      padding: EdgeInsets.fromLTRB(
        14.w,
        14.h,
        14.w,
        12.h,
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            materialLocalizations
                .formatMonthYear(today),
            style: TextStyle(
              fontWeight:
                  FontWeight.w700,
              fontSize: 16.sp,
              color:
                  AppColors.textBlack,
            ),
          ),

          SizedBox(height: 10.h),

          Row(
            children: [
              for (
                final weekday
                    in mondayFirstWeekdays
              )
                _WeekLabel(weekday),
            ],
          ),

          SizedBox(height: 5.h),

          GridView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(),
            itemCount: dates.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              crossAxisSpacing: 7.w,
              mainAxisSpacing: 6.h,
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
                      date.month ==
                          today.month &&
                      date.day ==
                          today.day;

              return _calendarDay(
                date: date,
                status: status,
                isToday: isToday,
              );
            },
          ),

          SizedBox(height: 12.h),

          Row(
            children: [
              _calendarLegend(
                color: Colors.green,
                label: l10n.soberLabel,
              ),

              SizedBox(width: 12.w),

              _calendarLegend(
                color: Colors.redAccent,
                label: l10n.slipLabel,
              ),

              SizedBox(width: 12.w),

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
      mainAxisSize:
          MainAxisSize.min,
      children: [
        Container(
          width: 8.r,
          height: 8.r,
          decoration: BoxDecoration(
            color: color,
            shape:
                BoxShape.circle,
          ),
        ),

        SizedBox(width: 5.w),

        Text(
          label,
          style: TextStyle(
            fontSize: 10.sp,
            color:
                AppColors
                    .textLightGrey,
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
          Colors.green.withOpacity(
        0.18,
      );
      textColor =
          Colors.green.shade700;
    } else if (status == 2) {
      background =
          Colors.redAccent.withOpacity(
        0.16,
      );
      textColor =
          Colors.redAccent;
    } else {
      background =
          AppColors
              .journalChipBackground;
      textColor =
          AppColors.textLightGrey;
    }

    return Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius:
            BorderRadius.circular(6.r),
        border: isToday
            ? Border.all(
                color:
                    AppColors.primary,
                width: 1.5.r,
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
          fontSize: 11.sp,
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
            BorderRadius.circular(12.r),
        border: Border.all(
          color:
              AppColors.outlineGrey,
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
              EdgeInsets.symmetric(
            vertical: 20.h,
          ),
          child: Text(
            text,
            textAlign:
                TextAlign.center,
            style: TextStyle(
              fontSize: 13.sp,
              color:
                  AppColors
                      .textLightGrey,
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
          style: TextStyle(
            fontWeight:
                FontWeight.w600,
            fontSize: 11.sp,
            color:
                AppColors
                    .textLightGrey,
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
  State<_InteractiveMoodBarChart>
      createState() =>
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
            ? widget.data[
                _selectedIndex!]
            : null;

    final selectedMood =
        (selected?['moodIndex']
                as num?)
            ?.toInt();

    final selectedDate =
        selected?['date'] as DateTime?;

    final dateFormatter =
        MaterialLocalizations.of(
      context,
    );

    return Column(
      children: [
        SizedBox(
          height: 34.h,
          child: selectedMood != null
              ? Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                  children: [
                    Text(
                      _moodEmoji(
                        selectedMood,
                      ),
                      style: TextStyle(
                        fontSize: 20.sp,
                      ),
                    ),

                    SizedBox(width: 7.w),

                    Text(
                      _moodLabel(
                        l10n,
                        selectedMood,
                      ),
                      style: TextStyle(
                        fontWeight:
                            FontWeight.w700,
                        fontSize: 13.sp,
                        color:
                            AppColors
                                .textBlack,
                      ),
                    ),

                    if (selectedDate !=
                        null) ...[
                      SizedBox(width: 7.w),

                      Text(
                        dateFormatter
                            .formatShortDate(
                          selectedDate,
                        ),
                        style: TextStyle(
                          fontSize: 11.sp,
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
          height: 125.h,
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
                    item['hasData'] ==
                            true &&
                        mood != null;

                final value = hasData
                    ? mood!.toDouble() +
                        1
                    : 0.08;

                final isSelected =
                    _selectedIndex ==
                        index;

                return Expanded(
                  child: GestureDetector(
                    behavior:
                        HitTestBehavior
                            .opaque,
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
                        left: index == 0
                            ? 0
                            : 3.w,
                        right: index ==
                                widget.data
                                        .length -
                                    1
                            ? 0
                            : 3.w,
                      ),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .end,
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
                                height: 88.h *
                                    (value / 5),
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
                                      BorderRadius
                                          .vertical(
                                    top:
                                        Radius.circular(
                                      5.r,
                                    ),
                                  ),
                                  border:
                                      isSelected
                                          ? Border.all(
                                              color:
                                                  AppColors
                                                      .primary,
                                              width:
                                                  2.r,
                                            )
                                          : null,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 6.h),

                          Text(
                            item['label']
                                .toString(),
                            style: TextStyle(
                              fontSize: 10.sp,
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
  State<_InteractiveCravingBarChart>
      createState() =>
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
        return AppColors
            .textLightGrey;
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
            ? widget.data[
                _selectedIndex!]
            : null;

    final selectedLevel =
        (selected?['cravingLevel']
                as num?)
            ?.toInt();

    final selectedDate =
        selected?['date'] as DateTime?;

    final dateFormatter =
        MaterialLocalizations.of(
      context,
    );

    return Column(
      children: [
        SizedBox(
          height: 34.h,
          child: selectedLevel != null
              ? Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                  children: [
                    Text(
                      _cravingLabel(
                        l10n,
                        selectedLevel,
                      ),
                      style: TextStyle(
                        fontWeight:
                            FontWeight.w700,
                        fontSize: 13.sp,
                        color:
                            AppColors
                                .textBlack,
                      ),
                    ),

                    if (selectedDate !=
                        null) ...[
                      SizedBox(width: 7.w),

                      Text(
                        dateFormatter
                            .formatShortDate(
                          selectedDate,
                        ),
                        style: TextStyle(
                          fontSize: 11.sp,
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
          height: 125.h,
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
                    item['hasData'] ==
                            true &&
                        level != null;

                final value = hasData
                    ? level!.toDouble() +
                        0.35
                    : 0.08;

                final isSelected =
                    _selectedIndex ==
                        index;

                return Expanded(
                  child: GestureDetector(
                    behavior:
                        HitTestBehavior
                            .opaque,
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
                        left: index == 0
                            ? 0
                            : 3.w,
                        right: index ==
                                widget.data
                                        .length -
                                    1
                            ? 0
                            : 3.w,
                      ),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .end,
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
                                height: 88.h *
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
                                      BorderRadius
                                          .vertical(
                                    top:
                                        Radius.circular(
                                      5.r,
                                    ),
                                  ),
                                  border:
                                      isSelected
                                          ? Border.all(
                                              color:
                                                  AppColors
                                                      .primary,
                                              width:
                                                  2.r,
                                            )
                                          : null,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 6.h),

                          Text(
                            item['label']
                                .toString(),
                            style: TextStyle(
                              fontSize: 10.sp,
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
  
