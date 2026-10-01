
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';

enum StatsTab { journey, body, patterns }

// =============================================================
// TAB BAR
// =============================================================

class StatsTabBar extends StatelessWidget {
  final StatsTab selected;
  final ValueChanged<StatsTab> onChanged;

  const StatsTabBar({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: AppColors.outlineGrey,
          width: 0.7,
        ),
      ),
      child: Row(
        children: [
          _tab(l10n.tabJourney, StatsTab.journey),
          _tab(l10n.tabBody, StatsTab.body),
          _tab(l10n.tabPatterns, StatsTab.patterns),
        ],
      ),
    );
  }

  Widget _tab(String text, StatsTab tab) {
    final isSelected = selected == tab;

    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (!isSelected) {
            onChanged(tab);
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          height: 34.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.primary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 13.sp,
              color: isSelected
                  ? AppColors.white
                  : AppColors.textGrey,
            ),
          ),
        ),
      ),
    );
  }
}

// =============================================================
// JOURNEY TAB
//
//   1. Sober score card
//   2. Current streak | Longest streak | Total sober days
//   3. Personal best banner
//   4. Your journey heat-map
// =============================================================

class JourneyView extends StatelessWidget {
  final int daysSober;

  // Kept so StatsScreen does not need to change.
  final double moneySaved;
  final double drinksAvoided;

  /// 'yyyy-MM-dd' -> 1 (sober) / 2 (slip)
  final Map<String, int> calendarData;

  const JourneyView({
    super.key,
    required this.daysSober,
    required this.moneySaved,
    required this.drinksAvoided,
    required this.calendarData,
  });

  static const Color _amber = Color(0xFFF08A4B);

  // Premium dark-green palette.
  static const Color _darkGreen = Color(0xFF064E3B);
  static const Color _midGreen = Color(0xFF047857);
  static const Color _emerald = Color(0xFF059669);
  static const Color _crystalGreen = Color(0xFF34D399);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final stats = _JourneyStats.from(
      daysSober,
      calendarData,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildScoreCard(l10n, stats),
        SizedBox(height: 14.h),
        _buildStreakRow(l10n, stats),
        SizedBox(height: 10.h),
        _buildBanner(l10n, stats),
        SizedBox(height: 14.h),
        _buildJourneyCard(l10n),
      ],
    );
  }

  // ===========================================================
  // 1. SOBER SCORE CARD
  // ===========================================================

  Widget _buildScoreCard(
    AppLocalizations l10n,
    _JourneyStats stats,
  ) {
    final level = stats.score >= 75
        ? l10n.journeyScoreExcellent
        : stats.score >= 50
            ? l10n.journeyScoreGood
            : stats.score >= 25
                ? l10n.journeyScoreBuilding
                : l10n.journeyScoreStarting;

    final footer = stats.slipsLast7 == 0
        ? l10n.journeyTrendingUp(daysSober)
        : l10n.journeyEveryDayCounts(daysSober);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        20.w,
        18.h,
        20.w,
        18.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            _darkGreen,
            _midGreen,
            Color(0xFF065F46),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x33064E3B),
            blurRadius: 22,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(
          begin: 0,
          end: stats.score.toDouble(),
        ),
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeOutCubic,
        builder: (context, value, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---------------- icon + level chip ----------------
              Row(
                children: [
                  Container(
                    width: 38.r,
                    height: 38.r,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(
                        alpha: 0.16,
                      ),
                      borderRadius: BorderRadius.circular(11.r),
                      border: Border.all(
                        color: Colors.white.withValues(
                          alpha: 0.12,
                        ),
                        width: 0.8,
                      ),
                    ),
                    child: Icon(
                      Icons.bolt_rounded,
                      size: 22.r,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(
                        alpha: 0.16,
                      ),
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(
                        color: Colors.white.withValues(
                          alpha: 0.10,
                        ),
                        width: 0.7,
                      ),
                    ),
                    child: Text(
                      level.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 11.sp,
                        letterSpacing: 1.1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 14.h),

              // ---------------- label ----------------
              Text(
                l10n.journeySoberScore.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 11.sp,
                  letterSpacing: 1.6,
                  color: Colors.white.withValues(
                    alpha: 0.72,
                  ),
                ),
              ),

              SizedBox(height: 2.h),

              // ---------------- big number ----------------
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${value.round()}',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 52.sp,
                      height: 1.05,
                      letterSpacing: -1.2,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Padding(
                    padding: EdgeInsets.only(bottom: 9.h),
                    child: Text(
                      '/100',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Colors.white.withValues(
                          alpha: 0.68,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12.h),

              // ---------------- 5 segments ----------------
              Row(
                children: [
                  for (int i = 0; i < 5; i++) ...[
                    if (i != 0)
                      SizedBox(width: 8.w),
                    Expanded(
                      child: _segment(
                        ((value - i * 20) / 20)
                            .clamp(0.0, 1.0),
                      ),
                    ),
                  ],
                ],
              ),

              SizedBox(height: 12.h),

              // ---------------- footer ----------------
              Text(
                footer,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.5.sp,
                  height: 1.25,
                  color: Colors.white.withValues(
                    alpha: 0.72,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _segment(double fill) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        height: 10.h,
        color: Colors.white.withValues(
          alpha: 0.20,
        ),
        alignment: Alignment.centerLeft,
        child: FractionallySizedBox(
          widthFactor: fill,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.white,
                  Colors.white.withValues(
                    alpha: 0.86,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ===========================================================
  // 2. STREAK CARDS
  // ===========================================================

  Widget _buildStreakRow(
    AppLocalizations l10n,
    _JourneyStats stats,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _streakCard(
            value: '${stats.current}',
            label: l10n.journeyCurrentStreak,
            color: AppColors.primary,
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: _streakCard(
            value: '${stats.longest}',
            label: l10n.journeyLongestStreak,
            color: _amber,
            tinted: true,
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: _streakCard(
            value: '${stats.totalSober}',
            label: l10n.journeyTotalSoberDays,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }


Widget _streakCard({
  required String value,
  required String label,
  required Color color,
  bool tinted = false,
}) {
  // -----------------------------------------------------------
  // CURRENT + TOTAL = VIBRANT GREEN
  // LONGEST = BRIGHT SHINING SKY BLUE
  // -----------------------------------------------------------

  const green = Color(0xFF10B981);
  const greenLight = Color(0xFFDFFBF0);
  const greenGlow = Color(0xFF34D399);

  const skyBlue = Color(0xFF0EA5E9);
  const skyBlueLight = Color(0xFFDFF6FF);
  const skyBlueBright = Color(0xFF38BDF8);

  final isLongest = tinted;

  final accent = isLongest ? skyBlue : green;

  final cardGradient = isLongest
      ? const [
          Colors.white,
          Color(0xFFF2FBFF),
          skyBlueLight,
        ]
      : const [
          Colors.white,
          Color(0xFFF3FCF8),
          greenLight,
        ];

  return Container(
    constraints: BoxConstraints(
      minHeight: 112.h,
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 9.w,
      vertical: 14.h,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.r),

      // -------------------------------------------------------
      // GLASS GRADIENT
      // -------------------------------------------------------
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white,
          Color(0xFFF3FCF8),
          Color(0xFFDFFBF0),
        ],
      ),

      // -------------------------------------------------------
      // BLUE GLASS FOR LONGEST
      // -------------------------------------------------------
      border: Border.all(
        color: accent.withValues(alpha: 0.30),
        width: 1.0,
      ),

      // -------------------------------------------------------
      // SOFT SHINING GLOW
      // -------------------------------------------------------
      boxShadow: [
        BoxShadow(
          color: accent.withValues(alpha: 0.16),
          blurRadius: 20,
          spreadRadius: -2,
          offset: const Offset(0, 7),
        ),
        BoxShadow(
          color: accent.withValues(alpha: 0.07),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ],
    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // -------------------------------------------------------
        // VALUE
        // -------------------------------------------------------
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            value,
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30.sp,
              height: 1.0,
              letterSpacing: -1.1,

              // Green for Current/Total,
              // bright sky-blue for Longest.
              color: isLongest
                  ? const Color(0xFF0284C7)
                  : const Color(0xFF059669),
            ),
          ),
        ),

        SizedBox(height: 7.h),

        // -------------------------------------------------------
        // LABEL
        // -------------------------------------------------------
        Text(
          label,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 11.5.sp,
            height: 1.15,
            letterSpacing: -0.1,
            color: const Color(0xFF475569),
          ),
        ),
      ],
    ),
  );
}



  // ===========================================================
  // 3. PERSONAL BEST BANNER
  // ===========================================================

  Widget _buildBanner(
    AppLocalizations l10n,
    _JourneyStats stats,
  ) {
    final atBest =
        stats.current > 0 &&
        stats.current >= stats.longest;

    final text = atBest
        ? l10n.journeyPersonalBest
        : l10n.journeyDaysToBest(
            stats.longest - stats.current + 1,
          );

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 13.h,
        horizontal: 12.w,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            _darkGreen.withValues(alpha: 0.08),
            _emerald.withValues(alpha: 0.045),
          ],
        ),
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: _emerald.withValues(alpha: 0.18),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 13.sp,
          color: _midGreen,
        ),
      ),
    );
  }

  // ===========================================================
  // 4. YOUR JOURNEY HEAT-MAP
  // ===========================================================

  Widget _buildJourneyCard(
    AppLocalizations l10n,
  ) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        16.w,
        16.h,
        16.w,
        14.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(
          color: AppColors.outlineGrey,
          width: 0.8,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 12,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.journeyYourJourney,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18.sp,
              color: AppColors.textBlack,
            ),
          ),

          SizedBox(height: 3.h),

          Text(
            l10n.journeyYourJourneySubtitle,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textLightGrey,
            ),
          ),

          SizedBox(height: 14.h),

          _heatmap(),

          SizedBox(height: 14.h),

          Wrap(
            spacing: 14.w,
            runSpacing: 6.h,
            children: [
              _legend(
                _emerald,
                l10n.soberLabel,
              ),
              _legend(
                Colors.redAccent,
                l10n.slipLabel,
              ),
              _legend(
                AppColors.journalChipBackground,
                l10n.noDataLabel,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _heatmap() {
    const cols = 26;
    const rows = 7;

    final now = DateTime.now();
    final today = DateTime(
      now.year,
      now.month,
      now.day,
    );

    // Monday of this week, then go back 25 weeks.
    final monday = DateTime(
      today.year,
      today.month,
      today.day - (today.weekday - 1),
    );

    final start = DateTime(
      monday.year,
      monday.month,
      monday.day - 7 * (cols - 1),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final gap = 3.w;
        final cell =
            (constraints.maxWidth -
                    gap * (cols - 1)) /
                cols;

        return Column(
          children: [
            for (int r = 0; r < rows; r++)
              Padding(
                padding: EdgeInsets.only(
                  bottom: r == rows - 1 ? 0 : gap,
                ),
                child: Row(
                  children: [
                    for (int c = 0; c < cols; c++)
                      Padding(
                        padding: EdgeInsets.only(
                          right: c == cols - 1 ? 0 : gap,
                        ),
                        child: _cell(
                          size: cell,
                          date: DateTime(
                            start.year,
                            start.month,
                            start.day + c * 7 + r,
                          ),
                          today: today,
                        ),
                      ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _cell({
    required double size,
    required DateTime date,
    required DateTime today,
  }) {
    // Days after today stay empty.
    if (date.isAfter(today)) {
      return SizedBox(
        width: size,
        height: size,
      );
    }

    final status =
        calendarData[_dateKey(date)] ?? 0;

    final isToday = date == today;

    Color color;

    if (status == 1) {
      color = _emerald;
    } else if (status == 2) {
      color = Colors.redAccent;
    } else {
      color = AppColors.journalChipBackground;
    }

    // ---------------------------------------------------------
    // CRYSTAL / GLASS GREEN SOBER TILE
    // ---------------------------------------------------------

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: status == 1
            ? const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _crystalGreen,
                  _emerald,
                  _midGreen,
                ],
              )
            : null,
        color: status == 1 ? null : color,
        borderRadius: BorderRadius.circular(
          size * 0.28,
        ),
        border: Border.all(
          color: isToday
              ? AppColors.textBlack
              : status == 1
                  ? const Color(0xFF6EE7B7)
                      .withValues(alpha: 0.42)
                  : Colors.transparent,
          width: isToday ? 1.4 : 0.7,
        ),
        boxShadow: status == 1
            ? [
                BoxShadow(
                  color: _emerald.withValues(
                    alpha: 0.22,
                  ),
                  blurRadius: size * 0.45,
                  offset: Offset(
                    0,
                    size * 0.12,
                  ),
                ),
              ]
            : null,
      ),

      // Small glossy highlight on filled days.
      child: status == 1
          ? Align(
              alignment: const Alignment(
                -0.35,
                -0.45,
              ),
              child: Container(
                width: size * 0.34,
                height: size * 0.18,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(
                    alpha: 0.22,
                  ),
                  borderRadius:
                      BorderRadius.circular(size),
                ),
              ),
            )
          : null,
    );
  }

  Widget _legend(
    Color color,
    String label,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10.r,
          height: 10.r,
          decoration: BoxDecoration(
            color: color,
            borderRadius:
                BorderRadius.circular(3.r),
            boxShadow: color == _emerald
                ? [
                    BoxShadow(
                      color: _emerald.withValues(
                        alpha: 0.18,
                      ),
                      blurRadius: 4,
                    ),
                  ]
                : null,
          ),
        ),
        SizedBox(width: 6.w),
        Text(
          label,
          style: TextStyle(
            fontSize: 11.sp,
            color: AppColors.textGrey,
          ),
        ),
      ],
    );
  }

  String _dateKey(DateTime date) {
    return '${date.year}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }
}

// =============================================================
// NUMBERS BEHIND THE JOURNEY TAB
// =============================================================

class _JourneyStats {
  final int current;
  final int longest;
  final int totalSober;
  final int slipsLast7;
  final int score; // 0 - 100

  const _JourneyStats({
    required this.current,
    required this.longest,
    required this.totalSober,
    required this.slipsLast7,
    required this.score,
  });

  factory _JourneyStats.from(
    int daysSober,
    Map<String, int> data,
  ) {
    final now = DateTime.now();

    final today = DateTime.utc(
      now.year,
      now.month,
      now.day,
    );

    final soberDays = <DateTime>[];

    var slipsLast30 = 0;
    var slipsLast7 = 0;

    data.forEach((key, status) {
      final parsed = DateTime.tryParse(key);

      if (parsed == null) {
        return;
      }

      final day = DateTime.utc(
        parsed.year,
        parsed.month,
        parsed.day,
      );

      if (status == 1) {
        soberDays.add(day);
      } else if (status == 2) {
        final diff =
            today.difference(day).inDays;

        if (diff >= 0 && diff < 30) {
          slipsLast30++;
        }

        if (diff >= 0 && diff < 7) {
          slipsLast7++;
        }
      }
    });

    soberDays.sort();

    var longest = 0;
    var run = 0;
    DateTime? previous;

    for (final day in soberDays) {
      if (previous != null &&
          day.difference(previous).inDays == 1) {
        run++;
      } else {
        run = 1;
      }

      if (run > longest) {
        longest = run;
      }

      previous = day;
    }

    // Live streak is the source of truth for current.
    longest = math.max(
      longest,
      daysSober,
    );

    final total = math.max(
      soberDays.length,
      daysSober,
    );

    // ---------------------------------------------------------
    // SOBER SCORE
    //
    // 65% streak length
    // 35% consistency
    // ---------------------------------------------------------

    final streakPart =
        math.min(daysSober / 90.0, 1.0);

    final consistency =
        1.0 -
        math.min(
          slipsLast30 / 5.0,
          1.0,
        );

    final ramp =
        math.min(daysSober / 14.0, 1.0);

    final score =
        (100 *
                (0.65 * streakPart +
                    0.35 *
                        consistency *
                        ramp))
            .round()
            .clamp(0, 100);

    return _JourneyStats(
      current: daysSober,
      longest: longest,
      totalSober: total,
      slipsLast7: slipsLast7,
      score: score,
    );
  }
}
