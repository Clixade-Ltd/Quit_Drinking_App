import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/main_nav_screen.dart';

import '../../../services/premium_service.dart';
import '../home_screen.dart';

import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class PremiumPlanScreen extends StatefulWidget {
  const PremiumPlanScreen({super.key});

  @override
  State<PremiumPlanScreen> createState() =>
      _PersonalizedPlanScreenState();
}

class _PersonalizedPlanScreenState extends State<PremiumPlanScreen> {
  static const Color teal = Color(0xFF087F7B);
  static const Color lightTeal = Color(0xFFEAF6F5);
  static const Color textBlack = Color(0xFF171717);
  static const Color textGrey = Color(0xFF777777);

  bool _yearlySelected = true;

  // ============================================================
  // PREMIUM STATUS
  // ============================================================

  bool _isLoading = true;
  bool _isProcessing = false;
  bool _isPremium = false;
  bool _isCancelling = false;

  // Builds the same 8 feature titles as before, but localized. Needs
  // `loc` so it's a method instead of a static const list now.
  List<String> _featureTitles(AppLocalizations loc) => [
    loc.featureAdvancedInsights,
    loc.featureUnlimitedJournal,
    loc.featureUnlimitedChat,
    loc.featureCommunityGroups,
    loc.featurePrioritySupport,
    loc.featureThemePacks,
    loc.featureDataExport,
    loc.featureAdFree,
  ];

  @override
  void initState() {
    super.initState();
    _loadPremiumStatus();
  }

  Future<void> _loadPremiumStatus() async {
    final isPremium = await PremiumService.instance.isPremium();
    final planType = await PremiumService.instance.getPlanType();

    if (!mounted) return;

    setState(() {
      _isPremium = isPremium;

      // If they're already premium, pre-select whichever plan they're
      // actually on instead of defaulting to yearly.
      if (isPremium && planType != null) {
        _yearlySelected = planType == 'yearly';
      }

      _isLoading = false;
    });
  }

  void _goToHome() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (_) => const MainNavScreen(),
      ),
          (route) => false,
    );
  }

  // ============================================================
  // START PREMIUM
  // ============================================================
  //
  // No real payment flow yet — this sets the local premium flag
  // directly via PremiumService. When real billing is added, swap
  // this method's body for the actual purchase call and only call
  // PremiumService.instance.setPremium(true, ...) on success.
  //
  // ============================================================

  Future<void> _startPremium() async {
    if (_isProcessing || _isPremium) return;

    setState(() => _isProcessing = true);

    await PremiumService.instance.setPremium(
      true,
      planType: _yearlySelected ? 'yearly' : 'monthly',
    );

    if (!mounted) return;

    setState(() {
      _isProcessing = false;
      _isPremium = true;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.nowPremiumMessage),
      ),
    );

    _goToHome();
  }

  // ============================================================
  // CANCEL PREMIUM
  // ============================================================
  //
  // Same pattern as _startPremium — flips the local flag directly
  // via PremiumService. When real billing is added, this should
  // instead deep-link to the platform's subscription management
  // (App Store / Play Store) rather than cancelling locally.
  //
  // ============================================================

  Future<void> _cancelPremium() async {
    if (_isCancelling || !_isPremium) return;

    final loc = AppLocalizations.of(context)!;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            loc.cancelPremiumTitle,
            style: const TextStyle(
              color: textBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          content: Text(
            loc.cancelPremiumMessage,
            style: const TextStyle(color: textGrey),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(
                loc.keepPremiumLabel,
                style: const TextStyle(color: teal, fontWeight: FontWeight.w600),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(
                loc.cancelPremiumLabel,
                style: const TextStyle(color: Colors.redAccent),
              ),
            ),
          ],
        );
      },
    );

    if (confirmed != true) return;

    setState(() => _isCancelling = true);

    await PremiumService.instance.setPremium(false);

    if (!mounted) return;

    setState(() {
      _isCancelling = false;
      _isPremium = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.premiumCancelledMessage),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CircularProgressIndicator(color: teal),
        ),
      );
    }

    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 14),
          child: Column(
            children: [
              // ---------------------------------------------------------
              // TOP BAR
              // ---------------------------------------------------------
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    borderRadius: BorderRadius.circular(20),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.close,
                        color: Color(0xFF666666),
                        size: 22,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Center(
                      child: Text(
                        loc.premiumBadgeLabel,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          letterSpacing: 1.2,
                          color: teal,
                        ),
                      ),
                    ),
                  ),

                  // Keeps PREMIUM perfectly centered
                  const SizedBox(width: 38),
                ],
              ),

              const SizedBox(height: 12),

              // ---------------------------------------------------------
              // PREMIUM ICON
              // ---------------------------------------------------------
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: teal,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: const Icon(
                  Icons.diamond_outlined,
                  color: Colors.white,
                  size: 26,
                ),
              ),

              const SizedBox(height: 14),

              // ---------------------------------------------------------
              // TITLE
              // ---------------------------------------------------------
              Text(
                _isPremium
                    ? loc.premiumMemberTitle
                    : loc.unlockFullRecoveryTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  height: 1.15,
                  color: teal,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                _isPremium
                    ? loc.premiumMemberSubtitle
                    : loc.premiumJoinSubtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.4,
                  color: textGrey,
                ),
              ),

              // ---------------------------------------------------------
              // FEATURE CHECKLIST (titles only, no descriptions)
              // Fills whatever vertical space is left between the intro
              // copy above and the pricing cards below.
              // ---------------------------------------------------------
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (final title in _featureTitles(loc))
                      _buildChecklistItem(title),
                  ],
                ),
              ),

              // ---------------------------------------------------------
              // MONTHLY / YEARLY PLANS — side by side
              // ---------------------------------------------------------
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: _buildPlanCard(
                      title: loc.monthlyPlanLabel,
                      price: '\$9.99',
                      suffix: loc.perMonthSuffix,
                      bottomText: loc.cancelAnytimeLabel,
                      selected: !_yearlySelected,
                      onTap: () {
                        setState(() {
                          _yearlySelected = false;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(child: _buildYearlyCard(loc)),
                ],
              ),

              const SizedBox(height: 16),

              // ---------------------------------------------------------
              // START PREMIUM
              // ---------------------------------------------------------
              SizedBox(
                width: double.infinity,
                height: 46,
                child: ElevatedButton(
                  onPressed:
                  (_isProcessing || _isPremium) ? null : _startPremium,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: teal,
                    foregroundColor: Colors.white,
                    disabledBackgroundColor: teal.withOpacity(0.6),
                    disabledForegroundColor: Colors.white,
                    elevation: 3,
                    shadowColor: teal.withOpacity(0.25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: _isProcessing
                      ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                      : Text(
                    _isPremium ? loc.alreadyPremiumLabel : loc.startPremiumLabel,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // No commitment / cancel anytime
              Text(
                _isPremium
                    ? loc.manageSubscriptionLabel
                    : loc.noCommitmentLabel,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: textGrey,
                ),
              ),

              const SizedBox(height: 6),

              // ---------------------------------------------------------
              // FREE PLAN
              // ---------------------------------------------------------
              if (!_isPremium)
                InkWell(
                  onTap: _goToHome,
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: Text(
                      loc.continueFreePlanLabel,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: teal,
                      ),
                    ),
                  ),
                )
              else
                Column(
                  children: [
                    InkWell(
                      onTap: _goToHome,
                      borderRadius: BorderRadius.circular(20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 4,
                        ),
                        child: Text(
                          loc.backToHomeLabel,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: teal,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    InkWell(
                      onTap: _isCancelling ? null : _cancelPremium,
                      borderRadius: BorderRadius.circular(20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 4,
                        ),
                        child: _isCancelling
                            ? const SizedBox(
                          width: 14,
                          height: 14,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.redAccent,
                            ),
                          ),
                        )
                            : Text(
                          loc.cancelPremiumLabel,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              const SizedBox(height: 4),

              // Terms of Use | Privacy Policy
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // TODO: open Terms of Use
                    },
                    child: Text(
                      loc.termsOfUseLabel,
                      style: const TextStyle(
                        fontSize: 11,
                        color: textGrey,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      '|',
                      style: TextStyle(fontSize: 11, color: textGrey),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // TODO: open Privacy Policy
                    },
                    child: Text(
                      AppLocalizations.of(context)!.privacyPolicy,
                      style: const TextStyle(
                        fontSize: 11,
                        color: textGrey,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =====================================================================
  // CHECKLIST ITEM (check circle + title, no description)
  // =====================================================================

  Widget _buildChecklistItem(String title) {
    return Row(
      children: [
        Container(
          width: 17,
          height: 17,
          decoration: const BoxDecoration(
            color: teal,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 12,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: textBlack,
            ),
          ),
        ),
      ],
    );
  }

  // =====================================================================
  // MONTHLY CARD
  // =====================================================================

  Widget _buildPlanCard({
    required String title,
    required String price,
    required String suffix,
    required String bottomText,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected
                ? teal
                : const Color(0xFFF1F1F1),
            width: selected ? 2 : 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x08000000),
              blurRadius: 18,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: selected ? teal : textBlack,
              ),
            ),

            const SizedBox(height: 10),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: teal,
                  ),
                ),
                const SizedBox(width: 3),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    suffix,
                    style: const TextStyle(
                      fontSize: 11,
                      color: textGrey,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 4),

            Text(
              bottomText,
              style: const TextStyle(
                fontSize: 10,
                color: textGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // YEARLY CARD
  // =====================================================================

  Widget _buildYearlyCard(AppLocalizations loc) {
    return InkWell(
      onTap: () {
        setState(() {
          _yearlySelected = true;
        });
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _yearlySelected
                ? teal
                : const Color(0xFFE7E7E7),
            width: _yearlySelected ? 2 : 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x08000000),
              blurRadius: 18,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 18, 16, 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.yearlyPlanLabel,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: teal,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        '\$5.99',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: teal,
                        ),
                      ),
                      const SizedBox(width: 3),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Text(
                          loc.perMonthSuffix,
                          style: const TextStyle(
                            fontSize: 11,
                            color: textGrey,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 4),

                  Text(
                    loc.billedAnnuallyLabel('\$71.88'),
                    style: const TextStyle(
                      fontSize: 10,
                      color: textGrey,
                    ),
                  ),
                ],
              ),
            ),

            // Best Value badge
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: const BoxDecoration(
                  color: teal,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(14),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Text(
                  loc.bestValueLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}