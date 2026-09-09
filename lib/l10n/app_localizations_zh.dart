// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get skip => 'Skip';

  @override
  String get continueButton => 'Continue';

  @override
  String get getStarted => 'Get Started';

  @override
  String get onboardingTitle1 => 'Take Control of Your Life';

  @override
  String get onboardingSubtitle1 =>
      'Track your journey, celebrate every achievement, and become healthier one day at a time.';

  @override
  String get onboardingTitle2 => 'Your AI Recovery Companion';

  @override
  String get onboardingSubtitle2 =>
      'Receive personalized guidance, healthy habits, motivation reminders, and progress reports designed around your journey.';

  @override
  String get goodMorning => 'Good Morning';

  @override
  String get goodAfternoon => 'Good Afternoon';

  @override
  String get goodEvening => 'Good Evening';

  @override
  String get goodNight => 'Good Night';

  @override
  String get embracingClarity => 'Embracing clarity, one day at a time.';

  @override
  String get streakLabel => 'STREAK';

  @override
  String get goalLabel => 'Goal';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Days',
      one: '$count Day',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium Plan';

  @override
  String get premiumPlanSubtitle => 'Unlock your full recovery experience';

  @override
  String get accountAndSupport => 'ACCOUNT & SUPPORT';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get privacyPolicySubtitle =>
      'Manage data sharing and account security';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get termsOfServiceSubtitle => 'FAQs, contact us, and resources';

  @override
  String get shareApp => 'Share App';

  @override
  String get shareAppSubtitle => 'Share app with your friends';

  @override
  String get resetData => 'Reset Data';

  @override
  String get resetDataSubtitle => 'Erase everything saved on this device';

  @override
  String get resetAllDataTitle => 'Reset all data?';

  @override
  String get resetAllDataMessage =>
      'This clears everything saved on this device — profile, journal entries, and progress — and cannot be undone.';

  @override
  String get cancel => 'Cancel';

  @override
  String get reset => 'Reset';

  @override
  String get chooseFromGallery => 'Choose from Gallery';

  @override
  String get takePhoto => 'Take Photo';

  @override
  String get removePhoto => 'Remove Photo';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Could not update photo: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Could not remove photo: $error';
  }

  @override
  String get photoTooLarge =>
      'That photo is too large even after compression — please try a different one.';

  @override
  String get unableToLoadProfile => 'Unable to load your profile';

  @override
  String get pleaseTryAgain => 'Please try again.';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get profileNotFound => 'Profile not found';

  @override
  String get refresh => 'Refresh';

  @override
  String get noProfileDataFound => 'No profile data found on this device yet.';

  @override
  String couldNotResetData(String error) {
    return 'Could not reset data: $error';
  }

  @override
  String get navHome => 'Home';

  @override
  String get navStats => 'Stats';

  @override
  String get navJournal => 'Journal';

  @override
  String get navBadges => 'Badges';

  @override
  String get navProfile => 'Profile';

  @override
  String featureComingSoon(String feature) {
    return '$feature will be available soon.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Quit Drinking';

  @override
  String get splashSubtitle =>
      'Take the first step towards an\nAlcohol free life';

  @override
  String get preparingJourney => 'Preparing your\njourney';

  @override
  String get taskMorningMeditation => 'Morning Meditation (10m)';

  @override
  String get taskReadChapter => 'Read Chapter 4 of \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Evening Gratitude Journal';

  @override
  String get close => 'Close';

  @override
  String get youAreDoingGreat => 'You\'re doing great!';

  @override
  String get shareMilestone => 'Share Milestone';

  @override
  String shareMilestoneMessage(int days) {
    return 'I\'m on day $days of my recovery journey! 💪';
  }

  @override
  String get shareMilestoneSubject => 'My recovery milestone';

  @override
  String get weeklyReportReadyTitle => 'Your weekly report is ready';

  @override
  String get weeklyReportReadySubtitle => 'Tap to see how your week went';

  @override
  String get howAreYouFeeling => 'How are you feeling?';

  @override
  String get moodTough => 'Tough';

  @override
  String get moodOkay => 'Okay';

  @override
  String get moodGood => 'Good';

  @override
  String get moneySaved => 'Money Saved';

  @override
  String get caloriesSaved => 'Calories Saved';

  @override
  String get healthScore => 'Health Score';

  @override
  String get drinksAvoided => 'Drinks Avoided';

  @override
  String get estimated => 'Estimated';

  @override
  String get aiGenerated => 'AI generated';

  @override
  String get daysCapsLabel => 'DAYS';

  @override
  String get todaysMotivation => 'Today\'s Motivation';

  @override
  String get defaultMotivationQuote =>
      'You\'ve successfully maintained your commitment. Keep riding the wave of positive change.';

  @override
  String get talkToCoach => 'Talk to coach';

  @override
  String get havingACraving => 'I\'m Having a Craving';

  @override
  String get unlockWeeklyReportsTitle => 'Unlock weekly reports';

  @override
  String get unlockWeeklyReportsMessage =>
      'See your sober days, mood trends, and personalized AI feedback every week. Upgrade to Premium to unlock.';

  @override
  String get maybeLater => 'Maybe later';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get weeklyReportTitle => 'Weekly Report';

  @override
  String get weeklyReportsPremiumTitle =>
      'Weekly reports are a Premium feature';

  @override
  String get weeklyReportsPremiumMessage =>
      'See your sober days, mood trends, cravings, and personalized AI feedback every week.';

  @override
  String get upgradeToPremium => 'Upgrade to Premium';

  @override
  String get couldNotGenerateReport =>
      'Couldn\'t generate your report right now.';

  @override
  String get tryAgainLower => 'Try again';

  @override
  String get statSoberDays => 'Sober days';

  @override
  String get statAvgMood => 'Avg mood';

  @override
  String get statCravings => 'Cravings';

  @override
  String get statMoneySaved => 'Money saved';

  @override
  String get coachFeedback => 'Coach feedback';

  @override
  String get journalInsights => 'Journal insights';

  @override
  String get next => 'Next';

  @override
  String get question1Title => 'What is your goal?';

  @override
  String get question1Subtitle => 'Choose the goal that matter\nmost to you';

  @override
  String get goalQuitCompletely => 'Quit Completely';

  @override
  String get goalReduceDrinking => 'Reduce drinking';

  @override
  String get goalTakeABreak => 'Take a break';

  @override
  String get goalBuildHealthierHabits => 'Build healthier habits';

  @override
  String get question3Title => 'Tell us about your\nroutine.';

  @override
  String get drinksPerWeek => 'Drinks per week';

  @override
  String get moneySpentPerWeek => 'Money spent per week';

  @override
  String get drinkingLevel => 'Drinking level';

  @override
  String get triggersLabel => 'Triggers';

  @override
  String get levelSocial => 'Social';

  @override
  String get levelRegular => 'Regular';

  @override
  String get levelHeavy => 'Heavy';

  @override
  String get levelDependent => 'Dependent';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Loneliness';

  @override
  String get triggerHabit => 'Habit';

  @override
  String get triggerSadness => 'Sadness';

  @override
  String get triggerAnger => 'Anger';

  @override
  String get triggerBoredom => 'Boredom';

  @override
  String get triggerSocialPressure => 'Social pressure';

  @override
  String get triggerCelebration => 'Celebration';

  @override
  String get triggerSleepProblems => 'Sleep problems';

  @override
  String get triggerWorkPressure => 'Work pressure';

  @override
  String get question4Title => 'Why do you want to change?';

  @override
  String get question4Subtitle => 'Your reason will help to motivate you.';

  @override
  String get reasonImproveHealth => 'Improve My Health';

  @override
  String get reasonSaveMoney => 'Save Money';

  @override
  String get reasonFamily => 'Family';

  @override
  String get reasonBetterSleep => 'Better Sleep';

  @override
  String get reasonMentalClarity => 'Mental Clarity';

  @override
  String get reasonFitness => 'Fitness';

  @override
  String get reasonSelfRespect => 'Self Respect';

  @override
  String get reasonCareer => 'Career';

  @override
  String get milestoneUnlockedLabel => 'MILESTONE UNLOCKED';

  @override
  String incredibleNamePrefix(String name) {
    return 'Incredible, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount saved';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count avoided';
  }

  @override
  String get shareMyMilestone => 'Share my milestone';

  @override
  String get milestoneImageShareError =>
      'Couldn\'t create the milestone image. Please try again.';

  @override
  String get dailyCheckInTitle => 'Daily Check-in';

  @override
  String get howAreYouFeelingToday => 'How are you feeling today?';

  @override
  String get honestAnswerHelp =>
      'Your honest answer helps us support you better';

  @override
  String get didYouDrinkToday => 'Did you drink today?';

  @override
  String get noLabel => 'No';

  @override
  String get yesLabel => 'Yes';

  @override
  String get cravingLevelNow => 'Craving level right now?';

  @override
  String get anythingOnMind => 'Anything on your mind?';

  @override
  String get optionalLabel => '(optional)';

  @override
  String get dailyNoteHint => 'Write about your day, triggers, wins...';

  @override
  String get alreadyCheckedInToday => 'Already checked in today';

  @override
  String get saveCheckIn => 'Save check-in';

  @override
  String get checkInsHelpTrack =>
      'Check-ins help track your progress over time';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'You have already completed today\'s check-in.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Please answer both questions above first';

  @override
  String get checkInSaved => 'Check-in saved';

  @override
  String get cravingNone => 'None';

  @override
  String get cravingLow => 'Low';

  @override
  String get cravingMedium => 'Medium';

  @override
  String get cravingStrong => 'Strong';

  @override
  String get moodBad => 'Bad';

  @override
  String get moodLow => 'Low';

  @override
  String get moodGreat => 'Great';

  @override
  String get sosSupportTitle => 'SOS support';

  @override
  String notAloneMessage(String name) {
    return 'You\'re not alone, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Cravings pass. Pick something below to help you through this moment.';

  @override
  String get breathingExercise => 'Breathing Exercise';

  @override
  String get breathingExerciseSubtitle => 'Guided 4-7-8 technique, 2 minutes';

  @override
  String get rideTheWave => 'Ride the Wave';

  @override
  String get rideTheWaveSubtitle => '15 min timer — cravings always pass';

  @override
  String get copingTips => 'Coping tips';

  @override
  String get copingTipsSubtitle => 'Personalized strategies for your triggers';

  @override
  String get talkToAiCoach => 'Talk to AI coach';

  @override
  String get talkToAiCoachSubtitle => 'Chat with your recovery companion';

  @override
  String get callSomeone => 'Call someone';

  @override
  String get callSomeoneSubtitle => 'Reach your trusted contact';

  @override
  String get contactsPermissionNeeded =>
      'Contacts permission is needed to call a contact.';

  @override
  String get beatenCravingsPrefix => 'You\'ve beaten cravings ';

  @override
  String beatenCravingsCount(int count) {
    return '$count times';
  }

  @override
  String get beatenCravingsSuffix => ' before. You can do it again.';

  @override
  String get tellUsAboutYourself => 'Tell Us About Yourself';

  @override
  String get detailsSubtitle =>
      'This information helps us personalize your recovery journey and provide accurate insights.';

  @override
  String get nameLabel => 'Name';

  @override
  String get nameHint => 'e.g., Alex Rivers';

  @override
  String get ageLabel => 'Age';

  @override
  String get ageHint => 'e.g., 32';

  @override
  String get sexAssignedAtBirth => 'Sex assigned at birth';

  @override
  String get sexFemale => 'Female';

  @override
  String get sexMale => 'Male';

  @override
  String get heightLabel => 'Height';

  @override
  String get weightLabel => 'Weight';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Daily limit reached';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'You\'ve used all $limit free messages today. Upgrade to Premium for unlimited coach chat.';
  }

  @override
  String get coachConnectError =>
      'I couldn\'t connect right now. Please try again in a moment.';

  @override
  String get clearConversationTitle => 'Clear conversation?';

  @override
  String get clearConversationMessage =>
      'This will permanently remove your coach chat history.';

  @override
  String get clearLabel => 'Clear';

  @override
  String get recoveryCoachTitle => 'Recovery coach';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Clear conversation';

  @override
  String chatGreeting(String name) {
    return 'Hi $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'You\'re on day $days of your journey. I\'m here whenever you want to talk things through.';
  }

  @override
  String get quickPromptsLabel => 'QUICK PROMPTS';

  @override
  String get promptCravingLabel => 'Having a craving';

  @override
  String get promptCravingSubtitle => 'Get grounded, fast';

  @override
  String get promptMotivationLabel => 'Need motivation';

  @override
  String get promptMotivationSubtitle => 'A boost when it\'s tough';

  @override
  String get promptSocialLabel => 'Social situation';

  @override
  String get promptSocialSubtitle => 'Navigate a gathering';

  @override
  String get promptSlippedLabel => 'I slipped';

  @override
  String get promptSlippedSubtitle => 'No judgment, just support';

  @override
  String get typeMessageHint => 'Type a message...';

  @override
  String get editProfileTitle => 'Edit Profile';

  @override
  String couldNotSaveProfile(String error) {
    return 'Could not save profile: $error';
  }

  @override
  String get heightCmLabel => 'Height (cm)';

  @override
  String get weightKgLabel => 'Weight (kg)';

  @override
  String get saveChangesLabel => 'Save Changes';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Advanced Insights & Analytics';

  @override
  String get featureUnlimitedJournal => 'Unlimited Journal Entries';

  @override
  String get featureUnlimitedChat => 'Unlimited Chat with AI Coach';

  @override
  String get featureCommunityGroups => 'Exclusive Community Groups';

  @override
  String get featurePrioritySupport => 'Priority Expert Support';

  @override
  String get featureThemePacks => 'Custom Theme Packs';

  @override
  String get featureDataExport => 'Data Export';

  @override
  String get featureAdFree => 'Ad-Free Experience';

  @override
  String get premiumMemberTitle => 'You\'re a Premium Member';

  @override
  String get unlockFullRecoveryTitle => 'Unlock Your Full Recovery\nExperience';

  @override
  String get premiumMemberSubtitle =>
      'Thanks for supporting your recovery journey — every premium feature below is unlocked.';

  @override
  String get premiumJoinSubtitle =>
      'Join a community of thousands who are\naccelerating their healing journey with our\npremium tools and personalized support.';

  @override
  String get monthlyPlanLabel => 'Monthly';

  @override
  String get perMonthSuffix => '/mo';

  @override
  String get cancelAnytimeLabel => 'Cancel anytime';

  @override
  String get yearlyPlanLabel => 'Yearly';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Billed annually at $amount';
  }

  @override
  String get bestValueLabel => 'Best Value';

  @override
  String get alreadyPremiumLabel => 'You\'re Premium ✓';

  @override
  String get startPremiumLabel => 'Start Premium';

  @override
  String get manageSubscriptionLabel =>
      'Manage or cancel from your device\'s subscription settings.';

  @override
  String get noCommitmentLabel => 'No commitment. Cancel anytime.';

  @override
  String get continueFreePlanLabel => 'Continue with Free Plan';

  @override
  String get backToHomeLabel => 'Back to Home';

  @override
  String get cancelPremiumLabel => 'Cancel Premium';

  @override
  String get cancelPremiumTitle => 'Cancel Premium?';

  @override
  String get cancelPremiumMessage =>
      'You\'ll lose access to unlimited journal entries, unlimited coach chat, stats insights, and weekly reports. You can re-subscribe anytime.';

  @override
  String get keepPremiumLabel => 'Keep Premium';

  @override
  String get nowPremiumMessage =>
      'You\'re now Premium! Enjoy your full recovery experience.';

  @override
  String get premiumCancelledMessage =>
      'Premium cancelled. You\'re back on the free plan.';

  @override
  String get termsOfUseLabel => 'Terms of Use';

  @override
  String get navHomeLabel => 'Home';

  @override
  String get navStatsLabel => 'Stats';

  @override
  String get navJournalLabel => 'Journal';

  @override
  String get navBadgesLabel => 'Badges';

  @override
  String get navProfileLabel => 'Profile';

  @override
  String get recoveryGoalsTitle => 'Recovery Goals';

  @override
  String get drinksPerWeekLabel => 'Drinks per week';

  @override
  String get quitReasonsLabel => 'Quit reasons';

  @override
  String get quitReasonsHelperText => 'Separate multiple reasons with a comma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Could not save recovery goals: $error';
  }

  @override
  String get goalHint => 'e.g., Complete Abstinence';

  @override
  String get drinksPerWeekHint => 'e.g., 12';

  @override
  String get quitReasonsHint => 'e.g., Health, Family, Money';

  @override
  String get todaysPrompt => 'Today\'s prompt';

  @override
  String get defaultJournalPrompt => 'What\'s on your mind today?';

  @override
  String get aiJournalInsights => 'AI journal insights';

  @override
  String get unlockJournalInsightsMessage =>
      'Unlock weekly patterns, mood trends, and personalized insights from your journal entries.';

  @override
  String get notEnoughJournalData =>
      'Not enough data yet — write a few entries this week and check back.';

  @override
  String get openEntry => 'Open';

  @override
  String get editEntry => 'Edit';

  @override
  String get deleteEntry => 'Delete';

  @override
  String get searchJournalEntries => 'Search entries...';

  @override
  String get writeNewEntry => 'Write new entry';

  @override
  String get recentEntries => 'Recent Entries';

  @override
  String get noJournalEntriesYet =>
      'No journal entries yet — write your first reflection above.';

  @override
  String get noEntriesMatchFilters => 'No entries match your filters.';

  @override
  String get weeklyJournalLimitReached => 'Weekly limit reached';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'You\'ve used all $limit free journal entries this week. Upgrade to Premium for unlimited entries.';
  }

  @override
  String get newEntry => 'New entry';

  @override
  String get writeYourThoughts => 'Write your thoughts';

  @override
  String get saveEntry => 'Save Entry';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining of $limit free entries left this week';
  }

  @override
  String get deleteEntryQuestion => 'Delete entry?';

  @override
  String get deleteEntryConfirmation =>
      'This entry will be permanently deleted. This can\'t be undone.';

  @override
  String get journalEntryNotFound => 'Entry not found';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'This journal entry may have been deleted.';

  @override
  String get goBack => 'Go back';

  @override
  String get journalEntryTitle => 'Journal Entry';

  @override
  String get moodStruggling => 'Struggling';

  @override
  String get moodUnwell => 'Unwell';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => 'What happened today?';

  @override
  String get trigger => 'Trigger';

  @override
  String get whatHelped => 'What helped';

  @override
  String get whatIllTryNextTime => 'What I\'ll try next time';

  @override
  String get journalPrivacyMessage =>
      'Your reflection is private and saved in your journal.';

  @override
  String get unlocked => 'Unlocked';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's',
      one: '',
    );
    return '$count day$_temp0 left';
  }

  @override
  String daysCount(int count) {
    return '$count Days';
  }

  @override
  String get firstReflection => 'First\nReflection';

  @override
  String get oneJournalEntry => '1 Journal Entry';

  @override
  String get openBook => 'Open Book';

  @override
  String get tenJournalEntries => '10 Journal Entries';

  @override
  String get dedicatedWriter => 'Dedicated\nWriter';

  @override
  String get thirtyJournalEntries => '30 Journal Entries';

  @override
  String get firstConversation => 'First\nConversation';

  @override
  String get oneAiCoachChat => '1 AI Coach Chat';

  @override
  String get keepTalking => 'Keep Talking';

  @override
  String get fiveConversations => '5 Conversations';

  @override
  String get coachCompanion => 'Coach\nCompanion';

  @override
  String get twentyConversations => '20 Conversations';

  @override
  String get checkInHabit => 'Check-In\nHabit';

  @override
  String get sevenCheckIns => '7 Check-Ins';

  @override
  String get consistencyPro => 'Consistency\nPro';

  @override
  String get thirtyCheckIns => '30 Check-Ins';

  @override
  String get dedicatedJourney => 'Dedicated\nJourney';

  @override
  String get hundredCheckIns => '100 Check-Ins';

  @override
  String get goalGetter => 'Goal Getter';

  @override
  String get threeGoalsCompleted => '3 Goals Completed';

  @override
  String get goalAchiever => 'Goal\nAchiever';

  @override
  String get tenGoalsCompleted => '10 Goals Completed';

  @override
  String get firstSavings => 'First\nSavings';

  @override
  String get fiveHundredSaved => '\$500 Saved';

  @override
  String get smartSaver => 'Smart Saver';

  @override
  String get oneThousandSaved => '\$1,000 Saved';

  @override
  String get bigSaver => 'Big Saver';

  @override
  String get fiveThousandSaved => '\$5,000 Saved';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current of \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current of $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Keep going — your first milestone is waiting for you!';

  @override
  String get badgesAndMilestones => 'Badges & Milestones';

  @override
  String get yourMilestoneJourney => 'Your Milestone Journey';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's',
      one: '',
    );
    return '$count milestone$_temp0 achieved.\nTap to view';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'You\'ve unlocked $unlocked of $total milestones on your journey.';
  }

  @override
  String get remaining => 'Remaining';

  @override
  String get complete => 'Complete';

  @override
  String get nextMilestone => 'Next Milestone';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% there';
  }

  @override
  String get sobrietyMilestones => 'Sobriety Milestones';

  @override
  String get journeyBadges => 'Journey Badges';

  @override
  String get bronze => 'BRONZE';

  @override
  String get silver => 'SILVER';

  @override
  String get gold => 'GOLD';

  @override
  String get platinum => 'PLATINUM';

  @override
  String get diamond => 'DIAMOND';

  @override
  String get analyzingYourJourney => 'Analyzing Your Journey...';

  @override
  String get aiCreatingSanctuary =>
      'Our AI is creating your personalized sanctuary.';

  @override
  String get understandingHabits => 'Understanding habits...';

  @override
  String get calculatingBaseline => 'Calculating your baseline...';

  @override
  String get personalizingPlan => 'Personalizing your plan...';

  @override
  String get finalizingSanctuary => 'Finalizing your sanctuary...';

  @override
  String get creatingYourPlan => 'Creating your plan...';

  @override
  String get personalizedPlanError =>
      'We could not create your personalized plan. Please try again.';

  @override
  String get retry => 'Retry';

  @override
  String get breathInhale => 'INHALE';

  @override
  String get breathHold => 'HOLD';

  @override
  String get breathExhale => 'EXHALE';

  @override
  String get breathDone => 'DONE';

  @override
  String get breathGreatJob => 'Great job!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessions today',
      one: '$count session today',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'End Exercise';

  @override
  String get done => 'Done';

  @override
  String get noCopingTipsYet => 'No coping tips yet';

  @override
  String get copingStrategiesWillAppear =>
      'Your personalized coping strategies will show up here once your recovery plan finishes generating.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategies tailored to your triggers';

  @override
  String get cravingsPeakAndPass => 'Cravings peak\nand pass';

  @override
  String get rideTheWaveDescription =>
      'Most cravings pass within 15 minutes. You don\'t have to act on it — just ride it out with us.';

  @override
  String get stayWithIt => 'stay with it';

  @override
  String get youMadeIt => 'you made it';

  @override
  String get readyWhenYouAre => 'ready when you are';

  @override
  String get rideItAgain => 'Ride it again';

  @override
  String get start15MinuteTimer => 'Start 15-Minute Timer';

  @override
  String get rideTheWaveCompletedMessage =>
      'You rode the wave. That\'s real strength. 💪';

  @override
  String get myProgress => 'My Progress';

  @override
  String get weekLabel => 'Week';

  @override
  String get monthLabel => 'Month';

  @override
  String get allLabel => 'All';

  @override
  String get daysSoberStatLabel => 'Days\nsober';

  @override
  String get savedStatLabel => 'Saved';

  @override
  String get avoidedStatLabel => 'Avoided';

  @override
  String get moodTrends => 'Mood trends';

  @override
  String get cravingsPattern => 'Cravings pattern';

  @override
  String get unlockLabel => 'Unlock';

  @override
  String get unlockFullStats => 'Unlock full stats';

  @override
  String get premiumStatsMessage =>
      'Mood trends and craving patterns are Premium features. Upgrade to see your full stats.';

  @override
  String get healthMilestonesWillAppear =>
      'Your health milestones will appear here.';

  @override
  String get healthMilestones => 'Health milestones';

  @override
  String dayNumber(int day) {
    return 'Day $day';
  }

  @override
  String get soberLabel => 'Sober';

  @override
  String get slipLabel => 'Slip';

  @override
  String get noDataLabel => 'No data';

  @override
  String get milestone24Hours => '24 Hours';

  @override
  String get milestoneOneWeek => 'One Week';

  @override
  String get milestoneOneMonth => 'One Month';

  @override
  String get milestoneThreeMonths => 'Three Months';

  @override
  String get milestoneSixMonths => 'Six Months';

  @override
  String get milestoneOneYear => 'One Year';

  @override
  String milestoneDayCount(int day) {
    return 'Day $day Milestone';
  }

  @override
  String get maybeLaterLabel => 'Maybe later';

  @override
  String get cancelLabel => 'Cancel';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get skip => '跳过';

  @override
  String get continueButton => '继续';

  @override
  String get getStarted => '开始使用';

  @override
  String get onboardingTitle1 => '掌控你的生活';

  @override
  String get onboardingSubtitle1 => '记录你的历程，庆祝每一个成就，让生活一天天变得更健康。';

  @override
  String get onboardingTitle2 => '你的 AI 戒断康复助手';

  @override
  String get onboardingSubtitle2 => '获得为你量身定制的个性化指导、健康习惯、动力提醒和进度报告。';

  @override
  String get goodMorning => '早上好';

  @override
  String get goodAfternoon => '下午好';

  @override
  String get goodEvening => '晚上好';

  @override
  String get goodNight => '晚安';

  @override
  String get embracingClarity => '拥抱清醒，一步一个脚印。';

  @override
  String get streakLabel => '连续天数';

  @override
  String get goalLabel => '目标';

  @override
  String daysStreak(int count) {
    return '$count 天';
  }

  @override
  String get premiumPlan => '高级订阅计划';

  @override
  String get premiumPlanSubtitle => '解锁完整的康复体验';

  @override
  String get accountAndSupport => '账户与支持';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get privacyPolicySubtitle => '管理数据共享与账户安全';

  @override
  String get termsOfService => '服务条款';

  @override
  String get termsOfServiceSubtitle => '常见问题、联系我们及资源';

  @override
  String get shareApp => '分享应用';

  @override
  String get shareAppSubtitle => '与朋友分享此应用';

  @override
  String get resetData => '重置数据';

  @override
  String get resetDataSubtitle => '清除此设备上保存的所有内容';

  @override
  String get resetAllDataTitle => '重置所有数据？';

  @override
  String get resetAllDataMessage => '这将清除此设备上保存的所有内容（包括个人资料、日记和进度），且无法撤销。';

  @override
  String get cancel => '取消';

  @override
  String get reset => '重置';

  @override
  String get chooseFromGallery => '从相册选择';

  @override
  String get takePhoto => '拍照';

  @override
  String get removePhoto => '删除照片';

  @override
  String couldNotUpdatePhoto(String error) {
    return '无法更新照片：$error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return '无法删除照片：$error';
  }

  @override
  String get photoTooLarge => '压缩后照片依然过大，请尝试更换其他照片。';

  @override
  String get unableToLoadProfile => '无法加载你的个人资料';

  @override
  String get pleaseTryAgain => '请重试。';

  @override
  String get tryAgain => '重试';

  @override
  String get profileNotFound => '未找到个人资料';

  @override
  String get refresh => '刷新';

  @override
  String get noProfileDataFound => '此设备上暂未找到个人资料数据。';

  @override
  String couldNotResetData(String error) {
    return '无法重置数据：$error';
  }

  @override
  String get navHome => '首页';

  @override
  String get navStats => '统计';

  @override
  String get navJournal => '日记';

  @override
  String get navBadges => '勋章';

  @override
  String get navProfile => '我的';

  @override
  String featureComingSoon(String feature) {
    return '$feature 功能即将推出。';
  }

  @override
  String get appWordmark => '健康生活';

  @override
  String get appTitle => '戒酒';

  @override
  String get splashSubtitle => '迈出走向无酒生活的第一步';

  @override
  String get preparingJourney => '正在为你准备历程';

  @override
  String get taskMorningMeditation => '晨间冥想 (10分钟)';

  @override
  String get taskReadChapter => '阅读《戒酒日记》第 4 章';

  @override
  String get taskEveningJournal => '晚间感恩日记';

  @override
  String get close => '关闭';

  @override
  String get youAreDoingGreat => '你做得非常棒！';

  @override
  String get shareMilestone => '分享里程碑';

  @override
  String shareMilestoneMessage(int days) {
    return '我已经坚持戒酒 $days 天了！💪';
  }

  @override
  String get shareMilestoneSubject => '我的戒酒康复里程碑';

  @override
  String get weeklyReportReadyTitle => '你的周报已生成';

  @override
  String get weeklyReportReadySubtitle => '点击查看本周进展';

  @override
  String get howAreYouFeeling => '你现在感觉怎么样？';

  @override
  String get moodTough => '艰难';

  @override
  String get moodOkay => '一般';

  @override
  String get moodGood => '良好';

  @override
  String get moneySaved => '已节省金额';

  @override
  String get caloriesSaved => '减少摄入热量';

  @override
  String get healthScore => '健康评分';

  @override
  String get drinksAvoided => '少喝饮品数';

  @override
  String get estimated => '预估';

  @override
  String get aiGenerated => 'AI 生成';

  @override
  String get daysCapsLabel => '天';

  @override
  String get todaysMotivation => '每日寄语';

  @override
  String get defaultMotivationQuote => '你成功守住了承诺。继续保持，迎接积极的变化吧。';

  @override
  String get talkToCoach => '咨询 AI 教练';

  @override
  String get havingACraving => '我现在很想喝酒';

  @override
  String get unlockWeeklyReportsTitle => '解锁每周报告';

  @override
  String get unlockWeeklyReportsMessage =>
      '每周查看戒酒天数、情绪趋势和个性化 AI 反馈。升级至高级版即可解锁。';

  @override
  String get maybeLater => '以后再说';

  @override
  String get upgrade => '升级';

  @override
  String get weeklyReportTitle => '每周报告';

  @override
  String get weeklyReportsPremiumTitle => '每周报告为高级专享功能';

  @override
  String get weeklyReportsPremiumMessage => '每周查看戒酒天数、情绪趋势、冲动记录及个性化 AI 反馈。';

  @override
  String get upgradeToPremium => '升级至高级版';

  @override
  String get couldNotGenerateReport => '暂时无法生成你的报告。';

  @override
  String get tryAgainLower => '重试';

  @override
  String get statSoberDays => '戒酒天数';

  @override
  String get statAvgMood => '平均情绪';

  @override
  String get statCravings => '饮酒冲动';

  @override
  String get statMoneySaved => '已节省金额';

  @override
  String get coachFeedback => '教练建议';

  @override
  String get journalInsights => '日记分析';

  @override
  String get next => '下一步';

  @override
  String get question1Title => '你的目标是什么？';

  @override
  String get question1Subtitle => '选择对你最重要的目标';

  @override
  String get goalQuitCompletely => '彻底戒酒';

  @override
  String get goalReduceDrinking => '减少饮酒';

  @override
  String get goalTakeABreak => '暂停饮酒一段时间';

  @override
  String get goalBuildHealthierHabits => '养成更健康的生活习惯';

  @override
  String get question3Title => '介绍一下你的生活习惯';

  @override
  String get drinksPerWeek => '每周饮酒次数/杯数';

  @override
  String get moneySpentPerWeek => '每周饮酒开销';

  @override
  String get drinkingLevel => '饮酒程度';

  @override
  String get triggersLabel => '诱发因素';

  @override
  String get levelSocial => '社交性饮酒';

  @override
  String get levelRegular => '规律性饮酒';

  @override
  String get levelHeavy => '过度饮酒';

  @override
  String get levelDependent => '酒精依赖';

  @override
  String get triggerStress => '压力';

  @override
  String get triggerLoneliness => '孤独';

  @override
  String get triggerHabit => '习惯';

  @override
  String get triggerSadness => '悲伤';

  @override
  String get triggerAnger => '愤怒';

  @override
  String get triggerBoredom => '无聊';

  @override
  String get triggerSocialPressure => '社交压力';

  @override
  String get triggerCelebration => '庆祝';

  @override
  String get triggerSleepProblems => '睡眠问题';

  @override
  String get triggerWorkPressure => '工作压力';

  @override
  String get question4Title => '你为什么要做出改变？';

  @override
  String get question4Subtitle => '你的初心将为你带来源源不断的动力。';

  @override
  String get reasonImproveHealth => '改善身体健康';

  @override
  String get reasonSaveMoney => '节省开支';

  @override
  String get reasonFamily => '为了家人';

  @override
  String get reasonBetterSleep => '获得更好睡眠';

  @override
  String get reasonMentalClarity => '保持头脑清醒';

  @override
  String get reasonFitness => '增强体能';

  @override
  String get reasonSelfRespect => '重塑自尊';

  @override
  String get reasonCareer => '助力事业发展';

  @override
  String get milestoneUnlockedLabel => '解锁里程碑';

  @override
  String incredibleNamePrefix(String name) {
    return '太棒了，$name！';
  }

  @override
  String amountSavedLabel(String amount) {
    return '已节省 $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '少喝了 $count 杯';
  }

  @override
  String get shareMyMilestone => '分享我的里程碑';

  @override
  String get milestoneImageShareError => '无法生成里程碑图片，请重试。';

  @override
  String get dailyCheckInTitle => '每日打卡';

  @override
  String get howAreYouFeelingToday => '你今天感觉怎么样？';

  @override
  String get honestAnswerHelp => '你的真实回答能帮助我们为你提供更好的支持';

  @override
  String get didYouDrinkToday => '你今天喝酒了吗？';

  @override
  String get noLabel => '没有';

  @override
  String get yesLabel => '喝了';

  @override
  String get cravingLevelNow => '你现在的喝酒冲动程度？';

  @override
  String get anythingOnMind => '有什么想说的吗？';

  @override
  String get optionalLabel => '（选填）';

  @override
  String get dailyNoteHint => '记录你的一天、诱发因素或微小的胜利...';

  @override
  String get alreadyCheckedInToday => '今天已完成打卡';

  @override
  String get saveCheckIn => '保存打卡记录';

  @override
  String get checkInsHelpTrack => '坚持打卡有助于记录你随时间变化的进展';

  @override
  String get alreadyCompletedTodayCheckIn => '你今天已经完成打卡了。';

  @override
  String get pleaseAnswerBothQuestions => '请先回答上面的两个问题';

  @override
  String get checkInSaved => '打卡记录已保存';

  @override
  String get cravingNone => '无';

  @override
  String get cravingLow => '轻微';

  @override
  String get cravingMedium => '中等';

  @override
  String get cravingStrong => '强烈';

  @override
  String get moodBad => '糟糕';

  @override
  String get moodLow => '低落';

  @override
  String get moodGreat => '极佳';

  @override
  String get sosSupportTitle => 'SOS 紧急求助';

  @override
  String notAloneMessage(String name) {
    return '你不是一个人在战斗，$name';
  }

  @override
  String get cravingsPassMessage => '饮酒的冲动终会消退。选择下面的方法陪伴你度过这个时刻。';

  @override
  String get breathingExercise => '呼吸放松练习';

  @override
  String get breathingExerciseSubtitle => '4-7-8 引导式呼吸，时长 2 分钟';

  @override
  String get rideTheWave => '平复冲动浪潮';

  @override
  String get rideTheWaveSubtitle => '15 分钟计时器 — 饮酒冲动终会消退';

  @override
  String get copingTips => '应对技巧';

  @override
  String get copingTipsSubtitle => '针对诱发因素的个性化策略';

  @override
  String get talkToAiCoach => '联系 AI 教练';

  @override
  String get talkToAiCoachSubtitle => '与你的康复助手倾诉';

  @override
  String get callSomeone => '打电话给朋友';

  @override
  String get callSomeoneSubtitle => '联系你信任的人';

  @override
  String get contactsPermissionNeeded => '呼叫联系人需要获取通讯录权限。';

  @override
  String get beatenCravingsPrefix => '你之前已经成功战胜冲动 ';

  @override
  String beatenCravingsCount(int count) {
    return '$count 次';
  }

  @override
  String get beatenCravingsSuffix => ' 了。这次你同样可以做到。';

  @override
  String get tellUsAboutYourself => '填写个人信息';

  @override
  String get detailsSubtitle => '这些信息有助于我们为你定制康复历程并提供准确的分析。';

  @override
  String get nameLabel => '姓名';

  @override
  String get nameHint => '例如：张伟';

  @override
  String get ageLabel => '年龄';

  @override
  String get ageHint => '例如：32';

  @override
  String get sexAssignedAtBirth => '生理性别';

  @override
  String get sexFemale => '女';

  @override
  String get sexMale => '男';

  @override
  String get heightLabel => '身高';

  @override
  String get weightLabel => '体重';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => '已达每日上限';

  @override
  String dailyLimitReachedMessage(int limit) {
    return '你今天已用完 $limit 条免费对话额度。升级至高级版可享无限制教练对话。';
  }

  @override
  String get coachConnectError => '暂时无法连接，请稍后重试。';

  @override
  String get clearConversationTitle => '清空对话记录？';

  @override
  String get clearConversationMessage => '这将永久删除你与教练的聊天记录。';

  @override
  String get clearLabel => '清空';

  @override
  String get recoveryCoachTitle => '康复教练';

  @override
  String get onlineLabel => '在线';

  @override
  String get clearConversationMenuItem => '清空对话记录';

  @override
  String chatGreeting(String name) {
    return '你好，$name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return '今天是你在康复历程中的第 $days 天。无论何时想聊聊，我都在这里。';
  }

  @override
  String get quickPromptsLabel => '快捷提示';

  @override
  String get promptCravingLabel => '产生了喝酒冲动';

  @override
  String get promptCravingSubtitle => '快速恢复平静';

  @override
  String get promptMotivationLabel => '需要动力';

  @override
  String get promptMotivationSubtitle => '艰难时刻的加油鼓劲';

  @override
  String get promptSocialLabel => '社交场合';

  @override
  String get promptSocialSubtitle => '应对聚会场景';

  @override
  String get promptSlippedLabel => '我不小心破戒了';

  @override
  String get promptSlippedSubtitle => '没有责备，只有支持';

  @override
  String get typeMessageHint => '输入消息...';

  @override
  String get editProfileTitle => '编辑个人资料';

  @override
  String couldNotSaveProfile(String error) {
    return '无法保存个人资料：$error';
  }

  @override
  String get heightCmLabel => '身高 (cm)';

  @override
  String get weightKgLabel => '体重 (kg)';

  @override
  String get saveChangesLabel => '保存更改';

  @override
  String get premiumBadgeLabel => '高级版';

  @override
  String get featureAdvancedInsights => '高级数据分析与洞察';

  @override
  String get featureUnlimitedJournal => '无限次日记撰写';

  @override
  String get featureUnlimitedChat => '与 AI 教练无限次对话';

  @override
  String get featureCommunityGroups => '专属社区交流群';

  @override
  String get featurePrioritySupport => '专家优先支持';

  @override
  String get featureThemePacks => '自定义主题包';

  @override
  String get featureDataExport => '数据导出功能';

  @override
  String get featureAdFree => '无广告纯净体验';

  @override
  String get premiumMemberTitle => '你已是尊贵的高级会员';

  @override
  String get unlockFullRecoveryTitle => '解锁你的完整\n康复体验';

  @override
  String get premiumMemberSubtitle => '感谢你对康复历程的支持 — 以下所有高级功能均已解锁。';

  @override
  String get premiumJoinSubtitle => '加入成千上万用户的行列，借助我们的\n高级工具和个性化支持，\n加速你的康复进程。';

  @override
  String get monthlyPlanLabel => '按月订阅';

  @override
  String get perMonthSuffix => '/月';

  @override
  String get cancelAnytimeLabel => '可随时取消';

  @override
  String get yearlyPlanLabel => '按年订阅';

  @override
  String billedAnnuallyLabel(String amount) {
    return '每年计费 $amount';
  }

  @override
  String get bestValueLabel => '超值推荐';

  @override
  String get alreadyPremiumLabel => '已开通高级版 ✓';

  @override
  String get startPremiumLabel => '开通高级版';

  @override
  String get manageSubscriptionLabel => '可随时在设备的订阅设置中管理或取消。';

  @override
  String get noCommitmentLabel => '无长期捆绑，可随时取消。';

  @override
  String get continueFreePlanLabel => '继续使用免费版';

  @override
  String get backToHomeLabel => '返回首页';

  @override
  String get cancelPremiumLabel => '取消高级订阅';

  @override
  String get cancelPremiumTitle => '确定取消高级订阅？';

  @override
  String get cancelPremiumMessage =>
      '取消后你将失去无限日记、无限教练对话、数据洞察及每周报告功能。你可以随时重新订阅。';

  @override
  String get keepPremiumLabel => '保留高级订阅';

  @override
  String get nowPremiumMessage => '你已成功开通高级版！尽情享受完整的康复体验吧。';

  @override
  String get premiumCancelledMessage => '高级订阅已取消，你已恢复为免费版计划。';

  @override
  String get termsOfUseLabel => '使用条款';

  @override
  String get navHomeLabel => '首页';

  @override
  String get navStatsLabel => '统计';

  @override
  String get navJournalLabel => '日记';

  @override
  String get navBadgesLabel => '勋章';

  @override
  String get navProfileLabel => '我的';

  @override
  String get recoveryGoalsTitle => '康复目标';

  @override
  String get drinksPerWeekLabel => '每周饮酒次数/杯数';

  @override
  String get quitReasonsLabel => '戒酒原因';

  @override
  String get quitReasonsHelperText => '多个原因请用逗号隔开。';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return '无法保存康复目标：$error';
  }

  @override
  String get goalHint => '例如：完全戒酒';

  @override
  String get drinksPerWeekHint => '例如：12';

  @override
  String get quitReasonsHint => '例如：健康、家庭、省钱';

  @override
  String get todaysPrompt => '每日思考提示';

  @override
  String get defaultJournalPrompt => '你今天有什么想记录的吗？';

  @override
  String get aiJournalInsights => 'AI 日记分析';

  @override
  String get unlockJournalInsightsMessage => '从你的日记记录中解锁每周规律、情绪趋势和个性化分析。';

  @override
  String get notEnoughJournalData => '数据尚不足 — 本周多写几篇日记再来看看吧。';

  @override
  String get openEntry => '查看';

  @override
  String get editEntry => '编辑';

  @override
  String get deleteEntry => '删除';

  @override
  String get searchJournalEntries => '搜索日记...';

  @override
  String get writeNewEntry => '写新日记';

  @override
  String get recentEntries => '近期日记';

  @override
  String get noJournalEntriesYet => '暂无日记 — 在上方写下你的第一篇感悟吧。';

  @override
  String get noEntriesMatchFilters => '没有符合筛选条件的日记。';

  @override
  String get weeklyJournalLimitReached => '已达本周上限';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return '你本周已用完 $limit 篇免费日记额度。升级至高级版可享无限次记录。';
  }

  @override
  String get newEntry => '新日记';

  @override
  String get writeYourThoughts => '写下你的想法';

  @override
  String get saveEntry => '保存日记';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '本周免费额度还剩 $remaining/$limit 篇';
  }

  @override
  String get deleteEntryQuestion => '删除日记？';

  @override
  String get deleteEntryConfirmation => '此日记将被永久删除，且无法恢复。';

  @override
  String get journalEntryNotFound => '未找到日记';

  @override
  String get journalEntryMayHaveBeenDeleted => '该日记可能已被删除。';

  @override
  String get goBack => '返回';

  @override
  String get journalEntryTitle => '日记详情';

  @override
  String get moodStruggling => '挣扎';

  @override
  String get moodUnwell => '不适';

  @override
  String get moodNeutral => '平静';

  @override
  String get whatHappenedToday => '今天发生了什么？';

  @override
  String get trigger => '诱发因素';

  @override
  String get whatHelped => '什么帮到了你';

  @override
  String get whatIllTryNextTime => '下次我会尝试';

  @override
  String get journalPrivacyMessage => '你的感悟属于隐私内容，已安全保存在你的日记中。';

  @override
  String get unlocked => '已解锁';

  @override
  String daysLeft(int count) {
    return '还剩 $count 天';
  }

  @override
  String daysCount(int count) {
    return '$count 天';
  }

  @override
  String get firstReflection => '初次\n感悟';

  @override
  String get oneJournalEntry => '1 篇日记';

  @override
  String get openBook => '开卷有益';

  @override
  String get tenJournalEntries => '10 篇日记';

  @override
  String get dedicatedWriter => '持之以恒';

  @override
  String get thirtyJournalEntries => '30 篇日记';

  @override
  String get firstConversation => '初次\n倾诉';

  @override
  String get oneAiCoachChat => '1 次 AI 教练对话';

  @override
  String get keepTalking => '敞开心扉';

  @override
  String get fiveConversations => '5 次对话';

  @override
  String get coachCompanion => '良师\n益友';

  @override
  String get twentyConversations => '20 次对话';

  @override
  String get checkInHabit => '打卡\n习惯';

  @override
  String get sevenCheckIns => '7 次打卡';

  @override
  String get consistencyPro => '坚持\n达人';

  @override
  String get thirtyCheckIns => '30 次打卡';

  @override
  String get dedicatedJourney => '坚定\n前行';

  @override
  String get hundredCheckIns => '100 次打卡';

  @override
  String get goalGetter => '目标初成';

  @override
  String get threeGoalsCompleted => '完成 3 个目标';

  @override
  String get goalAchiever => '目标\n猎手';

  @override
  String get tenGoalsCompleted => '完成 10 个目标';

  @override
  String get firstSavings => '初见\n成效';

  @override
  String get fiveHundredSaved => '节省 \$500';

  @override
  String get smartSaver => '理财能手';

  @override
  String get oneThousandSaved => '节省 \$1,000';

  @override
  String get bigSaver => '省钱大师';

  @override
  String get fiveThousandSaved => '节省 \$5,000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current / \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current / $target';
  }

  @override
  String get firstMilestoneWaiting => '继续加油 — 你的第一个里程碑就在前方！';

  @override
  String get badgesAndMilestones => '勋章与里程碑';

  @override
  String get yourMilestoneJourney => '你的里程碑历程';

  @override
  String milestonesAchieved(int count) {
    return '已达成 $count 个里程碑。\n点击查看';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return '在你的康复历程中，你已解锁 $total 个里程碑中的 $unlocked 个。';
  }

  @override
  String get remaining => '未完成';

  @override
  String get complete => '已完成';

  @override
  String get nextMilestone => '下一个里程碑';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · 已完成 $percent%';
  }

  @override
  String get sobrietyMilestones => '戒酒里程碑';

  @override
  String get journeyBadges => '历程勋章';

  @override
  String get bronze => '青铜';

  @override
  String get silver => '白银';

  @override
  String get gold => '黄金';

  @override
  String get platinum => '白金';

  @override
  String get diamond => '钻石';

  @override
  String get analyzingYourJourney => '正在分析你的历程...';

  @override
  String get aiCreatingSanctuary => 'AI 正在为你打造专属的康复空间。';

  @override
  String get understandingHabits => '正在了解你的习惯...';

  @override
  String get calculatingBaseline => '正在计算你的基准数据...';

  @override
  String get personalizingPlan => '正在为你定制专属计划...';

  @override
  String get finalizingSanctuary => '正在完善你的专属空间...';

  @override
  String get creatingYourPlan => '正在生成你的计划...';

  @override
  String get personalizedPlanError => '无法生成你的个性化计划，请重试。';

  @override
  String get retry => '重试';

  @override
  String get breathInhale => '吸气';

  @override
  String get breathHold => '屏气';

  @override
  String get breathExhale => '呼气';

  @override
  String get breathDone => '完成';

  @override
  String get breathGreatJob => '太棒了！';

  @override
  String breathSessionsToday(int count) {
    return '今天已完成 $count 次练习';
  }

  @override
  String get endExercise => '结束练习';

  @override
  String get done => '完成';

  @override
  String get noCopingTipsYet => '暂无应对技巧';

  @override
  String get copingStrategiesWillAppear => '你的康复计划生成完毕后，针对性的应对策略将显示在这里。';

  @override
  String get strategiesTailoredToTriggers => '针对你的诱发因素定制的策略';

  @override
  String get cravingsPeakAndPass => '饮酒冲动达到顶峰\n后终会消退';

  @override
  String get rideTheWaveDescription =>
      '大多数饮酒冲动会在 15 分钟内消退。你不需要屈服于它 — 和我们一起顺应它并度过这个时刻。';

  @override
  String get stayWithIt => '坚持下去';

  @override
  String get youMadeIt => '你做到了';

  @override
  String get readyWhenYouAre => '随时准备就绪';

  @override
  String get rideItAgain => '再次挑战';

  @override
  String get start15MinuteTimer => '开启 15 分钟计时器';

  @override
  String get rideTheWaveCompletedMessage => '你成功战胜了冲动，这是真正的毅力！💪';

  @override
  String get myProgress => '我的进度';

  @override
  String get weekLabel => '本周';

  @override
  String get monthLabel => '本月';

  @override
  String get allLabel => '全部';

  @override
  String get daysSoberStatLabel => '戒酒\n天数';

  @override
  String get savedStatLabel => '已节省';

  @override
  String get avoidedStatLabel => '少喝次数';

  @override
  String get moodTrends => '情绪趋势';

  @override
  String get cravingsPattern => '冲动规律';

  @override
  String get unlockLabel => '解锁';

  @override
  String get unlockFullStats => '解锁完整统计';

  @override
  String get premiumStatsMessage => '情绪趋势和冲动规律为高级专享功能。升级即可查看完整数据。';

  @override
  String get healthMilestonesWillAppear => '你的健康里程碑将显示在这里。';

  @override
  String get healthMilestones => '健康里程碑';

  @override
  String dayNumber(int day) {
    return '第 $day 天';
  }

  @override
  String get soberLabel => '清醒';

  @override
  String get slipLabel => '破戒';

  @override
  String get noDataLabel => '无数据';

  @override
  String get milestone24Hours => '24 小时';

  @override
  String get milestoneOneWeek => '1 周';

  @override
  String get milestoneOneMonth => '1 个月';

  @override
  String get milestoneThreeMonths => '3 个月';

  @override
  String get milestoneSixMonths => '6 个月';

  @override
  String get milestoneOneYear => '1 年';

  @override
  String milestoneDayCount(int day) {
    return '第 $day 天里程碑';
  }

  @override
  String get maybeLaterLabel => '以后再说';

  @override
  String get cancelLabel => '取消';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get skip => '跳過';

  @override
  String get continueButton => '繼續';

  @override
  String get getStarted => '開始使用';

  @override
  String get onboardingTitle1 => '掌握你的生活';

  @override
  String get onboardingSubtitle1 => '記錄你的旅程，慶祝每一個成就，讓生活一天天變得更健康。';

  @override
  String get onboardingTitle2 => '你的 AI 戒斷康復夥伴';

  @override
  String get onboardingSubtitle2 => '獲得為你量身打造的個人化指導、健康習慣、動力提醒與進度報告。';

  @override
  String get goodMorning => '早安';

  @override
  String get goodAfternoon => '午安';

  @override
  String get goodEvening => '晚上好';

  @override
  String get goodNight => '晚安';

  @override
  String get embracingClarity => '擁抱清醒，一步一個腳印。';

  @override
  String get streakLabel => '連續天數';

  @override
  String get goalLabel => '目標';

  @override
  String daysStreak(int count) {
    return '$count 天';
  }

  @override
  String get premiumPlan => '尊享高級方案';

  @override
  String get premiumPlanSubtitle => '解鎖完整的康復體驗';

  @override
  String get accountAndSupport => '帳戶與支援';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get privacyPolicySubtitle => '管理資料共享與帳戶安全';

  @override
  String get termsOfService => '服務條款';

  @override
  String get termsOfServiceSubtitle => '常見問題、聯絡我們及資源';

  @override
  String get shareApp => '分享應用程式';

  @override
  String get shareAppSubtitle => '與朋友分享此應用程式';

  @override
  String get resetData => '重置資料';

  @override
  String get resetDataSubtitle => '清除此裝置上儲存的所有內容';

  @override
  String get resetAllDataTitle => '要重置所有資料嗎？';

  @override
  String get resetAllDataMessage => '這將清除此裝置上儲存的所有內容（包括個人檔案、日記與進度），且無法復原。';

  @override
  String get cancel => '取消';

  @override
  String get reset => '重置';

  @override
  String get chooseFromGallery => '從相簿選擇';

  @override
  String get takePhoto => '拍照';

  @override
  String get removePhoto => '刪除相片';

  @override
  String couldNotUpdatePhoto(String error) {
    return '無法更新相片：$error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return '無法刪除相片：$error';
  }

  @override
  String get photoTooLarge => '壓縮後相片依然過大，請嘗試更換其他相片。';

  @override
  String get unableToLoadProfile => '無法載入你的個人檔案';

  @override
  String get pleaseTryAgain => '請再試一次。';

  @override
  String get tryAgain => '重試';

  @override
  String get profileNotFound => '未找到個人檔案';

  @override
  String get refresh => '重新整理';

  @override
  String get noProfileDataFound => '此裝置上尚未找到個人檔案資料。';

  @override
  String couldNotResetData(String error) {
    return '無法重置資料：$error';
  }

  @override
  String get navHome => '首頁';

  @override
  String get navStats => '統計';

  @override
  String get navJournal => '日記';

  @override
  String get navBadges => '徽章';

  @override
  String get navProfile => '個人檔案';

  @override
  String featureComingSoon(String feature) {
    return '$feature 功能即將推出。';
  }

  @override
  String get appWordmark => '健康生活';

  @override
  String get appTitle => '戒酒';

  @override
  String get splashSubtitle => '跨出走向無酒生活的第一步';

  @override
  String get preparingJourney => '正在為你準備旅程';

  @override
  String get taskMorningMeditation => '晨間冥想 (10分鐘)';

  @override
  String get taskReadChapter => '閱讀《戒酒日記》第 4 章';

  @override
  String get taskEveningJournal => '晚間感恩日記';

  @override
  String get close => '關閉';

  @override
  String get youAreDoingGreat => '你做得非常棒！';

  @override
  String get shareMilestone => '分享里程碑';

  @override
  String shareMilestoneMessage(int days) {
    return '我已經堅持戒酒 $days 天了！💪';
  }

  @override
  String get shareMilestoneSubject => '我的戒酒康复里程碑';

  @override
  String get weeklyReportReadyTitle => '你的週報已準備就緒';

  @override
  String get weeklyReportReadySubtitle => '點擊檢視本週進展';

  @override
  String get howAreYouFeeling => '你現在感覺如何？';

  @override
  String get moodTough => '艱難';

  @override
  String get moodOkay => '一般';

  @override
  String get moodGood => '良好';

  @override
  String get moneySaved => '已節省金額';

  @override
  String get caloriesSaved => '減少攝取熱量';

  @override
  String get healthScore => '健康評分';

  @override
  String get drinksAvoided => '少喝飲品數';

  @override
  String get estimated => '預估';

  @override
  String get aiGenerated => 'AI 生成';

  @override
  String get daysCapsLabel => '天';

  @override
  String get todaysMotivation => '每日寄語';

  @override
  String get defaultMotivationQuote => '你成功堅守了承諾。繼續保持，迎接積極的改變吧。';

  @override
  String get talkToCoach => '諮詢 AI 教練';

  @override
  String get havingACraving => '我现在很想喝酒';

  @override
  String get unlockWeeklyReportsTitle => '解鎖每週報告';

  @override
  String get unlockWeeklyReportsMessage =>
      '每週檢視戒酒天數、情緒趨勢與個人化 AI 回饋。升級至 Premium 即可解鎖。';

  @override
  String get maybeLater => '稍後再說';

  @override
  String get upgrade => '升級';

  @override
  String get weeklyReportTitle => '每週報告';

  @override
  String get weeklyReportsPremiumTitle => '每週報告為 Premium 專屬功能';

  @override
  String get weeklyReportsPremiumMessage => '每週檢視戒酒天數、情緒趨勢、衝動記錄及個人化 AI 回饋。';

  @override
  String get upgradeToPremium => '升級至 Premium';

  @override
  String get couldNotGenerateReport => '暫時無法產生你的報告。';

  @override
  String get tryAgainLower => '重試';

  @override
  String get statSoberDays => '戒酒天数';

  @override
  String get statAvgMood => '平均情緒';

  @override
  String get statCravings => '飲酒衝動';

  @override
  String get statMoneySaved => '已節省金額';

  @override
  String get coachFeedback => '教練建議';

  @override
  String get journalInsights => '日記分析';

  @override
  String get next => '下一步';

  @override
  String get question1Title => '你的目標是什麼？';

  @override
  String get question1Subtitle => '選擇對你最重要的目標';

  @override
  String get goalQuitCompletely => '徹底戒酒';

  @override
  String get goalReduceDrinking => '減少飲酒';

  @override
  String get goalTakeABreak => '暫停飲酒一段時間';

  @override
  String get goalBuildHealthierHabits => '養成更健康的生活習慣';

  @override
  String get question3Title => '介紹一下你的生活習慣';

  @override
  String get drinksPerWeek => '每週飲酒次數/杯數';

  @override
  String get moneySpentPerWeek => '每週飲酒開銷';

  @override
  String get drinkingLevel => '飲酒程度';

  @override
  String get triggersLabel => '誘發因素';

  @override
  String get levelSocial => '社交性飲酒';

  @override
  String get levelRegular => '規律性飲酒';

  @override
  String get levelHeavy => '過度飲酒';

  @override
  String get levelDependent => '酒精依賴';

  @override
  String get triggerStress => '壓力';

  @override
  String get triggerLoneliness => '孤獨';

  @override
  String get triggerHabit => '習慣';

  @override
  String get triggerSadness => '悲傷';

  @override
  String get triggerAnger => '憤怒';

  @override
  String get triggerBoredom => '無聊';

  @override
  String get triggerSocialPressure => '社交壓力';

  @override
  String get triggerCelebration => '慶祝';

  @override
  String get triggerSleepProblems => '睡眠問題';

  @override
  String get triggerWorkPressure => '工作壓力';

  @override
  String get question4Title => '你為什麼想要做出改變？';

  @override
  String get question4Subtitle => '你的初衷將為你帶來源源不絕的動力。';

  @override
  String get reasonImproveHealth => '改善身體健康';

  @override
  String get reasonSaveMoney => '節省開銷';

  @override
  String get reasonFamily => '為了家人';

  @override
  String get reasonBetterSleep => '獲得更好睡眠';

  @override
  String get reasonMentalClarity => '保持頭腦清晰';

  @override
  String get reasonFitness => '增強體能';

  @override
  String get reasonSelfRespect => '重塑自尊';

  @override
  String get reasonCareer => '助力事業發展';

  @override
  String get milestoneUnlockedLabel => '解鎖里程碑';

  @override
  String incredibleNamePrefix(String name) {
    return '太棒了，$name！';
  }

  @override
  String amountSavedLabel(String amount) {
    return '已節省 $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '少喝了 $count 杯';
  }

  @override
  String get shareMyMilestone => '分享我的里程碑';

  @override
  String get milestoneImageShareError => '無法產生里程碑圖片，請重試。';

  @override
  String get dailyCheckInTitle => '每日打卡';

  @override
  String get howAreYouFeelingToday => '你今天感覺如何？';

  @override
  String get honestAnswerHelp => '你的真實回答能幫助我們為你提供更好的支援';

  @override
  String get didYouDrinkToday => '你今天喝酒了嗎？';

  @override
  String get noLabel => '沒有';

  @override
  String get yesLabel => '喝了';

  @override
  String get cravingLevelNow => '你現在的喝酒衝動程度？';

  @override
  String get anythingOnMind => '有什麼想說的嗎？';

  @override
  String get optionalLabel => '（選填）';

  @override
  String get dailyNoteHint => '記錄你的一天、誘發因素或微小的勝利...';

  @override
  String get alreadyCheckedInToday => '今天已完成打卡';

  @override
  String get saveCheckIn => '儲存打卡記錄';

  @override
  String get checkInsHelpTrack => '堅持打卡有助於記錄你隨時間變化的進展';

  @override
  String get alreadyCompletedTodayCheckIn => '你今天已經完成打卡了。';

  @override
  String get pleaseAnswerBothQuestions => '請先回答上面的兩個問題';

  @override
  String get checkInSaved => '打卡記錄已儲存';

  @override
  String get cravingNone => '無';

  @override
  String get cravingLow => '輕微';

  @override
  String get cravingMedium => '中等';

  @override
  String get cravingStrong => '強烈';

  @override
  String get moodBad => '糟糕';

  @override
  String get moodLow => '低落';

  @override
  String get moodGreat => '極佳';

  @override
  String get sosSupportTitle => 'SOS 緊急求助';

  @override
  String notAloneMessage(String name) {
    return '你不是一個人在戰鬥，$name';
  }

  @override
  String get cravingsPassMessage => '飲酒的衝動終會消退。選擇下面的方法陪伴你度過這個時刻。';

  @override
  String get breathingExercise => '呼吸放鬆練習';

  @override
  String get breathingExerciseSubtitle => '4-7-8 引導式呼吸，時長 2 分鐘';

  @override
  String get rideTheWave => '平復衝動浪潮';

  @override
  String get rideTheWaveSubtitle => '15 分鐘計時器 — 飲酒衝動終會消退';

  @override
  String get copingTips => '應對技巧';

  @override
  String get copingTipsSubtitle => '針對誘發因素的個人化策略';

  @override
  String get talkToAiCoach => '聯繫 AI 教練';

  @override
  String get talkToAiCoachSubtitle => '與你的康復夥伴傾訴';

  @override
  String get callSomeone => '打電話給朋友';

  @override
  String get callSomeoneSubtitle => '聯絡你信任的人';

  @override
  String get contactsPermissionNeeded => '呼叫聯絡人需要獲取通訊錄權限。';

  @override
  String get beatenCravingsPrefix => '你之前已經成功戰勝衝動 ';

  @override
  String beatenCravingsCount(int count) {
    return '$count 次';
  }

  @override
  String get beatenCravingsSuffix => ' 了。這次你同樣可以做到。';

  @override
  String get tellUsAboutYourself => '填寫個人資料';

  @override
  String get detailsSubtitle => '這些資訊有助於我們為你訂製康復旅程並提供準確的分析。';

  @override
  String get nameLabel => '姓名';

  @override
  String get nameHint => '例如：陳大明';

  @override
  String get ageLabel => '年齡';

  @override
  String get ageHint => '例如：32';

  @override
  String get sexAssignedAtBirth => '生理性別';

  @override
  String get sexFemale => '女';

  @override
  String get sexMale => '男';

  @override
  String get heightLabel => '身高';

  @override
  String get weightLabel => '體重';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => '已達每日上限';

  @override
  String dailyLimitReachedMessage(int limit) {
    return '你今天已用完 $limit 則免費對話額度。升級至 Premium 可享無限制教練對話。';
  }

  @override
  String get coachConnectError => '暫時無法連線，請稍後重試。';

  @override
  String get clearConversationTitle => '清空對話記錄？';

  @override
  String get clearConversationMessage => '這將永久刪除你與教練的聊天記錄。';

  @override
  String get clearLabel => '清空';

  @override
  String get recoveryCoachTitle => '康復教練';

  @override
  String get onlineLabel => '線上';

  @override
  String get clearConversationMenuItem => '清空對話記錄';

  @override
  String chatGreeting(String name) {
    return '你好，$name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return '今天是你在康復旅程中的第 $days 天。無論何時想聊聊，我都在這裡。';
  }

  @override
  String get quickPromptsLabel => '快捷提示';

  @override
  String get promptCravingLabel => '產生了喝酒衝動';

  @override
  String get promptCravingSubtitle => '快速恢復平靜';

  @override
  String get promptMotivationLabel => '需要動力';

  @override
  String get promptMotivationSubtitle => '艱難時刻的加油打氣';

  @override
  String get promptSocialLabel => '社交場合';

  @override
  String get promptSocialSubtitle => '應對聚會場景';

  @override
  String get promptSlippedLabel => '我不小心破戒了';

  @override
  String get promptSlippedSubtitle => '沒有責備，只有支援';

  @override
  String get typeMessageHint => '輸入訊息...';

  @override
  String get editProfileTitle => '編輯個人檔案';

  @override
  String couldNotSaveProfile(String error) {
    return '無法儲存個人檔案：$error';
  }

  @override
  String get heightCmLabel => '身高 (cm)';

  @override
  String get weightKgLabel => '體重 (kg)';

  @override
  String get saveChangesLabel => '儲存變更';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => '進階資料分析與洞察';

  @override
  String get featureUnlimitedJournal => '無限次日記撰寫';

  @override
  String get featureUnlimitedChat => '與 AI 教練無限次對話';

  @override
  String get featureCommunityGroups => '專屬社群交流群';

  @override
  String get featurePrioritySupport => '專家優先支援';

  @override
  String get featureThemePacks => '自訂主題包';

  @override
  String get featureDataExport => '資料匯出功能';

  @override
  String get featureAdFree => '無廣告純淨體驗';

  @override
  String get premiumMemberTitle => '你已是尊貴的 Premium 會員';

  @override
  String get unlockFullRecoveryTitle => '解鎖你的完整\n康復體驗';

  @override
  String get premiumMemberSubtitle => '感謝你對康復旅程的支援 — 以下所有進階功能均已解鎖。';

  @override
  String get premiumJoinSubtitle =>
      '加入成千上萬使用者的行列，藉由我們的\n進階工具和個人化支援，\n加速你的康復進程。';

  @override
  String get monthlyPlanLabel => '按月訂閱';

  @override
  String get perMonthSuffix => '/月';

  @override
  String get cancelAnytimeLabel => '可隨時取消';

  @override
  String get yearlyPlanLabel => '按年訂閱';

  @override
  String billedAnnuallyLabel(String amount) {
    return '每年計費 $amount';
  }

  @override
  String get bestValueLabel => '超值推薦';

  @override
  String get alreadyPremiumLabel => '已開通 Premium ✓';

  @override
  String get startPremiumLabel => '開通 Premium';

  @override
  String get manageSubscriptionLabel => '可隨時在裝置的訂閱設定中管理或取消。';

  @override
  String get noCommitmentLabel => '無長期捆綁，可隨時取消。';

  @override
  String get continueFreePlanLabel => '繼續使用免費版';

  @override
  String get backToHomeLabel => '返回首頁';

  @override
  String get cancelPremiumLabel => '取消 Premium 訂閱';

  @override
  String get cancelPremiumTitle => '確定取消 Premium 訂閱？';

  @override
  String get cancelPremiumMessage =>
      '取消後你將失去無限日記、無限教練對話、資料洞察及每週報告功能。你可以隨時重新訂閱。';

  @override
  String get keepPremiumLabel => '保留 Premium 訂閱';

  @override
  String get nowPremiumMessage => '你已成功開通 Premium！盡情享受完整的康復體驗吧。';

  @override
  String get premiumCancelledMessage => 'Premium 訂閱已取消，你已恢復為免費版計劃。';

  @override
  String get termsOfUseLabel => '使用條款';

  @override
  String get navHomeLabel => '首頁';

  @override
  String get navStatsLabel => '統計';

  @override
  String get navJournalLabel => '日記';

  @override
  String get navBadgesLabel => '徽章';

  @override
  String get navProfileLabel => '個人檔案';

  @override
  String get recoveryGoalsTitle => '康復目標';

  @override
  String get drinksPerWeekLabel => '每週飲酒次數/杯數';

  @override
  String get quitReasonsLabel => '戒酒原因';

  @override
  String get quitReasonsHelperText => '多個原因請用逗號隔開。';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return '無法儲存康復目標：$error';
  }

  @override
  String get goalHint => '例如：完全戒酒';

  @override
  String get drinksPerWeekHint => '例如：12';

  @override
  String get quitReasonsHint => '例如：健康、家庭、省錢';

  @override
  String get todaysPrompt => '每日思考提示';

  @override
  String get defaultJournalPrompt => '你今天有什麼想記錄的嗎？';

  @override
  String get aiJournalInsights => 'AI 日記分析';

  @override
  String get unlockJournalInsightsMessage => '從你的日記記錄中解鎖每週規律、情緒趨勢和個人化分析。';

  @override
  String get notEnoughJournalData => '資料尚不足 — 本週多寫幾篇日記再来看看吧。';

  @override
  String get openEntry => '檢視';

  @override
  String get editEntry => '編輯';

  @override
  String get deleteEntry => '刪除';

  @override
  String get searchJournalEntries => '搜尋日記...';

  @override
  String get writeNewEntry => '寫新日記';

  @override
  String get recentEntries => '近期日記';

  @override
  String get noJournalEntriesYet => '暫無日記 — 在上方寫下你的第一篇感悟吧。';

  @override
  String get noEntriesMatchFilters => '沒有符合篩選條件的日記。';

  @override
  String get weeklyJournalLimitReached => '已達本週上限';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return '你本週已用完 $limit 篇免費日記額度。升級至 Premium 可享無限次記錄。';
  }

  @override
  String get newEntry => '新日記';

  @override
  String get writeYourThoughts => '寫下你的想法';

  @override
  String get saveEntry => '儲存日記';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '本週免費額度還剩 $remaining/$limit 篇';
  }

  @override
  String get deleteEntryQuestion => '刪除日記？';

  @override
  String get deleteEntryConfirmation => '此日記將被永久刪除，且無法復原。';

  @override
  String get journalEntryNotFound => '未找到日記';

  @override
  String get journalEntryMayHaveBeenDeleted => '該日記可能已被刪除。';

  @override
  String get goBack => '返回';

  @override
  String get journalEntryTitle => '日記詳情';

  @override
  String get moodStruggling => '掙扎';

  @override
  String get moodUnwell => '不適';

  @override
  String get moodNeutral => '平靜';

  @override
  String get whatHappenedToday => '今天發生了什麼？';

  @override
  String get trigger => '誘發因素';

  @override
  String get whatHelped => '什麼幫到了你';

  @override
  String get whatIllTryNextTime => '下次我會嘗試';

  @override
  String get journalPrivacyMessage => '你的感悟屬於隱私內容，已安全儲存在你的日記中。';

  @override
  String get unlocked => '已解鎖';

  @override
  String daysLeft(int count) {
    return '還剩 $count 天';
  }

  @override
  String daysCount(int count) {
    return '$count 天';
  }

  @override
  String get firstReflection => '初次\n感悟';

  @override
  String get oneJournalEntry => '1 篇日記';

  @override
  String get openBook => '開卷有益';

  @override
  String get tenJournalEntries => '10 篇日記';

  @override
  String get dedicatedWriter => '持之以恆';

  @override
  String get thirtyJournalEntries => '30 篇日記';

  @override
  String get firstConversation => '初次\n傾訴';

  @override
  String get oneAiCoachChat => '1 次 AI 教練對話';

  @override
  String get keepTalking => '敞開心扉';

  @override
  String get fiveConversations => '5 次對話';

  @override
  String get coachCompanion => '良師\n益友';

  @override
  String get twentyConversations => '20 次對話';

  @override
  String get checkInHabit => '打卡\n習慣';

  @override
  String get sevenCheckIns => '7 次打卡';

  @override
  String get consistencyPro => '堅持\n達人';

  @override
  String get thirtyCheckIns => '30 次打卡';

  @override
  String get dedicatedJourney => '堅定\n前行';

  @override
  String get hundredCheckIns => '100 次打卡';

  @override
  String get goalGetter => '目標初成';

  @override
  String get threeGoalsCompleted => '完成 3 個目標';

  @override
  String get goalAchiever => '目標\n獵手';

  @override
  String get tenGoalsCompleted => '完成 10 個目標';

  @override
  String get firstSavings => '初見\n成效';

  @override
  String get fiveHundredSaved => '節省 \$500';

  @override
  String get smartSaver => '理財能手';

  @override
  String get oneThousandSaved => '節省 \$1,000';

  @override
  String get bigSaver => '省錢大師';

  @override
  String get fiveThousandSaved => '節省 \$5,000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current / \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current / $target';
  }

  @override
  String get firstMilestoneWaiting => '繼續加油 — 你的第一個里程碑就在前方！';

  @override
  String get badgesAndMilestones => '徽章與里程碑';

  @override
  String get yourMilestoneJourney => '你的里程碑旅程';

  @override
  String milestonesAchieved(int count) {
    return '已達成 $count 個里程碑。\n點擊檢視';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return '在你的康復旅程中，你已解鎖 $total 個里程碑中的 $unlocked 個。';
  }

  @override
  String get remaining => '未完成';

  @override
  String get complete => '已完成';

  @override
  String get nextMilestone => '下一個里程碑';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · 已完成 $percent%';
  }

  @override
  String get sobrietyMilestones => '戒酒里程碑';

  @override
  String get journeyBadges => '旅程徽章';

  @override
  String get bronze => '青銅';

  @override
  String get silver => '白銀';

  @override
  String get gold => '黃金';

  @override
  String get platinum => '白金';

  @override
  String get diamond => '鑽石';

  @override
  String get analyzingYourJourney => '正在分析你的旅程...';

  @override
  String get aiCreatingSanctuary => 'AI 正在為你打造專屬的康復空間。';

  @override
  String get understandingHabits => '正在了解你的習慣...';

  @override
  String get calculatingBaseline => '正在計算你的基準資料...';

  @override
  String get personalizingPlan => '正在為你訂製專屬計劃...';

  @override
  String get finalizingSanctuary => '正在完善你的專屬空間...';

  @override
  String get creatingYourPlan => '正在產生你的計劃...';

  @override
  String get personalizedPlanError => '無法產生你的個人化計劃，請重試。';

  @override
  String get retry => '重試';

  @override
  String get breathInhale => '吸氣';

  @override
  String get breathHold => '屏氣';

  @override
  String get breathExhale => '呼氣';

  @override
  String get breathDone => '完成';

  @override
  String get breathGreatJob => '太棒了！';

  @override
  String breathSessionsToday(int count) {
    return '今天已完成 $count 次練習';
  }

  @override
  String get endExercise => '結束練習';

  @override
  String get done => '完成';

  @override
  String get noCopingTipsYet => '暫無應對技巧';

  @override
  String get copingStrategiesWillAppear => '你的康復計劃產生完畢後，針對性的應對策略將顯示在這裡。';

  @override
  String get strategiesTailoredToTriggers => '針對你的誘發因素訂製的策略';

  @override
  String get cravingsPeakAndPass => '飲酒衝動達到頂峰\n後終會消退';

  @override
  String get rideTheWaveDescription =>
      '大多數飲酒衝動會在 15 分鐘內消退。你不需要屈服於它 — 和我們一起順應它並度過這個時刻。';

  @override
  String get stayWithIt => '堅持下去';

  @override
  String get youMadeIt => '你做到了';

  @override
  String get readyWhenYouAre => '隨時準備就緒';

  @override
  String get rideItAgain => '再次挑戰';

  @override
  String get start15MinuteTimer => '開啟 15 分鐘計時器';

  @override
  String get rideTheWaveCompletedMessage => '你成功戰勝了衝動，這是真正的毅力！💪';

  @override
  String get myProgress => '我的進度';

  @override
  String get weekLabel => '本週';

  @override
  String get monthLabel => '本月';

  @override
  String get allLabel => '全部';

  @override
  String get daysSoberStatLabel => '戒酒\n天數';

  @override
  String get savedStatLabel => '已節省';

  @override
  String get avoidedStatLabel => '少喝次數';

  @override
  String get moodTrends => '情緒趨勢';

  @override
  String get cravingsPattern => '衝動規律';

  @override
  String get unlockLabel => '解鎖';

  @override
  String get unlockFullStats => '解鎖完整統計';

  @override
  String get premiumStatsMessage => '情緒趨勢和衝動規律為 Premium 專屬功能。升級即可檢視完整資料。';

  @override
  String get healthMilestonesWillAppear => '你的健康里程碑將顯示在這裡。';

  @override
  String get healthMilestones => '健康里程碑';

  @override
  String dayNumber(int day) {
    return '第 $day 天';
  }

  @override
  String get soberLabel => '清醒';

  @override
  String get slipLabel => '破戒';

  @override
  String get noDataLabel => '無資料';

  @override
  String get milestone24Hours => '24 小時';

  @override
  String get milestoneOneWeek => '1 週';

  @override
  String get milestoneOneMonth => '1 個月';

  @override
  String get milestoneThreeMonths => '3 個月';

  @override
  String get milestoneSixMonths => '6 個月';

  @override
  String get milestoneOneYear => '1 年';

  @override
  String milestoneDayCount(int day) {
    return '第 $day 天里程碑';
  }

  @override
  String get maybeLaterLabel => '以後再說';

  @override
  String get cancelLabel => '取消';
}
