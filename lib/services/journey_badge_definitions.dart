import 'package:flutter/material.dart';

enum JourneyBadgeCounter {
  journal,
  aiCoach,
  checkIns,
  personalGoals,
  moneySaved,
}

class JourneyBadgeDefinition {
  final String id;
  final String title;
  final String unlockedSubtitle;
  final IconData icon;
  final int threshold;
  final JourneyBadgeCounter counter;
  final BadgeTier tier;
  final bool isCurrency;

  const JourneyBadgeDefinition({
    required this.id,
    required this.title,
    required this.unlockedSubtitle,
    required this.icon,
    required this.threshold,
    required this.counter,
    required this.tier,
    this.isCurrency = false,
  });
}

class JourneyBadgeDefinitions {
  JourneyBadgeDefinitions._();

  // ============================================================
  // ALL 14 JOURNEY BADGES
  // ============================================================

  static const List<JourneyBadgeDefinition> all = [
    // ==========================================================
    // JOURNAL
    // ==========================================================

    JourneyBadgeDefinition(
      id: 'first_reflection',
      title: 'First\nReflection',
      unlockedSubtitle: '1 Journal Entry',
      icon: Icons.edit_note,
      threshold: 1,
      counter: JourneyBadgeCounter.journal,
      tier: BadgeTier.bronze,
    ),

    JourneyBadgeDefinition(
      id: 'open_book',
      title: 'Open Book',
      unlockedSubtitle: '10 Journal Entries',
      icon: Icons.menu_book,
      threshold: 10,
      counter: JourneyBadgeCounter.journal,
      tier: BadgeTier.silver,
    ),

    JourneyBadgeDefinition(
      id: 'dedicated_writer',
      title: 'Dedicated\nWriter',
      unlockedSubtitle: '30 Journal Entries',
      icon: Icons.history_edu,
      threshold: 30,
      counter: JourneyBadgeCounter.journal,
      tier: BadgeTier.gold,
    ),

    // ==========================================================
    // AI COACH
    // ==========================================================

    JourneyBadgeDefinition(
      id: 'first_conversation',
      title: 'First\nConversation',
      unlockedSubtitle: '1 AI Coach Chat',
      icon: Icons.smart_toy,
      threshold: 1,
      counter: JourneyBadgeCounter.aiCoach,
      tier: BadgeTier.bronze,
    ),

    JourneyBadgeDefinition(
      id: 'keep_talking',
      title: 'Keep Talking',
      unlockedSubtitle: '5 Conversations',
      icon: Icons.chat_bubble_outline,
      threshold: 5,
      counter: JourneyBadgeCounter.aiCoach,
      tier: BadgeTier.silver,
    ),

    JourneyBadgeDefinition(
      id: 'coach_companion',
      title: 'Coach\nCompanion',
      unlockedSubtitle: '20 Conversations',
      icon: Icons.handshake,
      threshold: 20,
      counter: JourneyBadgeCounter.aiCoach,
      tier: BadgeTier.gold,
    ),

    // ==========================================================
    // CHECK-INS
    // ==========================================================

    JourneyBadgeDefinition(
      id: 'check_in_habit',
      title: 'Check-In\nHabit',
      unlockedSubtitle: '7 Check-Ins',
      icon: Icons.calendar_today,
      threshold: 7,
      counter: JourneyBadgeCounter.checkIns,
      tier: BadgeTier.bronze,
    ),

    JourneyBadgeDefinition(
      id: 'consistency_pro',
      title: 'Consistency\nPro',
      unlockedSubtitle: '30 Check-Ins',
      icon: Icons.autorenew,
      threshold: 30,
      counter: JourneyBadgeCounter.checkIns,
      tier: BadgeTier.silver,
    ),

    JourneyBadgeDefinition(
      id: 'dedicated_journey',
      title: 'Dedicated\nJourney',
      unlockedSubtitle: '100 Check-Ins',
      icon: Icons.star_outline,
      threshold: 100,
      counter: JourneyBadgeCounter.checkIns,
      tier: BadgeTier.gold,
    ),

    // ==========================================================
    // GOALS
    // ==========================================================

    JourneyBadgeDefinition(
      id: 'goal_getter',
      title: 'Goal Getter',
      unlockedSubtitle: '3 Goals Completed',
      icon: Icons.flag_outlined,
      threshold: 3,
      counter: JourneyBadgeCounter.personalGoals,
      tier: BadgeTier.silver,
    ),

    JourneyBadgeDefinition(
      id: 'goal_achiever',
      title: 'Goal\nAchiever',
      unlockedSubtitle: '10 Goals Completed',
      icon: Icons.emoji_events,
      threshold: 10,
      counter: JourneyBadgeCounter.personalGoals,
      tier: BadgeTier.gold,
    ),

    // ==========================================================
    // MONEY SAVED
    // ==========================================================

    JourneyBadgeDefinition(
      id: 'first_savings',
      title: 'First\nSavings',
      unlockedSubtitle: '\$100 Saved',
      icon: Icons.savings,
      threshold: 100,
      counter: JourneyBadgeCounter.moneySaved,
      tier: BadgeTier.bronze,
      isCurrency: true,
    ),

    JourneyBadgeDefinition(
      id: 'smart_saver',
      title: 'Smart Saver',
      unlockedSubtitle: '\$500 Saved',
      icon: Icons.attach_money,
      threshold: 500,
      counter: JourneyBadgeCounter.moneySaved,
      tier: BadgeTier.silver,
      isCurrency: true,
    ),

    JourneyBadgeDefinition(
      id: 'big_saver',
      title: 'Big Saver',
      unlockedSubtitle: '\$1,000 Saved',
      icon: Icons.diamond,
      threshold: 1000,
      counter: JourneyBadgeCounter.moneySaved,
      tier: BadgeTier.platinum,
      isCurrency: true,
    ),
  ];
}


// ============================================================
// BADGE TIER
// ============================================================

enum BadgeTier {
  bronze,
  silver,
  gold,
  platinum,
  diamond,
}