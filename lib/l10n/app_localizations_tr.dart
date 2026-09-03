// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

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
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get privacyPolicySubtitle =>
      'Manage data sharing and account security';

  @override
  String get termsOfService => 'Hizmet Şartları';

  @override
  String get termsOfServiceSubtitle => 'FAQs, contact us, and resources';

  @override
  String get shareApp => 'Uygulamayı Paylaş';

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
  String get appTitle => 'Sober Flow';

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
  String get question1Title => 'What is your goal';

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
  String get question3Title => 'Tell us about your\nroutine';

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
}
