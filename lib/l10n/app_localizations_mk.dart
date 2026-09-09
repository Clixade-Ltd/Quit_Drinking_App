// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get skip => 'Прескокни';

  @override
  String get continueButton => 'Продолжи';

  @override
  String get getStarted => 'Започни';

  @override
  String get onboardingTitle1 => 'Преземете ја контролата врз вашиот живот';

  @override
  String get onboardingSubtitle1 =>
      'Следете го вашето патување, прославете го секое достигнување и станувајте поздрави од ден на ден.';

  @override
  String get onboardingTitle2 => 'Вашиот AI придружник за опоравување';

  @override
  String get onboardingSubtitle2 =>
      'Добијте персонализирани насоки, здрави навики, потсетници за мотивација и извештаи за напредокот прилагодени на вашето патување.';

  @override
  String get goodMorning => 'Добро утро';

  @override
  String get goodAfternoon => 'Добар ден';

  @override
  String get goodEvening => 'Добра вечер';

  @override
  String get goodNight => 'Добра ноќ';

  @override
  String get embracingClarity => 'Прифатете ја јасноста, еден ден по еден.';

  @override
  String get streakLabel => 'НИЗА';

  @override
  String get goalLabel => 'Цел';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дена',
      one: '$count ден',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium план';

  @override
  String get premiumPlanSubtitle =>
      'Отклучете го целосното искуство на опоравување';

  @override
  String get accountAndSupport => 'СМЕТКА И ПОДДРШКА';

  @override
  String get privacyPolicy => 'Политика за приватност';

  @override
  String get privacyPolicySubtitle =>
      'Управувајте со споделувањето податоци и безбедноста на сметката';

  @override
  String get termsOfService => 'Услови за користење';

  @override
  String get termsOfServiceSubtitle => 'ЧПП, контактирајте нè и ресурси';

  @override
  String get shareApp => 'Сподели ја апликацијата';

  @override
  String get shareAppSubtitle =>
      'Споделете ја апликацијата со вашите пријатели';

  @override
  String get resetData => 'Ресетирај ги податоците';

  @override
  String get resetDataSubtitle => 'Избришете сè зачувано на овој уред';

  @override
  String get resetAllDataTitle => 'Да се ресетираат сите податоци?';

  @override
  String get resetAllDataMessage =>
      'Ова ќе избрише сè зачувано на овој уред — профил, записи во дневникот и напредок — и не може да се врати назад.';

  @override
  String get cancel => 'Откажи';

  @override
  String get reset => 'Ресетирај';

  @override
  String get chooseFromGallery => 'Избери од галерија';

  @override
  String get takePhoto => 'Фотографирај';

  @override
  String get removePhoto => 'Отстрани фотографија';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Фотографијата не може да се ажурира: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Фотографијата не може да се отстрани: $error';
  }

  @override
  String get photoTooLarge =>
      'Фотографијата е преголема дури и по компресија — обидете се со друга.';

  @override
  String get unableToLoadProfile => 'Профилот не може да се вчита';

  @override
  String get pleaseTryAgain => 'Обидете се повторно.';

  @override
  String get tryAgain => 'Обиди се повторно';

  @override
  String get profileNotFound => 'Профилот не е пронајден';

  @override
  String get refresh => 'Освежи';

  @override
  String get noProfileDataFound =>
      'Сè уште нема пронајдено податоци за профилот на овој уред.';

  @override
  String couldNotResetData(String error) {
    return 'Податоците не може да се ресетираат: $error';
  }

  @override
  String get navHome => 'Почетна';

  @override
  String get navStats => 'Статистика';

  @override
  String get navJournal => 'Дневник';

  @override
  String get navBadges => 'Значки';

  @override
  String get navProfile => 'Профил';

  @override
  String featureComingSoon(String feature) {
    return '$feature наскоро ќе биде достапна.';
  }

  @override
  String get appWordmark => 'БЛАГОСОСТОЈБА';

  @override
  String get appTitle => 'Откажи го пиењето';

  @override
  String get splashSubtitle =>
      'Направете го првиот чекор кон\nживот без алкохол';

  @override
  String get preparingJourney => 'Го подготвуваме вашето\nпатување';

  @override
  String get taskMorningMeditation => 'Утринска медитација (10 мин.)';

  @override
  String get taskReadChapter =>
      'Прочитајте го 4-то поглавје од \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Вечерен дневник на благодарност';

  @override
  String get close => 'Затвори';

  @override
  String get youAreDoingGreat => 'Одлично ви оди!';

  @override
  String get shareMilestone => 'Сподели достигнување';

  @override
  String shareMilestoneMessage(int days) {
    return 'Денес сум на ден $days од моето патување кон опоравување! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Моето достигнување во опоравувањето';

  @override
  String get weeklyReportReadyTitle => 'Вашиот неделен извештај е подготвен';

  @override
  String get weeklyReportReadySubtitle =>
      'Допрете за да видите како ви помина неделата';

  @override
  String get howAreYouFeeling => 'Како се чувствувате?';

  @override
  String get moodTough => 'Тешко';

  @override
  String get moodOkay => 'Добро';

  @override
  String get moodGood => 'Одлично';

  @override
  String get moneySaved => 'Заштедени пари';

  @override
  String get caloriesSaved => 'Заштедени калории';

  @override
  String get healthScore => 'Здравствен резултат';

  @override
  String get drinksAvoided => 'Избегнати пијалаци';

  @override
  String get estimated => 'Проценето';

  @override
  String get aiGenerated => 'Генерирано од AI';

  @override
  String get daysCapsLabel => 'ДЕНОВИ';

  @override
  String get todaysMotivation => 'Денешна мотивација';

  @override
  String get defaultMotivationQuote =>
      'Успешно се придржувате до вашата одлука. Продолжете да ја следите позитивната промена.';

  @override
  String get talkToCoach => 'Разговарај со тренер';

  @override
  String get havingACraving => 'Имам желба за пиење';

  @override
  String get unlockWeeklyReportsTitle => 'Отклучи ги неделните извештаи';

  @override
  String get unlockWeeklyReportsMessage =>
      'Секоја недела гледајте ги деновите без алкохол, трендовите на расположението и персонализираните AI повратни информации. Надградете на Premium за да отклучите.';

  @override
  String get maybeLater => 'Можеби подоцна';

  @override
  String get upgrade => 'Надгради';

  @override
  String get weeklyReportTitle => 'Неделен извештај';

  @override
  String get weeklyReportsPremiumTitle =>
      'Неделните извештаи се Premium функција';

  @override
  String get weeklyReportsPremiumMessage =>
      'Секоја недела гледајте ги деновите без алкохол, трендовите на расположението, желбите и персонализираните AI повратни информации.';

  @override
  String get upgradeToPremium => 'Надгради на Premium';

  @override
  String get couldNotGenerateReport =>
      'Во моментов не може да се генерира вашиот извештај.';

  @override
  String get tryAgainLower => 'Обиди се повторно';

  @override
  String get statSoberDays => 'Денови без алкохол';

  @override
  String get statAvgMood => 'Просечно расположение';

  @override
  String get statCravings => 'Желби';

  @override
  String get statMoneySaved => 'Заштедени пари';

  @override
  String get coachFeedback => 'Повратни информации од тренерот';

  @override
  String get journalInsights => 'Увид од дневникот';

  @override
  String get next => 'Следно';

  @override
  String get question1Title => 'Која е вашата цел?';

  @override
  String get question1Subtitle => 'Изберете ја целта што ви е\nнајважна';

  @override
  String get goalQuitCompletely => 'Целосно откажување';

  @override
  String get goalReduceDrinking => 'Намалување на пиењето';

  @override
  String get goalTakeABreak => 'Направи пауза';

  @override
  String get goalBuildHealthierHabits => 'Изгради поздрави навики';

  @override
  String get question3Title => 'Кажете ни нешто за вашата\nрутина';

  @override
  String get drinksPerWeek => 'Пијалаци неделно';

  @override
  String get moneySpentPerWeek => 'Потрошени пари неделно';

  @override
  String get drinkingLevel => 'Ниво на пиење';

  @override
  String get triggersLabel => 'Предизвикувачи';

  @override
  String get levelSocial => 'Социјално';

  @override
  String get levelRegular => 'Редовно';

  @override
  String get levelHeavy => 'Интензивно';

  @override
  String get levelDependent => 'Зависно';

  @override
  String get triggerStress => 'Стрес';

  @override
  String get triggerLoneliness => 'Осаменост';

  @override
  String get triggerHabit => 'Навика';

  @override
  String get triggerSadness => 'Тага';

  @override
  String get triggerAnger => 'Лутина';

  @override
  String get triggerBoredom => 'Досада';

  @override
  String get triggerSocialPressure => 'Социјален притисок';

  @override
  String get triggerCelebration => 'Прослава';

  @override
  String get triggerSleepProblems => 'Проблеми со спиењето';

  @override
  String get triggerWorkPressure => 'Притисок од работа';

  @override
  String get question4Title => 'Зошто сакате да се промените?';

  @override
  String get question4Subtitle =>
      'Вашата причина ќе ви помогне да останете мотивирани.';

  @override
  String get reasonImproveHealth => 'Подобрување на моето здравје';

  @override
  String get reasonSaveMoney => 'Заштеда на пари';

  @override
  String get reasonFamily => 'Семејство';

  @override
  String get reasonBetterSleep => 'Подобар сон';

  @override
  String get reasonMentalClarity => 'Ментална јасност';

  @override
  String get reasonFitness => 'Физичка подготвеност';

  @override
  String get reasonSelfRespect => 'Самопочит';

  @override
  String get reasonCareer => 'Кариера';

  @override
  String get milestoneUnlockedLabel => 'ДОСТИГНУВАЊЕТО Е ОТКЛУЧЕНО';

  @override
  String incredibleNamePrefix(String name) {
    return 'Неверојатно, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'Заштедено $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'Избегнати $count';
  }

  @override
  String get shareMyMilestone => 'Сподели го моето достигнување';

  @override
  String get milestoneImageShareError =>
      'Сликата на достигнувањето не може да се создаде. Обидете се повторно.';

  @override
  String get dailyCheckInTitle => 'Дневна проверка';

  @override
  String get howAreYouFeelingToday => 'Како се чувствувате денес?';

  @override
  String get honestAnswerHelp =>
      'Вашиот искрен одговор ни помага подобро да ве поддржиме';

  @override
  String get didYouDrinkToday => 'Дали пиевте денес?';

  @override
  String get noLabel => 'Не';

  @override
  String get yesLabel => 'Да';

  @override
  String get cravingLevelNow => 'Колку е силна желбата за пиење во моментов?';

  @override
  String get anythingOnMind => 'Дали нешто ви се врти во мислите?';

  @override
  String get optionalLabel => '(опционално)';

  @override
  String get dailyNoteHint =>
      'Пишувајте за вашиот ден, предизвикувачите, победите...';

  @override
  String get alreadyCheckedInToday => 'Веќе направивте проверка денес';

  @override
  String get saveCheckIn => 'Зачувај проверка';

  @override
  String get checkInsHelpTrack =>
      'Проверките помагаат да го следите напредокот со текот на времето';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Веќе ја завршивте денешната проверка.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Прво одговорете на двете прашања погоре';

  @override
  String get checkInSaved => 'Проверката е зачувана';

  @override
  String get cravingNone => 'Нема';

  @override
  String get cravingLow => 'Ниска';

  @override
  String get cravingMedium => 'Средна';

  @override
  String get cravingStrong => 'Силна';

  @override
  String get moodBad => 'Лошо';

  @override
  String get moodLow => 'Ниско';

  @override
  String get moodGreat => 'Прекрасно';

  @override
  String get sosSupportTitle => 'SOS поддршка';

  @override
  String notAloneMessage(String name) {
    return 'Не сте сами, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Желбите поминуваат. Изберете нешто подолу што ќе ви помогне да го поминете овој момент.';

  @override
  String get breathingExercise => 'Вежба за дишење';

  @override
  String get breathingExerciseSubtitle => 'Водена техника 4-7-8, 2 минути';

  @override
  String get rideTheWave => 'Издржи го бранот';

  @override
  String get rideTheWaveSubtitle =>
      'Тајмер од 15 минути — желбите секогаш поминуваат';

  @override
  String get copingTips => 'Совети за справување';

  @override
  String get copingTipsSubtitle =>
      'Персонализирани стратегии за вашите предизвикувачи';

  @override
  String get talkToAiCoach => 'Разговарај со AI тренер';

  @override
  String get talkToAiCoachSubtitle =>
      'Разговарајте со вашиот придружник за опоравување';

  @override
  String get callSomeone => 'Јави се некому';

  @override
  String get callSomeoneSubtitle => 'Контактирајте лице на кое му верувате';

  @override
  String get contactsPermissionNeeded =>
      'Потребна е дозвола за контакти за да се јавите на контакт.';

  @override
  String get beatenCravingsPrefix => 'Ги победивте желбите ';

  @override
  String beatenCravingsCount(int count) {
    return '$count пати';
  }

  @override
  String get beatenCravingsSuffix =>
      ' досега. Можете да го направите тоа повторно.';

  @override
  String get tellUsAboutYourself => 'Кажете ни нешто за себе';

  @override
  String get detailsSubtitle =>
      'Овие информации ни помагаат да го персонализираме вашето патување кон опоравување и да обезбедиме точни увиди.';

  @override
  String get nameLabel => 'Име';

  @override
  String get nameHint => 'пр. Alex Rivers';

  @override
  String get ageLabel => 'Возраст';

  @override
  String get ageHint => 'пр. 32';

  @override
  String get sexAssignedAtBirth => 'Пол доделен при раѓање';

  @override
  String get sexFemale => 'Женски';

  @override
  String get sexMale => 'Машки';

  @override
  String get heightLabel => 'Висина';

  @override
  String get weightLabel => 'Тежина';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Достигнат е дневниот лимит';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Ги искористивте сите $limit бесплатни пораки за денес. Надградете на Premium за неограничен разговор со тренерот.';
  }

  @override
  String get coachConnectError =>
      'Во моментов не може да се поврзе. Обидете се повторно по некое време.';

  @override
  String get clearConversationTitle => 'Да се избрише разговорот?';

  @override
  String get clearConversationMessage =>
      'Историјата на разговорот со вашиот тренер ќе биде трајно отстранета.';

  @override
  String get clearLabel => 'Исчисти';

  @override
  String get recoveryCoachTitle => 'Тренер за опоравување';

  @override
  String get onlineLabel => 'Онлајн';

  @override
  String get clearConversationMenuItem => 'Избриши разговор';

  @override
  String chatGreeting(String name) {
    return 'Здраво, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Вие сте на ден $days од вашето патување. Тука сум секогаш кога сакате да разговарате.';
  }

  @override
  String get quickPromptsLabel => 'БРЗИ ПРАШАЊА';

  @override
  String get promptCravingLabel => 'Имам желба за пиење';

  @override
  String get promptCravingSubtitle => 'Смирете се брзо';

  @override
  String get promptMotivationLabel => 'Ми треба мотивација';

  @override
  String get promptMotivationSubtitle => 'Поттик кога е тешко';

  @override
  String get promptSocialLabel => 'Социјална ситуација';

  @override
  String get promptSocialSubtitle => 'Снајдете се на собир';

  @override
  String get promptSlippedLabel => 'Погрешив';

  @override
  String get promptSlippedSubtitle => 'Без осуда, само поддршка';

  @override
  String get typeMessageHint => 'Напишете порака...';

  @override
  String get editProfileTitle => 'Уреди профил';

  @override
  String couldNotSaveProfile(String error) {
    return 'Профилот не може да се зачува: $error';
  }

  @override
  String get heightCmLabel => 'Висина (cm)';

  @override
  String get weightKgLabel => 'Тежина (kg)';

  @override
  String get saveChangesLabel => 'Зачувај промени';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Напредни увиди и аналитика';

  @override
  String get featureUnlimitedJournal => 'Неограничени записи во дневникот';

  @override
  String get featureUnlimitedChat => 'Неограничен разговор со AI тренер';

  @override
  String get featureCommunityGroups => 'Ексклузивни групи на заедницата';

  @override
  String get featurePrioritySupport => 'Приоритетна експертска поддршка';

  @override
  String get featureThemePacks => 'Прилагодени пакети со теми';

  @override
  String get featureDataExport => 'Извоз на податоци';

  @override
  String get featureAdFree => 'Искуство без реклами';

  @override
  String get premiumMemberTitle => 'Вие сте Premium член';

  @override
  String get unlockFullRecoveryTitle =>
      'Отклучете го целосното\nискуство на опоравување';

  @override
  String get premiumMemberSubtitle =>
      'Ви благодариме што го поддржувате вашето патување кон опоравување — сите Premium функции подолу се отклучени.';

  @override
  String get premiumJoinSubtitle =>
      'Придружете се на заедница од илјадници луѓе кои\nго забрзуваат своето патување кон опоравување со нашите\nPremium алатки и персонализирана поддршка.';

  @override
  String get monthlyPlanLabel => 'Месечно';

  @override
  String get perMonthSuffix => '/мес.';

  @override
  String get cancelAnytimeLabel => 'Откажете во секое време';

  @override
  String get yearlyPlanLabel => 'Годишно';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Се наплаќа годишно $amount';
  }

  @override
  String get bestValueLabel => 'Најдобра вредност';

  @override
  String get alreadyPremiumLabel => 'Веќе сте Premium ✓';

  @override
  String get startPremiumLabel => 'Започни Premium';

  @override
  String get manageSubscriptionLabel =>
      'Управувајте или откажете ја претплатата од поставките за претплата на вашиот уред.';

  @override
  String get noCommitmentLabel => 'Без обврска. Откажете во секое време.';

  @override
  String get continueFreePlanLabel => 'Продолжи со бесплатниот план';

  @override
  String get backToHomeLabel => 'Назад кон почетната';

  @override
  String get cancelPremiumLabel => 'Откажи Premium';

  @override
  String get cancelPremiumTitle => 'Да се откаже Premium?';

  @override
  String get cancelPremiumMessage =>
      'Ќе го изгубите пристапот до неограничени записи во дневникот, неограничен разговор со тренерот, статистички увиди и неделни извештаи. Можете повторно да се претплатите во секое време.';

  @override
  String get keepPremiumLabel => 'Задржи Premium';

  @override
  String get nowPremiumMessage =>
      'Сега сте Premium! Уживајте во целосното искуство на опоравување.';

  @override
  String get premiumCancelledMessage =>
      'Premium е откажан. Се вративте на бесплатниот план.';

  @override
  String get termsOfUseLabel => 'Услови за користење';

  @override
  String get navHomeLabel => 'Почетна';

  @override
  String get navStatsLabel => 'Статистика';

  @override
  String get navJournalLabel => 'Дневник';

  @override
  String get navBadgesLabel => 'Значки';

  @override
  String get navProfileLabel => 'Профил';

  @override
  String get recoveryGoalsTitle => 'Цели за опоравување';

  @override
  String get drinksPerWeekLabel => 'Пијалаци неделно';

  @override
  String get quitReasonsLabel => 'Причини за откажување';

  @override
  String get quitReasonsHelperText => 'Одделете повеќе причини со запирка.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Целите за опоравување не може да се зачуваат: $error';
  }

  @override
  String get goalHint => 'пр. Целосна апстиненција';

  @override
  String get drinksPerWeekHint => 'пр. 12';

  @override
  String get quitReasonsHint => 'пр. Здравје, Семејство, Пари';

  @override
  String get todaysPrompt => 'Денешно прашање';

  @override
  String get defaultJournalPrompt => 'Што ви е на ум денес?';

  @override
  String get aiJournalInsights => 'AI увиди од дневникот';

  @override
  String get unlockJournalInsightsMessage =>
      'Отклучете неделни обрасци, трендови на расположението и персонализирани увиди од вашите записи во дневникот.';

  @override
  String get notEnoughJournalData =>
      'Сè уште нема доволно податоци — напишете неколку записи оваа недела и проверете повторно.';

  @override
  String get openEntry => 'Отвори';

  @override
  String get editEntry => 'Уреди';

  @override
  String get deleteEntry => 'Избриши';

  @override
  String get searchJournalEntries => 'Пребарај записи...';

  @override
  String get writeNewEntry => 'Напиши нов запис';

  @override
  String get recentEntries => 'Неодамнешни записи';

  @override
  String get noJournalEntriesYet =>
      'Сè уште нема записи во дневникот — напишете го вашиот прв осврт погоре.';

  @override
  String get noEntriesMatchFilters =>
      'Нема записи што одговараат на вашите филтри.';

  @override
  String get weeklyJournalLimitReached => 'Достигнат е неделниот лимит';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Ги искористивте сите $limit бесплатни записи во дневникот за оваа недела. Надградете на Premium за неограничени записи.';
  }

  @override
  String get newEntry => 'Нов запис';

  @override
  String get writeYourThoughts => 'Напишете ги вашите мисли';

  @override
  String get saveEntry => 'Зачувај запис';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Остануваат $remaining од $limit бесплатни записи оваа недела';
  }

  @override
  String get deleteEntryQuestion => 'Да се избрише записот?';

  @override
  String get deleteEntryConfirmation =>
      'Овој запис ќе биде трајно избришан. Ова не може да се врати назад.';

  @override
  String get journalEntryNotFound => 'Записот не е пронајден';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Овој запис во дневникот можеби е избришан.';

  @override
  String get goBack => 'Назад';

  @override
  String get journalEntryTitle => 'Запис во дневник';

  @override
  String get moodStruggling => 'Се мачам';

  @override
  String get moodUnwell => 'Не се чувствувам добро';

  @override
  String get moodNeutral => 'Неутрално';

  @override
  String get whatHappenedToday => 'Што се случи денес?';

  @override
  String get trigger => 'Предизвикувач';

  @override
  String get whatHelped => 'Што помогна';

  @override
  String get whatIllTryNextTime => 'Што ќе пробам следниот пат';

  @override
  String get journalPrivacyMessage =>
      'Вашиот осврт е приватен и е зачуван во вашиот дневник.';

  @override
  String get unlocked => 'Отклучено';

  @override
  String daysLeft(int count) {
    return 'Остануваат $count дена';
  }

  @override
  String daysCount(int count) {
    return '$count дена';
  }

  @override
  String get firstReflection => 'Прв\nосврт';

  @override
  String get oneJournalEntry => '1 запис во дневникот';

  @override
  String get openBook => 'Отвори книга';

  @override
  String get tenJournalEntries => '10 записи во дневникот';

  @override
  String get dedicatedWriter => 'Посветен\nписател';

  @override
  String get thirtyJournalEntries => '30 записи во дневникот';

  @override
  String get firstConversation => 'Прв\nразговор';

  @override
  String get oneAiCoachChat => '1 разговор со AI тренер';

  @override
  String get keepTalking => 'Продолжи да зборуваш';

  @override
  String get fiveConversations => '5 разговори';

  @override
  String get coachCompanion => 'Придружник\nтренер';

  @override
  String get twentyConversations => '20 разговори';

  @override
  String get checkInHabit => 'Навика за\nпроверка';

  @override
  String get sevenCheckIns => '7 проверки';

  @override
  String get consistencyPro => 'Професионалец за\nдоследност';

  @override
  String get thirtyCheckIns => '30 проверки';

  @override
  String get dedicatedJourney => 'Посветено\nпатување';

  @override
  String get hundredCheckIns => '100 проверки';

  @override
  String get goalGetter => 'Остварувач на цели';

  @override
  String get threeGoalsCompleted => '3 цели завршени';

  @override
  String get goalAchiever => 'Остварувач\nна цели';

  @override
  String get tenGoalsCompleted => '10 цели завршени';

  @override
  String get firstSavings => 'Прва\nзаштеда';

  @override
  String get fiveHundredSaved => 'Заштедени \$500';

  @override
  String get smartSaver => 'Паметен штедач';

  @override
  String get oneThousandSaved => 'Заштедени \$1,000';

  @override
  String get bigSaver => 'Голем штедач';

  @override
  String get fiveThousandSaved => 'Заштедени \$5,000';

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
      'Продолжете — вашето прво достигнување ве очекува!';

  @override
  String get badgesAndMilestones => 'Значки и достигнувања';

  @override
  String get yourMilestoneJourney => 'Вашето патување со достигнувања';

  @override
  String milestonesAchieved(int count) {
    return 'Остварени се $count достигнувања.\nДопрете за да видите';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Отклучивте $unlocked од вкупно $total достигнувања на вашето патување.';
  }

  @override
  String get remaining => 'Останато';

  @override
  String get complete => 'Завршено';

  @override
  String get nextMilestone => 'Следно достигнување';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% завршено';
  }

  @override
  String get sobrietyMilestones => 'Достигнувања на трезвеност';

  @override
  String get journeyBadges => 'Значки на патувањето';

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
  String get analyzingYourJourney => 'Го анализираме вашето патување...';

  @override
  String get aiCreatingSanctuary =>
      'Нашиот AI создава персонализиран простор за опоравување.';

  @override
  String get understandingHabits => 'Ги разбираме навиките...';

  @override
  String get calculatingBaseline =>
      'Ја пресметуваме вашата почетна состојба...';

  @override
  String get personalizingPlan => 'Го персонализираме вашиот план...';

  @override
  String get finalizingSanctuary =>
      'Го финализираме вашиот простор за опоравување...';

  @override
  String get creatingYourPlan => 'Го создаваме вашиот план...';

  @override
  String get personalizedPlanError =>
      'Не успеавме да го создадеме вашиот персонализиран план. Обидете се повторно.';

  @override
  String get retry => 'Обиди се повторно';

  @override
  String get breathInhale => 'ВДИШИ';

  @override
  String get breathHold => 'ЗАДРЖИ';

  @override
  String get breathExhale => 'ИЗДИШИ';

  @override
  String get breathDone => 'ГОТОВО';

  @override
  String get breathGreatJob => 'Одлична работа!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сесии денес',
      one: '$count сесија денес',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Заврши ја вежбата';

  @override
  String get done => 'Готово';

  @override
  String get noCopingTipsYet => 'Сè уште нема совети за справување';

  @override
  String get copingStrategiesWillAppear =>
      'Вашите персонализирани стратегии за справување ќе се појават тука откако ќе заврши создавањето на планот за опоравување.';

  @override
  String get strategiesTailoredToTriggers =>
      'Стратегии прилагодени на вашите предизвикувачи';

  @override
  String get cravingsPeakAndPass => 'Желбите достигнуваат врв\nи поминуваат';

  @override
  String get rideTheWaveDescription =>
      'Повеќето желби поминуваат во рок од 15 минути. Не мора да постапите според нив — само издржете го моментот со нас.';

  @override
  String get stayWithIt => 'издржи';

  @override
  String get youMadeIt => 'успеавте';

  @override
  String get readyWhenYouAre => 'подготвени сме кога сте вие';

  @override
  String get rideItAgain => 'Издржи повторно';

  @override
  String get start15MinuteTimer => 'Започни 15-минутен тајмер';

  @override
  String get rideTheWaveCompletedMessage =>
      'Го издржавте бранот. Тоа е вистинска сила. 💪';

  @override
  String get myProgress => 'Мојот напредок';

  @override
  String get weekLabel => 'Недела';

  @override
  String get monthLabel => 'Месец';

  @override
  String get allLabel => 'Сè';

  @override
  String get daysSoberStatLabel => 'Денови\nтрезен';

  @override
  String get savedStatLabel => 'Заштедено';

  @override
  String get avoidedStatLabel => 'Избегнато';

  @override
  String get moodTrends => 'Трендови на расположението';

  @override
  String get cravingsPattern => 'Образец на желбите';

  @override
  String get unlockLabel => 'Отклучи';

  @override
  String get unlockFullStats => 'Отклучи целосна статистика';

  @override
  String get premiumStatsMessage =>
      'Трендовите на расположението и обрасците на желбите се Premium функции. Надградете за да ја видите целосната статистика.';

  @override
  String get healthMilestonesWillAppear =>
      'Вашите здравствени достигнувања ќе се појават тука.';

  @override
  String get healthMilestones => 'Здравствени достигнувања';

  @override
  String dayNumber(int day) {
    return 'Ден $day';
  }

  @override
  String get soberLabel => 'Трезен';

  @override
  String get slipLabel => 'Прекршување';

  @override
  String get noDataLabel => 'Нема податоци';

  @override
  String get milestone24Hours => '24 часа';

  @override
  String get milestoneOneWeek => 'Една недела';

  @override
  String get milestoneOneMonth => 'Еден месец';

  @override
  String get milestoneThreeMonths => 'Три месеци';

  @override
  String get milestoneSixMonths => 'Шест месеци';

  @override
  String get milestoneOneYear => 'Една година';

  @override
  String milestoneDayCount(int day) {
    return 'Достигнување за ден $day';
  }

  @override
  String get maybeLaterLabel => 'Можеби подоцна';

  @override
  String get cancelLabel => 'Откажи';
}
