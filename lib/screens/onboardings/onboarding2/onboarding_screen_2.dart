import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 30),

          // Illustration — same total height (353) as Screen1, image centered inside
          SizedBox(
            width: 353,
            height: 353,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 280),
                    child: Image.asset(
                      'assets/images/page2.png',
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.image_outlined,
                          color: AppColors.iconBackground,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 28),

          // Heading — ab exact same Y position pe start hoga jaise Screen1
          SizedBox(
            width: 260,
            child: Text(
              l10n.onboardingTitle2,
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
            width: 300,
            child: Text(
              l10n.onboardingSubtitle2,
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