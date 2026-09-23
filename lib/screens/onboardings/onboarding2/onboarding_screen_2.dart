import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

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
          // Same total height as Screen1
          // ============================================================

          SizedBox(
            width: 300.w,
            height: 300.w,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 280.w,
                    ),
                    child: Image.asset(
                      'assets/images/page2.png',
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.image_outlined,
                          color: AppColors.iconBackground,
                          size: 40.sp,
                        ),
                      ),
                    ),
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
            width: 260.w,
            child: Text(
              l10n.onboardingTitle2,
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
            width: 300.w,
            child: Text(
              l10n.onboardingSubtitle2,
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