import 'package:flutter/material.dart';

/// Visual tier used to color badge chips/icons.
enum BadgeTier { bronze, silver, gold, platinum, diamond }

class MilestoneDefinition {
  final int days;
  final String shortLabel; // '1D', '1W', '1M'...
  final String title; // '24 Hours', 'One Week'...
  final String celebrationTitle; // '1 Week Alcohol Free!'
  final String celebrationMessage;
  final IconData icon;
  final BadgeTier tier;

  const MilestoneDefinition({
    required this.days,
    required this.shortLabel,
    required this.title,
    required this.celebrationTitle,
    required this.celebrationMessage,
    required this.icon,
    required this.tier,
  });
}

class MilestoneDefinitions {
  MilestoneDefinitions._();

  static const List<MilestoneDefinition> all = [
    MilestoneDefinition(
      days: 1,
      shortLabel: '1D',
      title: 'First Day',
      celebrationTitle: 'First Day Alcohol Free!',
      celebrationMessage:
      'You made it through the first day. That first step is the hardest — you did it.',
      icon: Icons.eco,
      tier: BadgeTier.bronze,
    ),
    MilestoneDefinition(
      days: 3,
      shortLabel: '3D',
      title: '3 Days Strong',
      celebrationTitle: '3 Days Alcohol Free!',
      celebrationMessage:
      'Three days in and still going strong. Your body is already starting to reset.',
      icon: Icons.local_fire_department,
      tier: BadgeTier.bronze,
    ),
    MilestoneDefinition(
      days: 7,
      shortLabel: '1W',
      title: 'One Week',
      celebrationTitle: '1 Week Alcohol Free!',
      celebrationMessage:
      'A full week of strength and courage. Your body is already healing.',
      icon: Icons.fitness_center,
      tier: BadgeTier.silver,
    ),
    MilestoneDefinition(
      days: 14,
      shortLabel: '2W',
      title: 'Two Weeks',
      celebrationTitle: '2 Weeks Alcohol Free!',
      celebrationMessage:
      'Two weeks of showing up for yourself, every single day.',
      icon: Icons.shield,
      tier: BadgeTier.silver,
    ),
    MilestoneDefinition(
      days: 30,
      shortLabel: '1M',
      title: 'One Month',
      celebrationTitle: '1 Month Alcohol Free!',
      celebrationMessage:
      'A whole month alcohol free. This is a real, lasting change.',
      icon: Icons.emoji_events,
      tier: BadgeTier.gold,
    ),
    MilestoneDefinition(
      days: 60,
      shortLabel: '60D',
      title: '60 Days Strong',
      celebrationTitle: '60 Days Alcohol Free!',
      celebrationMessage:
      'Two months of discipline and self-respect. Keep building on this.',
      icon: Icons.star,
      tier: BadgeTier.gold,
    ),
    MilestoneDefinition(
      days: 90,
      shortLabel: '90D',
      title: '90 Days Strong',
      celebrationTitle: '90 Days Alcohol Free!',
      celebrationMessage:
      'Three months in. New habits are becoming who you are.',
      icon: Icons.workspace_premium,
      tier: BadgeTier.gold,
    ),
    MilestoneDefinition(
      days: 180,
      shortLabel: '6M',
      title: 'Half-Year Hero',
      celebrationTitle: '6 Months Alcohol Free!',
      celebrationMessage:
      'Half a year of strength. Look at how far you have come.',
      icon: Icons.diamond,
      tier: BadgeTier.platinum,
    ),
    MilestoneDefinition(
      days: 365,
      shortLabel: '1Y',
      title: 'One Year Free',
      celebrationTitle: '1 Year Alcohol Free!',
      celebrationMessage:
      'A full year alcohol free. An incredible, life-changing achievement.',
      icon: Icons.military_tech,
      tier: BadgeTier.diamond,
    ),
  ];

  /// Highest milestone the user has already reached, or null.
  static MilestoneDefinition? highestUnlocked(int daysSober) {
    MilestoneDefinition? result;
    for (final m in all) {
      if (daysSober >= m.days) {
        result = m;
      } else {
        break;
      }
    }
    return result;
  }

  /// Next milestone still ahead of the user, or null if all are unlocked.
  static MilestoneDefinition? nextLocked(int daysSober) {
    for (final m in all) {
      if (daysSober < m.days) return m;
    }
    return null;
  }

  /// The threshold of the milestone right before [milestone], or 0.
  static int previousThreshold(MilestoneDefinition milestone) {
    final idx = all.indexOf(milestone);
    if (idx <= 0) return 0;
    return all[idx - 1].days;
  }
}