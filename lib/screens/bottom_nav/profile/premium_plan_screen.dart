import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/main_nav_screen.dart';

import '../../../services/premium_service.dart';
import '../../../services/analytics_service.dart';
import '../home_screen.dart';

import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class PremiumPlanScreen extends StatefulWidget {
  const PremiumPlanScreen({super.key});

  @override
  State<PremiumPlanScreen> createState() =>
      _PersonalizedPlanScreenState();
}

class _PersonalizedPlanScreenState
    extends State<PremiumPlanScreen> {
  static const Color teal = Color(0xFF087F7B);
  static const Color lightTeal = Color(0xFFEAF6F5);
  static const Color textBlack = Color(0xFF171717);
  static const Color textGrey = Color(0xFF777777);

  final AnalyticsService _analytics =
      AnalyticsService.instance;

  bool _yearlySelected = true;

  // ============================================================
  // PREMIUM STATUS
  // ============================================================

  bool _isLoading = true;
  bool _isProcessing = false;
  bool _isPremium = false;
  bool _isCancelling = false;

  // ============================================================
  // FEATURE TITLES
  // ============================================================

  List<String> _featureTitles(
    AppLocalizations loc,
  ) =>
      [
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

  // ============================================================
  // LOAD PREMIUM STATUS
  // ============================================================

  Future<void> _loadPremiumStatus() async {
    final isPremium =
        await PremiumService.instance.isPremium();

    final planType =
        await PremiumService.instance.getPlanType();

    if (!mounted) return;

    setState(() {
      _isPremium = isPremium;

      if (isPremium && planType != null) {
        _yearlySelected =
            planType == 'yearly';
      }

      _isLoading = false;
    });
  }

  // ============================================================
  // GO TO HOME
  // ============================================================

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

  Future<void> _startPremium() async {
    if (_isProcessing || _isPremium) return;

    final plan =
        _yearlySelected ? 'yearly' : 'monthly';

    _analytics.premiumPurchaseStarted(plan);

    setState(() {
      _isProcessing = true;
    });

    await PremiumService.instance.setPremium(
      true,
      planType: plan,
    );

    if (!mounted) return;

    setState(() {
      _isProcessing = false;
      _isPremium = true;
    });

    _analytics.purchase(
      value: _yearlySelected
          ? 71.88
          : 9.99,
      currency: 'USD',
      plan: plan,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          AppLocalizations.of(context)!
              .nowPremiumMessage,
        ),
      ),
    );

    _goToHome();
  }

  // ============================================================
  // CANCEL PREMIUM
  // ============================================================

  Future<void> _cancelPremium() async {
    if (_isCancelling || !_isPremium) return;

    final loc =
        AppLocalizations.of(context)!;

    final confirmed =
        await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            loc.cancelPremiumTitle,
            style: TextStyle(
              color: textBlack,
              fontWeight:
                  FontWeight.w700,
              fontSize: 20.sp,
            ),
          ),
          content: Text(
            loc.cancelPremiumMessage,
            style: TextStyle(
              color: textGrey,
              fontSize: 14.sp,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context)
                      .pop(false),
              child: Text(
                loc.keepPremiumLabel,
                style: TextStyle(
                  color: teal,
                  fontWeight:
                      FontWeight.w600,
                  fontSize: 14.sp,
                ),
              ),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.of(context)
                      .pop(true),
              child: Text(
                loc.cancelPremiumLabel,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (confirmed != true) {
      _analytics
          .premiumCancelAborted();
      return;
    }

    setState(() {
      _isCancelling = true;
    });

    await PremiumService.instance
        .setPremium(false);

    if (!mounted) return;

    setState(() {
      _isCancelling = false;
      _isPremium = false;
    });

    _analytics.premiumCancelled();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          AppLocalizations.of(context)!
              .premiumCancelledMessage,
        ),
      ),
    );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CircularProgressIndicator(
            color: teal,
          ),
        ),
      );
    }

    final loc =
        AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics:
              const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20.w,
              8.h,
              20.w,
              14.h,
            ),
            child: Column(
              children: [
                // ==================================================
                // TOP BAR
                // ==================================================

                Row(
                  children: [
                    InkWell(
                      onTap: () =>
                          Navigator.of(context)
                              .pop(),
                      borderRadius:
                          BorderRadius.circular(
                        20.r,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.all(8.r),
                        child: Icon(
                          Icons.close,
                          color:
                              const Color(
                            0xFF666666,
                          ),
                          size: 22.sp,
                        ),
                      ),
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          loc.premiumBadgeLabel,
                          maxLines: 1,
                          overflow:
                              TextOverflow
                                  .ellipsis,
                          style: TextStyle(
                            fontWeight:
                                FontWeight.w700,
                            fontSize: 12.sp,
                            letterSpacing: 1.2,
                            color: teal,
                          ),
                        ),
                      ),
                    ),

                    // Keeps PREMIUM centered
                    SizedBox(width: 38.w),
                  ],
                ),

                SizedBox(height: 12.h),

                // ==================================================
                // PREMIUM ICON
                // ==================================================

                Container(
                  width: 46.w,
                  height: 46.w,
                  decoration:
                      BoxDecoration(
                    color: teal,
                    borderRadius:
                        BorderRadius.circular(
                      13.r,
                    ),
                  ),
                  child: Icon(
                    Icons.diamond_outlined,
                    color: Colors.white,
                    size: 26.sp,
                  ),
                ),

                SizedBox(height: 14.h),

                // ==================================================
                // TITLE
                // ==================================================

                Text(
                  _isPremium
                      ? loc.premiumMemberTitle
                      : loc.unlockFullRecoveryTitle,
                  textAlign:
                      TextAlign.center,
                  maxLines: 3,
                  overflow:
                      TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w700,
                    fontSize: 20.sp,
                    height: 1.15,
                    color: teal,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  _isPremium
                      ? loc.premiumMemberSubtitle
                      : loc.premiumJoinSubtitle,
                  textAlign:
                      TextAlign.center,
                  maxLines: 4,
                  overflow:
                      TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w400,
                    fontSize: 12.sp,
                    height: 1.4,
                    color: textGrey,
                  ),
                ),

                // ==================================================
                // FEATURE CHECKLIST
                // ==================================================

                SizedBox(height: 14.h),

                Column(
                  mainAxisSize:
                      MainAxisSize.min,
                  children: [
                    for (final title
                        in _featureTitles(loc))
                      Padding(
                        padding:
                            EdgeInsets.symmetric(
                          vertical: 5.h,
                        ),
                        child:
                            _buildChecklistItem(
                          title,
                        ),
                      ),
                  ],
                ),

                SizedBox(height: 12.h),

                // ==================================================
                // MONTHLY / YEARLY PLANS
                // ==================================================

                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child:
                          _buildPlanCard(
                        title:
                            loc.monthlyPlanLabel,
                        price: '\$9.99',
                        suffix:
                            loc.perMonthSuffix,
                        bottomText:
                            loc.cancelAnytimeLabel,
                        selected:
                            !_yearlySelected,
                        onTap: () {
                          setState(() {
                            _yearlySelected =
                                false;
                          });

                          _analytics
                              .premiumPlanSelected(
                            'monthly',
                          );
                        },
                      ),
                    ),

                    SizedBox(width: 12.w),

                    Expanded(
                      child:
                          _buildYearlyCard(loc),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                // ==================================================
                // START PREMIUM
                // ==================================================

                SizedBox(
                  width: double.infinity,
                  height: 46.h,
                  child: ElevatedButton(
                    onPressed:
                        (_isProcessing ||
                                _isPremium)
                            ? null
                            : _startPremium,
                    style:
                        ElevatedButton.styleFrom(
                      backgroundColor:
                          teal,
                      foregroundColor:
                          Colors.white,
                      disabledBackgroundColor:
                          teal.withOpacity(
                        0.6,
                      ),
                      disabledForegroundColor:
                          Colors.white,
                      elevation: 3,
                      shadowColor:
                          teal.withOpacity(
                        0.25,
                      ),
                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius
                                .circular(
                          11.r,
                        ),
                      ),
                    ),
                    child: _isProcessing
                        ? SizedBox(
                            width: 18.w,
                            height: 18.w,
                            child:
                                const CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor:
                                  AlwaysStoppedAnimation<
                                      Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : Text(
                            _isPremium
                                ? loc
                                    .alreadyPremiumLabel
                                : loc
                                    .startPremiumLabel,
                            style:
                                TextStyle(
                              fontWeight:
                                  FontWeight
                                      .w600,
                              fontSize: 13.sp,
                            ),
                          ),
                  ),
                ),

                SizedBox(height: 8.h),

                // ==================================================
                // COMMITMENT TEXT
                // ==================================================

                Text(
                  _isPremium
                      ? loc.manageSubscriptionLabel
                      : loc.noCommitmentLabel,
                  textAlign:
                      TextAlign.center,
                  maxLines: 2,
                  overflow:
                      TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w400,
                    fontSize: 11.sp,
                    color: textGrey,
                  ),
                ),

                SizedBox(height: 6.h),

                // ==================================================
                // FREE / HOME / CANCEL
                // ==================================================

                if (!_isPremium)
                  InkWell(
                    onTap: _goToHome,
                    borderRadius:
                        BorderRadius.circular(
                      20.r,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 4.h,
                      ),
                      child: Text(
                        loc
                            .continueFreePlanLabel,
                        style: TextStyle(
                          fontWeight:
                              FontWeight.w600,
                          fontSize: 12.sp,
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
                        borderRadius:
                            BorderRadius.circular(
                          20.r,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 4.h,
                          ),
                          child: Text(
                            loc.backToHomeLabel,
                            style: TextStyle(
                              fontWeight:
                                  FontWeight
                                      .w600,
                              fontSize: 12.sp,
                              color: teal,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 2.h),

                      InkWell(
                        onTap: _isCancelling
                            ? null
                            : _cancelPremium,
                        borderRadius:
                            BorderRadius.circular(
                          20.r,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 4.h,
                          ),
                          child: _isCancelling
                              ? SizedBox(
                                  width: 14.w,
                                  height: 14.w,
                                  child:
                                      const CircularProgressIndicator(
                                    strokeWidth:
                                        2,
                                    valueColor:
                                        AlwaysStoppedAnimation<
                                            Color>(
                                      Colors
                                          .redAccent,
                                    ),
                                  ),
                                )
                              : Text(
                                  loc
                                      .cancelPremiumLabel,
                                  style:
                                      TextStyle(
                                    fontWeight:
                                        FontWeight
                                            .w600,
                                    fontSize:
                                        12.sp,
                                    color: Colors
                                        .redAccent,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),

                SizedBox(height: 4.h),

                // ==================================================
                // TERMS / PRIVACY
                // ==================================================

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          // TODO: open Terms of Use
                        },
                        child: Text(
                          loc.termsOfUseLabel,
                          maxLines: 1,
                          overflow:
                              TextOverflow
                                  .ellipsis,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: textGrey,
                            decoration:
                                TextDecoration
                                    .underline,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(
                        horizontal: 6.w,
                      ),
                      child: Text(
                        '|',
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: textGrey,
                        ),
                      ),
                    ),

                    Flexible(
                      child: InkWell(
                        onTap: () {
                          // TODO: open Privacy Policy
                        },
                        child: Text(
                          loc.privacyPolicy,
                          maxLines: 1,
                          overflow:
                              TextOverflow
                                  .ellipsis,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: textGrey,
                            decoration:
                                TextDecoration
                                    .underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // CHECKLIST ITEM
  // ============================================================

  Widget _buildChecklistItem(
    String title,
  ) {
    return Row(
      children: [
        Container(
          width: 17.w,
          height: 17.w,
          decoration:
              const BoxDecoration(
            color: teal,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: 12.sp,
          ),
        ),

        SizedBox(width: 10.w),

        Expanded(
          child: Text(
            title,
            maxLines: 2,
            overflow:
                TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight:
                  FontWeight.w500,
              fontSize: 12.sp,
              color: textBlack,
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // MONTHLY CARD
  // ============================================================

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
      borderRadius:
          BorderRadius.circular(16.r),
      child: AnimatedContainer(
        duration:
            const Duration(milliseconds: 200),
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(
          16.w,
          16.h,
          16.w,
          14.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(16.r),
          border: Border.all(
            color: selected
                ? teal
                : const Color(0xFFF1F1F1),
            width: selected
                ? 2.w
                : 1.w,
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
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow:
                  TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight:
                    FontWeight.w500,
                fontSize: 14.sp,
                color: selected
                    ? teal
                    : textBlack,
              ),
            ),

            SizedBox(height: 10.h),

            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    price,
                    maxLines: 1,
                    overflow:
                        TextOverflow
                            .ellipsis,
                    style: TextStyle(
                      fontWeight:
                          FontWeight.w700,
                      fontSize: 20.sp,
                      color: teal,
                    ),
                  ),
                ),

                SizedBox(width: 3.w),

                Padding(
                  padding:
                      EdgeInsets.only(
                    bottom: 3.h,
                  ),
                  child: Text(
                    suffix,
                    maxLines: 1,
                    overflow:
                        TextOverflow
                            .ellipsis,
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: textGrey,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 4.h),

            Text(
              bottomText,
              maxLines: 2,
              overflow:
                  TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.sp,
                color: textGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // YEARLY CARD
  // ============================================================

  Widget _buildYearlyCard(
    AppLocalizations loc,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          _yearlySelected = true;
        });

        _analytics
            .premiumPlanSelected(
          'yearly',
        );
      },
      borderRadius:
          BorderRadius.circular(16.r),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(16.r),
          border: Border.all(
            color: _yearlySelected
                ? teal
                : const Color(0xFFE7E7E7),
            width: _yearlySelected
                ? 2.w
                : 1.w,
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
              padding: EdgeInsets.fromLTRB(
                16.w,
                18.h,
                16.w,
                14.h,
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.yearlyPlanLabel,
                    maxLines: 1,
                    overflow:
                        TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight:
                          FontWeight.w500,
                      fontSize: 14.sp,
                      color: teal,
                    ),
                  ),

                  SizedBox(height: 10.h),

                  Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Text(
                          '\$5.99',
                          maxLines: 1,
                          overflow:
                              TextOverflow
                                  .ellipsis,
                          style: TextStyle(
                            fontWeight:
                                FontWeight.w700,
                            fontSize: 20.sp,
                            color: teal,
                          ),
                        ),
                      ),

                      SizedBox(width: 3.w),

                      Padding(
                        padding:
                            EdgeInsets.only(
                          bottom: 3.h,
                        ),
                        child: Text(
                          loc.perMonthSuffix,
                          maxLines: 1,
                          overflow:
                              TextOverflow
                                  .ellipsis,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: textGrey,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 4.h),

                  Text(
                    loc.billedAnnuallyLabel(
                      '\$71.88',
                    ),
                    maxLines: 2,
                    overflow:
                        TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: textGrey,
                    ),
                  ),
                ],
              ),
            ),

            // ==================================================
            // BEST VALUE BADGE
            // ==================================================

            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding:
                    EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 5.h,
                ),
                decoration:
                    BoxDecoration(
                  color: teal,
                  borderRadius:
                      BorderRadius.only(
                    topRight:
                        Radius.circular(
                      14.r,
                    ),
                    bottomLeft:
                        Radius.circular(
                      8.r,
                    ),
                  ),
                ),
                child: Text(
                  loc.bestValueLabel,
                  maxLines: 1,
                  overflow:
                      TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight:
                        FontWeight.w500,
                    fontSize: 9.sp,
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