import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/main_nav_screen.dart';

import '../../../constants/app_colors.dart';
import '../../../services/premium_service.dart';
import '../../../services/analytics_service.dart';
import '../../../theme/theme_controller.dart';

class PremiumPlanScreen extends StatefulWidget {
  const PremiumPlanScreen({super.key});

  @override
  State<PremiumPlanScreen> createState() => _PremiumPlanScreenState();
}

class _PremiumPlanScreenState extends State<PremiumPlanScreen> {
  // ============================================================
  // COLORS
  // ============================================================

  static const Color teal = Color(0xFF018080);
  static const Color lightTeal = Color(0x1A018080);
  static const Color textBlack = Color(0xFF171717);
  static const Color textGrey = Color(0xFF777777);
  static const Color borderGrey = Color(0xFFD6D6D6);

  static const Color darkPlanBlue = Color(0xFF0066B2);
  static const Color darkPlanBlueDark = Color(0xFF002B4C);

  bool get _dark => AppColors.isDark(context);
  Color get _accent => _dark ? ThemeController.darkAccent : teal;
  Color get _heading => _dark ? Colors.white : teal;
  Color get _copy => _dark ? Colors.white : textBlack;
  Color get _muted => _dark ? Colors.white70 : textGrey;

  // ============================================================
  // TABLET SCALE
  // _tabletAdjust: tablet pe sab ka size yahan se kam/zyada karo
  //   chhota karna ho -> 0.85 se kam (0.80, 0.75)
  //   bara karna ho   -> 0.85 se zyada (0.90, 1.0)
  // ============================================================

  static const double _tabletAdjust = 0.85;

  bool get _isTablet => MediaQuery.sizeOf(context).width >= 600;

  // (tablet card width) / (Figma card width 356.96) * adjust
  double get _tabletRatio {
    final double screenW = MediaQuery.sizeOf(context).width;
    final double cardW = (screenW > 620 ? 620 : screenW) - 2 * 32;
    return cardW / 356.96 * _tabletAdjust;
  }

  double _tw(double v) => _isTablet ? v * _tabletRatio : v.w;
  double _th(double v) => _isTablet ? v * _tabletRatio : v.h;
  double _tsp(double v) => _isTablet ? v * _tabletRatio : v.sp;
  double _tr(double v) => _isTablet ? v * _tabletRatio : v.r;

  // ============================================================
  // ASSET
  // ============================================================

  static const String heroImage = 'assets/images/premium_hero.png';
  static const String darkHeroImage = 'assets/images/dark_hero.png';
  static const String darkCirclesImage = 'assets/images/dark_circles.png';
  static const String darkCheckImage = 'assets/images/dark_check.png';

  // ============================================================
  // DATA
  // ============================================================

  static const String yearlyPrice = '\$00.00';
  static const String yearlyPerWeek = '\$0.00';
  static const String monthlyPrice = '\$0.00';
  static const String trialPrice = '\$29.99';
  static const int trialDays = 3;

  static const List<String> _features = [
    'Watch every sober day',
    'Track how your body recovers',
    'Milestones that celebrate every win',
    'AI coach that learns your patterns',
  ];

  final AnalyticsService _analytics = AnalyticsService.instance;

  bool _yearlySelected = true;
  bool _isLoading = true;
  bool _isProcessing = false;
  bool _isPremium = false;
  bool _isCancelling = false;

  // ============================================================
  // INIT
  // ============================================================

  @override
  void initState() {
    super.initState();
    _loadPremiumStatus();
  }

  // ============================================================
  // LOGIC
  // ============================================================

  Future<void> _loadPremiumStatus() async {
    final isPremium = await PremiumService.instance.isPremium();
    final planType = await PremiumService.instance.getPlanType();

    if (!mounted) return;

    setState(() {
      _isPremium = isPremium;
      if (isPremium && planType != null) {
        _yearlySelected = planType == 'yearly';
      }
      _isLoading = false;
    });
  }

  void _goToHome() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const MainNavScreen()),
      (route) => false,
    );
  }

  Future<void> _startPremium() async {
    if (_isProcessing || _isPremium) return;

    final plan = _yearlySelected ? 'yearly' : 'monthly';

    _analytics.premiumPurchaseStarted(plan);

    setState(() {
      _isProcessing = true;
    });

    await PremiumService.instance.setPremium(true, planType: plan);

    if (!mounted) return;

    setState(() {
      _isProcessing = false;
      _isPremium = true;
    });

    _analytics.purchase(
      value: _yearlySelected ? 71.88 : 9.99,
      currency: 'USD',
      plan: plan,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('You are now Premium!')),
    );

    _goToHome();
  }

  Future<void> _cancelPremium() async {
    if (_isCancelling || !_isPremium) return;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: _dark ? ThemeController.darkCard : Colors.white,
        title: Text(
          'Cancel Premium?',
          style: TextStyle(
            color: _copy,
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
          ),
        ),
        content: Text(
          'You will lose access to all premium features.',
          style: TextStyle(color: _muted, fontSize: 14.sp),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              'Keep Premium',
              style: TextStyle(
                color: _accent,
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(
              'Cancel Premium',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
    );

    if (confirmed != true) {
      _analytics.premiumCancelAborted();
      return;
    }

    setState(() {
      _isCancelling = true;
    });

    await PremiumService.instance.setPremium(false);

    if (!mounted) return;

    setState(() {
      _isCancelling = false;
      _isPremium = false;
    });

    _analytics.premiumCancelled();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Premium cancelled')),
    );
  }

  void _restore() {
    // TODO: restore purchases
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        backgroundColor: AppColors.pageBackground(
          context,
          light: Colors.white,
        ),
        body: const Center(
          child: CircularProgressIndicator(color: teal),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.pageBackground(
        context,
        light: Colors.white,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final bool isTablet = constraints.maxWidth >= 600;

            // Tablet pe plain values (scale nahi), phone pe .w
            final double horizontalPadding = isTablet ? 32 : 20.w;

            // Tablet: cards ko dono (left + right) taraf se wide karne ke liye
            // content area bada (620). Baqi widgets ko `inset` se pehle jaisi
            // width (456) pe rakha hai.
            final double contentMaxWidth = isTablet ? 620 : double.infinity;
            final double inset = isTablet ? 50 : 0;

            Widget pad(Widget w) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: inset),
                  child: w,
                );

            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: contentMaxWidth),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      horizontalPadding,
                      0,
                      horizontalPadding,
                      _th(20),
                    ),
                    child: Column(
                      children: [
                        _buildTopBar(),
                        _buildHero(),
                        SizedBox(height: _th(4)),
                        pad(_buildTitle()),
                        SizedBox(height: _th(14)),
                        // Features ka left edge bilkul card ke left edge se start
                        _buildFeatures(),
                        SizedBox(height: _th(18)),
                        _buildYearlyCard(),
                        SizedBox(height: _th(16)),
                        _buildMonthlyCard(),
                        SizedBox(height: _th(14)),
                        _buildTrialText(),
                        SizedBox(height: _th(10)),
                        _buildContinueButton(),
                        SizedBox(height: _th(10)),
                        Text(
                          'No Commitment, Cancel Anytime',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: _tsp(11),
                            color: _muted,
                          ),
                        ),
                        SizedBox(height: _th(6)),
                        if (_isPremium) _buildCancelLink(),
                        SizedBox(height: _th(4)),
                        pad(_buildLinksRow()),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // ============================================================
  // TOP BAR
  // ============================================================

  Widget _buildTopBar() {
    return LayoutBuilder(
      builder: (context, c) {
        final bool tablet = MediaQuery.sizeOf(context).width >= 600;

        // Same tablet ratio jo features/cards use karte hain
        final double ratio = tablet ? _tabletRatio : 1.0;

        double sw(double v) => tablet ? v * ratio : v.w;
        double sh(double v) => tablet ? v * ratio : v.h;
        double ssp(double v) => tablet ? v * ratio : v.sp;
        double sr(double v) => tablet ? v * ratio : v.r;

        return SizedBox(
          height: sh(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // CLOSE (cross) — tablet pe card ke left edge se start
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                borderRadius: BorderRadius.circular(sr(20)),
                child: Padding(
                  padding: tablet
                      ? EdgeInsets.symmetric(vertical: sr(7))
                      : EdgeInsets.all(7.r),
                  child: Icon(Icons.close, color: _copy, size: ssp(22)),
                ),
              ),

              // RESTORE — tablet pe card ke right edge pe end
              InkWell(
                onTap: _restore,
                borderRadius: BorderRadius.circular(sr(26.64)),
                child: Container(
                  constraints: BoxConstraints(
                    minWidth: sw(68),
                    minHeight: sh(25),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: sw(10),
                    vertical: sh(3),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: _dark ? Colors.transparent : Colors.white,
                    borderRadius: BorderRadius.circular(sr(26.64)),
                    border: Border.all(
                      color: _dark ? Colors.white : _accent,
                      width: sw(0.87),
                    ),
                  ),
                  child: Text(
                    'Restore',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _dark ? Colors.white : teal,
                      fontSize: ssp(12),
                      fontWeight: FontWeight.w500,
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ============================================================
  // HERO
  // ============================================================

  Widget _buildHero() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        final heroHeight = width >= 600 ? 190.h : 0.25.sh;

        return SizedBox(
          width: double.infinity,
          height: heroHeight,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // DARK MODE ONLY: BACK CIRCLES
              if (_dark)
                Positioned(
                  left: 180,
                  top: 57,
                  width: 176,
                  height: 166,
                  child: Image.asset(
                    darkCirclesImage,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) {
                      return const SizedBox.shrink();
                    },
                  ),
                ),

              // LIGHT MODE ONLY: BACKGROUND IMAGE
              if (!_dark)
                Positioned(
                  left: 182,
                  top: 44,
                  width: 174.1016,
                  height: 166.1016,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/hero_back_image.png',
                      width: 174.1016,
                      height: 174.1016,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) {
                        return const SizedBox.shrink();
                      },
                    ),
                  ),
                ),

              // PREMIUM HERO IMAGE — FRONT
              Positioned.fill(
                child: Image.asset(
                  _dark ? darkHeroImage : heroImage,
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) {
                    return const SizedBox.shrink();
                  },
                ),
              ),

              // BOTTOM WHITE FADE — LIGHT MODE ONLY
              if (!_dark)
                Positioned(
                  left: -12,
                  bottom: 0,
                  child: IgnorePointer(
                    child: Container(
                      width: 413,
                      height: 117,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0),
                            Colors.white,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              // BOTTOM DARK FADE — DARK MODE ONLY
              if (_dark)
                Positioned(
                  left: -9.65,
                  bottom: 0,
                  child: IgnorePointer(
                    child: Container(
                      width: 412.2991027832031,
                      height: 60.84821319580078,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(0, 46, 81, 0),
                            Color(0xFF002E51),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  // ============================================================
  // TITLE
  // ============================================================

  Widget _buildTitle() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Quit Drinking',
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                fontSize: _tsp(41.02),
                fontWeight: FontWeight.w700,
                height: 1.0,
                letterSpacing: 0,
                color: _heading,
              ),
            ),
          ),
          SizedBox(height: _th(4)),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Stay Sober, Feel Better',
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                fontSize: _tsp(32.39),
                fontWeight: FontWeight.w700,
                height: 41.02 / 32.39,
                letterSpacing: 0,
                color: _heading,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // FEATURES
  // ============================================================

  Widget _buildFeatures() {
    return LayoutBuilder(
      builder: (context, c) {
        final bool tablet = MediaQuery.sizeOf(context).width >= 600;

        // Figma specs: width 356.96, height 152.85, gap 6
        const double designW = 356.96;
        const double designH = 152.85;
        const double designGap = 6;

        // Tablet ratio = (cards ki width) / (Figma features width)
        final double ratio = tablet ? _tabletRatio : 1.0;

        double sw(double v) => tablet ? v * ratio : v.w;
        double sh(double v) => tablet ? v * ratio : v.h;
        double ssp(double v) => tablet ? v * ratio : v.sp;

        final double gap = sh(designGap);
        // 4 rows + 3 gaps = poori height (152.85)
        final double rowH = sh((designH - designGap * 3) / 4);

        final double phoneW = designW.w;
        final double blockW = tablet
            ? c.maxWidth
            : (phoneW > c.maxWidth ? c.maxWidth : phoneW);

        return Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: blockW,
            height: sh(designH),
            child: Column(
              children: [
                for (int i = 0; i < _features.length; i++) ...[
                  SizedBox(
                    height: rowH,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _dark
                            ? Image.asset(
                                darkCheckImage,
                                width: sw(20),
                                height: sw(20),
                                fit: BoxFit.contain,
                                errorBuilder: (_, __, ___) {
                                  return Icon(
                                    Icons.check,
                                    size: ssp(20),
                                    color: Colors.white,
                                  );
                                },
                              )
                            : Image.asset(
                                'assets/images/check.png',
                                width: sw(20),
                                height: sw(20),
                                fit: BoxFit.contain,
                              ),
                        SizedBox(width: sw(10)),
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              _features[i],
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: ssp(19),
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                                letterSpacing: 0,
                                color: _copy,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (i != _features.length - 1) SizedBox(height: gap),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  // ============================================================
  // YEARLY CARD
  // ============================================================

  Widget _buildYearlyCard() {
    return InkWell(
      onTap: () {
        setState(() {
          _yearlySelected = true;
        });
        _analytics.premiumPlanSelected('yearly');
      },
      borderRadius: BorderRadius.circular(_tr(68)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: double.infinity,
            height: _th(80),
            padding: EdgeInsets.symmetric(horizontal: _tw(22)),
            decoration: BoxDecoration(
              gradient: _dark
                  ? const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [darkPlanBlue, darkPlanBlueDark],
                    )
                  : null,
              color: _dark
                  ? null
                  : (_yearlySelected ? lightTeal : Colors.white),
              borderRadius: BorderRadius.circular(_tr(68)),
              border: Border.all(
                color: _dark
                    ? (_yearlySelected ? Colors.white : _accent)
                    : (_yearlySelected ? teal : borderGrey),
                width: _yearlySelected ? _tw(2) : _tw(1),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yearly',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: _tsp(20),
                          fontWeight: FontWeight.w500,
                          height: 1.0,
                          letterSpacing: 0,
                          color: _copy,
                        ),
                      ),
                      SizedBox(height: _th(3)),
                      Text(
                        '$yearlyPerWeek/week',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: _tsp(15),
                          color: _dark ? Colors.white70 : _muted,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: _tw(12)),
                Text(
                  '$yearlyPrice/year',
                  maxLines: 1,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: _tsp(18),
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    letterSpacing: 0,
                    color: _copy,
                  ),
                ),
              ],
            ),
          ),

          // FREE TRIAL BADGE
          Positioned(
            top: -_th(10),
            right: _tw(48),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: _tw(9),
                vertical: _th(3),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: _accent,
                borderRadius: BorderRadius.circular(_tr(39)),
              ),
              child: Text(
                'Free Trial',
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: _tsp(13.72),
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // MONTHLY CARD
  // ============================================================

  Widget _buildMonthlyCard() {
    return InkWell(
      onTap: () {
        setState(() {
          _yearlySelected = false;
        });
        _analytics.premiumPlanSelected('monthly');
      },
      borderRadius: BorderRadius.circular(_tr(68)),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: _th(80),
        padding: EdgeInsets.symmetric(horizontal: _tw(22)),
        decoration: BoxDecoration(
          color: _dark
              ? darkPlanBlue
              : (!_yearlySelected ? lightTeal : Colors.white),
          borderRadius: BorderRadius.circular(_tr(68)),
          border: Border.all(
            color: _dark
                ? (!_yearlySelected ? Colors.white : _accent)
                : (!_yearlySelected ? teal : borderGrey),
            width: !_yearlySelected ? _tw(2) : _tw(1),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Monthly',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: _tsp(18),
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                  letterSpacing: 0,
                  color: _copy,
                ),
              ),
            ),
            SizedBox(width: _tw(12)),
            Text(
              '$monthlyPrice/month',
              maxLines: 1,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: _tsp(18),
                fontWeight: FontWeight.w500,
                height: 1.0,
                letterSpacing: 0,
                color: _copy,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // TRIAL TEXT
  // ============================================================

  Widget _buildTrialText() {
    return Text(
      '$trialDays days free trial, then pay $trialPrice',
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: _tsp(11),
        color: _muted,
        height: 1.2,
      ),
    );
  }

  // ============================================================
  // CONTINUE BUTTON
  // ============================================================

  Widget _buildContinueButton() {
    return SizedBox(
      width: double.infinity,
      height: _th(50),
      child: ElevatedButton(
        onPressed: (_isProcessing || _isPremium) ? null : _startPremium,
        style: ElevatedButton.styleFrom(
          backgroundColor: _dark ? Colors.white : teal,
          foregroundColor: _dark ? ThemeController.darkAccent : Colors.white,
          disabledBackgroundColor:
              (_dark ? Colors.white : teal).withValues(alpha: 0.6),
          disabledForegroundColor: Colors.white,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: _tw(20)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_tr(30)),
          ),
        ),
        child: _isProcessing
            ? SizedBox(
                width: _tw(20),
                height: _tw(20),
                child: const CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                _isPremium ? 'Already Premium' : 'Continue',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: _tsp(16),
                ),
              ),
      ),
    );
  }

  // ============================================================
  // CANCEL LINK
  // ============================================================

  Widget _buildCancelLink() {
    return InkWell(
      onTap: _isCancelling ? null : _cancelPremium,
      borderRadius: BorderRadius.circular(_tr(20)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: _tw(16),
          vertical: _th(4),
        ),
        child: _isCancelling
            ? SizedBox(
                width: _tw(14),
                height: _tw(14),
                child: const CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Colors.redAccent),
                ),
              )
            : Text(
                'Cancel Premium',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: _tsp(12),
                  color: Colors.redAccent,
                ),
              ),
      ),
    );
  }

  // ============================================================
  // PRIVACY / TERMS
  // ============================================================

  Widget _buildLinksRow() {
    final style = TextStyle(
      fontSize: _tsp(10),
      color: _copy,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: InkWell(
            onTap: () {
              // TODO: open Privacy Policy
            },
            child: Text(
              'Privacy Policy',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: style,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: _tw(8)),
          child: Text('•', style: style),
        ),
        Flexible(
          child: InkWell(
            onTap: () {
              // TODO: open Terms & Conditions
            },
            child: Text(
              'Terms & Conditions',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: style,
            ),
          ),
        ),
      ],
    );
  }
}