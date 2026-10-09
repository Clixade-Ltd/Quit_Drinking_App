import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../../constants/app_colors.dart';
import '../../../theme/theme_controller.dart';

class HealthCareDisclaimerScreen extends StatelessWidget {
  const HealthCareDisclaimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppColors.isDark(context);

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
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          splashRadius: 22.r,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: isDark ? Colors.white : AppColors.textBlack,
            size: 18.sp,
          ),
        ),
        title: Text(
          'Health Care Disclaimer',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            color: isDark ? Colors.white : AppColors.textBlack,
            letterSpacing: -0.2,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(
            18.w,
            29.h,
            18.w,
            38.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDisclaimerCard(
                context: context,
                icon: Icons.auto_stories_rounded,
                iconColor: isDark
                    ? const Color(0xFF7DD3FC)
                    : const Color(0xFF4267D5),
                iconBackground: const Color(0xFFE4EBFF),
                cardBackground: const Color(0xFFF4F6FF),
                accentColor: const Color(0xFF6B89E8),
                title: 'Educational Purpose',
                content:
                    'Quit Drinking provides educational and informational '
                    'support. It does not provide medical advice, diagnosis, '
                    'or treatment.',
              ),

              SizedBox(height: 13.h),

              _buildDisclaimerCard(
                context: context,
                icon: Icons.health_and_safety_rounded,
                iconColor: isDark
                    ? const Color(0xFF7DD3FC)
                    : const Color(0xFF128C80),
                iconBackground: const Color(0xFFDDF5F1),
                cardBackground: const Color(0xFFF0FAF8),
                accentColor: const Color(0xFF48B3A8),
                title: 'Medical Consultation',
                content:
                    'Please consult a qualified healthcare professional '
                    'before beginning your recovery journey, especially if '
                    'you have existing health conditions or take medication.',
              ),

              SizedBox(height: 13.h),

              _buildDisclaimerCard(
                context: context,
                icon: Icons.emergency_rounded,
                iconColor: isDark
                    ? const Color(0xFFFFC766)
                    : const Color(0xFFC47A0A),
                iconBackground: const Color(0xFFFFEFCF),
                cardBackground: const Color(0xFFFFF9ED),
                accentColor: const Color(0xFFE5AD4A),
                title: 'Emergency Notice',
                content:
                    'Quit Drinking does not replace professional medical '
                    'care. Seek immediate medical help if you experience '
                    'severe withdrawal symptoms or serious health concerns.',
              ),

              SizedBox(height: 15.h),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: isDark
                        ? [
                            ThemeController.darkAccent,
                            ThemeController.darkCard,
                          ]
                        : [
                            AppColors.primary.withValues(alpha: 0.10),
                            AppColors.primary.withValues(alpha: 0.035),
                          ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(19.r),

                  // Matching primary/recovery border
                  border: Border.all(
                    color: isDark
                        ? Colors.white.withValues(alpha: 0.12)
                        : AppColors.primary.withValues(alpha: 0.22),
                    width: 1.2.w,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40.w,
                      height: 40.w,
                      decoration: BoxDecoration(
                        color: isDark
                            ? Colors.white.withValues(alpha: 0.12)
                            : AppColors.primary.withValues(alpha: 0.14),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_rounded,
                        color: isDark ? Colors.white : AppColors.primary,
                        size: 20.sp,
                      ),
                    ),

                    SizedBox(width: 12.w),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your recovery matters',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              color: isDark
                                  ? Colors.white
                                  : AppColors.textBlack,
                            ),
                          ),

                          SizedBox(height: 4.h),

                          Text(
                            'This app supports your recovery journey, '
                            'but does not replace professional healthcare.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.5.sp,
                              height: 1.5,
                              color: isDark
                                  ? Colors.white70
                                  : AppColors.textGrey,
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
        ),
      ),
    );
  }

  Widget _buildDisclaimerCard({
    required BuildContext context,
    required IconData icon,
    required Color iconColor,
    required Color iconBackground,
    required Color cardBackground,
    required Color accentColor,
    required String title,
    required String content,
  }) {
    final isDark = AppColors.isDark(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDark ? ThemeController.darkCard : cardBackground,
        borderRadius: BorderRadius.circular(20.r),

        // Relevant accent-colored border for each card
        border: Border.all(
          color: isDark
              ? ThemeController.darkAccent
              : accentColor.withValues(alpha: 0.22),
          width: 1.2.w,
        ),

        boxShadow: [
          BoxShadow(
            color: isDark
                ? ThemeController.darkAccent.withValues(alpha: 0.18)
                : accentColor.withValues(alpha: 0.07),
            blurRadius: 15.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    15.w,
                    16.h,
                    16.w,
                    17.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 47.w,
                        height: 47.w,
                        decoration: BoxDecoration(
                          color: isDark
                              ? ThemeController.darkAccent.withValues(
                                  alpha: 0.28,
                                )
                              : iconBackground,
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                            color: iconColor.withValues(
                              alpha: isDark ? 0.22 : 0.10,
                            ),
                          ),
                        ),
                        child: Icon(
                          icon,
                          color: iconColor,
                          size: 24.sp,
                        ),
                      ),

                      SizedBox(width: 13.w),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15.5.sp,
                                color: isDark
                                    ? Colors.white
                                    : AppColors.textBlack,
                                height: 1.2,
                                letterSpacing: -0.1,
                              ),
                            ),

                            SizedBox(height: 8.h),

                            Text(
                              content,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.5.sp,
                                color: isDark
                                    ? Colors.white70
                                    : AppColors.textGrey,
                                height: 1.55,
                                letterSpacing: 0.05,
                              ),
                            ),
                          ],
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
    );
  }
}