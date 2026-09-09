// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get skip => 'এড়িয়ে যান';

  @override
  String get continueButton => 'এগিয়ে যান';

  @override
  String get getStarted => 'শুরু করুন';

  @override
  String get onboardingTitle1 => 'আপনার জীবনের নিয়ন্ত্রণ নিন';

  @override
  String get onboardingSubtitle1 =>
      'আপনার যাত্রা ট্র্যাক করুন, প্রতিটি অর্জন উদযাপন করুন এবং প্রতিদিন আরও সুস্থ হয়ে উঠুন।';

  @override
  String get onboardingTitle2 => 'আপনার AI রিকভারি সঙ্গী';

  @override
  String get onboardingSubtitle2 =>
      'আপনার যাত্রার কথা মাথায় রেখে তৈরি ব্যক্তিগত নির্দেশিকা, সুস্থ অভ্যাস, অনুপ্রেরণামূলক অনুস্মারক এবং অগ্রগতি রিপোর্ট পান।';

  @override
  String get goodMorning => 'সুপ্রভাত';

  @override
  String get goodAfternoon => 'শুভ অপরাহ্ন';

  @override
  String get goodEvening => 'শুভ সন্ধ্যা';

  @override
  String get goodNight => 'শুভ রাত্রি';

  @override
  String get embracingClarity => 'একদিনে এক ধাপ করে স্পষ্টতাকে আলিঙ্গন করা।';

  @override
  String get streakLabel => 'ধারাবাহিকতা';

  @override
  String get goalLabel => 'লক্ষ্য';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: '$count দিন',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'প্রিমিয়াম প্ল্যান';

  @override
  String get premiumPlanSubtitle =>
      'আপনার রিকভারির সম্পূর্ণ অভিজ্ঞতা আনলক করুন';

  @override
  String get accountAndSupport => 'অ্যাকাউন্ট এবং সহায়তা';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get privacyPolicySubtitle =>
      'ডেটা শেয়ারিং এবং অ্যাকাউন্ট নিরাপত্তা পরিচালনা করুন';

  @override
  String get termsOfService => 'সেবার শর্তাবলী';

  @override
  String get termsOfServiceSubtitle =>
      'প্রশ্নোত্তর, আমাদের সাথে যোগাযোগ এবং সম্পদ';

  @override
  String get shareApp => 'অ্যাপ শেয়ার করুন';

  @override
  String get shareAppSubtitle => 'বন্ধুদের সাথে অ্যাপ শেয়ার করুন';

  @override
  String get resetData => 'ডেটা রিসেট করুন';

  @override
  String get resetDataSubtitle => 'এই ডিভাইসে সেভ করা সবকিছু মুছে ফেলুন';

  @override
  String get resetAllDataTitle => 'সব ডেটা রিসেট করবেন?';

  @override
  String get resetAllDataMessage =>
      'এটি এই ডিভাইসে সেভ করা সমস্ত তথ্য — প্রোফাইল, জার্নাল এন্ট্রি এবং অগ্রগতি মুছে ফেলবে — যা আর ফেরত আনা যাবে না।';

  @override
  String get cancel => 'বাতিল';

  @override
  String get reset => 'রিসেট';

  @override
  String get chooseFromGallery => 'গ্যালারি থেকে বেছে নিন';

  @override
  String get takePhoto => 'ছবি তুলুন';

  @override
  String get removePhoto => 'ছবি সরান';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ছবি আপডেট করা যায়নি: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ছবি সরানো যায়নি: $error';
  }

  @override
  String get photoTooLarge =>
      'কমপ্রেস করার পরেও ছবিটি অনেক বড় — অনুগ্রহ করে অন্য একটি চেষ্টা করুন।';

  @override
  String get unableToLoadProfile => 'আপনার প্রোফাইল লোড করা সম্ভব হয়নি';

  @override
  String get pleaseTryAgain => 'অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get tryAgain => 'আবার চেষ্টা করুন';

  @override
  String get profileNotFound => 'প্রোফাইল পাওয়া যায়নি';

  @override
  String get refresh => 'রিফ্রেশ';

  @override
  String get noProfileDataFound =>
      'এখনও এই ডিভাইসে কোনো প্রোফাইল ডেটা পাওয়া যায়নি।';

  @override
  String couldNotResetData(String error) {
    return 'ডেটা রিসেট করা যায়নি: $error';
  }

  @override
  String get navHome => 'হোম';

  @override
  String get navStats => 'পরিসংখ্যান';

  @override
  String get navJournal => 'জার্নাল';

  @override
  String get navBadges => 'ব্যাজ';

  @override
  String get navProfile => 'প্রোফাইল';

  @override
  String featureComingSoon(String feature) {
    return '$feature শীঘ্রই আসছে।';
  }

  @override
  String get appWordmark => 'ওয়েলনেস';

  @override
  String get appTitle => 'মদ্যপান ছাড়ুন';

  @override
  String get splashSubtitle =>
      'মদপানের অভ্যাস মুক্ত জীবনের দিকে\nপ্রথম পদক্ষেপটি নিন';

  @override
  String get preparingJourney => 'আপনার যাত্রা\nপ্রস্তুত করা হচ্ছে';

  @override
  String get taskMorningMeditation => 'সকালের ধ্যান (১০ মি)';

  @override
  String get taskReadChapter => '\"The Sober Diaries\"-এর অধ্যায় ৪ পড়ুন';

  @override
  String get taskEveningJournal => 'সন্ধ্যায় কৃতজ্ঞতার জার্নাল';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get youAreDoingGreat => 'আপনি খুব ভালো করছেন!';

  @override
  String get shareMilestone => 'মাইলেস্টোন শেয়ার করুন';

  @override
  String shareMilestoneMessage(int days) {
    return 'আমি আমার রিকভারি যাত্রার $days নম্বর দিনে আছি! 💪';
  }

  @override
  String get shareMilestoneSubject => 'আমার রিকভারি মাইলেস্টোন';

  @override
  String get weeklyReportReadyTitle => 'আপনার সাপ্তাহিক রিপোর্ট প্রস্তুত';

  @override
  String get weeklyReportReadySubtitle =>
      'আপনার সপ্তাহ কেমন কেটেছে দেখতে ট্যাপ করুন';

  @override
  String get howAreYouFeeling => 'আপনার কেমন অনুভব হচ্ছে?';

  @override
  String get moodTough => 'কঠিন';

  @override
  String get moodOkay => 'ঠিকঠাক';

  @override
  String get moodGood => 'ভালো';

  @override
  String get moneySaved => 'সঞ্চয়কৃত টাকা';

  @override
  String get caloriesSaved => 'সংরক্ষিত ক্যালোরি';

  @override
  String get healthScore => 'স্বাস্থ্য স্কোর';

  @override
  String get drinksAvoided => 'এড়িয়ে চলা ড্রিংকস';

  @override
  String get estimated => 'আনুষঙ্গিক আনুমানিক';

  @override
  String get aiGenerated => 'AI দ্বারা তৈরি';

  @override
  String get daysCapsLabel => 'দিন';

  @override
  String get todaysMotivation => 'আজকের অনুপ্রেরণা';

  @override
  String get defaultMotivationQuote =>
      'আপনি সাফল্যের সাথে আপনার অঙ্গীকার বজায় রেখেছেন। ইতিবাচক পরিবর্তনের এই ধারা বজায় রাখুন।';

  @override
  String get talkToCoach => 'কোচের সাথে কথা বলুন';

  @override
  String get havingACraving => 'আমার তীব্র তৃষ্ণা/ইচ্ছা হচ্ছে';

  @override
  String get unlockWeeklyReportsTitle => 'সাপ্তাহিক রিপোর্ট আনলক করুন';

  @override
  String get unlockWeeklyReportsMessage =>
      'প্রতি সপ্তাহে আপনার মদপানহীন দিন, মেজাজের ট্রেন্ড এবং ব্যক্তিগতকৃত AI মতামত দেখুন। আনলক করতে প্রিমিয়ামে আপগ্রেড করুন।';

  @override
  String get maybeLater => 'পরে হতে পারে';

  @override
  String get upgrade => 'আপগ্রেড';

  @override
  String get weeklyReportTitle => 'সাপ্তাহিক রিপোর্ট';

  @override
  String get weeklyReportsPremiumTitle =>
      'সাপ্তাহিক রিপোর্ট একটি প্রিমিয়াম ফিচার';

  @override
  String get weeklyReportsPremiumMessage =>
      'প্রতি সপ্তাহে আপনার মদপানহীন দিন, মেজাজের ট্রেন্ড, তৃষ্ণা এবং ব্যক্তিগতকৃত AI মতামত দেখুন।';

  @override
  String get upgradeToPremium => 'প্রিমিয়ামে আপগ্রেড করুন';

  @override
  String get couldNotGenerateReport =>
      'এই মুহূর্তে আপনার রিপোর্ট তৈরি করা সম্ভব হয়নি।';

  @override
  String get tryAgainLower => 'আবার চেষ্টা করুন';

  @override
  String get statSoberDays => 'মদপানহীন দিন';

  @override
  String get statAvgMood => 'গড় মেজাজ';

  @override
  String get statCravings => 'তীব্র ইচ্ছা';

  @override
  String get statMoneySaved => 'সঞ্চয়কৃত টাকা';

  @override
  String get coachFeedback => 'কোচের মতামত';

  @override
  String get journalInsights => 'জার্নাল বিশ্লেষণ';

  @override
  String get next => 'পরবর্তী';

  @override
  String get question1Title => 'আপনার লক্ষ্য কী';

  @override
  String get question1Subtitle =>
      'আপনার জন্য সবচেয়ে গুরুত্বপূর্ণ\nলক্ষ্যটি বেছে নিন';

  @override
  String get goalQuitCompletely => 'সম্পূর্ণ ছেড়ে দেওয়া';

  @override
  String get goalReduceDrinking => 'মদপান কমানো';

  @override
  String get goalTakeABreak => 'একটি বিরতি নেওয়া';

  @override
  String get goalBuildHealthierHabits => 'সুস্থ অভ্যাস গড়ে তোলা';

  @override
  String get question3Title => 'আপনার রুটিন সম্পর্কে\nআমাদের জানান';

  @override
  String get drinksPerWeek => 'প্রতি সপ্তাহে ড্রিংকস';

  @override
  String get moneySpentPerWeek => 'প্রতি সপ্তাহে খরচ হওয়া টাকা';

  @override
  String get drinkingLevel => 'মদপানের মাত্রা';

  @override
  String get triggersLabel => 'ট্রিগারস';

  @override
  String get levelSocial => 'সামাজিক';

  @override
  String get levelRegular => 'নিয়মিত';

  @override
  String get levelHeavy => 'অতিরিক্ত';

  @override
  String get levelDependent => 'নির্ভরশীল';

  @override
  String get triggerStress => 'মানসিক চাপ';

  @override
  String get triggerLoneliness => 'একাকীত্ব';

  @override
  String get triggerHabit => 'অভ্যাস';

  @override
  String get triggerSadness => 'বিষাদ';

  @override
  String get triggerAnger => 'রাগ';

  @override
  String get triggerBoredom => 'একঘেয়েমি';

  @override
  String get triggerSocialPressure => 'সামাজিক চাপ';

  @override
  String get triggerCelebration => 'উদযাপন';

  @override
  String get triggerSleepProblems => 'ঘুমের সমস্যা';

  @override
  String get triggerWorkPressure => 'কাজের চাপ';

  @override
  String get question4Title => 'আপনি কেন পরিবর্তন চান?';

  @override
  String get question4Subtitle =>
      'আপনার কারণ আপনাকে অনুপ্রাণিত করতে সাহায্য করবে।';

  @override
  String get reasonImproveHealth => 'স্বাস্থ্যের উন্নতি করা';

  @override
  String get reasonSaveMoney => 'টাকা বাঁচানো';

  @override
  String get reasonFamily => 'পরিবার';

  @override
  String get reasonBetterSleep => 'উন্নত ঘুম';

  @override
  String get reasonMentalClarity => 'মানসিক স্পষ্টতা';

  @override
  String get reasonFitness => 'ফিটনেস';

  @override
  String get reasonSelfRespect => 'আত্মসম্মান';

  @override
  String get reasonCareer => 'ক্যারিয়ার';

  @override
  String get milestoneUnlockedLabel => 'মাইলেস্টোন আনলক হয়েছে';

  @override
  String incredibleNamePrefix(String name) {
    return 'অসাধারণ, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount সঞ্চিত';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$countটি ড্রিংকস এড়ানো হয়েছে';
  }

  @override
  String get shareMyMilestone => 'আমার মাইলেস্টোন শেয়ার করুন';

  @override
  String get milestoneImageShareError =>
      'মাইলেস্টোন ছবি তৈরি করা যায়নি। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get dailyCheckInTitle => 'দৈনিক চেক-ইন';

  @override
  String get howAreYouFeelingToday => 'আজ আপনার কেমন লাগছে?';

  @override
  String get honestAnswerHelp =>
      'আপনার সৎ উত্তর আমাদের আপনাকে আরও ভালোভাবে সাহায্য করতে সহায়তা করে';

  @override
  String get didYouDrinkToday => 'আপনি কি আজ মদপান করেছেন?';

  @override
  String get noLabel => 'না';

  @override
  String get yesLabel => 'হ্যাঁ';

  @override
  String get cravingLevelNow => 'এখন তীব্র ইচ্ছার মাত্রা কেমন?';

  @override
  String get anythingOnMind => 'মনে কিছু ঘুরপাক খাচ্ছে?';

  @override
  String get optionalLabel => '(ঐচ্ছিক)';

  @override
  String get dailyNoteHint => 'আপনার দিন, ট্রিগার, সাফল্য সম্পর্কে লিখুন...';

  @override
  String get alreadyCheckedInToday => 'আজকের চেক-ইন ইতিপূর্বে সম্পন্ন হয়েছে';

  @override
  String get saveCheckIn => 'চেক-ইন সেভ করুন';

  @override
  String get checkInsHelpTrack =>
      'চেক-ইন সময়ের সাথে সাথে আপনার অগ্রগতি ট্র্যাক করতে সহায়তা করে';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'আপনি ইতিমধ্যেই আজকের চেক-ইন সম্পন্ন করেছেন।';

  @override
  String get pleaseAnswerBothQuestions =>
      'অনুগ্রহ করে আগে উপরের দুটি প্রশ্নের উত্তর দিন';

  @override
  String get checkInSaved => 'চেক-ইন সেভ হয়েছে';

  @override
  String get cravingNone => 'একদমই নেই';

  @override
  String get cravingLow => 'কম';

  @override
  String get cravingMedium => 'মাঝারি';

  @override
  String get cravingStrong => 'প্রবল';

  @override
  String get moodBad => 'খারাপ';

  @override
  String get moodLow => 'নিম্নমুখী';

  @override
  String get moodGreat => 'অসাধারণ';

  @override
  String get sosSupportTitle => 'SOS সহায়তা';

  @override
  String notAloneMessage(String name) {
    return 'আপনি একা নন, $name';
  }

  @override
  String get cravingsPassMessage =>
      'তীব্র ইচ্ছা কেটে যায়। আপনাকে এই মুহূর্তটি কাটিয়ে উঠতে সাহায্য করার জন্য নিচের একটি বিকল্প বেছে নিন।';

  @override
  String get breathingExercise => 'শ্বাস-প্রশ্বাসের ব্যায়াম';

  @override
  String get breathingExerciseSubtitle => 'নির্দেশিত ৪-৭-৮ কৌশল, ২ মিনিট';

  @override
  String get rideTheWave => 'ঢেউয়ের সাথে চলুন';

  @override
  String get rideTheWaveSubtitle =>
      '১৫ মিনিটের টাইমার — তীব্র ইচ্ছা সবসময় কেটে যায়';

  @override
  String get copingTips => 'মানিয়ে নেওয়ার টিপস';

  @override
  String get copingTipsSubtitle => 'আপনার ট্রিগারগুলির জন্য ব্যক্তিগতকৃত কৌশল';

  @override
  String get talkToAiCoach => 'AI কোচের সাথে কথা বলুন';

  @override
  String get talkToAiCoachSubtitle => 'আপনার রিকভারি সঙ্গীর সাথে চ্যাট করুন';

  @override
  String get callSomeone => 'কাউকে কল করুন';

  @override
  String get callSomeoneSubtitle => 'আপনার বিশ্বস্ত পরিচিতির সাথে যোগাযোগ করুন';

  @override
  String get contactsPermissionNeeded =>
      'কাউকে কল করার জন্য পরিচিতি তালিকার অ্যাক্সেস প্রয়োজন।';

  @override
  String get beatenCravingsPrefix => 'আপনি এর আগে ';

  @override
  String beatenCravingsCount(int count) {
    return '$count বার';
  }

  @override
  String get beatenCravingsSuffix =>
      ' তীব্র ইচ্ছাকে জয় করেছেন। আপনি এটি আবারও করতে পারবেন।';

  @override
  String get tellUsAboutYourself => 'আপনার সম্পর্কে বলুন';

  @override
  String get detailsSubtitle =>
      'এই তথ্য আমাদের আপনার রিকভারি যাত্রাকে ব্যক্তিগতকৃত করতে এবং নিখুঁত তথ্য দিতে সাহায্য করে।';

  @override
  String get nameLabel => 'নাম';

  @override
  String get nameHint => 'যেমন, অ্যালেক্স রিভার্স';

  @override
  String get ageLabel => 'বয়স';

  @override
  String get ageHint => 'যেমন, ৩২';

  @override
  String get sexAssignedAtBirth => 'জন্মে নির্ধারিত লিঙ্গ';

  @override
  String get sexFemale => 'নারী';

  @override
  String get sexMale => 'পুরুষ';

  @override
  String get heightLabel => 'উচ্চতা';

  @override
  String get weightLabel => 'ওজন';

  @override
  String get heightHint => '১৭০';

  @override
  String get weightHint => '৭০';

  @override
  String get dailyLimitReachedTitle => 'দৈনিক সীমা শেষ হয়েছে';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'আপনি আজ আপনার সমস্ত $limitটি বিনামূল্যে বার্তা ব্যবহার করে ফেলেছেন। আনলিমিটেড কোচ চ্যাটের জন্য প্রিমিয়ামে আপগ্রেড করুন।';
  }

  @override
  String get coachConnectError =>
      'আমি এই মুহূর্তে সংযোগ করতে পারিনি। অনুগ্রহ করে একটু পর আবার চেষ্টা করুন।';

  @override
  String get clearConversationTitle => 'কথোপকথন মুছে ফেলবেন?';

  @override
  String get clearConversationMessage =>
      'এটি স্থায়ীভাবে আপনার কোচ চ্যাটের ইতিহাস মুছে ফেলবে।';

  @override
  String get clearLabel => 'মুছে ফেলুন';

  @override
  String get recoveryCoachTitle => 'রিকভারি কোচ';

  @override
  String get onlineLabel => 'অনলাইন';

  @override
  String get clearConversationMenuItem => 'কথোপকথন মুছে ফেলুন';

  @override
  String chatGreeting(String name) {
    return 'হ্যালো $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'আপনি আপনার যাত্রার $days নম্বর দিনে আছেন। আপনি যখনই কথা বলতে চান আমি এখানেই আছি।';
  }

  @override
  String get quickPromptsLabel => 'দ্রুত প্রশ্নাবলী';

  @override
  String get promptCravingLabel => 'তীব্র ইচ্ছা হচ্ছে';

  @override
  String get promptCravingSubtitle => 'দ্রুত শান্ত হোন';

  @override
  String get promptMotivationLabel => 'অনুপ্রেরণা প্রয়োজন';

  @override
  String get promptMotivationSubtitle => 'কঠিন সময়ে একটু উৎসাহ';

  @override
  String get promptSocialLabel => 'সামাজিক পরিস্থিতি';

  @override
  String get promptSocialSubtitle => 'একটি গেট-টুগেদার সামলান';

  @override
  String get promptSlippedLabel => 'ভুলবশত বিচ্যুতি ঘটেছে';

  @override
  String get promptSlippedSubtitle => 'কোনো বিচার নয়, শুধুই সহায়তা';

  @override
  String get typeMessageHint => 'একটি বার্তা লিখুন...';

  @override
  String get editProfileTitle => 'প্রোফাইল এডিট করুন';

  @override
  String couldNotSaveProfile(String error) {
    return 'প্রোফাইল সেভ করা যায়নি: $error';
  }

  @override
  String get heightCmLabel => 'উচ্চতা (সেমি)';

  @override
  String get weightKgLabel => 'ওজন (কেজি)';

  @override
  String get saveChangesLabel => 'পরিবর্তনগুলি সেভ করুন';

  @override
  String get premiumBadgeLabel => 'প্রিমিয়াম';

  @override
  String get featureAdvancedInsights => 'উন্নত বিশ্লেষণ ও উপাত্ত';

  @override
  String get featureUnlimitedJournal => 'সীমাহীন জার্নাল এন্ট্রি';

  @override
  String get featureUnlimitedChat => 'AI কোচের সাথে সীমাহীন চ্যাট';

  @override
  String get featureCommunityGroups => 'বিশেষ কম্যুনিটি গ্রুপ';

  @override
  String get featurePrioritySupport => 'অগ্রাধিকারমূলক বিশেষজ্ঞ সহায়তা';

  @override
  String get featureThemePacks => 'কাস্টম থিম প্যাক';

  @override
  String get featureDataExport => 'ডেটা এক্সপোর্ট';

  @override
  String get featureAdFree => 'বিজ্ঞাপন-মুক্ত অভিজ্ঞতা';

  @override
  String get premiumMemberTitle => 'আপনি একজন প্রিমিয়াম মেম্বার';

  @override
  String get unlockFullRecoveryTitle =>
      'আপনার সম্পূর্ণ রিকভারির\nঅভিজ্ঞতা আনলক করুন';

  @override
  String get premiumMemberSubtitle =>
      'আপনার রিকভারি যাত্রাকে সমর্থন করার জন্য ধন্যবাদ — নিচের প্রতিটি প্রিমিয়াম ফিচার আনলক করা হয়েছে।';

  @override
  String get premiumJoinSubtitle =>
      'হাজার হাজার মানুষের কমিউনিটিতে যোগ দিন যারা\nআমাদের প্রিমিয়াম টুলস এবং ব্যক্তিগতকৃত সহায়তার মাধ্যমে\nতাদের নিরাময় যাত্রা ত্বরান্বিত করছেন।';

  @override
  String get monthlyPlanLabel => 'মাসিক';

  @override
  String get perMonthSuffix => '/মাস';

  @override
  String get cancelAnytimeLabel => 'যেকোনো সময় বাতিল করুন';

  @override
  String get yearlyPlanLabel => 'বার্ষিক';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'বছরে একবার বিল করা হয় $amount';
  }

  @override
  String get bestValueLabel => 'সেরা সাশ্রয়ী';

  @override
  String get alreadyPremiumLabel => 'আপনি প্রিমিয়াম গ্রাহক ✓';

  @override
  String get startPremiumLabel => 'প্রিমিয়াম শুরু করুন';

  @override
  String get manageSubscriptionLabel =>
      'আপনার ডিভাইসের সাবস্ক্রিপশন সেটিংস থেকে পরিচালনা বা বাতিল করুন।';

  @override
  String get noCommitmentLabel =>
      'কোনো বাধ্যবাধকতা নেই। যেকোনো সময় বাতিল করুন।';

  @override
  String get continueFreePlanLabel => 'ফ্রি প্ল্যান চালিয়ে যান';

  @override
  String get backToHomeLabel => 'হোমে ফিরে যান';

  @override
  String get cancelPremiumLabel => 'প্রিমিয়াম বাতিল করুন';

  @override
  String get cancelPremiumTitle => 'প্রিমিয়াম বাতিল করবেন?';

  @override
  String get cancelPremiumMessage =>
      'আপনি সীমাহীন জার্নাল এন্ট্রি, সীমাহীন কোচ চ্যাট, পরিসংখ্যান বিশ্লেষণ এবং সাপ্তাহিক রিপোর্টে অ্যাক্সেস হারাবেন। আপনি যেকোনো সময় পুনরায় সাবস্ক্রাইব করতে পারেন।';

  @override
  String get keepPremiumLabel => 'প্রিমিয়াম রাখুন';

  @override
  String get nowPremiumMessage =>
      'আপনি এখন প্রিমিয়াম সদস্য! আপনার সম্পূর্ণ রিকভারি অভিজ্ঞতা উপভোগ করুন।';

  @override
  String get premiumCancelledMessage =>
      'প্রিমিয়াম বাতিল করা হয়েছে। আপনি আবার ফ্রি প্ল্যানে ফিরে এসেছেন।';

  @override
  String get termsOfUseLabel => 'ব্যবহারের শর্তাবলী';

  @override
  String get navHomeLabel => 'হোম';

  @override
  String get navStatsLabel => 'পরিসংখ্যান';

  @override
  String get navJournalLabel => 'জার্নাল';

  @override
  String get navBadgesLabel => 'ব্যাজ';

  @override
  String get navProfileLabel => 'প্রোফাইল';

  @override
  String get recoveryGoalsTitle => 'রিকভারি লক্ষ্যসমূহ';

  @override
  String get drinksPerWeekLabel => 'প্রতি সপ্তাহে ড্রিংকস';

  @override
  String get quitReasonsLabel => 'ছেড়ে দেওয়ার কারণসমূহ';

  @override
  String get quitReasonsHelperText => 'কমা দিয়ে একাধিক কারণ আলাদা করুন।';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'রিকভারির লক্ষ্যগুলি সেভ করা যায়নি: $error';
  }

  @override
  String get goalHint => 'যেমন, সম্পূর্ণ পরহেজ';

  @override
  String get drinksPerWeekHint => 'যেমন, ১২';

  @override
  String get quitReasonsHint => 'যেমন, স্বাস্থ্য, পরিবার, টাকা';

  @override
  String get todaysPrompt => 'আজকের বিষয়';

  @override
  String get defaultJournalPrompt => 'আজ আপনার মনে কী চলছে?';

  @override
  String get aiJournalInsights => 'AI জার্নাল বিশ্লেষণ';

  @override
  String get unlockJournalInsightsMessage =>
      'আপনার জার্নাল এন্ট্রি থেকে সাপ্তাহিক প্যাটার্ন, মেজাজের প্রবণতা এবং ব্যক্তিগতকৃত তথ্য আনলক করুন।';

  @override
  String get notEnoughJournalData =>
      'এখনও পর্যাপ্ত ডেটা নেই — এই সপ্তাহে কয়েকটি এন্ট্রি লিখুন এবং পরে আবার দেখুন।';

  @override
  String get openEntry => 'খুলুন';

  @override
  String get editEntry => 'এডিট';

  @override
  String get deleteEntry => 'মুছে ফেলুন';

  @override
  String get searchJournalEntries => 'এন্ট্রি খুঁজুন...';

  @override
  String get writeNewEntry => 'নতুন এন্ট্রি লিখুন';

  @override
  String get recentEntries => 'সাম্প্রতিক এন্ট্রিগুলি';

  @override
  String get noJournalEntriesYet =>
      'এখনও কোনো জার্নাল এন্ট্রি নেই — উপরে আপনার প্রথম চিন্তাভাবনাটি লিখুন।';

  @override
  String get noEntriesMatchFilters =>
      'আপনার ফিল্টারের সাথে কোনো এন্ট্রি মেলেনি।';

  @override
  String get weeklyJournalLimitReached => 'সাপ্তাহিক সীমা পৌঁছেছে';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'আপনি এই সপ্তাহে আপনার সমস্ত $limitটি বিনামূল্যে জার্নাল এন্ট্রি ব্যবহার করেছেন। সীমাহীন এন্ট্রির জন্য প্রিমিয়ামে আপগ্রেড করুন।';
  }

  @override
  String get newEntry => 'নতুন এন্ট্রি';

  @override
  String get writeYourThoughts => 'আপনার চিন্তাভাবনা লিখুন';

  @override
  String get saveEntry => 'এন্ট্রি সেভ করুন';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'এই সপ্তাহে $limitটির মধ্যে $remainingটি বিনামূল্যে এন্ট্রি বাকি আছে';
  }

  @override
  String get deleteEntryQuestion => 'এন্ট্রি মুছবেন?';

  @override
  String get deleteEntryConfirmation =>
      'এই এন্ট্রিটি স্থায়ীভাবে মুছে যাবে। এটি আর ফেরত আনা যাবে না।';

  @override
  String get journalEntryNotFound => 'এন্ট্রি পাওয়া যায়নি';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'এই জার্নাল এন্ট্রিটি মুছে ফেলা হয়ে থাকতে পারে।';

  @override
  String get goBack => 'ফিরে যান';

  @override
  String get journalEntryTitle => 'জার্নাল এন্ট্রি';

  @override
  String get moodStruggling => 'কষ্টকর';

  @override
  String get moodUnwell => 'অসুস্থ';

  @override
  String get moodNeutral => 'স্বাভাবিক';

  @override
  String get whatHappenedToday => 'আজ কী ঘটেছে?';

  @override
  String get trigger => 'ট্রিগার';

  @override
  String get whatHelped => 'কী সাহায্য করেছে';

  @override
  String get whatIllTryNextTime => 'পরের বার আমি যা চেষ্টা করব';

  @override
  String get journalPrivacyMessage =>
      'আপনার চিন্তাভাবনা ব্যক্তিগত এবং আপনার জার্নালে সেভ করা হয়েছে।';

  @override
  String get unlocked => 'আনলক করা হয়েছে';

  @override
  String daysLeft(int count) {
    return '$count দিন বাকি';
  }

  @override
  String daysCount(int count) {
    return '$count দিন';
  }

  @override
  String get firstReflection => 'প্রথম\nভাবনা';

  @override
  String get oneJournalEntry => '১টি জার্নাল এন্ট্রি';

  @override
  String get openBook => 'খোলা বই';

  @override
  String get tenJournalEntries => '১০টি জার্নাল এন্ট্রি';

  @override
  String get dedicatedWriter => 'একনিষ্ঠ\nলেখক';

  @override
  String get thirtyJournalEntries => '৩০টি জার্নাল এন্ট্রি';

  @override
  String get firstConversation => 'প্রথম\nকথোপকথন';

  @override
  String get oneAiCoachChat => '১টি AI কোচ চ্যাট';

  @override
  String get keepTalking => 'কথা বলতে থাকুন';

  @override
  String get fiveConversations => '৫টি কথোপকথন';

  @override
  String get coachCompanion => 'কোচ\nসঙ্গী';

  @override
  String get twentyConversations => '২০টি কথোপকথন';

  @override
  String get checkInHabit => 'চেক-ইন\nঅভ্যাস';

  @override
  String get sevenCheckIns => '৭টি চেক-ইন';

  @override
  String get consistencyPro => 'ধারাবাহিকতার\nপ্রো';

  @override
  String get thirtyCheckIns => '৩০টি চেক-ইন';

  @override
  String get dedicatedJourney => 'একনিষ্ঠ\nযাত্রা';

  @override
  String get hundredCheckIns => '১০০টি চেক-ইন';

  @override
  String get goalGetter => 'লক্ষ্য অর্জনকারী';

  @override
  String get threeGoalsCompleted => '৩টি লক্ষ্য সম্পূর্ণ';

  @override
  String get goalAchiever => 'লক্ষ্য\nঅর্জিত';

  @override
  String get tenGoalsCompleted => '১০টি লক্ষ্য সম্পূর্ণ';

  @override
  String get firstSavings => 'প্রথম\nসঞ্চয়';

  @override
  String get fiveHundredSaved => '\$৫০০ সঞ্চিত';

  @override
  String get smartSaver => 'স্মার্ট সঞ্চয়ী';

  @override
  String get oneThousandSaved => '\$১,০০০ সঞ্চিত';

  @override
  String get bigSaver => 'বড় সঞ্চয়ী';

  @override
  String get fiveThousandSaved => '\$৫,০০০ সঞ্চিত';

  @override
  String currencyProgress(String current, String target) {
    return '\$$target-এর মধ্যে \$$current';
  }

  @override
  String countProgress(int current, int target) {
    return '$target-এর মধ্যে $current';
  }

  @override
  String get firstMilestoneWaiting =>
      'চলতে থাকুন — আপনার প্রথম মাইলফলক অপেক্ষা করছে!';

  @override
  String get badgesAndMilestones => 'ব্যাজ এবং মাইলফলক';

  @override
  String get yourMilestoneJourney => 'আপনার মাইলফলকের যাত্রা';

  @override
  String milestonesAchieved(int count) {
    return '$countটি মাইলফলক অর্জিত হয়েছে।\nদেখতে ট্যাপ করুন';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'আপনি আপনার যাত্রার $totalটির মধ্যে $unlockedটি মাইলফলক আনলক করেছেন।';
  }

  @override
  String get remaining => 'অবশিষ্ট';

  @override
  String get complete => 'সম্পূর্ণ';

  @override
  String get nextMilestone => 'পরবর্তী মাইলফলক';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% সম্পন্ন';
  }

  @override
  String get sobrietyMilestones => 'সোবারাইটি মাইলফলক';

  @override
  String get journeyBadges => 'যাত্রার ব্যাজ';

  @override
  String get bronze => 'ব্রোঞ্জ';

  @override
  String get silver => 'সিলভার';

  @override
  String get gold => 'গোল্ড';

  @override
  String get platinum => 'প্ল্যাটিনাম';

  @override
  String get diamond => 'ডায়মন্ড';

  @override
  String get analyzingYourJourney => 'আপনার যাত্রা বিশ্লেষণ করা হচ্ছে...';

  @override
  String get aiCreatingSanctuary =>
      'আমাদের AI আপনার ব্যক্তিগতকৃত স্থান তৈরি করছে।';

  @override
  String get understandingHabits => 'অভ্যাসগুলি বোঝা হচ্ছে...';

  @override
  String get calculatingBaseline => 'আপনার বেসলাইন হিসাব করা হচ্ছে...';

  @override
  String get personalizingPlan => 'আপনার প্ল্যান ব্যক্তিগতকৃত করা হচ্ছে...';

  @override
  String get finalizingSanctuary => 'চূড়ান্ত রূপ দেওয়া হচ্ছে...';

  @override
  String get creatingYourPlan => 'আপনার প্ল্যান তৈরি করা হচ্ছে...';

  @override
  String get personalizedPlanError =>
      'আমরা আপনার ব্যক্তিগতকৃত প্ল্যানটি তৈরি করতে পারিনি। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get retry => 'পুনরায় চেষ্টা করুন';

  @override
  String get breathInhale => 'শ্বাস নিন';

  @override
  String get breathHold => 'ধরে রাখুন';

  @override
  String get breathExhale => 'শ্বাস ছাড়ুন';

  @override
  String get breathDone => 'সম্পন্ন';

  @override
  String get breathGreatJob => 'দারুণ কাজ!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'আজকে $countটি সেশন',
      one: 'আজকে $countটি সেশন',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'ব্যায়াম শেষ করুন';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get noCopingTipsYet => 'এখনও কোনো মানিয়ে নেওয়ার টিপস নেই';

  @override
  String get copingStrategiesWillAppear =>
      'আপনার রিকভারি প্ল্যান তৈরি হওয়া শেষ হলে আপনার কৌশলগুলি এখানে দেখাবে।';

  @override
  String get strategiesTailoredToTriggers =>
      'আপনার ট্রিগার অনুযায়ী বিশেষভাবে তৈরি কৌশলসমূহ';

  @override
  String get cravingsPeakAndPass => 'তীব্র ইচ্ছা চরমে পৌঁছায়\nএবং কেটে যায়';

  @override
  String get rideTheWaveDescription =>
      'বেশিরভাগ তীব্র ইচ্ছা ১৫ মিনিটের মধ্যে কেটে যায়। আপনাকে সে অনুযায়ী কাজ করতে হবে না — শুধু আমাদের সাথে ধৈর্য ধরে অপেক্ষা করুন।';

  @override
  String get stayWithIt => 'ধৈর্য ধরুন';

  @override
  String get youMadeIt => 'আপনি পেরেছেন';

  @override
  String get readyWhenYouAre => 'আপনি প্রস্তুত হলেই শুরু করুন';

  @override
  String get rideItAgain => 'আবার চেষ্টা করুন';

  @override
  String get start15MinuteTimer => '১৫ মিনিটের টাইমার শুরু করুন';

  @override
  String get rideTheWaveCompletedMessage =>
      'আপনি এটি কাটিয়ে উঠেছেন। এটিই আসল শক্তি। 💪';

  @override
  String get myProgress => 'আমার অগ্রগতি';

  @override
  String get weekLabel => 'সপ্তাহ';

  @override
  String get monthLabel => 'মাস';

  @override
  String get allLabel => 'সব';

  @override
  String get daysSoberStatLabel => 'মদপানহীন\nদিন';

  @override
  String get savedStatLabel => 'সঞ্চিত';

  @override
  String get avoidedStatLabel => 'এড়ানো হয়েছে';

  @override
  String get moodTrends => 'মেজাজের ধারা';

  @override
  String get cravingsPattern => 'তীব্র ইচ্ছার প্যাটার্ন';

  @override
  String get unlockLabel => 'আনলক';

  @override
  String get unlockFullStats => 'সম্পূর্ণ পরিসংখ্যান আনলক করুন';

  @override
  String get premiumStatsMessage =>
      'মেজাজের ধারা এবং তীব্র ইচ্ছার প্যাটার্ন হল প্রিমিয়াম ফিচার। আপনার সম্পূর্ণ পরিসংখ্যান দেখতে আপগ্রেড করুন।';

  @override
  String get healthMilestonesWillAppear =>
      'আপনার স্বাস্থ্যের মাইলফলকগুলি এখানে দেখাবে।';

  @override
  String get healthMilestones => 'স্বাস্থ্যের মাইলফলকসমূহ';

  @override
  String dayNumber(int day) {
    return 'দিন $day';
  }

  @override
  String get soberLabel => 'মদপানহীন';

  @override
  String get slipLabel => 'বিচ্যুতি';

  @override
  String get noDataLabel => 'কোনো ডেটা নেই';

  @override
  String get milestone24Hours => '২৪ ঘণ্টা';

  @override
  String get milestoneOneWeek => 'এক সপ্তাহ';

  @override
  String get milestoneOneMonth => 'এক মাস';

  @override
  String get milestoneThreeMonths => 'তিন মাস';

  @override
  String get milestoneSixMonths => 'ছয় মাস';

  @override
  String get milestoneOneYear => 'এক বছর';

  @override
  String milestoneDayCount(int day) {
    return 'দিন $day এর মাইলফলক';
  }

  @override
  String get maybeLaterLabel => 'হয়তো পরে';

  @override
  String get cancelLabel => 'বাতিল';
}
