import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(height: 30.h),

          // ============================================================
          // ILLUSTRATION
          // ============================================================

          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Container(
              width: 300.w,
              height: 300.w,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0F018080),
                    offset: Offset(0, 4),
                    blurRadius: 24,
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/page1.png',
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  color: AppColors.cardBackground,
                  child: Icon(
                    Icons.image_outlined,
                    color: AppColors.textLightGrey,
                    size: 48.sp,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 28.h),

          // ============================================================
          // HEADING
          // ============================================================

          SizedBox(
            width: 293.w,
            child: Text(
              l10n.onboardingTitle1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w700,
                fontSize: 28.sp,
                letterSpacing: -0.56,
                height: 36 / 28,
                color: AppColors.textBlack,
              ),
            ),
          ),

          SizedBox(height: 12.h),

          // ============================================================
          // SUBHEADING
          // ============================================================

          SizedBox(
            width: 269.w,
            child: Text(
              l10n.onboardingSubtitle1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                height: 24 / 16,
                color: AppColors.textGrey,
              ),
            ),
          ),

          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}