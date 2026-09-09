// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get skip => 'Прескочи';

  @override
  String get continueButton => 'Настави';

  @override
  String get getStarted => 'Започни';

  @override
  String get onboardingTitle1 => 'Преузмите контролу над својим животом';

  @override
  String get onboardingSubtitle1 =>
      'Пратите свој пут, прославите свако достигнуће и постаните здравији из дана у дан.';

  @override
  String get onboardingTitle2 => 'Ваш AI пратилац у опоравку';

  @override
  String get onboardingSubtitle2 =>
      'Добијајте персонализоване смернице, здраве навике, мотивационе подсетнике и извештаје о напретку прилагођене вашем путу.';

  @override
  String get goodMorning => 'Добро јутро';

  @override
  String get goodAfternoon => 'Добар дан';

  @override
  String get goodEvening => 'Добро вече';

  @override
  String get goodNight => 'Лаку ноћ';

  @override
  String get embracingClarity => 'Прихватите јасноћу, један дан по један.';

  @override
  String get streakLabel => 'НИЗ';

  @override
  String get goalLabel => 'Циљ';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дана',
      few: '$count дана',
      one: '$count дан',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium план';

  @override
  String get premiumPlanSubtitle => 'Откључајте потпуно искуство опоравка';

  @override
  String get accountAndSupport => 'НАЛОГ И ПОДРШКА';

  @override
  String get privacyPolicy => 'Политика приватности';

  @override
  String get privacyPolicySubtitle =>
      'Управљајте дељењем података и безбедношћу налога';

  @override
  String get termsOfService => 'Услови коришћења';

  @override
  String get termsOfServiceSubtitle =>
      'Честа питања, контактирајте нас и корисни ресурси';

  @override
  String get shareApp => 'Подели апликацију';

  @override
  String get shareAppSubtitle => 'Поделите апликацију са пријатељима';

  @override
  String get resetData => 'Ресетуј податке';

  @override
  String get resetDataSubtitle => 'Обришите све сачувано на овом уређају';

  @override
  String get resetAllDataTitle => 'Ресетовати све податке?';

  @override
  String get resetAllDataMessage =>
      'Ово ће обрисати све сачувано на овом уређају — профил, записе у дневнику и напредак — и ова радња се не може опозвати.';

  @override
  String get cancel => 'Откажи';

  @override
  String get reset => 'Ресетуј';

  @override
  String get chooseFromGallery => 'Изабери из галерије';

  @override
  String get takePhoto => 'Сними фотографију';

  @override
  String get removePhoto => 'Уклони фотографију';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Фотографија није могла да се ажурира: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Фотографија није могла да се уклони: $error';
  }

  @override
  String get photoTooLarge =>
      'Фотографија је превелика чак и након компресије — покушајте са другом фотографијом.';

  @override
  String get unableToLoadProfile => 'Није могуће учитати ваш профил';

  @override
  String get pleaseTryAgain => 'Покушајте поново.';

  @override
  String get tryAgain => 'Покушај поново';

  @override
  String get profileNotFound => 'Профил није пронађен';

  @override
  String get refresh => 'Освежи';

  @override
  String get noProfileDataFound =>
      'На овом уређају још нема података о профилу.';

  @override
  String couldNotResetData(String error) {
    return 'Подаци нису могли да се ресетују: $error';
  }

  @override
  String get navHome => 'Почетна';

  @override
  String get navStats => 'Статистика';

  @override
  String get navJournal => 'Дневник';

  @override
  String get navBadges => 'Значке';

  @override
  String get navProfile => 'Профил';

  @override
  String featureComingSoon(String feature) {
    return '$feature ће ускоро бити доступна.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Престани да пијеш';

  @override
  String get splashSubtitle => 'Направите први корак ка\nживоту без алкохола';

  @override
  String get preparingJourney => 'Припремамо ваш\nпут';

  @override
  String get taskMorningMeditation => 'Јутарња медитација (10 мин)';

  @override
  String get taskReadChapter =>
      'Прочитајте 4. поглавље књиге „The Sober Diaries“';

  @override
  String get taskEveningJournal => 'Вечерњи дневник захвалности';

  @override
  String get close => 'Затвори';

  @override
  String get youAreDoingGreat => 'Одлично вам иде!';

  @override
  String get shareMilestone => 'Подели достигнуће';

  @override
  String shareMilestoneMessage(int days) {
    return 'Данас сам на $days. дану свог пута опоравка! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Моје достигнуће на путу опоравка';

  @override
  String get weeklyReportReadyTitle => 'Ваш недељни извештај је спреман';

  @override
  String get weeklyReportReadySubtitle =>
      'Додирните да видите како је протекла ваша недеља';

  @override
  String get howAreYouFeeling => 'Како се осећате?';

  @override
  String get moodTough => 'Тешко';

  @override
  String get moodOkay => 'У реду';

  @override
  String get moodGood => 'Добро';

  @override
  String get moneySaved => 'Уштеђени новац';

  @override
  String get caloriesSaved => 'Сачуване калорије';

  @override
  String get healthScore => 'Оцена здравља';

  @override
  String get drinksAvoided => 'Избегнута пића';

  @override
  String get estimated => 'Процењено';

  @override
  String get aiGenerated => 'Генерисано помоћу AI';

  @override
  String get daysCapsLabel => 'ДАНА';

  @override
  String get todaysMotivation => 'Данашња мотивација';

  @override
  String get defaultMotivationQuote =>
      'Успешно сте остали верни својој одлуци. Наставите да пратите талас позитивних промена.';

  @override
  String get talkToCoach => 'Разговарај са коучем';

  @override
  String get havingACraving => 'Имам жељу за пићем';

  @override
  String get unlockWeeklyReportsTitle => 'Откључајте недељне извештаје';

  @override
  String get unlockWeeklyReportsMessage =>
      'Сваке недеље погледајте дане без алкохола, трендове расположења и персонализоване AI повратне информације. Надоградите на Premium да бисте откључали ову функцију.';

  @override
  String get maybeLater => 'Можда касније';

  @override
  String get upgrade => 'Надогради';

  @override
  String get weeklyReportTitle => 'Недељни извештај';

  @override
  String get weeklyReportsPremiumTitle =>
      'Недељни извештаји су Premium функција';

  @override
  String get weeklyReportsPremiumMessage =>
      'Сваке недеље погледајте дане без алкохола, трендове расположења, жеље за пићем и персонализоване AI повратне информације.';

  @override
  String get upgradeToPremium => 'Надогради на Premium';

  @override
  String get couldNotGenerateReport =>
      'Тренутно није могуће генерисати ваш извештај.';

  @override
  String get tryAgainLower => 'Покушај поново';

  @override
  String get statSoberDays => 'Дани без алкохола';

  @override
  String get statAvgMood => 'Просечно расположење';

  @override
  String get statCravings => 'Жеље';

  @override
  String get statMoneySaved => 'Уштеђено';

  @override
  String get coachFeedback => 'Повратне информације коуча';

  @override
  String get journalInsights => 'Увиди из дневника';

  @override
  String get next => 'Даље';

  @override
  String get question1Title => 'Који је ваш циљ';

  @override
  String get question1Subtitle => 'Изаберите циљ који вам је\nнајважнији';

  @override
  String get goalQuitCompletely => 'Потпуно престати';

  @override
  String get goalReduceDrinking => 'Смањити пијење';

  @override
  String get goalTakeABreak => 'Направити паузу';

  @override
  String get goalBuildHealthierHabits => 'Изградити здравије навике';

  @override
  String get question3Title => 'Реците нам нешто о својој\nрутини';

  @override
  String get drinksPerWeek => 'Пића недељно';

  @override
  String get moneySpentPerWeek => 'Потрошен новац недељно';

  @override
  String get drinkingLevel => 'Ниво конзумирања';

  @override
  String get triggersLabel => 'Окидачи';

  @override
  String get levelSocial => 'Друштвено';

  @override
  String get levelRegular => 'Редовно';

  @override
  String get levelHeavy => 'Високо';

  @override
  String get levelDependent => 'Зависност';

  @override
  String get triggerStress => 'Стрес';

  @override
  String get triggerLoneliness => 'Усамљеност';

  @override
  String get triggerHabit => 'Навика';

  @override
  String get triggerSadness => 'Туга';

  @override
  String get triggerAnger => 'Бес';

  @override
  String get triggerBoredom => 'Досада';

  @override
  String get triggerSocialPressure => 'Притисак друштва';

  @override
  String get triggerCelebration => 'Прослава';

  @override
  String get triggerSleepProblems => 'Проблеми са спавањем';

  @override
  String get triggerWorkPressure => 'Притисак на послу';

  @override
  String get question4Title => 'Зашто желите да се промените?';

  @override
  String get question4Subtitle =>
      'Ваш разлог ће вам помоћи да останете мотивисани.';

  @override
  String get reasonImproveHealth => 'Побољшати здравље';

  @override
  String get reasonSaveMoney => 'Уштедети новац';

  @override
  String get reasonFamily => 'Породица';

  @override
  String get reasonBetterSleep => 'Бољи сан';

  @override
  String get reasonMentalClarity => 'Ментална јасноћа';

  @override
  String get reasonFitness => 'Фитнес';

  @override
  String get reasonSelfRespect => 'Самопоштовање';

  @override
  String get reasonCareer => 'Каријера';

  @override
  String get milestoneUnlockedLabel => 'ДОСТИГНУЋЕ ОТКЉУЧАНО';

  @override
  String incredibleNamePrefix(String name) {
    return 'Невероватно, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount уштеђено';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count избегнуто';
  }

  @override
  String get shareMyMilestone => 'Подели моје достигнуће';

  @override
  String get milestoneImageShareError =>
      'Није могуће направити слику достигнућа. Покушајте поново.';

  @override
  String get dailyCheckInTitle => 'Дневна пријава';

  @override
  String get howAreYouFeelingToday => 'Како се данас осећате?';

  @override
  String get honestAnswerHelp =>
      'Ваш искрен одговор нам помаже да вас боље подржимо';

  @override
  String get didYouDrinkToday => 'Да ли сте данас пили?';

  @override
  String get noLabel => 'Не';

  @override
  String get yesLabel => 'Да';

  @override
  String get cravingLevelNow => 'Колико је јака жеља за пићем сада?';

  @override
  String get anythingOnMind => 'Да ли вам је нешто на уму?';

  @override
  String get optionalLabel => '(опционо)';

  @override
  String get dailyNoteHint => 'Пишите о свом дану, окидачима, победама...';

  @override
  String get alreadyCheckedInToday => 'Данас сте се већ пријавили';

  @override
  String get saveCheckIn => 'Сачувај пријаву';

  @override
  String get checkInsHelpTrack =>
      'Дневне пријаве помажу у праћењу вашег напретка';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Већ сте завршили данашњу пријаву.';

  @override
  String get pleaseAnswerBothQuestions => 'Прво одговорите на оба питања изнад';

  @override
  String get checkInSaved => 'Пријава је сачувана';

  @override
  String get cravingNone => 'Нема';

  @override
  String get cravingLow => 'Слаба';

  @override
  String get cravingMedium => 'Средња';

  @override
  String get cravingStrong => 'Јака';

  @override
  String get moodBad => 'Лоше';

  @override
  String get moodLow => 'Ниско';

  @override
  String get moodGreat => 'Одлично';

  @override
  String get sosSupportTitle => 'SOS подршка';

  @override
  String notAloneMessage(String name) {
    return 'Нисте сами, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Жеље за пићем пролазе. Изаберите нешто испод што ће вам помоћи у овом тренутку.';

  @override
  String get breathingExercise => 'Вежба дисања';

  @override
  String get breathingExerciseSubtitle => 'Вођена техника 4-7-8, 2 минута';

  @override
  String get rideTheWave => 'Прејашите талас';

  @override
  String get rideTheWaveSubtitle => 'Тајмер од 15 минута — жеље увек прођу';

  @override
  String get copingTips => 'Савети за суочавање';

  @override
  String get copingTipsSubtitle => 'Персонализоване стратегије за ваше окидаче';

  @override
  String get talkToAiCoach => 'Разговарајте са AI коучем';

  @override
  String get talkToAiCoachSubtitle =>
      'Разговарајте са својим пратиоцем у опоравку';

  @override
  String get callSomeone => 'Позовите некога';

  @override
  String get callSomeoneSubtitle => 'Позовите особу од поверења';

  @override
  String get contactsPermissionNeeded =>
      'За позивање контакта потребна је дозвола за приступ контактима.';

  @override
  String get beatenCravingsPrefix => 'Савладали сте жељу за пићем ';

  @override
  String beatenCravingsCount(int count) {
    return '$count пута';
  }

  @override
  String get beatenCravingsSuffix => ' раније. Можете то поново.';

  @override
  String get tellUsAboutYourself => 'Реците нам нешто о себи';

  @override
  String get detailsSubtitle =>
      'Ове информације нам помажу да персонализујемо ваш пут опоравка и пружимо тачне увиде.';

  @override
  String get nameLabel => 'Име';

  @override
  String get nameHint => 'нпр. Алекс Риверс';

  @override
  String get ageLabel => 'Године';

  @override
  String get ageHint => 'нпр. 32';

  @override
  String get sexAssignedAtBirth => 'Пол при рођењу';

  @override
  String get sexFemale => 'Женски';

  @override
  String get sexMale => 'Мушки';

  @override
  String get heightLabel => 'Висина';

  @override
  String get weightLabel => 'Тежина';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Достигнут је дневни лимит';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Искористили сте свих $limit бесплатних порука за данас. Надоградите на Premium за неограничени разговор са коучем.';
  }

  @override
  String get coachConnectError =>
      'Тренутно није могуће повезивање. Покушајте поново за тренутак.';

  @override
  String get clearConversationTitle => 'Обриши разговор?';

  @override
  String get clearConversationMessage =>
      'Историја разговора са коучем биће трајно уклоњена.';

  @override
  String get clearLabel => 'Обриши';

  @override
  String get recoveryCoachTitle => 'Коуч за опоравак';

  @override
  String get onlineLabel => 'На мрежи';

  @override
  String get clearConversationMenuItem => 'Обриши разговор';

  @override
  String chatGreeting(String name) {
    return 'Здраво, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Данас сте на $days. дану свог пута. Ту сам кад год пожелите да разговарамо.';
  }

  @override
  String get quickPromptsLabel => 'БРЗИ УПИТИ';

  @override
  String get promptCravingLabel => 'Имам жељу за пићем';

  @override
  String get promptCravingSubtitle => 'Брзо се смирите и усредсредите';

  @override
  String get promptMotivationLabel => 'Треба ми мотивација';

  @override
  String get promptMotivationSubtitle => 'Подршка када је тешко';

  @override
  String get promptSocialLabel => 'Друштвена ситуација';

  @override
  String get promptSocialSubtitle => 'Како се снаћи на окупљању';

  @override
  String get promptSlippedLabel => 'Посустао/ла сам';

  @override
  String get promptSlippedSubtitle => 'Без осуђивања, само подршка';

  @override
  String get typeMessageHint => 'Унесите поруку...';

  @override
  String get editProfileTitle => 'Измени профил';

  @override
  String couldNotSaveProfile(String error) {
    return 'Профил није могао да се сачува: $error';
  }

  @override
  String get heightCmLabel => 'Висина (cm)';

  @override
  String get weightKgLabel => 'Тежина (kg)';

  @override
  String get saveChangesLabel => 'Сачувај измене';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Напредни увиди и аналитика';

  @override
  String get featureUnlimitedJournal => 'Неограничени уноси у дневник';

  @override
  String get featureUnlimitedChat => 'Неограничени разговори са AI коучем';

  @override
  String get featureCommunityGroups => 'Ексклузивне групе заједнице';

  @override
  String get featurePrioritySupport => 'Приоритетна стручна подршка';

  @override
  String get featureThemePacks => 'Прилагођени пакети тема';

  @override
  String get featureDataExport => 'Извоз података';

  @override
  String get featureAdFree => 'Искуство без огласа';

  @override
  String get premiumMemberTitle => 'Ви сте Premium члан';

  @override
  String get unlockFullRecoveryTitle => 'Откључајте потпуно искуство\nопоравка';

  @override
  String get premiumMemberSubtitle =>
      'Хвала вам што подржавате свој пут опоравка — све Premium функције испод су откључане.';

  @override
  String get premiumJoinSubtitle =>
      'Придружите се заједници хиљада људи који\nубрзавају свој пут опоравка помоћу наших\nPremium алата и персонализоване подршке.';

  @override
  String get monthlyPlanLabel => 'Месечно';

  @override
  String get perMonthSuffix => '/мес.';

  @override
  String get cancelAnytimeLabel => 'Откажите у било ком тренутку';

  @override
  String get yearlyPlanLabel => 'Годишње';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Наплаћује се годишње: $amount';
  }

  @override
  String get bestValueLabel => 'Најбоља вредност';

  @override
  String get alreadyPremiumLabel => 'Већ сте Premium ✓';

  @override
  String get startPremiumLabel => 'Започни Premium';

  @override
  String get manageSubscriptionLabel =>
      'Управљајте претплатом или је откажите у подешавањима претплата на свом уређају.';

  @override
  String get noCommitmentLabel => 'Без обавезе. Откажите у било ком тренутку.';

  @override
  String get continueFreePlanLabel => 'Настави са бесплатним планом';

  @override
  String get backToHomeLabel => 'Назад на почетну';

  @override
  String get cancelPremiumLabel => 'Откажи Premium';

  @override
  String get cancelPremiumTitle => 'Отказати Premium?';

  @override
  String get cancelPremiumMessage =>
      'Изгубићете приступ неограниченим уносима у дневник, неограниченом разговору са коучем, увидима у статистику и недељним извештајима. Можете се поново претплатити у било ком тренутку.';

  @override
  String get keepPremiumLabel => 'Задржи Premium';

  @override
  String get nowPremiumMessage =>
      'Сада сте Premium! Уживајте у потпуном искуству опоравка.';

  @override
  String get premiumCancelledMessage =>
      'Premium је отказан. Вратили сте се на бесплатни план.';

  @override
  String get termsOfUseLabel => 'Услови коришћења';

  @override
  String get navHomeLabel => 'Почетна';

  @override
  String get navStatsLabel => 'Статистика';

  @override
  String get navJournalLabel => 'Дневник';

  @override
  String get navBadgesLabel => 'Значке';

  @override
  String get navProfileLabel => 'Профил';

  @override
  String get recoveryGoalsTitle => 'Циљеви опоравка';

  @override
  String get drinksPerWeekLabel => 'Пића недељно';

  @override
  String get quitReasonsLabel => 'Разлози за престанак';

  @override
  String get quitReasonsHelperText => 'Одвојите више разлога зарезом.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Циљеви опоравка нису могли да се сачувају: $error';
  }

  @override
  String get goalHint => 'нпр. Потпуна апстиненција';

  @override
  String get drinksPerWeekHint => 'нпр. 12';

  @override
  String get quitReasonsHint => 'нпр. Здравље, Породица, Новац';

  @override
  String get todaysPrompt => 'Данашњи упит';

  @override
  String get defaultJournalPrompt => 'Шта вам је данас на уму?';

  @override
  String get aiJournalInsights => 'AI увиди из дневника';

  @override
  String get unlockJournalInsightsMessage =>
      'Откључајте недељне обрасце, трендове расположења и персонализоване увиде из својих записа.';

  @override
  String get notEnoughJournalData =>
      'Још нема довољно података — напишите неколико записа ове недеље и проверите поново.';

  @override
  String get openEntry => 'Отвори';

  @override
  String get editEntry => 'Измени';

  @override
  String get deleteEntry => 'Обриши';

  @override
  String get searchJournalEntries => 'Претражите записе...';

  @override
  String get writeNewEntry => 'Напишите нови запис';

  @override
  String get recentEntries => 'Недавни записи';

  @override
  String get noJournalEntriesYet =>
      'Још нема записа у дневнику — напишите свој први осврт изнад.';

  @override
  String get noEntriesMatchFilters =>
      'Нема записа који одговарају вашим филтерима.';

  @override
  String get weeklyJournalLimitReached => 'Достигнут недељни лимит';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Искористили сте свих $limit бесплатних записа у дневнику ове недеље. Надоградите на Premium за неограничене записе.';
  }

  @override
  String get newEntry => 'Нови запис';

  @override
  String get writeYourThoughts => 'Запишите своје мисли';

  @override
  String get saveEntry => 'Сачувај запис';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Преостало је $remaining од $limit бесплатних записа ове недеље';
  }

  @override
  String get deleteEntryQuestion => 'Обришите запис?';

  @override
  String get deleteEntryConfirmation =>
      'Овај запис ће бити трајно обрисан. Ово се не може опозвати.';

  @override
  String get journalEntryNotFound => 'Запис није пронађен';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Овај запис из дневника је можда обрисан.';

  @override
  String get goBack => 'Назад';

  @override
  String get journalEntryTitle => 'Запис у дневнику';

  @override
  String get moodStruggling => 'Мучно';

  @override
  String get moodUnwell => 'Лоше';

  @override
  String get moodNeutral => 'Неутрално';

  @override
  String get whatHappenedToday => 'Шта се данас догодило?';

  @override
  String get trigger => 'Окидач';

  @override
  String get whatHelped => 'Шта је помогло';

  @override
  String get whatIllTryNextTime => 'Шта ћу следећи пут покушати';

  @override
  String get journalPrivacyMessage =>
      'Ваш осврт је приватан и сачуван у вашем дневнику.';

  @override
  String get unlocked => 'Откључано';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'а',
      few: 'а',
      one: '',
    );
    return 'Преостаје $count дан$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count дана';
  }

  @override
  String get firstReflection => 'Први\nосврт';

  @override
  String get oneJournalEntry => '1 запис у дневнику';

  @override
  String get openBook => 'Отвори књигу';

  @override
  String get tenJournalEntries => '10 записа у дневнику';

  @override
  String get dedicatedWriter => 'Посвећени\nписац';

  @override
  String get thirtyJournalEntries => '30 записа у дневнику';

  @override
  String get firstConversation => 'Први\nразговор';

  @override
  String get oneAiCoachChat => '1 разговор са AI коучем';

  @override
  String get keepTalking => 'Наставите да разговарате';

  @override
  String get fiveConversations => '5 разговора';

  @override
  String get coachCompanion => 'Коуч\nпратилац';

  @override
  String get twentyConversations => '20 разговора';

  @override
  String get checkInHabit => 'Навика\nпријављивања';

  @override
  String get sevenCheckIns => '7 пријава';

  @override
  String get consistencyPro => 'Мајстор\nдоследности';

  @override
  String get thirtyCheckIns => '30 пријава';

  @override
  String get dedicatedJourney => 'Посвећени\nпут';

  @override
  String get hundredCheckIns => '100 пријава';

  @override
  String get goalGetter => 'Остваритељ циљева';

  @override
  String get threeGoalsCompleted => '3 циља завршена';

  @override
  String get goalAchiever => 'Остваритељ\nциљева';

  @override
  String get tenGoalsCompleted => '10 циљева завршено';

  @override
  String get firstSavings => 'Прва\nуштеда';

  @override
  String get fiveHundredSaved => '\$500 уштеђено';

  @override
  String get smartSaver => 'Паметни штедиша';

  @override
  String get oneThousandSaved => '\$1,000 уштеђено';

  @override
  String get bigSaver => 'Велики штедиша';

  @override
  String get fiveThousandSaved => '\$5,000 уштеђено';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current од \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current од $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Наставите — ваше прво достигнуће вас чека!';

  @override
  String get badgesAndMilestones => 'Значке и достигнућа';

  @override
  String get yourMilestoneJourney => 'Ваш пут достигнућа';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'а',
      few: 'а',
      one: 'е',
    );
    return '$count достигнућ$_temp0 остварено.\nДодирните да погледате';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Откључали сте $unlocked од $total достигнућа на свом путу.';
  }

  @override
  String get remaining => 'Преостало';

  @override
  String get complete => 'Завршено';

  @override
  String get nextMilestone => 'Следеће достигнуће';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% завршено';
  }

  @override
  String get sobrietyMilestones => 'Достигнућа трезвености';

  @override
  String get journeyBadges => 'Значке пута';

  @override
  String get bronze => 'БРОНЗА';

  @override
  String get silver => 'СРЕБРО';

  @override
  String get gold => 'ЗЛАТО';

  @override
  String get platinum => 'ПЛАТИНА';

  @override
  String get diamond => 'ДИЈАМАНТ';

  @override
  String get analyzingYourJourney => 'Анализирамо ваш пут...';

  @override
  String get aiCreatingSanctuary =>
      'Наш AI креира ваш персонализовани простор за опоравак.';

  @override
  String get understandingHabits => 'Разумевање навика...';

  @override
  String get calculatingBaseline => 'Израчунавамо вашу почетну вредност...';

  @override
  String get personalizingPlan => 'Персонализујемо ваш план...';

  @override
  String get finalizingSanctuary => 'Завршавамо ваш простор за опоравак...';

  @override
  String get creatingYourPlan => 'Креирамо ваш план...';

  @override
  String get personalizedPlanError =>
      'Нисмо могли да креирамо ваш персонализовани план. Покушајте поново.';

  @override
  String get retry => 'Покушај поново';

  @override
  String get breathInhale => 'УДИШИТЕ';

  @override
  String get breathHold => 'ЗАДРЖИТЕ';

  @override
  String get breathExhale => 'ИЗДИШИТЕ';

  @override
  String get breathDone => 'ГОТОВО';

  @override
  String get breathGreatJob => 'Одличан посао!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сесија данас',
      few: '$count сесије данас',
      one: '$count сесија данас',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Заврши вежбу';

  @override
  String get done => 'Готово';

  @override
  String get noCopingTipsYet => 'Још нема савета за суочавање';

  @override
  String get copingStrategiesWillAppear =>
      'Ваше персонализоване стратегије за суочавање појавиће се овде када се заврши креирање вашег плана опоравка.';

  @override
  String get strategiesTailoredToTriggers =>
      'Стратегије прилагођене вашим окидачима';

  @override
  String get cravingsPeakAndPass => 'Жеље достижу врхунац\nи пролазе';

  @override
  String get rideTheWaveDescription =>
      'Већина жеља за пићем прође у року од 15 минута. Не морате да им се препустите — само издржите тај талас са нама.';

  @override
  String get stayWithIt => 'останите уз то';

  @override
  String get youMadeIt => 'успели сте';

  @override
  String get readyWhenYouAre => 'када будете спремни';

  @override
  String get rideItAgain => 'Поново прејашите талас';

  @override
  String get start15MinuteTimer => 'Покрени тајмер од 15 минута';

  @override
  String get rideTheWaveCompletedMessage =>
      'Прејахали сте талас. То је права снага. 💪';

  @override
  String get myProgress => 'Мој напредак';

  @override
  String get weekLabel => 'Недеља';

  @override
  String get monthLabel => 'Месец';

  @override
  String get allLabel => 'Све';

  @override
  String get daysSoberStatLabel => 'Дана\nбез алкохола';

  @override
  String get savedStatLabel => 'Уштеђено';

  @override
  String get avoidedStatLabel => 'Избегнуто';

  @override
  String get moodTrends => 'Трендови расположења';

  @override
  String get cravingsPattern => 'Образац жеља';

  @override
  String get unlockLabel => 'Откључај';

  @override
  String get unlockFullStats => 'Откључај пуну статистику';

  @override
  String get premiumStatsMessage =>
      'Трендови расположења и обрасци жеља су Premium функције. Надоградите да бисте видели пуну статистику.';

  @override
  String get healthMilestonesWillAppear =>
      'Ваша здравствена достигнућа ће се појавити овде.';

  @override
  String get healthMilestones => 'Здравствена достигнућа';

  @override
  String dayNumber(int day) {
    return 'Дан $day';
  }

  @override
  String get soberLabel => 'Без алкохола';

  @override
  String get slipLabel => 'Посустајање';

  @override
  String get noDataLabel => 'Нема података';

  @override
  String get milestone24Hours => '24 сата';

  @override
  String get milestoneOneWeek => 'Једна недеља';

  @override
  String get milestoneOneMonth => 'Један месец';

  @override
  String get milestoneThreeMonths => 'Три месеца';

  @override
  String get milestoneSixMonths => 'Шест месеци';

  @override
  String get milestoneOneYear => 'Једна година';

  @override
  String milestoneDayCount(int day) {
    return 'Достигнуће за дан $day';
  }

  @override
  String get maybeLaterLabel => 'Можда касније';

  @override
  String get cancelLabel => 'Откажи';
}
