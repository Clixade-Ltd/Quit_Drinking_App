// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get skip => 'Өткізіп жіберу';

  @override
  String get continueButton => 'Жалғастыру';

  @override
  String get getStarted => 'Бастау';

  @override
  String get onboardingTitle1 => 'Өміріңізді бақылауға алыңыз';

  @override
  String get onboardingSubtitle1 =>
      'Сапарыңызды бақылаңыз, әр жетістікті атап өтіңіз және күн сайын сау бола беріңіз.';

  @override
  String get onboardingTitle2 => 'Сіздің AI сауығу серігіңіз';

  @override
  String get onboardingSubtitle2 =>
      'Сапарыңызға арналған жеке кеңестер, пайдалы әдеттер, мотивациялық еске салғыштар мен прогресс есептерін алыңыз.';

  @override
  String get goodMorning => 'Қайырлы таң';

  @override
  String get goodAfternoon => 'Қайырлы күн';

  @override
  String get goodEvening => 'Қайырлы кеш';

  @override
  String get goodNight => 'Қайырлы түн';

  @override
  String get embracingClarity => 'Күн сайын айқындықты қабылдау.';

  @override
  String get streakLabel => 'СЕРИЯ';

  @override
  String get goalLabel => 'МАҚСАТ';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн',
      one: '$count күн',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Премиум жоспар';

  @override
  String get premiumPlanSubtitle => 'Толық сауығу тәжірибесін ашыңыз';

  @override
  String get accountAndSupport => 'АККАУНТ ЖӘНЕ ҚОЛДАУ';

  @override
  String get privacyPolicy => 'Құпиялылық саясаты';

  @override
  String get privacyPolicySubtitle =>
      'Деректерді бөлісу және аккаунт қауіпсіздігін басқару';

  @override
  String get termsOfService => 'Қызмет көрсету шарттары';

  @override
  String get termsOfServiceSubtitle =>
      'Жиі қойылатын сұрақтар, бізбен байланыс және ресурстар';

  @override
  String get shareApp => 'Қолданбамен бөлісу';

  @override
  String get shareAppSubtitle => 'Қолданбаны достарыңызбен бөлісіңіз';

  @override
  String get resetData => 'Деректерді қалпына келтіру';

  @override
  String get resetDataSubtitle =>
      'Осы құрылғыда сақталған барлық деректерді өшіру';

  @override
  String get resetAllDataTitle => 'Барлық деректерді қалпына келтіру керек пе?';

  @override
  String get resetAllDataMessage =>
      'Бұл әрекет осы құрылғыда сақталған барлық деректерді — профильді, күнделік жазбаларын және прогресті — өшіреді және оны болдырмау мүмкін емес.';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get reset => 'Қалпына келтіру';

  @override
  String get chooseFromGallery => 'Галереядан таңдау';

  @override
  String get takePhoto => 'Фотосурет түсіру';

  @override
  String get removePhoto => 'Фотосуретті өшіру';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Фотосуретті жаңарту мүмкін болмады: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Фотосуретті өшіру мүмкін болмады: $error';
  }

  @override
  String get photoTooLarge =>
      'Бұл фотосурет сығымдаудан кейін де тым үлкен — басқасын қолданып көріңіз.';

  @override
  String get unableToLoadProfile => 'Профиліңізді жүктеу мүмкін болмады';

  @override
  String get pleaseTryAgain => 'Қайталап көріңіз.';

  @override
  String get tryAgain => 'Қайта көру';

  @override
  String get profileNotFound => 'Профиль табылмады';

  @override
  String get refresh => 'Жаңарту';

  @override
  String get noProfileDataFound =>
      'Бұл құрылғыда әлі профиль деректері табылмады.';

  @override
  String couldNotResetData(String error) {
    return 'Деректерді қалпына келтіру мүмкін болмады: $error';
  }

  @override
  String get navHome => 'Басты бет';

  @override
  String get navStats => 'Статистика';

  @override
  String get navJournal => 'Күнделік';

  @override
  String get navBadges => 'Наградалар';

  @override
  String get navProfile => 'Профиль';

  @override
  String featureComingSoon(String feature) {
    return '$feature жақында қолжетімді болады.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Ішуден бас тарту';

  @override
  String get splashSubtitle =>
      'Алкогольсіз өмірге апаратын\nбірінші қадамды жасаңыз';

  @override
  String get preparingJourney => 'Сапарыңыз\nдайындалуда';

  @override
  String get taskMorningMeditation => 'Таңертеңгі медитация (10 мин)';

  @override
  String get taskReadChapter => '«The Sober Diaries» кітабының 4-тарауын оқу';

  @override
  String get taskEveningJournal => 'Кешкі алғыс күнделігі';

  @override
  String get close => 'Жабу';

  @override
  String get youAreDoingGreat => 'Сіз керемет істеп жатырсыз!';

  @override
  String get shareMilestone => 'Кезеңмен бөлісу';

  @override
  String shareMilestoneMessage(int days) {
    return 'Мен сауығу сапарымның $days-күніндемін! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Менің сауығу кезеңім';

  @override
  String get weeklyReportReadyTitle => 'Апталық есебіңіз дайын';

  @override
  String get weeklyReportReadySubtitle =>
      'Апта қалай өткенін көру үшін түртіңіз';

  @override
  String get howAreYouFeeling => 'Өзіңізді қалай сезініп жатырсыз?';

  @override
  String get moodTough => 'Қиын';

  @override
  String get moodOkay => 'Жаман емес';

  @override
  String get moodGood => 'Жақсы';

  @override
  String get moneySaved => 'Үнемделген ақша';

  @override
  String get caloriesSaved => 'Үнемделген калория';

  @override
  String get healthScore => 'Денсаулық көрсеткіші';

  @override
  String get drinksAvoided => 'Ішілмеген сусындар';

  @override
  String get estimated => 'Болжамды';

  @override
  String get aiGenerated => 'AI жасаған';

  @override
  String get daysCapsLabel => 'КҮН';

  @override
  String get todaysMotivation => 'Бүгінгі мотивация';

  @override
  String get defaultMotivationQuote =>
      'Сіз серттіңізді сәтті сақтап келесіз. Оң өзгерістер толқынымен жүруді жалғастырыңыз.';

  @override
  String get talkToCoach => 'Коучпен сөйлесу';

  @override
  String get havingACraving => 'Мен ынтызарлық сезініп тұрмын';

  @override
  String get unlockWeeklyReportsTitle => 'Апталық есептерді ашу';

  @override
  String get unlockWeeklyReportsMessage =>
      'Тыныш күндеріңізді, көңіл-күй үрдістерін және жеке AI пікірлерін апта сайын көріңіз. Ашу үшін Премиумға жаңартыңыз.';

  @override
  String get maybeLater => 'Мүмкін кейінірек';

  @override
  String get upgrade => 'Жаңарту';

  @override
  String get weeklyReportTitle => 'Апталық есеп';

  @override
  String get weeklyReportsPremiumTitle =>
      'Апталық есептер — Премиум мүмкіндігі';

  @override
  String get weeklyReportsPremiumMessage =>
      'Тыныш күндеріңізді, көңіл-күй үрдістерін, ынтызарлықтарды және жеке AI пікірлерін апта сайын көріңіз.';

  @override
  String get upgradeToPremium => 'Премиумға жаңарту';

  @override
  String get couldNotGenerateReport => 'Қазір есебіңізді жасау мүмкін болмады.';

  @override
  String get tryAgainLower => 'Қайта көру';

  @override
  String get statSoberDays => 'Тыныш күндер';

  @override
  String get statAvgMood => 'Орт. көңіл-күй';

  @override
  String get statCravings => 'Ынтызарлықтар';

  @override
  String get statMoneySaved => 'Үнемделген ақша';

  @override
  String get coachFeedback => 'Коучтың пікірі';

  @override
  String get journalInsights => 'Күнделік талдауы';

  @override
  String get next => 'Келесі';

  @override
  String get question1Title => 'Мақсатыңыз қандай?';

  @override
  String get question1Subtitle => 'Сізге ең маңызды\nмақсатты таңдаңыз';

  @override
  String get goalQuitCompletely => 'Толығымен тастау';

  @override
  String get goalReduceDrinking => 'Ішуді азайту';

  @override
  String get goalTakeABreak => 'Демалыс алу';

  @override
  String get goalBuildHealthierHabits => 'Салауатты әдеттер қалыптастыру';

  @override
  String get question3Title => 'Күнделікті режиміңіз\nтуралы айтыңыз.';

  @override
  String get drinksPerWeek => 'Аптасына сусын саны';

  @override
  String get moneySpentPerWeek => 'Аптасына жұмсалатын ақша';

  @override
  String get drinkingLevel => 'Ішу деңгейі';

  @override
  String get triggersLabel => 'Триггерлер';

  @override
  String get levelSocial => 'Әлеуметтік';

  @override
  String get levelRegular => 'Тұрақты';

  @override
  String get levelHeavy => 'Ауыр';

  @override
  String get levelDependent => 'Тәуелді';

  @override
  String get triggerStress => 'Стресс';

  @override
  String get triggerLoneliness => 'Жалғыздық';

  @override
  String get triggerHabit => 'Әдет';

  @override
  String get triggerSadness => 'Мұң';

  @override
  String get triggerAnger => 'Ашу';

  @override
  String get triggerBoredom => 'Зерігу';

  @override
  String get triggerSocialPressure => 'Әлеуметтік қысым';

  @override
  String get triggerCelebration => 'Мереке';

  @override
  String get triggerSleepProblems => 'Ұйқы мәселелері';

  @override
  String get triggerWorkPressure => 'Жұмыс қысымы';

  @override
  String get question4Title => 'Неге өзгергіңіз келеді?';

  @override
  String get question4Subtitle => 'Себебіңіз сізді ынталандыруға көмектеседі.';

  @override
  String get reasonImproveHealth => 'Денсаулығымды жақсарту';

  @override
  String get reasonSaveMoney => 'Ақша үнемдеу';

  @override
  String get reasonFamily => 'Отбасы';

  @override
  String get reasonBetterSleep => 'Жақсырақ ұйқы';

  @override
  String get reasonMentalClarity => 'Ой айқындығы';

  @override
  String get reasonFitness => 'Дене шынықтыру';

  @override
  String get reasonSelfRespect => 'Өзін-өзі құрметтеу';

  @override
  String get reasonCareer => 'Мансап';

  @override
  String get milestoneUnlockedLabel => 'КЕЗЕҢ АШЫЛДЫ';

  @override
  String incredibleNamePrefix(String name) {
    return 'Керемет, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount үнемделді';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count ішілмеді';
  }

  @override
  String get shareMyMilestone => 'Кезеңіммен бөлісу';

  @override
  String get milestoneImageShareError =>
      'Кезең суретін жасау мүмкін болмады. Қайталап көріңіз.';

  @override
  String get dailyCheckInTitle => 'Күнделікті тексеру';

  @override
  String get howAreYouFeelingToday => 'Бүгін өзіңізді қалай сезініп тұрсыз?';

  @override
  String get honestAnswerHelp =>
      'Шыншыл жауабыңыз сізге жақсырақ көмектесуге мүмкіндік береді';

  @override
  String get didYouDrinkToday => 'Бүгін іштіңіз бе?';

  @override
  String get noLabel => 'Жоқ';

  @override
  String get yesLabel => 'Иә';

  @override
  String get cravingLevelNow => 'Қазіргі ынтызарлық деңгейі қандай?';

  @override
  String get anythingOnMind => 'Ойыңызда бірдеңе бар ма?';

  @override
  String get optionalLabel => '(міндетті емес)';

  @override
  String get dailyNoteHint =>
      'Күніңіз, триггерлеріңіз, жетістіктеріңіз туралы жазыңыз...';

  @override
  String get alreadyCheckedInToday => 'Бүгін тексеру жасалды';

  @override
  String get saveCheckIn => 'Тексеруді сақтау';

  @override
  String get checkInsHelpTrack =>
      'Тексерулер прогресіңізді уақыт бойы бақылауға көмектеседі';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Сіз бүгінгі тексеруді толтырдыңыз.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Алдымен жоғарыдағы екі сұраққа жауап беріңіз';

  @override
  String get checkInSaved => 'Тексеру сақталды';

  @override
  String get cravingNone => 'Жоқ';

  @override
  String get cravingLow => 'Төмен';

  @override
  String get cravingMedium => 'Орташа';

  @override
  String get cravingStrong => 'Күшті';

  @override
  String get moodBad => 'Нашар';

  @override
  String get moodLow => 'Төмен';

  @override
  String get moodGreat => 'Керемет';

  @override
  String get sosSupportTitle => 'SOS қолдау';

  @override
  String notAloneMessage(String name) {
    return 'Сіз жалғыз емессіз, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Ынтызарлықтар өтеді. Осы сәтте көмектесу үшін төменнен таңдаңыз.';

  @override
  String get breathingExercise => 'Тыныс алу жаттығуы';

  @override
  String get breathingExerciseSubtitle =>
      '4-7-8 техникасы бойынша бағыттама, 2 минут';

  @override
  String get rideTheWave => 'Толқынмен жүру';

  @override
  String get rideTheWaveSubtitle =>
      '15 мин таймер — ынтызарлықтар әрқашан өтеді';

  @override
  String get copingTips => 'Күресу кеңестері';

  @override
  String get copingTipsSubtitle =>
      'Триггерлеріңізге арналған жеке стратегиялар';

  @override
  String get talkToAiCoach => 'AI коучпен сөйлесу';

  @override
  String get talkToAiCoachSubtitle => 'Сауығу серігіңізбен сөйлесіңіз';

  @override
  String get callSomeone => 'Біреуге қоңырау шалу';

  @override
  String get callSomeoneSubtitle => 'Сенімді контактіңізге хабарласыңыз';

  @override
  String get contactsPermissionNeeded =>
      'Контактіге қоңырау шалу үшін контактілерге рұқсат қажет.';

  @override
  String get beatenCravingsPrefix => 'Сіз ынтызарлықты ';

  @override
  String beatenCravingsCount(int count) {
    return '$count рет жеңдіңіз';
  }

  @override
  String get beatenCravingsSuffix => ' бұрын. Сіз тағы жеңе аласыз.';

  @override
  String get tellUsAboutYourself => 'Өзіңіз туралы айтыңыз';

  @override
  String get detailsSubtitle =>
      'Бұл ақпарат сауығу сапарыңызды жекелендіруге және дәл талдаулар беруге көмектеседі.';

  @override
  String get nameLabel => 'Аты';

  @override
  String get nameHint => 'мыс., Alex Rivers';

  @override
  String get ageLabel => 'Жасы';

  @override
  String get ageHint => 'мыс., 32';

  @override
  String get sexAssignedAtBirth => 'Туылғанда белгіленген жынысы';

  @override
  String get sexFemale => 'Әйел';

  @override
  String get sexMale => 'Ер';

  @override
  String get heightLabel => 'Бойы';

  @override
  String get weightLabel => 'Салмағы';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Күнделікті шектеуге жетті';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Сіз бүгін барлық $limit тегін хабарламаны қолдандыңыз. Шексіз коуч чаты үшін Премиумға жаңартыңыз.';
  }

  @override
  String get coachConnectError =>
      'Қазір қосыла алмадым. Сәл кейінірек қайталап көріңіз.';

  @override
  String get clearConversationTitle => 'Әңгімені тазалау керек пе?';

  @override
  String get clearConversationMessage =>
      'Бұл коуч чат тарихыңызды толығымен өшіреді.';

  @override
  String get clearLabel => 'Тазалау';

  @override
  String get recoveryCoachTitle => 'Сауығу коучі';

  @override
  String get onlineLabel => 'Онлайн';

  @override
  String get clearConversationMenuItem => 'Әңгімені тазалау';

  @override
  String chatGreeting(String name) {
    return 'Сәлем, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Сіз сапарыңыздың $days-күніндесіз. Мен сөйлескіңіз келгенде осындамын.';
  }

  @override
  String get quickPromptsLabel => 'ЖЫЛДАМ СҰРАУЛАР';

  @override
  String get promptCravingLabel => 'Ынтызарлық сезінемін';

  @override
  String get promptCravingSubtitle => 'Тез тұрақтану';

  @override
  String get promptMotivationLabel => 'Мотивация керек';

  @override
  String get promptMotivationSubtitle => 'Қиын кезде күш беру';

  @override
  String get promptSocialLabel => 'Әлеуметтік жағдай';

  @override
  String get promptSocialSubtitle => 'Жиналысты жеңу';

  @override
  String get promptSlippedLabel => 'Мен сүрінідім';

  @override
  String get promptSlippedSubtitle => 'Айыптаусыз, тек қолдау';

  @override
  String get typeMessageHint => 'Хабарлама жазыңыз...';

  @override
  String get editProfileTitle => 'Профильді өзгерту';

  @override
  String couldNotSaveProfile(String error) {
    return 'Профильді сақтау мүмкін болмады: $error';
  }

  @override
  String get heightCmLabel => 'Бойы (см)';

  @override
  String get weightKgLabel => 'Салмағы (кг)';

  @override
  String get saveChangesLabel => 'Өзгерістерді сақтау';

  @override
  String get premiumBadgeLabel => 'ПРЕМИУМ';

  @override
  String get featureAdvancedInsights => 'Жетілдірілген талдаулар мен аналитика';

  @override
  String get featureUnlimitedJournal => 'Шексіз күнделік жазбалары';

  @override
  String get featureUnlimitedChat => 'AI коучпен шексіз чат';

  @override
  String get featureCommunityGroups => 'Ерекше қауымдастық топтары';

  @override
  String get featurePrioritySupport => 'Басым сарапшы қолдауы';

  @override
  String get featureThemePacks => 'Арнайы тақырып пакеттері';

  @override
  String get featureDataExport => 'Деректерді экспорттау';

  @override
  String get featureAdFree => 'Жарнамасыз тәжірибе';

  @override
  String get premiumMemberTitle => 'Сіз Премиум мүшесіз';

  @override
  String get unlockFullRecoveryTitle => 'Толық сауығу\nтәжірибеңізді ашыңыз';

  @override
  String get premiumMemberSubtitle =>
      'Сауығу сапарыңызды қолдағаныңыз үшін рахмет — төмендегі әрбір премиум мүмкіндік ашылды.';

  @override
  String get premiumJoinSubtitle =>
      'Біздің премиум құралдарымыз бен жеке қолдауымызбен\nсауығуын жеделдетіп жатқан мыңдаған адамдар\nқауымдастығына қосылыңыз.';

  @override
  String get monthlyPlanLabel => 'Айлық';

  @override
  String get perMonthSuffix => '/ай';

  @override
  String get cancelAnytimeLabel => 'Кез келген уақытта бас тартуға болады';

  @override
  String get yearlyPlanLabel => 'Жылдық';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Жылына $amount есептеледі';
  }

  @override
  String get bestValueLabel => 'Ең тиімді';

  @override
  String get alreadyPremiumLabel => 'Сіз Премиумсыз ✓';

  @override
  String get startPremiumLabel => 'Премиумды бастау';

  @override
  String get manageSubscriptionLabel =>
      'Құрылғыңыздың жазылым баптауларынан басқарыңыз немесе бас тартыңыз.';

  @override
  String get noCommitmentLabel =>
      'Міндеттеме жоқ. Кез келген уақытта бас тартуға болады.';

  @override
  String get continueFreePlanLabel => 'Тегін жоспармен жалғастыру';

  @override
  String get backToHomeLabel => 'Басты бетке оралу';

  @override
  String get cancelPremiumLabel => 'Премиумнан бас тарту';

  @override
  String get cancelPremiumTitle => 'Премиумнан бас тарту керек пе?';

  @override
  String get cancelPremiumMessage =>
      'Сіз шексіз күнделік жазбаларына, шексіз коуч чатына, статистика талдауларына және апталық есептерге қол жеткізуден айырыласыз. Кез келген уақытта қайта жазыла аласыз.';

  @override
  String get keepPremiumLabel => 'Премиумды сақтау';

  @override
  String get nowPremiumMessage =>
      'Сіз енді Премиумсыз! Толық сауығу тәжірибеңізді пайдаланыңыз.';

  @override
  String get premiumCancelledMessage =>
      'Премиум бас тартылды. Сіз тегін жоспарға оралдыңыз.';

  @override
  String get termsOfUseLabel => 'Пайдалану шарттары';

  @override
  String get navHomeLabel => 'Басты бет';

  @override
  String get navStatsLabel => 'Статистика';

  @override
  String get navJournalLabel => 'Күнделік';

  @override
  String get navBadgesLabel => 'Наградалар';

  @override
  String get navProfileLabel => 'Профиль';

  @override
  String get recoveryGoalsTitle => 'Сауығу мақсаттары';

  @override
  String get drinksPerWeekLabel => 'Аптасына сусын саны';

  @override
  String get quitReasonsLabel => 'Тастау себептері';

  @override
  String get quitReasonsHelperText => 'Бірнеше себепті үтірмен бөліңіз.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Сауығу мақсаттарын сақтау мүмкін болмады: $error';
  }

  @override
  String get goalHint => 'мыс., Толық бас тарту';

  @override
  String get drinksPerWeekHint => 'мыс., 12';

  @override
  String get quitReasonsHint => 'мыс., Денсаулық, Отбасы, Ақша';

  @override
  String get todaysPrompt => 'Бүгінгі сұрау';

  @override
  String get defaultJournalPrompt => 'Бүгін ойыңызда не бар?';

  @override
  String get aiJournalInsights => 'AI күнделік талдауы';

  @override
  String get unlockJournalInsightsMessage =>
      'Күнделік жазбаларыңыздан апталық үлгілерді, көңіл-күй үрдістерін және жеке талдауларды ашыңыз.';

  @override
  String get notEnoughJournalData =>
      'Әзірге деректер жеткіліксіз — осы апта бірнеше жазба жазып, кейін қайта тексеріңіз.';

  @override
  String get openEntry => 'Ашу';

  @override
  String get editEntry => 'Өзгерту';

  @override
  String get deleteEntry => 'Өшіру';

  @override
  String get searchJournalEntries => 'Жазбаларды іздеу...';

  @override
  String get writeNewEntry => 'Жаңа жазба жазу';

  @override
  String get recentEntries => 'Соңғы жазбалар';

  @override
  String get noJournalEntriesYet =>
      'Әлі күнделік жазбалары жоқ — алғашқы ойыңызды жоғарыда жазыңыз.';

  @override
  String get noEntriesMatchFilters => 'Сүзгілеріңізге сәйкес жазба жоқ.';

  @override
  String get weeklyJournalLimitReached => 'Апталық шектеуге жетті';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Сіз осы апта барлық $limit тегін күнделік жазбасын қолдандыңыз. Шексіз жазбалар үшін Премиумға жаңартыңыз.';
  }

  @override
  String get newEntry => 'Жаңа жазба';

  @override
  String get writeYourThoughts => 'Ойларыңызды жазыңыз';

  @override
  String get saveEntry => 'Жазбаны сақтау';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Осы аптада $limit тегін жазбадан $remaining қалды';
  }

  @override
  String get deleteEntryQuestion => 'Жазбаны өшіру керек пе?';

  @override
  String get deleteEntryConfirmation =>
      'Бұл жазба толығымен өшіріледі. Оны болдырмау мүмкін емес.';

  @override
  String get journalEntryNotFound => 'Жазба табылмады';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Бұл күнделік жазбасы өшірілген болуы мүмкін.';

  @override
  String get goBack => 'Артқа қайту';

  @override
  String get journalEntryTitle => 'Күнделік жазбасы';

  @override
  String get moodStruggling => 'Қиналуда';

  @override
  String get moodUnwell => 'Сергек емес';

  @override
  String get moodNeutral => 'Бейтарап';

  @override
  String get whatHappenedToday => 'Бүгін не болды?';

  @override
  String get trigger => 'Триггер';

  @override
  String get whatHelped => 'Не көмектесті';

  @override
  String get whatIllTryNextTime => 'Келесі жолы не істеп көремін';

  @override
  String get journalPrivacyMessage =>
      'Ойыңыз құпия және күнделігіңізде сақталады.';

  @override
  String get unlocked => 'Ашылды';

  @override
  String daysLeft(int count) {
    return '$count күн қалды';
  }

  @override
  String daysCount(int count) {
    return '$count күн';
  }

  @override
  String get firstReflection => 'Алғашқы\nОй';

  @override
  String get oneJournalEntry => '1 күнделік жазбасы';

  @override
  String get openBook => 'Ашық кітап';

  @override
  String get tenJournalEntries => '10 күнделік жазбасы';

  @override
  String get dedicatedWriter => 'Берілген\nЖазушы';

  @override
  String get thirtyJournalEntries => '30 күнделік жазбасы';

  @override
  String get firstConversation => 'Алғашқы\nӘңгіме';

  @override
  String get oneAiCoachChat => '1 AI коуч чаты';

  @override
  String get keepTalking => 'Сөйлесуді жалғастыру';

  @override
  String get fiveConversations => '5 әңгіме';

  @override
  String get coachCompanion => 'Коуч\nСерігі';

  @override
  String get twentyConversations => '20 әңгіме';

  @override
  String get checkInHabit => 'Тексеру\nӘдеті';

  @override
  String get sevenCheckIns => '7 тексеру';

  @override
  String get consistencyPro => 'Тұрақтылық\nПрофессионалы';

  @override
  String get thirtyCheckIns => '30 тексеру';

  @override
  String get dedicatedJourney => 'Берілген\nСапар';

  @override
  String get hundredCheckIns => '100 тексеру';

  @override
  String get goalGetter => 'Мақсатқа жетуші';

  @override
  String get threeGoalsCompleted => '3 мақсат орындалды';

  @override
  String get goalAchiever => 'Мақсатқа\nЖетуші';

  @override
  String get tenGoalsCompleted => '10 мақсат орындалды';

  @override
  String get firstSavings => 'Алғашқы\nЖинақ';

  @override
  String get fiveHundredSaved => '\$500 үнемделді';

  @override
  String get smartSaver => 'Ақылды жинақтаушы';

  @override
  String get oneThousandSaved => '\$1,000 үнемделді';

  @override
  String get bigSaver => 'Үлкен жинақтаушы';

  @override
  String get fiveThousandSaved => '\$5,000 үнемделді';

  @override
  String currencyProgress(String current, String target) {
    return '\$$target ішінен \$$current';
  }

  @override
  String countProgress(int current, int target) {
    return '$target ішінен $current';
  }

  @override
  String get firstMilestoneWaiting =>
      'Жалғастырыңыз — алғашқы кезеңіңіз сізді күтуде!';

  @override
  String get badgesAndMilestones => 'Наградалар мен кезеңдер';

  @override
  String get yourMilestoneJourney => 'Сіздің кезең сапарыңыз';

  @override
  String milestonesAchieved(int count) {
    return '$count кезеңге қол жеткізілді.\nКөру үшін түртіңіз';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Сіз сапарыңызда $total кезеңнің $unlocked санын аштыңыз.';
  }

  @override
  String get remaining => 'Қалды';

  @override
  String get complete => 'Аяқталды';

  @override
  String get nextMilestone => 'Келесі кезең';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% жетті';
  }

  @override
  String get sobrietyMilestones => 'Тыныш болу кезеңдері';

  @override
  String get journeyBadges => 'Сапар наградалары';

  @override
  String get bronze => 'ҚОЛА';

  @override
  String get silver => 'КҮМІС';

  @override
  String get gold => 'АЛТЫН';

  @override
  String get platinum => 'ПЛАТИНА';

  @override
  String get diamond => 'АЛМАС';

  @override
  String get analyzingYourJourney => 'Сапарыңыз талдануда...';

  @override
  String get aiCreatingSanctuary => 'Біздің AI сізге жеке пана жасап жатыр.';

  @override
  String get understandingHabits => 'Әдеттеріңізді түсіну...';

  @override
  String get calculatingBaseline => 'Бастапқы деректеріңіз есептелуде...';

  @override
  String get personalizingPlan => 'Жоспарыңыз жекелендірілуде...';

  @override
  String get finalizingSanctuary => 'Панаңыз аяқталуда...';

  @override
  String get creatingYourPlan => 'Жоспарыңыз жасалуда...';

  @override
  String get personalizedPlanError =>
      'Жеке жоспарыңызды жасай алмадық. Қайталап көріңіз.';

  @override
  String get retry => 'Қайталау';

  @override
  String get breathInhale => 'ДЕМ АЛУ';

  @override
  String get breathHold => 'ҰСТАП ТҰРУ';

  @override
  String get breathExhale => 'ДЕМ ШЫҒАРУ';

  @override
  String get breathDone => 'АЯҚТАЛДЫ';

  @override
  String get breathGreatJob => 'Керемет жұмыс!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Бүгін $count сессия',
      one: 'Бүгін $count сессия',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Жаттығуды аяқтау';

  @override
  String get done => 'Дайын';

  @override
  String get noCopingTipsYet => 'Әлі күресу кеңестері жоқ';

  @override
  String get copingStrategiesWillAppear =>
      'Сауығу жоспарыңыз жасалып болғаннан кейін жеке күресу стратегияларыңыз осында пайда болады.';

  @override
  String get strategiesTailoredToTriggers =>
      'Триггерлеріңізге бейімделген стратегиялар';

  @override
  String get cravingsPeakAndPass =>
      'Ынтызарлықтар шарықтап,\nсодан кейін өтеді';

  @override
  String get rideTheWaveDescription =>
      'Ынтызарлықтардың көбі 15 минут ішінде өтеді. Оған әрекет етудің қажеті жоқ — бізбен бірге сол сәтті өткеріп жіберіңіз.';

  @override
  String get stayWithIt => 'жалғастыра беріңіз';

  @override
  String get youMadeIt => 'сіз жасадыңыз';

  @override
  String get readyWhenYouAre => 'дайын болғанда бастаймыз';

  @override
  String get rideItAgain => 'Тағы да толқынмен жүру';

  @override
  String get start15MinuteTimer => '15 минуттық таймерді бастау';

  @override
  String get rideTheWaveCompletedMessage =>
      'Сіз толқынмен жүрдіңіз. Бұл нағыз күш. 💪';

  @override
  String get myProgress => 'Менің прогресім';

  @override
  String get weekLabel => 'Апта';

  @override
  String get monthLabel => 'Ай';

  @override
  String get allLabel => 'Барлығы';

  @override
  String get daysSoberStatLabel => 'Тыныш\nкүндер';

  @override
  String get savedStatLabel => 'Үнемделді';

  @override
  String get avoidedStatLabel => 'Ішілмеді';

  @override
  String get moodTrends => 'Көңіл-күй үрдістері';

  @override
  String get cravingsPattern => 'Ынтызарлық үлгісі';

  @override
  String get unlockLabel => 'Ашу';

  @override
  String get unlockFullStats => 'Толық статистиканы ашу';

  @override
  String get premiumStatsMessage =>
      'Көңіл-күй үрдістері мен ынтызарлық үлгілері — Премиум мүмкіндіктері. Толық статистикаңызды көру үшін жаңартыңыз.';

  @override
  String get healthMilestonesWillAppear =>
      'Денсаулық кезеңдеріңіз осында пайда болады.';

  @override
  String get healthMilestones => 'Денсаулық кезеңдері';

  @override
  String dayNumber(int day) {
    return '$day-күн';
  }

  @override
  String get soberLabel => 'Тыныш';

  @override
  String get slipLabel => 'Сүрінді';

  @override
  String get noDataLabel => 'Деректер жоқ';

  @override
  String get milestone24Hours => '24 сағат';

  @override
  String get milestoneOneWeek => 'Бір апта';

  @override
  String get milestoneOneMonth => 'Бір ай';

  @override
  String get milestoneThreeMonths => 'Үш ай';

  @override
  String get milestoneSixMonths => 'Алты ай';

  @override
  String get milestoneOneYear => 'Бір жыл';

  @override
  String milestoneDayCount(int day) {
    return '$day-күн кезеңі';
  }

  @override
  String get maybeLaterLabel => 'Мүмкін кейінірек';

  @override
  String get cancelLabel => 'Бас тарту';
}
