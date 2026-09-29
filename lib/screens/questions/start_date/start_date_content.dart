import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../models/user_details_draft.dart';

class StartDateContent extends StatefulWidget {
  final ValueChanged<bool> onCanContinueChanged;

  const StartDateContent({
    super.key,
    required this.onCanContinueChanged,
  });

  @override
  State<StartDateContent> createState() =>
      _StartDateContentState();
}

class _StartDateContentState extends State<StartDateContent>
    with AutomaticKeepAliveClientMixin {
  DateTime _selectedDate = DateTime.now();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    // Save today's date initially.
    UserDetailsDraft.instance.setStartDate(
      _selectedDate,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      widget.onCanContinueChanged(true);
    });
  }

  // ============================================================
  // MONTH NAME
  // ============================================================

  String _monthName(int month) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];

    return months[month - 1];
  }

  // ============================================================
  // SELECT DATE
  // ============================================================

  void _selectDate(DateTime date) {
    final DateTime normalizedDate = DateTime(
      date.year,
      date.month,
      date.day,
    );

    setState(() {
      _selectedDate = normalizedDate;
    });

    UserDetailsDraft.instance.setStartDate(
      normalizedDate,
    );
  }

  // ============================================================
  // OPEN CALENDAR BOTTOM SHEET
  // ============================================================

  Future<void> _openCalendar() async {
    final DateTime? pickedDate =
        await showModalBottomSheet<DateTime>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(0.35),
      builder: (context) {
        return _CalendarBottomSheet(
          selectedDate: _selectedDate,
          monthName: _monthName,
        );
      },
    );

    if (pickedDate == null || !mounted) {
      return;
    }

    _selectDate(pickedDate);
  }

  // ============================================================
  // CHANGE DATE USING ARROWS
  // ============================================================

  void _changeDateByDay(int days) {
    final DateTime today = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    );

    final DateTime lastDate = DateTime(
      today.year + 1,
      today.month,
      today.day,
    );

    final DateTime newDate =
        _selectedDate.add(Duration(days: days));

    if (newDate.isBefore(today) ||
        newDate.isAfter(lastDate)) {
      return;
    }

    _selectDate(newDate);
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final l10n = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        22.w,
        10.h,
        22.w,
        20.h,
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          // ======================================================
          // TITLE
          // ======================================================

          Text(
            'When do you want to start?',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
              height: 1.25,
              color: AppColors.primary,
            ),
          ),

          SizedBox(height: 6.h),

          Text(
            'Choose the day you want to start your journey.',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textGrey,
            ),
          ),

          SizedBox(height: 22.h),

          // ======================================================
          // GLASS CALENDAR CARD (upgraded)
          // ======================================================

          GestureDetector(
            onTap: _openCalendar,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(26.r),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 18.h,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.65),
                        Colors.white.withOpacity(0.35),
                      ],
                    ),
                    borderRadius:
                        BorderRadius.circular(26.r),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.9),
                      width: 1.4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary
                            .withOpacity(0.12),
                        blurRadius: 26,
                        spreadRadius: -4,
                        offset: const Offset(0, 12),
                      ),
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.03),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      // ==================================================
                      // LEFT ARROW
                      // ==================================================

                      _GlassArrowButton(
                        icon: Icons.chevron_left_rounded,
                        onTap: () {
                          _changeDateByDay(-1);
                        },
                      ),

                      SizedBox(width: 14.w),

                      // ==================================================
                      // SELECTED DATE
                      // ==================================================

                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              _monthName(
                                _selectedDate.month,
                              ).toUpperCase(),
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.w700,
                                fontSize: 12.sp,
                                letterSpacing: 1.4,
                                color:
                                    AppColors.textGrey,
                              ),
                            ),

                            SizedBox(height: 2.h),

                            ShaderMask(
                              shaderCallback: (bounds) =>
                                  LinearGradient(
                                colors: [
                                  AppColors.primary,
                                  AppColors.primary
                                      .withOpacity(0.7),
                                ],
                              ).createShader(bounds),
                              child: Text(
                                '${_selectedDate.day}',
                                style: TextStyle(
                                  fontWeight:
                                      FontWeight.w800,
                                  fontSize: 34.sp,
                                  height: 1.05,
                                  // Base color is overridden by ShaderMask.
                                  color: Colors.white,
                                ),
                              ),
                            ),

                            SizedBox(height: 2.h),

                            Text(
                              '${_selectedDate.year}',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.w500,
                                fontSize: 12.sp,
                                color:
                                    AppColors.textGrey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ==================================================
                      // CALENDAR ICON
                      // ==================================================

                      Container(
                        width: 46.w,
                        height: 46.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.primary
                                  .withOpacity(0.18),
                              AppColors.primary
                                  .withOpacity(0.06),
                            ],
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.primary
                                .withOpacity(0.15),
                          ),
                        ),
                        child: Icon(
                          Icons.calendar_month_rounded,
                          color: AppColors.primary,
                          size: 22.sp,
                        ),
                      ),

                      SizedBox(width: 14.w),

                      // ==================================================
                      // RIGHT ARROW
                      // ==================================================

                      _GlassArrowButton(
                        icon: Icons.chevron_right_rounded,
                        onTap: () {
                          _changeDateByDay(1);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 18.h),

          // ======================================================
          // SELECTED DATE INFO
          // ======================================================

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 14.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.iconBackground,
              borderRadius:
                  BorderRadius.circular(14.r),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.event_available_outlined,
                  color: AppColors.primary,
                  size: 23.sp,
                ),

                SizedBox(width: 12.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your start date',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: AppColors.textGrey,
                        ),
                      ),

                      SizedBox(height: 3.h),

                      Text(
                        '${_selectedDate.day} '
                        '${_monthName(_selectedDate.month)} '
                        '${_selectedDate.year}',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                          color: AppColors.textBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}

// ============================================================
// GLASS ARROW BUTTON (upgraded — ripple + depth)
// ============================================================

class _GlassArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _GlassArrowButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.white.withOpacity(0.6),
        child: InkWell(
          onTap: onTap,
          splashColor: AppColors.primary.withOpacity(0.15),
          highlightColor:
              AppColors.primary.withOpacity(0.08),
          child: Container(
            width: 44.w,
            height: 44.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white.withOpacity(0.9),
                width: 1.2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Icon(
              icon,
              color: AppColors.primary,
              size: 26.sp,
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// CALENDAR BOTTOM SHEET
// ============================================================

class _CalendarBottomSheet extends StatefulWidget {
  final DateTime selectedDate;
  final String Function(int month) monthName;

  const _CalendarBottomSheet({
    required this.selectedDate,
    required this.monthName,
  });

  @override
  State<_CalendarBottomSheet> createState() =>
      _CalendarBottomSheetState();
}

class _CalendarBottomSheetState
    extends State<_CalendarBottomSheet> {
  late DateTime _tempSelectedDate;

  @override
  void initState() {
    super.initState();

    _tempSelectedDate = DateTime(
      widget.selectedDate.year,
      widget.selectedDate.month,
      widget.selectedDate.day,
    );
  }

  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    );

    final DateTime lastDate = DateTime(
      today.year + 1,
      today.month,
      today.day,
    );

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.w,
          right: 12.w,
          bottom: 12.h,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28.r),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 18,
              sigmaY: 18,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.bgColor.withOpacity(0.96),
                borderRadius:
                    BorderRadius.circular(28.r),
                border: Border.all(
                  color: Colors.white.withOpacity(0.7),
                  width: 1,
                ),
              ),
              padding: EdgeInsets.fromLTRB(
                16.w,
                12.h,
                16.w,
                16.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // ==================================================
                  // SHEET HANDLE
                  // ==================================================

                  Container(
                    width: 42.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      color: AppColors.textLightGrey
                          .withOpacity(0.4),
                      borderRadius:
                          BorderRadius.circular(10.r),
                    ),
                  ),

                  SizedBox(height: 16.h),

                  // ==================================================
                  // HEADER
                  // ==================================================

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select your start date',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight.w700,
                                fontSize: 19.sp,
                                color:
                                    AppColors.textBlack,
                              ),
                            ),
                            SizedBox(height: 3.h),
                            Text(
                              '${_tempSelectedDate.day} '
                              '${widget.monthName(_tempSelectedDate.month)} '
                              '${_tempSelectedDate.year}',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color:
                                    AppColors.textGrey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: 38.w,
                          height: 38.w,
                          decoration: BoxDecoration(
                            color: AppColors
                                .outlineGrey2,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close,
                            size: 20.sp,
                            color:
                                AppColors.textGrey,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12.h),

                  // ==================================================
                  // CALENDAR (upgraded theme)
                  // ==================================================

                  Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme:
                          Theme.of(context)
                              .colorScheme
                              .copyWith(
                        primary: AppColors.primary,
                        onPrimary: AppColors.white,
                        surface: Colors.transparent,
                        onSurface: AppColors.textBlack,
                      ),
                      datePickerTheme:
                          DatePickerThemeData(
                        backgroundColor:
                            Colors.transparent,
                        todayBorder: BorderSide(
                          color: AppColors.primary
                              .withOpacity(0.5),
                          width: 1.4,
                        ),
                        dayShape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(
                              12.r,
                            ),
                          ),
                        ),
                        dayStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                        headerHeadlineStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                          color: AppColors.textBlack,
                        ),
                      ),
                    ),
                    child: CalendarDatePicker(
                      initialDate:
                          _tempSelectedDate,
                      firstDate: today,
                      lastDate: lastDate,
                      onDateChanged: (date) {
                        setState(() {
                          _tempSelectedDate =
                              DateTime(
                            date.year,
                            date.month,
                            date.day,
                          );
                        });
                      },
                    ),
                  ),

                  SizedBox(height: 6.h),

                  // ==================================================
                  // DONE BUTTON
                  // ==================================================

                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(
                          _tempSelectedDate,
                        );
                      },
                      style:
                          ElevatedButton.styleFrom(
                        backgroundColor:
                            AppColors.primary,
                        foregroundColor:
                            AppColors.white,
                        elevation: 0,
                        shape:
                            RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                            9999,
                          ),
                        ),
                      ),
                      child: Text(
                        'Select Date',
                        style: TextStyle(
                          fontWeight:
                              FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}