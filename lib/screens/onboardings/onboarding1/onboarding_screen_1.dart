import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 30),

          // Illustration
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: 353,
              height: 353,
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
                  child: const Icon(
                    Icons.image_outlined,
                    color: AppColors.textLightGrey,
                    size: 48,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 28),

          // Heading + subheading
          SizedBox(
            width: 293,
            child: Text(
              l10n.onboardingTitle1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w700,
                fontSize: 28,
                letterSpacing: -0.56,
                height: 36 / 28,
                color: AppColors.textBlack,
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: 269,
            child: Text(
              l10n.onboardingSubtitle1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 24 / 16,
                color: AppColors.textGrey,
              ),
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}