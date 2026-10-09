
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:new_quit_drinking_app/constants/app_colors.dart';
import 'package:new_quit_drinking_app/models/daily_check_in.dart';
import 'package:new_quit_drinking_app/services/daily_check_in_service.dart';
import 'package:new_quit_drinking_app/theme/theme_controller.dart';

class DailyCheckInsScreen extends StatefulWidget {
  const DailyCheckInsScreen({super.key});

  @override
  State<DailyCheckInsScreen> createState() =>
      _DailyCheckInsScreenState();
}

class _DailyCheckInsScreenState
    extends State<DailyCheckInsScreen> {
  bool get _isDark => AppColors.isDark(context);

  bool _isLoading = true;
  List<DailyCheckIn> _checkIns = [];

  @override
  void initState() {
    super.initState();
    _loadCheckIns();
  }

  Future<void> _loadCheckIns() async {
    try {
      final checkIns =
          await DailyCheckInService.instance.getAll();

      if (!mounted) return;

      setState(() {
        _checkIns = checkIns;
        _isLoading = false;
      });
    } catch (e) {
      debugPrint(
        'DAILY CHECK-INS LOAD ERROR: $e',
      );

      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBackground(
        context,
        light: AppColors.dashboardBackground,
      ),
      appBar: AppBar(
        backgroundColor: AppColors.pageBackground(
          context,
          light: AppColors.dashboardBackground,
        ),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: _isDark ? Colors.white : AppColors.textBlack,
            size: 19.sp,
          ),
        ),
        title: Text(
          'Daily Check-ins',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,
            color: _isDark ? Colors.white : AppColors.textBlack,
          ),
        ),
        centerTitle: false,
      ),
      body: _isLoading
          ?  Center(
              child: CircularProgressIndicator(
                color: AppColors.accent(context),
              ),
            )
          : _checkIns.isEmpty
              ? _buildEmptyState()
              : RefreshIndicator(
                  color: AppColors.accent(context),
                  onRefresh: _loadCheckIns,
                  child: ListView.separated(
                    physics:
                        const AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.fromLTRB(
                      18.w,
                      10.h,
                      18.w,
                      40.h,
                    ),
                    itemCount: _checkIns.length,
                    separatorBuilder: (_, __) =>
                        SizedBox(height: 12.h),
                    itemBuilder: (context, index) {
                      return _buildCheckInCard(
                        _checkIns[index],
                      );
                    },
                  ),
                ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 64.w,
              height: 64.w,
              decoration: BoxDecoration(
                color: _isDark
                  ? ThemeController.darkAccent.withOpacity(0.28)
                  : AppColors.primary.withOpacity(0.09),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.fact_check_outlined,
                color: _isDark ? Colors.white : AppColors.accent(context),
                size: 30.sp,
              ),
            ),

            SizedBox(height: 16.h),

            Text(
              'No daily check-ins yet',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: _isDark ? Colors.white : AppColors.textBlack,
              ),
            ),

            SizedBox(height: 6.h),

            Text(
              'Your completed daily check-ins will appear here.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: _isDark ? Colors.white70 : AppColors.textGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckInCard(
    DailyCheckIn checkIn,
  ) {
    const moodEmojis = [
      '😞',
      '🙁',
      '😐',
      '🙂',
      '😄',
    ];

    const moodLabels = [
      'Bad',
      'Low',
      'Okay',
      'Good',
      'Great',
    ];

    const cravingLabels = [
      'None',
      'Low',
      'Medium',
      'Strong',
    ];

    final moodIndex = checkIn.moodIndex.clamp(
      0,
      moodLabels.length - 1,
    );

    final cravingIndex = checkIn.cravingLevel.clamp(
      0,
      cravingLabels.length - 1,
    );

    final date = checkIn.date;

    final formattedDate =
        '${_monthName(date.month)} ${date.day}, ${date.year}';

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: _isDark ? ThemeController.darkCard : AppColors.white,
        borderRadius: BorderRadius.circular(28.r),
        border: _isDark
          ? Border.all(color: ThemeController.darkAccent)
          : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 46.w,
                height: 46.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:
                        _isDark
                          ? ThemeController.darkAccent.withOpacity(0.28)
                          : AppColors.primary.withOpacity(0.09),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  moodEmojis[moodIndex],
                  style: TextStyle(
                    fontSize: 23.sp,
                  ),
                ),
              ),

              SizedBox(width: 12.w),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      formattedDate,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: _isDark ? Colors.white : AppColors.textBlack,
                      ),
                    ),

                    SizedBox(height: 3.h),

                    Text(
                      'Mood: ${moodLabels[moodIndex]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                        color: _isDark ? Colors.white70 : AppColors.textGrey,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 8.w),

              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 7.h,
                ),
                decoration: BoxDecoration(
                    color: checkIn.stayedOnTrack
                      ? (_isDark
                        ? ThemeController.darkAccent
                          .withOpacity(0.30)
                        : AppColors.primary.withOpacity(0.09))
                      : AppColors.alertColor
                          .withOpacity(0.09),
                  borderRadius:
                      BorderRadius.circular(999.r),
                ),
                child: Text(
                  checkIn.stayedOnTrack
                      ? 'On track'
                      : 'Had a drink',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 9.sp,
                    color: checkIn.stayedOnTrack
                      ? (_isDark
                        ? Colors.white
                        : AppColors.primary)
                        : AppColors.alertColor,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 16.h),

          _buildInfoRow(
            icon: Icons.favorite_border,
            label:
                'Craving: ${cravingLabels[cravingIndex]}',
          ),

          if (checkIn.note.trim().isNotEmpty) ...[
            SizedBox(height: 10.h),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: _isDark
                  ? ThemeController.darkBackground
                  : AppColors.cardBackground,
                borderRadius:
                    BorderRadius.circular(16.r),
              ),
              child: Text(
                '"${checkIn.note.trim()}"',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.sp,
                  height: 1.4,
                  color: _isDark ? Colors.white70 : AppColors.textGrey,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16.sp,
          color: _isDark ? Colors.white70 : AppColors.textLightGrey,
        ),

        SizedBox(width: 6.w),

        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 11.sp,
            color: _isDark ? Colors.white70 : AppColors.textGrey,
          ),
        ),
      ],
    );
  }

  String _monthName(int month) {
    const months = [
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

    return months[month - 1];
  }
}

