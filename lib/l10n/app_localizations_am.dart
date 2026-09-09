// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get skip => 'እለፍ';

  @override
  String get continueButton => 'ቀጥል';

  @override
  String get getStarted => 'ጀምር';

  @override
  String get onboardingTitle1 => 'ሕይወትዎን በቁጥጥር ስር ያድርጉ';

  @override
  String get onboardingSubtitle1 =>
      'ጉዞዎን ይከታተሉ፣ እያንዳንዱን ስኬት ያከብሩ እና በቀን በአንድ ጊዜ ጤናማ ይሁኑ።';

  @override
  String get onboardingTitle2 => 'የእርስዎ AI የማገገሚያ ጓደኛ';

  @override
  String get onboardingSubtitle2 =>
      'በጉዞዎ ዙሪያ የተነደፉ ግላዊ መመሪያዎችን፣ ጤናማ ልማዶችን፣ የማበረታቻ ማስታወሻዎችን እና የእድገት ሪፖርቶችን ይቀበሉ።';

  @override
  String get goodMorning => 'እንደምን አደሩ';

  @override
  String get goodAfternoon => 'እንደምን ዋሉ';

  @override
  String get goodEvening => 'እንደምን አመሹ';

  @override
  String get goodNight => 'መልካም ሌሊት';

  @override
  String get embracingClarity => 'ጥራት ያለው ሕይወትን መከተል፣ በቀን በአንድ ጊዜ።';

  @override
  String get streakLabel => 'ቀጣይነት';

  @override
  String get goalLabel => 'ግብ';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ቀናት',
      one: '$count ቀን',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'የፕሪሚየም ዕቅድ';

  @override
  String get premiumPlanSubtitle => 'ሙሉ የማገገሚያ அனுபዎን ይክፈቱ';

  @override
  String get accountAndSupport => 'መለያ እና ድጋፍ';

  @override
  String get privacyPolicy => 'የግላዊነት ፖሊሲ';

  @override
  String get privacyPolicySubtitle => 'የውሂብ ማጋራትን እና የመለያ ደህንነትን ያስደስቱ';

  @override
  String get termsOfService => 'የአገልግሎት ውሎች';

  @override
  String get termsOfServiceSubtitle => 'ተደጋግመው የሚጠየቁ ጥያቄዎች፣ ያግኙን እና መረጃዎች';

  @override
  String get shareApp => 'መተግበሪያውን ያጋሩ';

  @override
  String get shareAppSubtitle => 'መተግበሪያውን ለጓደኞችዎ ያጋሩ';

  @override
  String get resetData => 'ውሂብን ዳግም አስጀምር';

  @override
  String get resetDataSubtitle => 'በዚህ መሣሪያ ላይ የተቀመጡትን ሁሉንም ይደመሰሱ';

  @override
  String get resetAllDataTitle => 'ሁሉንም ውሂብ ዳግም ማስጀመር ይፈልጋሉ?';

  @override
  String get resetAllDataMessage =>
      'ይህ በዚህ መሣሪያ ላይ የተቀመጡትን ሁሉንም — መገለጫ፣ የጆርናል ግቤቶች እና እድገት — ያጸዳል እና ሊመለስ አይችልም።';

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get reset => 'ዳግም አስጀምር';

  @override
  String get chooseFromGallery => 'ከጋለሪ ይምረጡ';

  @override
  String get takePhoto => 'ፎቶ አንሳ';

  @override
  String get removePhoto => 'ፎቶ ያስወግዱ';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ፎቶውን ማዘመን አልተቻለም፦ $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ፎቶውን ማስወገድ አልተቻለም፦ $error';
  }

  @override
  String get photoTooLarge => 'ያ ፎቶ ከተጨመቀ በኋላም ቢሆን በጣም ትልቅ ነው — እባክዎን ሌላ ይሞክሩ።';

  @override
  String get unableToLoadProfile => 'መገለጫዎን መጫን አልተቻለም';

  @override
  String get pleaseTryAgain => 'እባክዎን እንደገና ይሞክሩ።';

  @override
  String get tryAgain => 'እንደገና ይሞክሩ';

  @override
  String get profileNotFound => 'መገለጫ አልተገኘም';

  @override
  String get refresh => 'ያድሱ';

  @override
  String get noProfileDataFound => 'በዚህ መሣሪያ ላይ ገና ምንም የመገለጫ ውሂብ አልተገኘም።';

  @override
  String couldNotResetData(String error) {
    return 'ውሂብን ዳግም ማስጀመር አልተቻለም፦ $error';
  }

  @override
  String get navHome => 'መነሻ';

  @override
  String get navStats => 'ስታቲስቲክስ';

  @override
  String get navJournal => 'ጆርናል';

  @override
  String get navBadges => 'ባጆች';

  @override
  String get navProfile => 'መገለጫ';

  @override
  String featureComingSoon(String feature) {
    return '$feature በቅርቡ ይገኛል።';
  }

  @override
  String get appWordmark => 'ጤናማነት';

  @override
  String get appTitle => 'መጠጣትን ያቁሙ';

  @override
  String get splashSubtitle => 'ከአልኮል ነፃ ወደሆነ ሕይወት\nየመጀመሪያውን እርምጃ ይውሰዱ';

  @override
  String get preparingJourney => 'ጉዞዎን\nበማዘጋጀት ላይ';

  @override
  String get taskMorningMeditation => 'የጠዋት ማሰላሰል (10 ደቂቃ)';

  @override
  String get taskReadChapter => 'የ \"The Sober Diaries\" ምዕራፍ 4ን ያንብቡ';

  @override
  String get taskEveningJournal => 'የምሽት የምስጋና ጆርናል';

  @override
  String get close => 'ዝጋ';

  @override
  String get youAreDoingGreat => 'በጣም ጥሩ እያደረጉ ነው!';

  @override
  String get shareMilestone => 'ታላቅ ስኬትን ያጋሩ';

  @override
  String shareMilestoneMessage(int days) {
    return 'በማገገሚያ ጉዞዬ ቀን $days ላይ ነኝ! 💪';
  }

  @override
  String get shareMilestoneSubject => 'የማገገሚያ ስኬቴ';

  @override
  String get weeklyReportReadyTitle => 'የሳምንት ሪፖርትዎ ዝግጁ ነው';

  @override
  String get weeklyReportReadySubtitle => 'ሳምንትዎ እንዴት እንደሄደ ለማየት ይጫኑ';

  @override
  String get howAreYouFeeling => 'ምን ይሰማዎታል?';

  @override
  String get moodTough => 'ከባድ';

  @override
  String get moodOkay => 'ደህና';

  @override
  String get moodGood => 'ጥሩ';

  @override
  String get moneySaved => 'የተቆጠበ ገንዘብ';

  @override
  String get caloriesSaved => 'የተቆጠበ ካሎሪ';

  @override
  String get healthScore => 'የጤና ነጥብ';

  @override
  String get drinksAvoided => 'የተከለከሉ መጠጦች';

  @override
  String get estimated => 'የተገመተ';

  @override
  String get aiGenerated => 'በ AI የተፈጠረ';

  @override
  String get daysCapsLabel => 'ቀናት';

  @override
  String get todaysMotivation => 'የዛሬ ማበረታቻ';

  @override
  String get defaultMotivationQuote =>
      'ቁርጠኝነትዎን በተሳካ ሁኔታ ጠብቀዋል። የአዎንታዊ ለውጥ ማዕበልን መጋለብዎን ይቀጥሉ።';

  @override
  String get talkToCoach => 'አሰልጣኙን ያናግሩ';

  @override
  String get havingACraving => 'ፅኑ ፍላጎት አለኝ';

  @override
  String get unlockWeeklyReportsTitle => 'ሳምንታዊ ሪፖርቶችን ይክፈቱ';

  @override
  String get unlockWeeklyReportsMessage =>
      'በየሳምንቱ ከአልኮል ነፃ የሆኑ ቀናቶችዎን፣ የሜዳ አዝማሚያዎችን እና ግላዊ የ AI ግብረመልሶችን ይመልከቱ። ለመክፈት ወደ ፕሪሚየም ያሻሽሉ።';

  @override
  String get maybeLater => 'ምናልባት በኋላ';

  @override
  String get upgrade => 'ያሻሽሉ';

  @override
  String get weeklyReportTitle => 'ሳምንታዊ ሪፖርት';

  @override
  String get weeklyReportsPremiumTitle => 'ሳምንታዊ ሪፖርቶች የፕሪሚየም ባህሪ ናቸው';

  @override
  String get weeklyReportsPremiumMessage =>
      'በየሳምንቱ ከአልኮል ነፃ ቀናትዎን፣ የሜዳ አዝማሚያዎችን፣ ፅኑ ፍላጎቶችን እና ግላዊ የ AI ግብረመልሶችን ይመልከቱ።';

  @override
  String get upgradeToPremium => 'ወደ ፕሪሚየም ያሻሽሉ';

  @override
  String get couldNotGenerateReport => 'አሁን ሪፖርትዎን ማመንጨት አልተቻለም።';

  @override
  String get tryAgainLower => 'እንደገና ይሞክሩ';

  @override
  String get statSoberDays => 'ከአልኮል ነፃ ቀናት';

  @override
  String get statAvgMood => 'አማካይ ስሜት';

  @override
  String get statCravings => 'ፅኑ ፍላጎቶች';

  @override
  String get statMoneySaved => 'የተቆጠበ ገንዘብ';

  @override
  String get coachFeedback => 'የአሰልጣኝ ግብረመልስ';

  @override
  String get journalInsights => 'የጆርናል ግንዛቤዎች';

  @override
  String get next => 'ቀጣይ';

  @override
  String get question1Title => 'ግብዎ ምንድን ነው';

  @override
  String get question1Subtitle => 'ለእርስዎ በጣም አስፈላጊ የሆነውን\nግብ ይምረጡ';

  @override
  String get goalQuitCompletely => 'ሙሉ በሙሉ ማቆም';

  @override
  String get goalReduceDrinking => 'መጠጣትን መቀነስ';

  @override
  String get goalTakeABreak => 'እረፍት መውሰድ';

  @override
  String get goalBuildHealthierHabits => 'ጤናማ ልማዶችን መገንባት';

  @override
  String get question3Title => 'ስለ ልማድዎ\nይነግሩን';

  @override
  String get drinksPerWeek => 'መጠጦች በሳምንት';

  @override
  String get moneySpentPerWeek => 'በሳምንት የወጣ ገንዘብ';

  @override
  String get drinkingLevel => 'የመጠጣት ደረጃ';

  @override
  String get triggersLabel => 'መንስኤዎች (Triggers)';

  @override
  String get levelSocial => 'ማህበራዊ';

  @override
  String get levelRegular => 'መደበኛ';

  @override
  String get levelHeavy => 'ከባድ';

  @override
  String get levelDependent => 'ጥገኛ';

  @override
  String get triggerStress => 'ጭንቀት';

  @override
  String get triggerLoneliness => 'ብቸኝነት';

  @override
  String get triggerHabit => 'ልማድ';

  @override
  String get triggerSadness => 'ሀዘን';

  @override
  String get triggerAnger => 'ቁጣ';

  @override
  String get triggerBoredom => 'ድብርት';

  @override
  String get triggerSocialPressure => 'ማህበራዊ ጫና';

  @override
  String get triggerCelebration => 'በዓል ማከበር';

  @override
  String get triggerSleepProblems => 'የእንቅልፍ ችግሮች';

  @override
  String get triggerWorkPressure => 'የስራ ጫና';

  @override
  String get question4Title => 'ለምን መለወጥ ይፈልጋሉ?';

  @override
  String get question4Subtitle => 'ምክንያትዎ እርስዎን ለማበረታታት ይረዳል።';

  @override
  String get reasonImproveHealth => 'ጤናዬን ማሻሻል';

  @override
  String get reasonSaveMoney => 'ገንዘብ መቆጠብ';

  @override
  String get reasonFamily => 'ቤተሰብ';

  @override
  String get reasonBetterSleep => 'የተሻለ እንቅልፍ';

  @override
  String get reasonMentalClarity => 'የአእምሮ ጥራት';

  @override
  String get reasonFitness => 'አካላዊ ብቃት';

  @override
  String get reasonSelfRespect => 'ራስን ማክበር';

  @override
  String get reasonCareer => 'የስራ መስክ';

  @override
  String get milestoneUnlockedLabel => 'ስኬት ተከፍቷል';

  @override
  String incredibleNamePrefix(String name) {
    return 'ድንቅ ነው፣ $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ተቆጥቧል';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count ተከለክሏል';
  }

  @override
  String get shareMyMilestone => 'ስኬቴን ያጋሩ';

  @override
  String get milestoneImageShareError =>
      'የስኬት ምስሉን መፍጠር አልተቻለም። እባክዎን እንደገና ይሞክሩ።';

  @override
  String get dailyCheckInTitle => 'ዕለታዊ ምርመራ';

  @override
  String get howAreYouFeelingToday => 'ዛሬ ምን ይሰማዎታል?';

  @override
  String get honestAnswerHelp => 'እውነተኛ መልስዎ እርስዎን በተሻለ ሁኔታ እንድንደግፍ ይረዳናል';

  @override
  String get didYouDrinkToday => 'ዛሬ ጠጥተዋል?';

  @override
  String get noLabel => 'አይ';

  @override
  String get yesLabel => 'አዎ';

  @override
  String get cravingLevelNow => 'አሁን የፅኑ ፍላጎት ደረጃ?';

  @override
  String get anythingOnMind => 'በአእምሮዎ ውስጥ ያለ ነገር አለ?';

  @override
  String get optionalLabel => '(አማራጭ)';

  @override
  String get dailyNoteHint => 'ስለ ቀንዎ፣ መንስኤዎችዎ፣ ድሎችዎ ይፃፉ...';

  @override
  String get alreadyCheckedInToday => 'ዛሬ አስመዝግበዋል';

  @override
  String get saveCheckIn => 'ምርመራውን አስቀምጥ';

  @override
  String get checkInsHelpTrack => 'ምርመራዎች በጊዜ ሂደት እድገትዎን ለመከታተል ይረዳሉ';

  @override
  String get alreadyCompletedTodayCheckIn => 'የዛሬውን ምርመራ አስቀድመው አጠናቀዋል።';

  @override
  String get pleaseAnswerBothQuestions =>
      'እባክዎን በመጀመሪያ ከላይ ያሉትን ሁለቱንም ጥያቄዎች ይመልሱ';

  @override
  String get checkInSaved => 'ምርመራ ተቀምጧል';

  @override
  String get cravingNone => 'ምንም';

  @override
  String get cravingLow => 'ዝቅተኛ';

  @override
  String get cravingMedium => 'መካከለኛ';

  @override
  String get cravingStrong => 'ጠንካራ';

  @override
  String get moodBad => 'መጥፎ';

  @override
  String get moodLow => 'ዝቅተኛ';

  @override
  String get moodGreat => 'በጣም ጥሩ';

  @override
  String get sosSupportTitle => 'የ SOS ድጋፍ';

  @override
  String notAloneMessage(String name) {
    return 'ብቸኛ አይደሉም፣ $name';
  }

  @override
  String get cravingsPassMessage =>
      'ፅኑ ፍላጎቶች ያልፋሉ። በዚህ ቅጽበት ውስጥ እንዲያልፉ የሚረዳዎትን ከታች ይምረጡ።';

  @override
  String get breathingExercise => 'የአተነፋፈስ ልምምድ';

  @override
  String get breathingExerciseSubtitle => 'የሚመራ 4-7-8 ቴክኒክ፣ 2 ደቂቃ';

  @override
  String get rideTheWave => 'ማዕበሉን ይጋልቡ';

  @override
  String get rideTheWaveSubtitle => 'የ 15 ደቂቃ ቆጣሪ — ፅኑ ፍላጎቶች ሁልጊዜ ያልፋሉ';

  @override
  String get copingTips => 'የመቋቋሚያ ምክሮች';

  @override
  String get copingTipsSubtitle => 'ለመንስኤዎችዎ የተዘጋጁ ግላዊ ስልቶች';

  @override
  String get talkToAiCoach => 'የ AI አሰልጣኙን ያናግሩ';

  @override
  String get talkToAiCoachSubtitle => 'ከማገገሚያ ጓደኛዎ ጋር ይወያዩ';

  @override
  String get callSomeone => 'አንድ ሰውን ይደውሉ';

  @override
  String get callSomeoneSubtitle => 'የታመነ እውቂያዎን ያግኙ';

  @override
  String get contactsPermissionNeeded => 'ለእውቂያ ለመደወል የእውቂያዎች ፈቃድ ያስፈልጋል።';

  @override
  String get beatenCravingsPrefix => 'ከዚህ ቀደም የፅኑ ፍላጎትን ';

  @override
  String beatenCravingsCount(int count) {
    return '$count ጊዜ';
  }

  @override
  String get beatenCravingsSuffix => ' አሸንፈዋል። እንደገና ማድረግ ይችላሉ።';

  @override
  String get tellUsAboutYourself => 'ስለ እርስዎ ይነግሩን';

  @override
  String get detailsSubtitle =>
      'ይህ መረጃ የማገገሚያ ጉዞዎን ግላዊ ለማድረግ እና ትክክለኛ ግንዛቤዎችን ለመስጠት ይረዳናል።';

  @override
  String get nameLabel => 'ስም';

  @override
  String get nameHint => 'ምሳሌ፡ አሌክስ ሪቨርስ';

  @override
  String get ageLabel => 'ዕድሜ';

  @override
  String get ageHint => 'ምሳሌ፡ 32';

  @override
  String get sexAssignedAtBirth => 'በትውልድ የተሰጠ ጾታ';

  @override
  String get sexFemale => 'ሴት';

  @override
  String get sexMale => 'ወንድ';

  @override
  String get heightLabel => 'ቁመት';

  @override
  String get weightLabel => 'ክብደት';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'የዕለት ገደብ ተደርሷል';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'ዛሬ ያሉትን ሁሉንም $limit ነፃ መልዕክቶች ተጠቅመዋል። ለአንጻራዊ ገደብ ለሌለው ውይይት ወደ ፕሪሚየም ያሻሽሉ።';
  }

  @override
  String get coachConnectError =>
      'አሁን መገናኘት አልተቻለም። እባክዎን ከጥቂት ጊዜ በኋላ እንደገና ይሞክሩ።';

  @override
  String get clearConversationTitle => 'ውይይቱን ያፅዱ?';

  @override
  String get clearConversationMessage => 'ይህ የአሰልጣኝ ውይይት ታሪክዎን በቋሚነት ያስወግዳል።';

  @override
  String get clearLabel => 'አጽዳ';

  @override
  String get recoveryCoachTitle => 'የማገገሚያ አሰልጣኝ';

  @override
  String get onlineLabel => 'በመስመር ላይ';

  @override
  String get clearConversationMenuItem => 'ውይይት አጽዳ';

  @override
  String chatGreeting(String name) {
    return 'ሰላም $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'በጉዞዎ ቀን $days ላይ ነዎት። ነገሮችን ለመነጋገር በሚፈልጉበት ጊዜ ሁሉ እዚህ ነኝ።';
  }

  @override
  String get quickPromptsLabel => 'ፈጣን ጥያቄዎች';

  @override
  String get promptCravingLabel => 'ፅኑ ፍላጎት አለኝ';

  @override
  String get promptCravingSubtitle => 'በፍጥነት ይረጋጉ';

  @override
  String get promptMotivationLabel => 'ማበረታቻ ያስፈልገኛል';

  @override
  String get promptMotivationSubtitle => 'በከባድ ጊዜ ድጋፍ';

  @override
  String get promptSocialLabel => 'ማህበራዊ ሁኔታ';

  @override
  String get promptSocialSubtitle => 'ስብሰባን ይምሩ';

  @override
  String get promptSlippedLabel => 'ተሳስቼ ጠጣሁ';

  @override
  String get promptSlippedSubtitle => 'ያለ ፍርድ፣ ድጋፍ ብቻ';

  @override
  String get typeMessageHint => 'መልዕክት ይፃፉ...';

  @override
  String get editProfileTitle => 'መገለጫ ያርትዑ';

  @override
  String couldNotSaveProfile(String error) {
    return 'መገለጫ ማስቀመጥ አልተቻለም፦ $error';
  }

  @override
  String get heightCmLabel => 'ቁመት (ሴ.ሜ)';

  @override
  String get weightKgLabel => 'ክብደት (ኪ.ግ)';

  @override
  String get saveChangesLabel => 'ለወጡትን አስቀምጥ';

  @override
  String get premiumBadgeLabel => 'ፕሪሚየም';

  @override
  String get featureAdvancedInsights => 'የላቁ ግንዛቤዎች እና ትንታኔዎች';

  @override
  String get featureUnlimitedJournal => 'ገደብ የለሽ የጆርናል ግቤቶች';

  @override
  String get featureUnlimitedChat => 'ከ AI አሰልጣኝ ጋር ገደብ የለሽ ውይይት';

  @override
  String get featureCommunityGroups => 'ልዩ የማህበረሰብ ቡድኖች';

  @override
  String get featurePrioritySupport => 'ቅድሚያ የሚሰጠው የባለሙያ ድጋፍ';

  @override
  String get featureThemePacks => 'ብጁ የጭብጥ ጥቅሎች';

  @override
  String get featureDataExport => 'ውሂብ ወደ ውጭ ላክ';

  @override
  String get featureAdFree => 'ከማስታወቂያ ነፃ अनुभव';

  @override
  String get premiumMemberTitle => 'እርስዎ የፕሪሚየም አባል ነዎት';

  @override
  String get unlockFullRecoveryTitle => 'ሙሉ የማገገሚያ अनुभवዎን\nይክፈቱ';

  @override
  String get premiumMemberSubtitle =>
      'የማገገሚያ ጉዞዎን ስለደገፉ እናመሰግናለን — ከታች ያሉትን ሁሉንም የፕሪሚየም ባህሪያት ተከፍተዋል።';

  @override
  String get premiumJoinSubtitle =>
      'በእኛ ፕሪሚየም መሣሪያዎች እና ግላዊ ድጋፍ የፈውስ ጉዟቸውን የሚያፋጥኑ የሺዎች ማህበረሰብን ይቀላቀሉ።';

  @override
  String get monthlyPlanLabel => 'ወርሃዊ';

  @override
  String get perMonthSuffix => '/ወር';

  @override
  String get cancelAnytimeLabel => 'በማንኛውም ጊዜ ይሰርዙ';

  @override
  String get yearlyPlanLabel => 'ዓመታዊ';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'በዓመት በ $amount ይከፈላል';
  }

  @override
  String get bestValueLabel => 'ምርጥ ዋጋ';

  @override
  String get alreadyPremiumLabel => 'እርስዎ ፕሪሚየም ነዎት ✓';

  @override
  String get startPremiumLabel => 'ፕሪሚየም ጀምር';

  @override
  String get manageSubscriptionLabel => 'ከመሳሪያዎ የእንቅስቃሴ ቅንብሮች ያስደስቱ ወይም ይሰርዙ።';

  @override
  String get noCommitmentLabel => 'ምንም ግዴታ የለም። በማንኛውም ጊዜ ይሰርዙ።';

  @override
  String get continueFreePlanLabel => 'በነፃ ዕቅድ ይቀጥሉ';

  @override
  String get backToHomeLabel => 'ወደ መነሻ ገፅ ተመለስ';

  @override
  String get cancelPremiumLabel => 'ፕሪሚየም ሰርዝ';

  @override
  String get cancelPremiumTitle => 'ፕሪሚየም ይሰረዝ?';

  @override
  String get cancelPremiumMessage =>
      'ገደብ የለሽ የጆርናል ግቤቶች፣ የኮች ውይይት፣ የስታቲስቲክስ ግንዛቤዎች እና ሳምንታዊ ሪፖርቶችን የማግኘት መብት ያጣሉ። በማንኛውም ጊዜ እንደገና መመዝገብ ይችላሉ።';

  @override
  String get keepPremiumLabel => 'ፕሪሚየም ይኑር';

  @override
  String get nowPremiumMessage => 'አሁን የፕሪሚየም አባል ነዎት! በሙሉ የማገገሚያ अनुभवዎ ይደሰቱ።';

  @override
  String get premiumCancelledMessage => 'ፕሪሚየም ተሰርዟል። ወደ ነፃው ዕቅድ ተመልሰዋል።';

  @override
  String get termsOfUseLabel => 'የአጠቃቀም ውሎች';

  @override
  String get navHomeLabel => 'መነሻ';

  @override
  String get navStatsLabel => 'ስታቲስቲክስ';

  @override
  String get navJournalLabel => 'ጆርናል';

  @override
  String get navBadgesLabel => 'ባጆች';

  @override
  String get navProfileLabel => 'መገለጫ';

  @override
  String get recoveryGoalsTitle => 'የማገገሚያ ግቦች';

  @override
  String get drinksPerWeekLabel => 'መጠጦች በሳምንት';

  @override
  String get quitReasonsLabel => 'የማቆሚያ ምክንያቶች';

  @override
  String get quitReasonsHelperText => 'ብዙ ምክንያቶችን በኮማ ይለዩ።';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'የማገገሚያ ግቦችን ማስቀመጥ አልተቻለም፦ $error';
  }

  @override
  String get goalHint => 'ምሳሌ፡ ሙሉ በሙሉ መታቀብ';

  @override
  String get drinksPerWeekHint => 'ምሳሌ፡ 12';

  @override
  String get quitReasonsHint => 'ምሳሌ፡ ጤና፣ ቤተሰብ፣ ገንዘብ';

  @override
  String get todaysPrompt => 'የዛሬው መጠየቂያ';

  @override
  String get defaultJournalPrompt => 'ዛሬ በአእምሮዎ ውስጥ ያለው ምንድን ነው?';

  @override
  String get aiJournalInsights => 'የ AI ጆርናል ግንዛቤዎች';

  @override
  String get unlockJournalInsightsMessage =>
      'ከጆርናል ግቤቶችዎ የሳምንት ቅጦችን፣ የሜዳ አዝማሚያዎችን እና ግላዊ ግንዛቤዎችን ይክፈቱ።';

  @override
  String get notEnoughJournalData =>
      'ገና በቂ ውሂብ የለም — በዚህ ሳምንት ጥቂት ግቤቶችን ይፃፉ እና እንደገና ያረጋግጡ።';

  @override
  String get openEntry => 'ክፈት';

  @override
  String get editEntry => 'አርትዕ';

  @override
  String get deleteEntry => 'ሰርዝ';

  @override
  String get searchJournalEntries => 'ግቤቶችን ፈልግ...';

  @override
  String get writeNewEntry => 'አዲስ ግቤት ፃፍ';

  @override
  String get recentEntries => 'የቅርብ ጊዜ ግቤቶች';

  @override
  String get noJournalEntriesYet =>
      'ገና ምንም የጆርናል ግቤቶች የሉም — የመጀመሪያዎን ሀሳብ ከላይ ይፃፉ።';

  @override
  String get noEntriesMatchFilters => 'ከማጣሪያዎችዎ ጋር የሚዛመዱ ግቤቶች የሉም።';

  @override
  String get weeklyJournalLimitReached => 'የሳምንት ገደብ ተደርሷል';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'በዚህ ሳምንት ያሉትን ሁሉንም $limit ነፃ የጆርናል ግቤቶች ተጠቅመዋል። ለገደብ የለሽ ግቤቶች ወደ ፕሪሚየም ያሻሽሉ።';
  }

  @override
  String get newEntry => 'አዲስ ግቤት';

  @override
  String get writeYourThoughts => 'ሀሳብዎን ይፃፉ';

  @override
  String get saveEntry => 'ግቤትን አስቀምጥ';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'በዚህ ሳምንት ከ $limit ውስጥ $remaining ነፃ ግቤቶች ቀርተዋል።';
  }

  @override
  String get deleteEntryQuestion => 'ግቤት ይሰረዝ?';

  @override
  String get deleteEntryConfirmation => 'ይህ ግቤት በቋሚነት ይሰረዛል። ይህ ሊመለስ አይችልም።';

  @override
  String get journalEntryNotFound => 'ግቤት አልተገኘም';

  @override
  String get journalEntryMayHaveBeenDeleted => 'ይህ የጆርናል ግቤት ተሰርዞ ሊሆን ይችላል።';

  @override
  String get goBack => 'ወደ ኋላ ተመለስ';

  @override
  String get journalEntryTitle => 'የጆርናል ግቤት';

  @override
  String get moodStruggling => 'እየታገሉ ነው';

  @override
  String get moodUnwell => 'ህመም ላይ';

  @override
  String get moodNeutral => 'መካከለኛ';

  @override
  String get whatHappenedToday => 'ዛሬ ምን ሆነ?';

  @override
  String get trigger => 'መንስኤ';

  @override
  String get whatHelped => 'ምን ረዳዎት';

  @override
  String get whatIllTryNextTime => 'በሚቀጥለው ጊዜ ምን እሞክራለሁ';

  @override
  String get journalPrivacyMessage => 'የእርስዎ ሀሳብ ግላዊ ነው እና በጆርናልዎ ውስጥ ተቀምጧል።';

  @override
  String get unlocked => 'ተከፍቷል';

  @override
  String daysLeft(int count) {
    return '$count ቀን ቀርቷል';
  }

  @override
  String daysCount(int count) {
    return '$count ቀናት';
  }

  @override
  String get firstReflection => 'የመጀመሪያ\nሀሳብ';

  @override
  String get oneJournalEntry => '1 የጆርናል ግቤት';

  @override
  String get openBook => 'የተከፈተ መጽሐፍ';

  @override
  String get tenJournalEntries => '10 የጆርናል ግቤቶች';

  @override
  String get dedicatedWriter => 'ቁርጠኛ\nፀሐፊ';

  @override
  String get thirtyJournalEntries => '30 የጆርናል ግቤቶች';

  @override
  String get firstConversation => 'የመጀመሪያ\nውይይት';

  @override
  String get oneAiCoachChat => '1 የ AI አሰልጣኝ ውይይት';

  @override
  String get keepTalking => 'መነጋገርን ይቀጥሉ';

  @override
  String get fiveConversations => '5 ውይይቶች';

  @override
  String get coachCompanion => 'የአሰልጣኝ\nጓደኛ';

  @override
  String get twentyConversations => '20 ውይይቶች';

  @override
  String get checkInHabit => 'የምርመራ\nልማድ';

  @override
  String get sevenCheckIns => '7 ምርመራዎች';

  @override
  String get consistencyPro => 'የቋሚነት\nባለሙያ';

  @override
  String get thirtyCheckIns => '30 ምርመራዎች';

  @override
  String get dedicatedJourney => 'ቁርጠኛ\nጉዞ';

  @override
  String get hundredCheckIns => '100 ምርመራዎች';

  @override
  String get goalGetter => 'ግብ አሳኪ';

  @override
  String get threeGoalsCompleted => '3 ግቦች ተጠናቀዋል';

  @override
  String get goalAchiever => 'ግብ\nአሳኪ';

  @override
  String get tenGoalsCompleted => '10 ግቦች ተጠናቀዋል';

  @override
  String get firstSavings => 'የመጀመሪያ\nቁጠባ';

  @override
  String get fiveHundredSaved => '\$500 ተቆጥቧል';

  @override
  String get smartSaver => 'ብልህ ቆጣቢ';

  @override
  String get oneThousandSaved => '\$1,000 ተቆጥቧል';

  @override
  String get bigSaver => 'ትልቅ ቆጣቢ';

  @override
  String get fiveThousandSaved => '\$5,000 ተቆጥቧል';

  @override
  String currencyProgress(String current, String target) {
    return 'ከ \$$target ውስጥ \$$current';
  }

  @override
  String countProgress(int current, int target) {
    return 'ከ $target ውስጥ $current';
  }

  @override
  String get firstMilestoneWaiting => 'ይቀጥሉ — የመጀመሪያው ትልቅ ስኬትዎ እየጠበቀዎት ነው!';

  @override
  String get badgesAndMilestones => 'ባጆች እና ታላላቅ ስኬቶች';

  @override
  String get yourMilestoneJourney => 'የስኬቶችዎ ጉዞ';

  @override
  String milestonesAchieved(int count) {
    return '$count ስኬት ተሳክቷል።\nለማየት ይጫኑ';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'በጉዞዎ ውስጥ ከ $total ስኬቶች $unlocked ተከፍተዋል።';
  }

  @override
  String get remaining => 'የቀረ';

  @override
  String get complete => 'ተጠናቋል';

  @override
  String get nextMilestone => 'ቀጣይ ስኬት';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% ደርሷል';
  }

  @override
  String get sobrietyMilestones => 'ከአልኮል ነፃነት ስኬቶች';

  @override
  String get journeyBadges => 'የጉዞ ባጆች';

  @override
  String get bronze => 'ብሮንዝ';

  @override
  String get silver => 'ብር';

  @override
  String get gold => 'ወርቅ';

  @override
  String get platinum => 'ፕላቲነም';

  @override
  String get diamond => 'ዳይመንድ';

  @override
  String get analyzingYourJourney => 'ጉዞዎን በመተንተን ላይ...';

  @override
  String get aiCreatingSanctuary =>
      'የእኛ AI የእርስዎን ግላዊ ደህንነቱ የተጠበቀ ቦታ እየፈጠረ ነው።';

  @override
  String get understandingHabits => 'ልማዶችን በመረዳት ላይ...';

  @override
  String get calculatingBaseline => 'የመነሻ መስመርዎን በማስላት ላይ...';

  @override
  String get personalizingPlan => 'እቅድዎን ግላዊ በማድረግ ላይ...';

  @override
  String get finalizingSanctuary => 'ቦታዎን በማጠናቀቅ ላይ...';

  @override
  String get creatingYourPlan => 'እቅድዎን በመፍጠር ላይ...';

  @override
  String get personalizedPlanError =>
      'የእርስዎን ግላዊ እቅድ መፍጠር አልቻልንም። እባክዎን እንደገና ይሞክሩ።';

  @override
  String get retry => 'ድጋሚ ይሞክሩ';

  @override
  String get breathInhale => 'እስትንፋስ ወደ ውስጥ';

  @override
  String get breathHold => 'ያዙት';

  @override
  String get breathExhale => 'እስትንፋስ ወደ ውጭ';

  @override
  String get breathDone => 'ተጠናቋል';

  @override
  String get breathGreatJob => 'በጣም ጥሩ ስራ!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ዛሬ $count ክፍለ ጊዜዎች',
      one: 'ዛሬ $count ክፍለ ጊዜ',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'ልምምዱን ጨርስ';

  @override
  String get done => 'ተጠናቋል';

  @override
  String get noCopingTipsYet => 'ገና ምንም የመቋቋሚያ ምክሮች የሉም';

  @override
  String get copingStrategiesWillAppear =>
      'የማገገሚያ እቅድዎ ተፈጥሮ ሲያልቅ የእርስዎ ግላዊ የመቋቋሚያ ስልቶች እዚህ ይታያሉ።';

  @override
  String get strategiesTailoredToTriggers => 'ለመንስኤዎችዎ የተዘጋጁ ስልቶች';

  @override
  String get cravingsPeakAndPass => 'ፅኑ ፍላጎቶች ከፍተኛ ደረጃ ላይ ይደርሳሉ\nእና ያልፋሉ';

  @override
  String get rideTheWaveDescription =>
      'አብዛኛዎቹ ፅኑ ፍላጎቶች በ 15 ደቂቃዎች ውስጥ ያልፋሉ። በእሱ ላይ እርምጃ መውሰድ የለብዎትም — ከእኛ ጋር ዝም ብለው ያሳልፉት።';

  @override
  String get stayWithIt => 'ከእሱ ጋር ይቆዩ';

  @override
  String get youMadeIt => 'አድርገውታል';

  @override
  String get readyWhenYouAre => 'ዝግጁ ሲሆኑ';

  @override
  String get rideItAgain => 'እንደገና ያሳልፉት';

  @override
  String get start15MinuteTimer => 'የ 15-ደቂቃ ቆጣሪ ይጀምሩ';

  @override
  String get rideTheWaveCompletedMessage =>
      'ማዕበሉን አልፈውታል። ይህ እውነተኛ ጥንካሬ ነው። 💪';

  @override
  String get myProgress => 'የእኔ እድገት';

  @override
  String get weekLabel => 'ሳምንት';

  @override
  String get monthLabel => 'ወር';

  @override
  String get allLabel => 'ሁሉንም';

  @override
  String get daysSoberStatLabel => 'ከአልኮል ነፃ\nቀናት';

  @override
  String get savedStatLabel => 'ተቆጥቧል';

  @override
  String get avoidedStatLabel => 'ተከልክሏል';

  @override
  String get moodTrends => 'የስሜት አዝማሚያዎች';

  @override
  String get cravingsPattern => 'የፅኑ ፍላጎት ቅጥ';

  @override
  String get unlockLabel => 'ክፈት';

  @override
  String get unlockFullStats => 'ሙሉ ስታቲስቲክስን ይክፈቱ';

  @override
  String get premiumStatsMessage =>
      'የስሜት አዝማሚያዎች እና የፅኑ ፍላጎት ቅጦች የፕሪሚየም ባህሪያት ናቸው። ሙሉ ስታቲስቲክስዎን ለማየት ያሻሽሉ።';

  @override
  String get healthMilestonesWillAppear => 'የጤና ስኬቶችዎ እዚህ ይታያሉ።';

  @override
  String get healthMilestones => 'የጤና ስኬቶች';

  @override
  String dayNumber(int day) {
    return 'ቀን $day';
  }

  @override
  String get soberLabel => 'ከአልኮል ነፃ';

  @override
  String get slipLabel => 'ስህተት';

  @override
  String get noDataLabel => 'ምንም ውሂብ የለም';

  @override
  String get milestone24Hours => '24 ሰዓታት';

  @override
  String get milestoneOneWeek => 'አንድ ሳምንት';

  @override
  String get milestoneOneMonth => 'አንድ ወር';

  @override
  String get milestoneThreeMonths => 'ሦስት ወራት';

  @override
  String get milestoneSixMonths => 'ስድስት ወራት';

  @override
  String get milestoneOneYear => 'አንድ ዓመት';

  @override
  String milestoneDayCount(int day) {
    return 'የቀን $day ስኬት';
  }

  @override
  String get maybeLaterLabel => 'ምናልባት ቆይቶ';

  @override
  String get cancelLabel => 'ይቅር';
}
