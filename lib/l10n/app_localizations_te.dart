// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get skip => 'దాటవేయి';

  @override
  String get continueButton => 'కొనసాగించు';

  @override
  String get getStarted => 'ప్రారంభించండి';

  @override
  String get onboardingTitle1 => 'మీ జీవితంపై నియంత్రణ తీసుకోండి';

  @override
  String get onboardingSubtitle1 =>
      'మీ ప్రయాణాన్ని ట్రాక్ చేయండి, ప్రతి విజయాన్ని జరుపుకోండి, రోజురోజుకూ ఆరోగ్యంగా మారండి.';

  @override
  String get onboardingTitle2 => 'మీ AI రికవరీ సహచరుడు';

  @override
  String get onboardingSubtitle2 =>
      'మీ ప్రయాణానికి అనుగుణంగా రూపొందించిన వ్యక్తిగత మార్గదర్శకత్వం, ఆరోగ్యకరమైన అలవాట్లు, ప్రేరణ రిమైండర్లు మరియు పురోగతి నివేదికలను పొందండి.';

  @override
  String get goodMorning => 'శుభోదయం';

  @override
  String get goodAfternoon => 'శుభ మధ్యాహ్నం';

  @override
  String get goodEvening => 'శుభ సాయంత్రం';

  @override
  String get goodNight => 'శుభరాత్రి';

  @override
  String get embracingClarity => 'రోజురోజుకూ స్పష్టతను స్వీకరించండి.';

  @override
  String get streakLabel => 'కొనసాగింపు';

  @override
  String get goalLabel => 'లక్ష్యం';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count రోజులు',
      one: '$count రోజు',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium ప్లాన్';

  @override
  String get premiumPlanSubtitle =>
      'మీ పూర్తి రికవరీ అనుభవాన్ని అన్‌లాక్ చేయండి';

  @override
  String get accountAndSupport => 'ఖాతా & సహాయం';

  @override
  String get privacyPolicy => 'గోప్యతా విధానం';

  @override
  String get privacyPolicySubtitle =>
      'డేటా షేరింగ్ మరియు ఖాతా భద్రతను నిర్వహించండి';

  @override
  String get termsOfService => 'సేవా నిబంధనలు';

  @override
  String get termsOfServiceSubtitle =>
      'తరచుగా అడిగే ప్రశ్నలు, మమ్మల్ని సంప్రదించండి మరియు వనరులు';

  @override
  String get shareApp => 'యాప్‌ను షేర్ చేయండి';

  @override
  String get shareAppSubtitle => 'యాప్‌ను మీ స్నేహితులతో షేర్ చేయండి';

  @override
  String get resetData => 'డేటాను రీసెట్ చేయండి';

  @override
  String get resetDataSubtitle =>
      'ఈ పరికరంలో సేవ్ చేసిన ప్రతిదాన్ని తొలగించండి';

  @override
  String get resetAllDataTitle => 'మొత్తం డేటాను రీసెట్ చేయాలా?';

  @override
  String get resetAllDataMessage =>
      'ఇది ఈ పరికరంలో సేవ్ చేసిన ప్రొఫైల్, జర్నల్ ఎంట్రీలు మరియు పురోగతిని మొత్తం తొలగిస్తుంది — దీన్ని తిరిగి మార్చలేరు.';

  @override
  String get cancel => 'రద్దు';

  @override
  String get reset => 'రీసెట్';

  @override
  String get chooseFromGallery => 'గ్యాలరీ నుండి ఎంచుకోండి';

  @override
  String get takePhoto => 'ఫోటో తీయండి';

  @override
  String get removePhoto => 'ఫోటోను తొలగించండి';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ఫోటోను అప్‌డేట్ చేయలేకపోయాం: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ఫోటోను తొలగించలేకపోయాం: $error';
  }

  @override
  String get photoTooLarge =>
      'కంప్రెస్ చేసిన తర్వాత కూడా ఈ ఫోటో చాలా పెద్దగా ఉంది — వేరే ఫోటోను ప్రయత్నించండి.';

  @override
  String get unableToLoadProfile => 'మీ ప్రొఫైల్‌ను లోడ్ చేయలేకపోయాం';

  @override
  String get pleaseTryAgain => 'దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get tryAgain => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get profileNotFound => 'ప్రొఫైల్ కనుగొనబడలేదు';

  @override
  String get refresh => 'రిఫ్రెష్ చేయండి';

  @override
  String get noProfileDataFound =>
      'ఈ పరికరంలో ఇంకా ప్రొఫైల్ డేటా ఏదీ కనుగొనబడలేదు.';

  @override
  String couldNotResetData(String error) {
    return 'డేటాను రీసెట్ చేయలేకపోయాం: $error';
  }

  @override
  String get navHome => 'హోమ్';

  @override
  String get navStats => 'గణాంకాలు';

  @override
  String get navJournal => 'జర్నల్';

  @override
  String get navBadges => 'బ్యాడ్జ్‌లు';

  @override
  String get navProfile => 'ప్రొఫైల్';

  @override
  String featureComingSoon(String feature) {
    return '$feature త్వరలో అందుబాటులోకి వస్తుంది.';
  }

  @override
  String get appWordmark => 'వెల్‌నెస్';

  @override
  String get appTitle => 'మద్యం తాగడం మానేయండి';

  @override
  String get splashSubtitle => 'మద్యం లేని జీవితానికి\nమొదటి అడుగు వేయండి';

  @override
  String get preparingJourney => 'మీ ప్రయాణాన్ని\nసిద్ధం చేస్తోంది';

  @override
  String get taskMorningMeditation => 'ఉదయం ధ్యానం (10 నిమి)';

  @override
  String get taskReadChapter => '\"The Sober Diaries\" 4వ అధ్యాయం చదవండి';

  @override
  String get taskEveningJournal => 'సాయంత్రం కృతజ్ఞతా జర్నల్';

  @override
  String get close => 'మూసివేయండి';

  @override
  String get youAreDoingGreat => 'మీరు చాలా బాగా చేస్తున్నారు!';

  @override
  String get shareMilestone => 'మైలురాయిని షేర్ చేయండి';

  @override
  String shareMilestoneMessage(int days) {
    return 'నా రికవరీ ప్రయాణంలో ఇది $daysవ రోజు! 💪';
  }

  @override
  String get shareMilestoneSubject => 'నా రికవరీ మైలురాయి';

  @override
  String get weeklyReportReadyTitle => 'మీ వారపు నివేదిక సిద్ధంగా ఉంది';

  @override
  String get weeklyReportReadySubtitle =>
      'మీ వారం ఎలా గడిచిందో చూడటానికి ట్యాప్ చేయండి';

  @override
  String get howAreYouFeeling => 'మీకు ఎలా అనిపిస్తోంది?';

  @override
  String get moodTough => 'కష్టంగా ఉంది';

  @override
  String get moodOkay => 'పర్వాలేదు';

  @override
  String get moodGood => 'బాగుంది';

  @override
  String get moneySaved => 'ఆదా చేసిన డబ్బు';

  @override
  String get caloriesSaved => 'ఆదా చేసిన కేలరీలు';

  @override
  String get healthScore => 'ఆరోగ్య స్కోర్';

  @override
  String get drinksAvoided => 'తప్పించుకున్న పానీయాలు';

  @override
  String get estimated => 'అంచనా';

  @override
  String get aiGenerated => 'AI రూపొందించింది';

  @override
  String get daysCapsLabel => 'రోజులు';

  @override
  String get todaysMotivation => 'ఈరోజు ప్రేరణ';

  @override
  String get defaultMotivationQuote =>
      'మీ నిబద్ధతను విజయవంతంగా కొనసాగించారు. సానుకూల మార్పు అలపై ముందుకు సాగుతూ ఉండండి.';

  @override
  String get talkToCoach => 'కోచ్‌తో మాట్లాడండి';

  @override
  String get havingACraving => 'నాకు మద్యం తాగాలనే కోరిక కలుగుతోంది';

  @override
  String get unlockWeeklyReportsTitle => 'వారపు నివేదికలను అన్‌లాక్ చేయండి';

  @override
  String get unlockWeeklyReportsMessage =>
      'ప్రతి వారం మీ మద్యం లేని రోజులు, మూడ్ ట్రెండ్‌లు మరియు వ్యక్తిగత AI ఫీడ్‌బ్యాక్‌ను చూడండి. అన్‌లాక్ చేయడానికి Premiumకి అప్‌గ్రేడ్ చేయండి.';

  @override
  String get maybeLater => 'తర్వాత కావచ్చు';

  @override
  String get upgrade => 'అప్‌గ్రేడ్ చేయండి';

  @override
  String get weeklyReportTitle => 'వారపు నివేదిక';

  @override
  String get weeklyReportsPremiumTitle => 'వారపు నివేదికలు Premium ఫీచర్';

  @override
  String get weeklyReportsPremiumMessage =>
      'ప్రతి వారం మీ మద్యం లేని రోజులు, మూడ్ ట్రెండ్‌లు, మద్యం తాగాలనే కోరికలు మరియు వ్యక్తిగత AI ఫీడ్‌బ్యాక్‌ను చూడండి.';

  @override
  String get upgradeToPremium => 'Premiumకి అప్‌గ్రేడ్ చేయండి';

  @override
  String get couldNotGenerateReport =>
      'ప్రస్తుతం మీ నివేదికను రూపొందించలేకపోయాం.';

  @override
  String get tryAgainLower => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get statSoberDays => 'మద్యం లేని రోజులు';

  @override
  String get statAvgMood => 'సగటు మూడ్';

  @override
  String get statCravings => 'కోరికలు';

  @override
  String get statMoneySaved => 'ఆదా చేసిన డబ్బు';

  @override
  String get coachFeedback => 'కోచ్ ఫీడ్‌బ్యాక్';

  @override
  String get journalInsights => 'జర్నల్ అంతర్దృష్టులు';

  @override
  String get next => 'తదుపరి';

  @override
  String get question1Title => 'మీ లక్ష్యం ఏమిటి';

  @override
  String get question1Subtitle => 'మీకు అత్యంత ముఖ్యమైన\nలక్ష్యాన్ని ఎంచుకోండి';

  @override
  String get goalQuitCompletely => 'పూర్తిగా మానేయడం';

  @override
  String get goalReduceDrinking => 'మద్యం తాగడాన్ని తగ్గించడం';

  @override
  String get goalTakeABreak => 'విరామం తీసుకోవడం';

  @override
  String get goalBuildHealthierHabits => 'ఆరోగ్యకరమైన అలవాట్లను నిర్మించడం';

  @override
  String get question3Title => 'మీ\nదినచర్య గురించి చెప్పండి';

  @override
  String get drinksPerWeek => 'వారానికి పానీయాలు';

  @override
  String get moneySpentPerWeek => 'వారానికి ఖర్చు చేసే డబ్బు';

  @override
  String get drinkingLevel => 'మద్యం తాగే స్థాయి';

  @override
  String get triggersLabel => 'ట్రిగ్గర్లు';

  @override
  String get levelSocial => 'సామాజిక';

  @override
  String get levelRegular => 'సాధారణ';

  @override
  String get levelHeavy => 'అధిక';

  @override
  String get levelDependent => 'ఆధారపడిన';

  @override
  String get triggerStress => 'ఒత్తిడి';

  @override
  String get triggerLoneliness => 'ఒంటరితనం';

  @override
  String get triggerHabit => 'అలవాటు';

  @override
  String get triggerSadness => 'విచారం';

  @override
  String get triggerAnger => 'కోపం';

  @override
  String get triggerBoredom => 'విసుగు';

  @override
  String get triggerSocialPressure => 'సామాజిక ఒత్తిడి';

  @override
  String get triggerCelebration => 'వేడుక';

  @override
  String get triggerSleepProblems => 'నిద్ర సమస్యలు';

  @override
  String get triggerWorkPressure => 'పని ఒత్తిడి';

  @override
  String get question4Title => 'మీరు ఎందుకు మారాలనుకుంటున్నారు?';

  @override
  String get question4Subtitle =>
      'మీ కారణం మిమ్మల్ని ప్రేరణతో ఉంచడంలో సహాయపడుతుంది.';

  @override
  String get reasonImproveHealth => 'నా ఆరోగ్యాన్ని మెరుగుపరచడం';

  @override
  String get reasonSaveMoney => 'డబ్బు ఆదా చేయడం';

  @override
  String get reasonFamily => 'కుటుంబం';

  @override
  String get reasonBetterSleep => 'మెరుగైన నిద్ర';

  @override
  String get reasonMentalClarity => 'మానసిక స్పష్టత';

  @override
  String get reasonFitness => 'ఫిట్‌నెస్';

  @override
  String get reasonSelfRespect => 'ఆత్మగౌరవం';

  @override
  String get reasonCareer => 'కెరీర్';

  @override
  String get milestoneUnlockedLabel => 'మైలురాయి అన్‌లాక్ అయింది';

  @override
  String incredibleNamePrefix(String name) {
    return 'అద్భుతం, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ఆదా చేశారు';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count తప్పించుకున్నారు';
  }

  @override
  String get shareMyMilestone => 'నా మైలురాయిని షేర్ చేయండి';

  @override
  String get milestoneImageShareError =>
      'మైలురాయి చిత్రాన్ని రూపొందించలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get dailyCheckInTitle => 'రోజువారీ Check-in';

  @override
  String get howAreYouFeelingToday => 'ఈరోజు మీకు ఎలా అనిపిస్తోంది?';

  @override
  String get honestAnswerHelp =>
      'మీ నిజాయితీ సమాధానం మీకు మరింత మెరుగ్గా సహాయం చేయడానికి మాకు ఉపయోగపడుతుంది';

  @override
  String get didYouDrinkToday => 'ఈరోజు మీరు మద్యం తాగారా?';

  @override
  String get noLabel => 'లేదు';

  @override
  String get yesLabel => 'అవును';

  @override
  String get cravingLevelNow => 'ప్రస్తుతం మద్యం తాగాలనే కోరిక ఎంతగా ఉంది?';

  @override
  String get anythingOnMind => 'మీ మనసులో ఏదైనా ఉందా?';

  @override
  String get optionalLabel => '(ఐచ్ఛికం)';

  @override
  String get dailyNoteHint => 'మీ రోజు, ట్రిగ్గర్లు, విజయాల గురించి రాయండి...';

  @override
  String get alreadyCheckedInToday => 'ఈరోజు ఇప్పటికే Check-in చేశారు';

  @override
  String get saveCheckIn => 'Check-in సేవ్ చేయండి';

  @override
  String get checkInsHelpTrack =>
      'Check-in‌లు కాలక్రమేణా మీ పురోగతిని ట్రాక్ చేయడంలో సహాయపడతాయి';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'మీరు ఈరోజు Check-in‌ను ఇప్పటికే పూర్తి చేశారు.';

  @override
  String get pleaseAnswerBothQuestions =>
      'ముందుగా పై రెండు ప్రశ్నలకు సమాధానం ఇవ్వండి';

  @override
  String get checkInSaved => 'Check-in సేవ్ చేయబడింది';

  @override
  String get cravingNone => 'ఏదీ లేదు';

  @override
  String get cravingLow => 'తక్కువ';

  @override
  String get cravingMedium => 'మధ్యస్థం';

  @override
  String get cravingStrong => 'బలంగా';

  @override
  String get moodBad => 'చెడ్డగా';

  @override
  String get moodLow => 'తక్కువగా';

  @override
  String get moodGreat => 'చాలా బాగుంది';

  @override
  String get sosSupportTitle => 'SOS సహాయం';

  @override
  String notAloneMessage(String name) {
    return 'మీరు ఒంటరిగా లేరు, $name';
  }

  @override
  String get cravingsPassMessage =>
      'మద్యం తాగాలనే కోరికలు తగ్గిపోతాయి. ఈ క్షణాన్ని అధిగమించడానికి క్రింద ఉన్నదాంట్లో ఒకదాన్ని ఎంచుకోండి.';

  @override
  String get breathingExercise => 'శ్వాస వ్యాయామం';

  @override
  String get breathingExerciseSubtitle => 'గైడెడ్ 4-7-8 టెక్నిక్, 2 నిమిషాలు';

  @override
  String get rideTheWave => 'అలపై ప్రయాణించండి';

  @override
  String get rideTheWaveSubtitle =>
      '15 నిమిషాల టైమర్ — కోరికలు ఎల్లప్పుడూ తగ్గిపోతాయి';

  @override
  String get copingTips => 'సమర్థంగా ఎదుర్కొనే చిట్కాలు';

  @override
  String get copingTipsSubtitle =>
      'మీ ట్రిగ్గర్లకు అనుగుణంగా వ్యక్తిగతీకరించిన వ్యూహాలు';

  @override
  String get talkToAiCoach => 'AI Coach‌తో మాట్లాడండి';

  @override
  String get talkToAiCoachSubtitle => 'మీ రికవరీ సహచరుడితో Chat చేయండి';

  @override
  String get callSomeone => 'ఎవరినైనా కాల్ చేయండి';

  @override
  String get callSomeoneSubtitle => 'మీ నమ్మకమైన పరిచయాన్ని సంప్రదించండి';

  @override
  String get contactsPermissionNeeded =>
      'కాంటాక్ట్‌కు కాల్ చేయడానికి Contacts అనుమతి అవసరం.';

  @override
  String get beatenCravingsPrefix => 'మీరు మద్యం తాగాలనే కోరికలను ';

  @override
  String beatenCravingsCount(int count) {
    return '$count సార్లు అధిగమించారు';
  }

  @override
  String get beatenCravingsSuffix => ' ఇంతకుముందు కూడా. మీరు మళ్లీ చేయగలరు.';

  @override
  String get tellUsAboutYourself => 'మీ గురించి చెప్పండి';

  @override
  String get detailsSubtitle =>
      'ఈ సమాచారం మీ రికవరీ ప్రయాణాన్ని వ్యక్తిగతీకరించడానికి మరియు ఖచ్చితమైన అంతర్దృష్టులను అందించడానికి మాకు సహాయపడుతుంది.';

  @override
  String get nameLabel => 'పేరు';

  @override
  String get nameHint => 'ఉదా., Alex Rivers';

  @override
  String get ageLabel => 'వయస్సు';

  @override
  String get ageHint => 'ఉదా., 32';

  @override
  String get sexAssignedAtBirth => 'పుట్టినప్పుడు నమోదు చేసిన లింగం';

  @override
  String get sexFemale => 'స్త్రీ';

  @override
  String get sexMale => 'పురుషుడు';

  @override
  String get heightLabel => 'ఎత్తు';

  @override
  String get weightLabel => 'బరువు';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'రోజువారీ పరిమితి చేరుకుంది';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'ఈరోజు అందుబాటులో ఉన్న $limit ఉచిత సందేశాలన్నింటినీ ఉపయోగించారు. అపరిమిత Coach Chat కోసం Premiumకి అప్‌గ్రేడ్ చేయండి.';
  }

  @override
  String get coachConnectError =>
      'ప్రస్తుతం కనెక్ట్ కాలేకపోయాను. కొద్దిసేపటి తర్వాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get clearConversationTitle => 'సంభాషణను క్లియర్ చేయాలా?';

  @override
  String get clearConversationMessage =>
      'ఇది మీ Coach Chat చరిత్రను శాశ్వతంగా తొలగిస్తుంది.';

  @override
  String get clearLabel => 'క్లియర్ చేయండి';

  @override
  String get recoveryCoachTitle => 'రికవరీ కోచ్';

  @override
  String get onlineLabel => 'ఆన్‌లైన్';

  @override
  String get clearConversationMenuItem => 'సంభాషణను క్లియర్ చేయండి';

  @override
  String chatGreeting(String name) {
    return 'హాయ్ $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'మీ ప్రయాణంలో ఇది $daysవ రోజు. విషయాలను మాట్లాడుకోవాలనుకున్నప్పుడు నేను ఇక్కడే ఉంటాను.';
  }

  @override
  String get quickPromptsLabel => 'త్వరిత ఎంపికలు';

  @override
  String get promptCravingLabel => 'మద్యం తాగాలనే కోరిక ఉంది';

  @override
  String get promptCravingSubtitle => 'త్వరగా స్థిరపడండి';

  @override
  String get promptMotivationLabel => 'ప్రేరణ కావాలి';

  @override
  String get promptMotivationSubtitle => 'కష్టంగా ఉన్నప్పుడు ఒక ప్రోత్సాహం';

  @override
  String get promptSocialLabel => 'సామాజిక పరిస్థితి';

  @override
  String get promptSocialSubtitle => 'ఒక సమావేశాన్ని నిర్వహించండి';

  @override
  String get promptSlippedLabel => 'నేను తప్పిపోయాను';

  @override
  String get promptSlippedSubtitle => 'తీర్పు లేదు, కేవలం సహాయం';

  @override
  String get typeMessageHint => 'సందేశాన్ని టైప్ చేయండి...';

  @override
  String get editProfileTitle => 'ప్రొఫైల్‌ను సవరించండి';

  @override
  String couldNotSaveProfile(String error) {
    return 'ప్రొఫైల్‌ను సేవ్ చేయలేకపోయాం: $error';
  }

  @override
  String get heightCmLabel => 'ఎత్తు (cm)';

  @override
  String get weightKgLabel => 'బరువు (kg)';

  @override
  String get saveChangesLabel => 'మార్పులను సేవ్ చేయండి';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'అధునాతన అంతర్దృష్టులు & విశ్లేషణలు';

  @override
  String get featureUnlimitedJournal => 'అపరిమిత జర్నల్ ఎంట్రీలు';

  @override
  String get featureUnlimitedChat => 'AI Coach‌తో అపరిమిత Chat';

  @override
  String get featureCommunityGroups => 'ప్రత్యేక Community Groups';

  @override
  String get featurePrioritySupport => 'ప్రాధాన్యత నిపుణుల సహాయం';

  @override
  String get featureThemePacks => 'కస్టమ్ Theme Packs';

  @override
  String get featureDataExport => 'డేటా ఎగుమతి';

  @override
  String get featureAdFree => 'ప్రకటనలు లేని అనుభవం';

  @override
  String get premiumMemberTitle => 'మీరు Premium సభ్యులు';

  @override
  String get unlockFullRecoveryTitle =>
      'మీ పూర్తి రికవరీ\nఅనుభవాన్ని అన్‌లాక్ చేయండి';

  @override
  String get premiumMemberSubtitle =>
      'మీ రికవరీ ప్రయాణానికి మద్దతు ఇచ్చినందుకు ధన్యవాదాలు — క్రింద ఉన్న అన్ని Premium ఫీచర్లు అన్‌లాక్ చేయబడ్డాయి.';

  @override
  String get premiumJoinSubtitle =>
      'మా Premium సాధనాలు మరియు వ్యక్తిగత సహాయంతో\nతమ స్వస్థత ప్రయాణాన్ని వేగవంతం చేస్తున్న\nవేలాది మంది కమ్యూనిటీలో చేరండి.';

  @override
  String get monthlyPlanLabel => 'నెలవారీ';

  @override
  String get perMonthSuffix => '/నెల';

  @override
  String get cancelAnytimeLabel => 'ఎప్పుడైనా రద్దు చేయవచ్చు';

  @override
  String get yearlyPlanLabel => 'వార్షిక';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'ఏటా $amount చొప్పున బిల్ చేయబడుతుంది';
  }

  @override
  String get bestValueLabel => 'ఉత్తమ విలువ';

  @override
  String get alreadyPremiumLabel => 'మీరు Premium ✓';

  @override
  String get startPremiumLabel => 'Premium ప్రారంభించండి';

  @override
  String get manageSubscriptionLabel =>
      'మీ పరికరంలోని subscription settings నుండి నిర్వహించండి లేదా రద్దు చేయండి.';

  @override
  String get noCommitmentLabel =>
      'ఎటువంటి నిబద్ధత లేదు. ఎప్పుడైనా రద్దు చేయవచ్చు.';

  @override
  String get continueFreePlanLabel => 'Free Plan‌తో కొనసాగించండి';

  @override
  String get backToHomeLabel => 'హోమ్‌కు తిరిగి వెళ్లండి';

  @override
  String get cancelPremiumLabel => 'Premium రద్దు చేయండి';

  @override
  String get cancelPremiumTitle => 'Premium రద్దు చేయాలా?';

  @override
  String get cancelPremiumMessage =>
      'మీరు అపరిమిత జర్నల్ ఎంట్రీలు, అపరిమిత Coach Chat, గణాంక అంతర్దృష్టులు మరియు వారపు నివేదికలకు యాక్సెస్‌ను కోల్పోతారు. ఎప్పుడైనా మళ్లీ subscription తీసుకోవచ్చు.';

  @override
  String get keepPremiumLabel => 'Premium కొనసాగించండి';

  @override
  String get nowPremiumMessage =>
      'ఇప్పుడు మీరు Premium! మీ పూర్తి రికవరీ అనుభవాన్ని ఆస్వాదించండి.';

  @override
  String get premiumCancelledMessage =>
      'Premium రద్దు చేయబడింది. మీరు మళ్లీ Free Plan‌లో ఉన్నారు.';

  @override
  String get termsOfUseLabel => 'ఉపయోగ నిబంధనలు';

  @override
  String get navHomeLabel => 'హోమ్';

  @override
  String get navStatsLabel => 'గణాంకాలు';

  @override
  String get navJournalLabel => 'జర్నల్';

  @override
  String get navBadgesLabel => 'బ్యాడ్జ్‌లు';

  @override
  String get navProfileLabel => 'ప్రొఫైల్';

  @override
  String get recoveryGoalsTitle => 'రికవరీ లక్ష్యాలు';

  @override
  String get drinksPerWeekLabel => 'వారానికి పానీయాలు';

  @override
  String get quitReasonsLabel => 'మానేయడానికి కారణాలు';

  @override
  String get quitReasonsHelperText => 'అనేక కారణాలను కామాతో వేరు చేయండి.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'రికవరీ లక్ష్యాలను సేవ్ చేయలేకపోయాం: $error';
  }

  @override
  String get goalHint => 'ఉదా., పూర్తిగా మానేయడం';

  @override
  String get drinksPerWeekHint => 'ఉదా., 12';

  @override
  String get quitReasonsHint => 'ఉదా., ఆరోగ్యం, కుటుంబం, డబ్బు';

  @override
  String get todaysPrompt => 'ఈరోజు ప్రశ్న';

  @override
  String get defaultJournalPrompt => 'ఈరోజు మీ మనసులో ఏముంది?';

  @override
  String get aiJournalInsights => 'AI జర్నల్ అంతర్దృష్టులు';

  @override
  String get unlockJournalInsightsMessage =>
      'మీ జర్నల్ ఎంట్రీల నుండి వారపు నమూనాలు, మూడ్ ట్రెండ్‌లు మరియు వ్యక్తిగత అంతర్దృష్టులను అన్‌లాక్ చేయండి.';

  @override
  String get notEnoughJournalData =>
      'ఇంకా తగినంత డేటా లేదు — ఈ వారం కొన్ని ఎంట్రీలు రాసి మళ్లీ చూడండి.';

  @override
  String get openEntry => 'తెరవండి';

  @override
  String get editEntry => 'సవరించండి';

  @override
  String get deleteEntry => 'తొలగించండి';

  @override
  String get searchJournalEntries => 'ఎంట్రీలను వెతకండి...';

  @override
  String get writeNewEntry => 'కొత్త ఎంట్రీ రాయండి';

  @override
  String get recentEntries => 'ఇటీవలి ఎంట్రీలు';

  @override
  String get noJournalEntriesYet =>
      'ఇంకా జర్నల్ ఎంట్రీలు లేవు — పైన మీ మొదటి ఆలోచనను రాయండి.';

  @override
  String get noEntriesMatchFilters =>
      'మీ ఫిల్టర్‌లకు సరిపోయే ఎంట్రీలు ఏవీ లేవు.';

  @override
  String get weeklyJournalLimitReached => 'వారపు పరిమితి చేరుకుంది';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'ఈ వారం అందుబాటులో ఉన్న $limit ఉచిత జర్నల్ ఎంట్రీలన్నింటినీ ఉపయోగించారు. అపరిమిత ఎంట్రీల కోసం Premiumకి అప్‌గ్రేడ్ చేయండి.';
  }

  @override
  String get newEntry => 'కొత్త ఎంట్రీ';

  @override
  String get writeYourThoughts => 'మీ ఆలోచనలను రాయండి';

  @override
  String get saveEntry => 'ఎంట్రీని సేవ్ చేయండి';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'ఈ వారం $limit ఉచిత ఎంట్రీలలో $remaining మిగిలాయి';
  }

  @override
  String get deleteEntryQuestion => 'ఎంట్రీని తొలగించాలా?';

  @override
  String get deleteEntryConfirmation =>
      'ఈ ఎంట్రీ శాశ్వతంగా తొలగించబడుతుంది. దీన్ని తిరిగి మార్చలేరు.';

  @override
  String get journalEntryNotFound => 'ఎంట్రీ కనుగొనబడలేదు';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'ఈ జర్నల్ ఎంట్రీ తొలగించబడి ఉండవచ్చు.';

  @override
  String get goBack => 'వెనక్కి వెళ్లండి';

  @override
  String get journalEntryTitle => 'జర్నల్ ఎంట్రీ';

  @override
  String get moodStruggling => 'ఇబ్బంది పడుతున్నాను';

  @override
  String get moodUnwell => 'అనారోగ్యంగా ఉంది';

  @override
  String get moodNeutral => 'తటస్థం';

  @override
  String get whatHappenedToday => 'ఈరోజు ఏమి జరిగింది?';

  @override
  String get trigger => 'ట్రిగ్గర్';

  @override
  String get whatHelped => 'ఏది సహాయపడింది';

  @override
  String get whatIllTryNextTime => 'తదుపరి సారి నేను ప్రయత్నించేది';

  @override
  String get journalPrivacyMessage =>
      'మీ ఆలోచన ప్రైవేట్‌గా ఉంటుంది మరియు మీ జర్నల్‌లో సేవ్ చేయబడుతుంది.';

  @override
  String get unlocked => 'అన్‌లాక్ అయింది';

  @override
  String daysLeft(int count) {
    return '$count రోజులు మిగిలాయి';
  }

  @override
  String daysCount(int count) {
    return '$count రోజులు';
  }

  @override
  String get firstReflection => 'మొదటి\nఆలోచన';

  @override
  String get oneJournalEntry => '1 జర్నల్ ఎంట్రీ';

  @override
  String get openBook => 'పుస్తకాన్ని తెరవండి';

  @override
  String get tenJournalEntries => '10 జర్నల్ ఎంట్రీలు';

  @override
  String get dedicatedWriter => 'అంకితభావం ఉన్న\nరచయిత';

  @override
  String get thirtyJournalEntries => '30 జర్నల్ ఎంట్రీలు';

  @override
  String get firstConversation => 'మొదటి\nసంభాషణ';

  @override
  String get oneAiCoachChat => '1 AI Coach Chat';

  @override
  String get keepTalking => 'మాట్లాడుతూ ఉండండి';

  @override
  String get fiveConversations => '5 సంభాషణలు';

  @override
  String get coachCompanion => 'Coach\nసహచరుడు';

  @override
  String get twentyConversations => '20 సంభాషణలు';

  @override
  String get checkInHabit => 'Check-in\nఅలవాటు';

  @override
  String get sevenCheckIns => '7 Check-in‌లు';

  @override
  String get consistencyPro => 'స్థిరత్వంలో\nనిపుణుడు';

  @override
  String get thirtyCheckIns => '30 Check-in‌లు';

  @override
  String get dedicatedJourney => 'అంకితమైన\nప్రయాణం';

  @override
  String get hundredCheckIns => '100 Check-in‌లు';

  @override
  String get goalGetter => 'లక్ష్య సాధకుడు';

  @override
  String get threeGoalsCompleted => '3 లక్ష్యాలు పూర్తయ్యాయి';

  @override
  String get goalAchiever => 'లక్ష్యాన్ని\nసాధించినవారు';

  @override
  String get tenGoalsCompleted => '10 లక్ష్యాలు పూర్తయ్యాయి';

  @override
  String get firstSavings => 'మొదటి\nపొదుపు';

  @override
  String get fiveHundredSaved => '\$500 ఆదా చేశారు';

  @override
  String get smartSaver => 'తెలివైన పొదుపుదారు';

  @override
  String get oneThousandSaved => '\$1,000 ఆదా చేశారు';

  @override
  String get bigSaver => 'పెద్ద పొదుపుదారు';

  @override
  String get fiveThousandSaved => '\$5,000 ఆదా చేశారు';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current / \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current / $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'కొనసాగించండి — మీ మొదటి మైలురాయి మీ కోసం ఎదురుచూస్తోంది!';

  @override
  String get badgesAndMilestones => 'బ్యాడ్జ్‌లు & మైలురాళ్లు';

  @override
  String get yourMilestoneJourney => 'మీ మైలురాయి ప్రయాణం';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'లు',
      one: '',
    );
    return '$count మైలురాయి$_temp0 సాధించారు.\nచూడటానికి ట్యాప్ చేయండి';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'మీ ప్రయాణంలోని $total మైలురాళ్లలో $unlocked అన్‌లాక్ చేశారు.';
  }

  @override
  String get remaining => 'మిగిలినవి';

  @override
  String get complete => 'పూర్తి';

  @override
  String get nextMilestone => 'తదుపరి మైలురాయి';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% పూర్తయింది';
  }

  @override
  String get sobrietyMilestones => 'మద్యం లేని మైలురాళ్లు';

  @override
  String get journeyBadges => 'ప్రయాణ బ్యాడ్జ్‌లు';

  @override
  String get bronze => 'కాంస్యం';

  @override
  String get silver => 'వెండి';

  @override
  String get gold => 'బంగారం';

  @override
  String get platinum => 'ప్లాటినం';

  @override
  String get diamond => 'వజ్రం';

  @override
  String get analyzingYourJourney => 'మీ ప్రయాణాన్ని విశ్లేషిస్తోంది...';

  @override
  String get aiCreatingSanctuary =>
      'మా AI మీ కోసం వ్యక్తిగతీకరించిన ప్రశాంత స్థలాన్ని రూపొందిస్తోంది.';

  @override
  String get understandingHabits => 'అలవాట్లను అర్థం చేసుకుంటోంది...';

  @override
  String get calculatingBaseline => 'మీ ప్రాథమిక స్థాయిని లెక్కిస్తోంది...';

  @override
  String get personalizingPlan => 'మీ ప్లాన్‌ను వ్యక్తిగతీకరిస్తోంది...';

  @override
  String get finalizingSanctuary => 'మీ ప్రశాంత స్థలాన్ని పూర్తి చేస్తోంది...';

  @override
  String get creatingYourPlan => 'మీ ప్లాన్‌ను రూపొందిస్తోంది...';

  @override
  String get personalizedPlanError =>
      'మీ వ్యక్తిగతీకరించిన ప్లాన్‌ను రూపొందించలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get retry => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get breathInhale => 'లోపలికి శ్వాస తీసుకోండి';

  @override
  String get breathHold => 'ఆపండి';

  @override
  String get breathExhale => 'బయటకు శ్వాస వదలండి';

  @override
  String get breathDone => 'పూర్తయింది';

  @override
  String get breathGreatJob => 'చాలా బాగా చేశారు!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count సెషన్‌లు ఈరోజు',
      one: '$count సెషన్ ఈరోజు',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'వ్యాయామాన్ని ముగించండి';

  @override
  String get done => 'పూర్తయింది';

  @override
  String get noCopingTipsYet => 'ఇంకా సమర్థంగా ఎదుర్కొనే చిట్కాలు లేవు';

  @override
  String get copingStrategiesWillAppear =>
      'మీ రికవరీ ప్లాన్ రూపొందించడం పూర్తయిన తర్వాత మీ వ్యక్తిగత సమర్థన వ్యూహాలు ఇక్కడ కనిపిస్తాయి.';

  @override
  String get strategiesTailoredToTriggers =>
      'మీ ట్రిగ్గర్లకు అనుగుణంగా రూపొందించిన వ్యూహాలు';

  @override
  String get cravingsPeakAndPass =>
      'కోరికలు గరిష్ఠ స్థాయికి చేరుకుని\nతగ్గిపోతాయి';

  @override
  String get rideTheWaveDescription =>
      'చాలా వరకు మద్యం తాగాలనే కోరికలు 15 నిమిషాల్లో తగ్గిపోతాయి. మీరు దాని ప్రకారం చర్య తీసుకోవాల్సిన అవసరం లేదు — మాతో కలిసి ఆ క్షణాన్ని అధిగమించండి.';

  @override
  String get stayWithIt => 'దానితోనే ఉండండి';

  @override
  String get youMadeIt => 'మీరు సాధించారు';

  @override
  String get readyWhenYouAre => 'మీరు సిద్ధమైనప్పుడు';

  @override
  String get rideItAgain => 'మళ్లీ ఎదుర్కోండి';

  @override
  String get start15MinuteTimer => '15 నిమిషాల టైమర్ ప్రారంభించండి';

  @override
  String get rideTheWaveCompletedMessage =>
      'మీరు ఆ అలను అధిగమించారు. అదే నిజమైన బలం. 💪';

  @override
  String get myProgress => 'నా పురోగతి';

  @override
  String get weekLabel => 'వారం';

  @override
  String get monthLabel => 'నెల';

  @override
  String get allLabel => 'అన్నీ';

  @override
  String get daysSoberStatLabel => 'మద్యం లేని\nరోజులు';

  @override
  String get savedStatLabel => 'ఆదా';

  @override
  String get avoidedStatLabel => 'తప్పించుకున్నవి';

  @override
  String get moodTrends => 'మూడ్ ట్రెండ్‌లు';

  @override
  String get cravingsPattern => 'కోరికల నమూనా';

  @override
  String get unlockLabel => 'అన్‌లాక్';

  @override
  String get unlockFullStats => 'పూర్తి గణాంకాలను అన్‌లాక్ చేయండి';

  @override
  String get premiumStatsMessage =>
      'మూడ్ ట్రెండ్‌లు మరియు కోరికల నమూనాలు Premium ఫీచర్లు. మీ పూర్తి గణాంకాలను చూడటానికి అప్‌గ్రేడ్ చేయండి.';

  @override
  String get healthMilestonesWillAppear =>
      'మీ ఆరోగ్య మైలురాళ్లు ఇక్కడ కనిపిస్తాయి.';

  @override
  String get healthMilestones => 'ఆరోగ్య మైలురాళ్లు';

  @override
  String dayNumber(int day) {
    return 'రోజు $day';
  }

  @override
  String get soberLabel => 'మద్యం లేకుండా';

  @override
  String get slipLabel => 'జారిపోయారు';

  @override
  String get noDataLabel => 'డేటా లేదు';

  @override
  String get milestone24Hours => '24 గంటలు';

  @override
  String get milestoneOneWeek => 'ఒక వారం';

  @override
  String get milestoneOneMonth => 'ఒక నెల';

  @override
  String get milestoneThreeMonths => 'మూడు నెలలు';

  @override
  String get milestoneSixMonths => 'ఆరు నెలలు';

  @override
  String get milestoneOneYear => 'ఒక సంవత్సరం';

  @override
  String milestoneDayCount(int day) {
    return 'రోజు $day మైలురాయి';
  }

  @override
  String get maybeLaterLabel => 'బహుశా తర్వాత';

  @override
  String get cancelLabel => 'రద్దు చేయి';
}
