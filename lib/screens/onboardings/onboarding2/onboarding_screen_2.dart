import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        // Illustration — centered in the available upper area
        Expanded(
          child: Center(
            child: Transform.translate(
              offset: const Offset(0, 30),
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
        ),

        // Text section
        Transform.translate(
          offset: const Offset(0, -25),
          child: Column(
            children: [
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
            ],
          ),
        ),
      ],
    );
  }
}