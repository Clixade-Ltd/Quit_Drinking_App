import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/profile_screen.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/stats/stats_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      extendBody: true, // lets page content show behind the translucent nav bar
      body: IndexedStack(
        index: _currentIndex,
        children: _tabs,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(28)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
          child: Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.white,
              border: const Border(
                top: BorderSide(color: AppColors.bottomNavBorder, width: 1),
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
    );
  }
}

/// One bottom-nav item. Selected item shows the icon inside a filled
/// teal pill (matching the reference), with the label below in teal.
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
              size: 22,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              color: isSelected ? AppColors.primary : AppColors.textLightGrey,
            ),
          ),
        ],
      ),
    );
  }
}