import 'package:flutter/material.dart';

enum BadgeStatus { completed, inProgress, locked }

class AchievementBadge {
  final String id;
  final String title;
  final String category; // 'Milestone' / 'Health' / 'Community' / 'Consistency'
  final IconData icon;
  final BadgeStatus status;

  /// Only meaningful when [status] is BadgeStatus.inProgress (0-100).
  final int progressPercent;

  const AchievementBadge({
    required this.id,
    required this.title,
    required this.category,
    required this.icon,
    required this.status,
    this.progressPercent = 0,
  });
}

class AchievementStats {
  String collectionTitle;
  int unlockedBadges;
  int totalBadges;

  /// "Fastest Growth" promo card at the bottom.
  String fastestGrowthCategory;
  int fastestGrowthPercent;

  List<AchievementBadge> badges;

  AchievementStats({
    this.collectionTitle = 'Mastering Life',
    this.unlockedBadges = 24,
    this.totalBadges = 48,
    this.fastestGrowthCategory = 'Health',
    this.fastestGrowthPercent = 30,
    List<AchievementBadge>? badges,
  }) : badges = badges ?? _defaultBadges();

  double get unlockedRatio =>
      totalBadges == 0 ? 0 : (unlockedBadges / totalBadges).clamp(0.0, 1.0);

  static List<AchievementBadge> _defaultBadges() => const [
    AchievementBadge(
      id: 'first_week',
      title: 'First Week',
      category: 'Milestone',
      icon: Icons.check_box_rounded,
      status: BadgeStatus.completed,
    ),
    AchievementBadge(
      id: 'deep_breath',
      title: 'Deep Breath',
      category: 'Health',
      icon: Icons.favorite,
      status: BadgeStatus.completed,
    ),
    AchievementBadge(
      id: 'helper_hand',
      title: 'Helper hand',
      category: 'Community',
      icon: Icons.pan_tool_outlined,
      status: BadgeStatus.inProgress,
      progressPercent: 75,
    ),
    AchievementBadge(
      id: 'one_month',
      title: 'One Month',
      category: 'Milestone',
      icon: Icons.lock_outline,
      status: BadgeStatus.locked,
    ),
    AchievementBadge(
      id: 'crystal_clear',
      title: 'Crystal Clear',
      category: 'Consistency',
      icon: Icons.auto_awesome,
      status: BadgeStatus.locked,
    ),
    AchievementBadge(
      id: 'body_revive',
      title: 'Body Revive',
      category: 'Health',
      icon: Icons.fitness_center,
      status: BadgeStatus.locked,
    ),
  ];
}