import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/profile_screen.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/stats/stats_screen.dart';
import 'package:new_quit_drinking_app/utils/responsive.dart';
import '../../constants/app_colors.dart';
import 'badges/badges_screen.dart';
import 'home_screen.dart';
import 'journal/journal_screen.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = const [
    HomeScreen(),
    StatsScreen(),
    JournalScreen(),
    BadgesScreen(),
    ProfileScreen(),
  ];

  Future<void> _handleBackPressed() async {
    if (_currentIndex != 0) {
      setState(() => _currentIndex = 0);
      return;
    }

    final l10n = AppLocalizations.of(context);
    if (l10n == null || !mounted) return;

    final shouldExit = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Exit App'),
        content: const Text('Do you want to exit the app?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Exit'),
          ),
        ],
      ),
    );

    if (shouldExit == true && mounted) {
      SystemNavigator.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, dynamic result) async {
        if (didPop) return;

        if (Navigator.canPop(context)) {
          Navigator.pop(context);
          return;
        }

        await _handleBackPressed();
      },
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _tabs,
        ),
      bottomNavigationBar: SafeArea(
  top: true,
   bottom: true,
  child: Padding(
    padding: EdgeInsets.fromLTRB(
      16.w,
      0,
      16.w,
      Responsive.isTablet(context) ? 6.h : 6.h,
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(28)),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 24,
          sigmaY: 24,
        ),
        child: Container(
          height: Responsive.navHeight(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: const Border(
              top: BorderSide(
                color: AppColors.bottomNavBorder,
                width: 1,
              ),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0D008080),
                blurRadius: 30,
                offset: Offset(0, -10),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _NavItem(
                icon: Icons.home_outlined,
                label: loc.navHomeLabel,
                isSelected: _currentIndex == 0,
                onTap: () => setState(() => _currentIndex = 0),
              ),
              _NavItem(
                icon: Icons.bar_chart_outlined,
                label: loc.navStatsLabel,
                isSelected: _currentIndex == 1,
                onTap: () => setState(() => _currentIndex = 1),
              ),
              _NavItem(
                icon: Icons.edit_note_outlined,
                label: loc.navJournalLabel,
                isSelected: _currentIndex == 2,
                onTap: () => setState(() => _currentIndex = 2),
              ),
              _NavItem(
                icon: Icons.emoji_events_outlined,
                label: loc.navBadgesLabel,
                isSelected: _currentIndex == 3,
                onTap: () => setState(() => _currentIndex = 3),
              ),
              _NavItem(
                icon: Icons.person_outline,
                label: loc.navProfileLabel,
                isSelected: _currentIndex == 4,
                onTap: () => setState(() => _currentIndex = 4),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: isSelected ? 18 : 10,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              color: isSelected ? AppColors.white : AppColors.textLightGrey,
              size: Responsive.iconSize(),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(
              fontSize: Responsive.labelFontSize(),
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              color: isSelected ? AppColors.primary : AppColors.textLightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
