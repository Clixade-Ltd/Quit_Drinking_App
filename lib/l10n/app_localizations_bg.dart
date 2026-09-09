// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get skip => 'Пропусни';

  @override
  String get continueButton => 'Продължи';

  @override
  String get getStarted => 'Започни';

  @override
  String get onboardingTitle1 => 'Вземете контрол над живота си';

  @override
  String get onboardingSubtitle1 =>
      'Проследявайте пътя си, празнувайте всяко постижение и ставайте по-здрави ден след ден.';

  @override
  String get onboardingTitle2 => 'Вашият AI спътник във възстановяването';

  @override
  String get onboardingSubtitle2 =>
      'Получавайте персонализирани съвети, здравословни навици, напомняния за мотивация и доклади за напредъка.';

  @override
  String get goodMorning => 'Добро утро';

  @override
  String get goodAfternoon => 'Добър ден';

  @override
  String get goodEvening => 'Добър вечер';

  @override
  String get goodNight => 'Лека нощ';

  @override
  String get embracingClarity => 'Постигане на яснота, ден по ден.';

  @override
  String get streakLabel => 'ПОЛЕДОВАТЕЛНОСТ';

  @override
  String get goalLabel => 'Цел';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дни',
      one: '$count ден',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Премиум план';

  @override
  String get premiumPlanSubtitle =>
      'Отключете пълното изживяване на възстановяването';

  @override
  String get accountAndSupport => 'ПРОФИЛ И ПОДДРЪЖКА';

  @override
  String get privacyPolicy => 'Политика за поверителност';

  @override
  String get privacyPolicySubtitle =>
      'Управление на споделянето на данни и сигурността';

  @override
  String get termsOfService => 'Условия за ползване';

  @override
  String get termsOfServiceSubtitle =>
      'Често задавани въпроси, контакти и ресурси';

  @override
  String get shareApp => 'Сподели приложението';

  @override
  String get shareAppSubtitle => 'Споделете приложението с приятели';

  @override
  String get resetData => 'Нулиране на данните';

  @override
  String get resetDataSubtitle =>
      'Изтриване на всичко, запазено на това устройство';

  @override
  String get resetAllDataTitle => 'Нулиране на всички данни?';

  @override
  String get resetAllDataMessage =>
      'Това изтрива всичко, запазено на това устройство — профил, записи в дневника и напредък — и не може да бъде отменено.';

  @override
  String get cancel => 'Отказ';

  @override
  String get reset => 'Нулиране';

  @override
  String get chooseFromGallery => 'Избери от галерията';

  @override
  String get takePhoto => 'Заснеми снимка';

  @override
  String get removePhoto => 'Премахни снимката';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Снимката не можа да се актуализира: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Снимката не можа да се премахне: $error';
  }

  @override
  String get photoTooLarge =>
      'Тази снимка е твърде голяма дори след компресия — моля, опитайте с друга.';

  @override
  String get unableToLoadProfile => 'Профилът не можа да се зареди';

  @override
  String get pleaseTryAgain => 'Моля, опитайте отново.';

  @override
  String get tryAgain => 'Опитай отново';

  @override
  String get profileNotFound => 'Профилът не е намерен';

  @override
  String get refresh => 'Опресни';

  @override
  String get noProfileDataFound =>
      'Все още няма намерени данни за профила на това устройство.';

  @override
  String couldNotResetData(String error) {
    return 'Данните не можаха да се нулират: $error';
  }

  @override
  String get navHome => 'Начало';

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
    return 'Функцията $feature ще бъде налична скоро.';
  }

  @override
  String get appWordmark => 'УЕЛНЕС';

  @override
  String get appTitle => 'Спрете да пиете';

  @override
  String get splashSubtitle =>
      'Направете първата стъпка към\nживот без алкохол';

  @override
  String get preparingJourney => 'Подготовка на вашето\nпътуване';

  @override
  String get taskMorningMeditation => 'Сутрешна медитация (10 мин)';

  @override
  String get taskReadChapter => 'Прочетете Глава 4 от \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Вечерен дневник на благодарността';

  @override
  String get close => 'Затвори';

  @override
  String get youAreDoingGreat => 'Справяте се страхотно!';

  @override
  String get shareMilestone => 'Сподели постижение';

  @override
  String shareMilestoneMessage(int days) {
    return 'Аз съм на ден $days от моето възстановяване! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Моето постижение във възстановяването';

  @override
  String get weeklyReportReadyTitle => 'Седмичният ви доклад е готов';

  @override
  String get weeklyReportReadySubtitle =>
      'Докоснете, за да видите как мина седмицата ви';

  @override
  String get howAreYouFeeling => 'Как се чувствате?';

  @override
  String get moodTough => 'Трудно';

  @override
  String get moodOkay => 'Добре';

  @override
  String get moodGood => 'Много добре';

  @override
  String get moneySaved => 'Спестени пари';

  @override
  String get caloriesSaved => 'Спестени калории';

  @override
  String get healthScore => 'Здравен индекс';

  @override
  String get drinksAvoided => 'Избегнати напитки';

  @override
  String get estimated => 'Приблизително';

  @override
  String get aiGenerated => 'Генерирано от AI';

  @override
  String get daysCapsLabel => 'ДНИ';

  @override
  String get todaysMotivation => 'Днешната мотивация';

  @override
  String get defaultMotivationQuote =>
      'Успешно спазвате обещанието си. Продължавайте да се движите по вълната на позитивната промяна.';

  @override
  String get talkToCoach => 'Говори с треньор';

  @override
  String get havingACraving => 'Имам силно желание';

  @override
  String get unlockWeeklyReportsTitle => 'Отключи седмични доклади';

  @override
  String get unlockWeeklyReportsMessage =>
      'Вижте трезвостта си, тенденциите в настроението и AI обратната връзка всяка седмица. Преминете към Премиум.';

  @override
  String get maybeLater => 'Може би по-късно';

  @override
  String get upgrade => 'Надгради';

  @override
  String get weeklyReportTitle => 'Седмичен доклад';

  @override
  String get weeklyReportsPremiumTitle =>
      'Седмичните доклади са Премиум функция';

  @override
  String get weeklyReportsPremiumMessage =>
      'Проследявайте дни без алкохол, тенденции в настроението, апетита и персонализирани AI съвети.';

  @override
  String get upgradeToPremium => 'Премини към Премиум';

  @override
  String get couldNotGenerateReport =>
      'Докладът не можа да се генерира в момента.';

  @override
  String get tryAgainLower => 'Опитай отново';

  @override
  String get statSoberDays => 'Трезви дни';

  @override
  String get statAvgMood => 'Ср. настроение';

  @override
  String get statCravings => 'Силни желания';

  @override
  String get statMoneySaved => 'Спестени пари';

  @override
  String get coachFeedback => 'Съвети от треньора';

  @override
  String get journalInsights => 'Анализ на дневника';

  @override
  String get next => 'Напред';

  @override
  String get question1Title => 'Каква е вашата цел';

  @override
  String get question1Subtitle => 'Изберете целта, която е най-важна\nза вас';

  @override
  String get goalQuitCompletely => 'Пълно спиране';

  @override
  String get goalReduceDrinking => 'Намаляване на пиенето';

  @override
  String get goalTakeABreak => 'Вземане на почивка';

  @override
  String get goalBuildHealthierHabits => 'Изграждане на по-здравословни навици';

  @override
  String get question3Title => 'Разкажете ни за вашия\nрежим';

  @override
  String get drinksPerWeek => 'Питиета на седмица';

  @override
  String get moneySpentPerWeek => 'Похарчени пари на седмица';

  @override
  String get drinkingLevel => 'Ниво на консумация';

  @override
  String get triggersLabel => 'Тригери';

  @override
  String get levelSocial => 'Социално';

  @override
  String get levelRegular => 'Редовно';

  @override
  String get levelHeavy => 'Тежко';

  @override
  String get levelDependent => 'Зависимо';

  @override
  String get triggerStress => 'Стрес';

  @override
  String get triggerLoneliness => 'Самота';

  @override
  String get triggerHabit => 'Навик';

  @override
  String get triggerSadness => 'Тъга';

  @override
  String get triggerAnger => 'Гняв';

  @override
  String get triggerBoredom => 'Скука';

  @override
  String get triggerSocialPressure => 'Социален натиск';

  @override
  String get triggerCelebration => 'Празнуване';

  @override
  String get triggerSleepProblems => 'Проблеми със съня';

  @override
  String get triggerWorkPressure => 'Стрес на работа';

  @override
  String get question4Title => 'Защо искате да се промените?';

  @override
  String get question4Subtitle =>
      'Вашата причина ще ви помага да се мотивирате.';

  @override
  String get reasonImproveHealth => 'Подобряване на здравето';

  @override
  String get reasonSaveMoney => 'Спестяване на пари';

  @override
  String get reasonFamily => 'Семейство';

  @override
  String get reasonBetterSleep => 'По-добър сън';

  @override
  String get reasonMentalClarity => 'Яснота на ума';

  @override
  String get reasonFitness => 'Физическа форма';

  @override
  String get reasonSelfRespect => 'Самоуважение';

  @override
  String get reasonCareer => 'Кариера';

  @override
  String get milestoneUnlockedLabel => 'ПОСТИЖЕНИЕТО Е ОТКЛЮЧЕНО';

  @override
  String incredibleNamePrefix(String name) {
    return 'Невероятно, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount спестени';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count избегнати';
  }

  @override
  String get shareMyMilestone => 'Сподели моето постижение';

  @override
  String get milestoneImageShareError =>
      'Изображението на постижението не можа да се създаде. Опитайте отново.';

  @override
  String get dailyCheckInTitle => 'Ежедневен отчет';

  @override
  String get howAreYouFeelingToday => 'Как се чувствате днес?';

  @override
  String get honestAnswerHelp =>
      'Вашият честен отговор ни помага да ви подкрепим по-добре';

  @override
  String get didYouDrinkToday => 'Пихте ли днес?';

  @override
  String get noLabel => 'Не';

  @override
  String get yesLabel => 'Да';

  @override
  String get cravingLevelNow => 'Ниво на желание в момента?';

  @override
  String get anythingOnMind => 'Имате ли нещо в ума си?';

  @override
  String get optionalLabel => '(по избор)';

  @override
  String get dailyNoteHint => 'Пишете за деня си, тригерите, победите...';

  @override
  String get alreadyCheckedInToday => 'Вече сте се отчели днес';

  @override
  String get saveCheckIn => 'Запази отчета';

  @override
  String get checkInsHelpTrack =>
      'Отчетите помагат за проследяване на напредъка във времето';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Вече сте завършили днешния си отчет.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Моля, първо отговорете и на двата въпроса по-горе';

  @override
  String get checkInSaved => 'Отчетът е запазен';

  @override
  String get cravingNone => 'Нямам';

  @override
  String get cravingLow => 'Ниско';

  @override
  String get cravingMedium => 'Средно';

  @override
  String get cravingStrong => 'Силно';

  @override
  String get moodBad => 'Зле';

  @override
  String get moodLow => 'Ниско';

  @override
  String get moodGreat => 'Страхотно';

  @override
  String get sosSupportTitle => 'SOS Подкрепа';

  @override
  String notAloneMessage(String name) {
    return 'Не сте сами, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Желанията преминават. Изберете нещо отдолу, което да ви помогне в този момент.';

  @override
  String get breathingExercise => 'Дихателно упражнение';

  @override
  String get breathingExerciseSubtitle =>
      'Направлявана техника 4-7-8, 2 минути';

  @override
  String get rideTheWave => 'Преминаване през вълната';

  @override
  String get rideTheWaveSubtitle =>
      '15-минутен таймер — силното желание винаги отминава';

  @override
  String get copingTips => 'Съвети за справяне';

  @override
  String get copingTipsSubtitle =>
      'Персонализирани стратегии за вашите тригери';

  @override
  String get talkToAiCoach => 'Говори с AI треньор';

  @override
  String get talkToAiCoachSubtitle =>
      'Чат с вашия спътник във възстановяването';

  @override
  String get callSomeone => 'Обади се на някого';

  @override
  String get callSomeoneSubtitle => 'Свържете се с доверен контакт';

  @override
  String get contactsPermissionNeeded =>
      'Разрешението за контакти е необходимо за обаждане.';

  @override
  String get beatenCravingsPrefix => 'Преодолели сте силното желание ';

  @override
  String beatenCravingsCount(int count) {
    return '$count пъти';
  }

  @override
  String get beatenCravingsSuffix => ' преди. Можете да го направите отново.';

  @override
  String get tellUsAboutYourself => 'Разкажете ни за себе си';

  @override
  String get detailsSubtitle =>
      'Тази информация ни помага да персонализираме вашето пътуване и да ви предоставим точни данни.';

  @override
  String get nameLabel => 'Име';

  @override
  String get nameHint => 'напр. Алекс Ривърс';

  @override
  String get ageLabel => 'Възраст';

  @override
  String get ageHint => 'напр. 32';

  @override
  String get sexAssignedAtBirth => 'Пол, определен при раждането';

  @override
  String get sexFemale => 'Женски';

  @override
  String get sexMale => 'Мъжки';

  @override
  String get heightLabel => 'Височина';

  @override
  String get weightLabel => 'Тегло';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Дневният лимит е достигнат';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Използвахте всички $limit безплатни съобщения за днес. Преминете към Премиум за неограничен чат.';
  }

  @override
  String get coachConnectError =>
      'Невъзможно свързване в момента. Моля, опитайте след малко.';

  @override
  String get clearConversationTitle => 'Изчистване на разговора?';

  @override
  String get clearConversationMessage =>
      'Това за постоянно ще премахне историята на чата с треньора.';

  @override
  String get clearLabel => 'Изчисти';

  @override
  String get recoveryCoachTitle => 'Треньор за възстановяване';

  @override
  String get onlineLabel => 'На линия';

  @override
  String get clearConversationMenuItem => 'Изчисти разговора';

  @override
  String chatGreeting(String name) {
    return 'Здравей, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Вие сте на ден $days от вашето пътуване. Тук съм, когато искате да разговаряме.';
  }

  @override
  String get quickPromptsLabel => 'БЪРЗИ ВЪПРОСИ';

  @override
  String get promptCravingLabel => 'Имам силно желание';

  @override
  String get promptCravingSubtitle => 'Успокой се бързо';

  @override
  String get promptMotivationLabel => 'Трябва ми мотивация';

  @override
  String get promptMotivationSubtitle => 'Подкрепа, когато е трудно';

  @override
  String get promptSocialLabel => 'Социална ситуация';

  @override
  String get promptSocialSubtitle => 'Справяне по време на събирания';

  @override
  String get promptSlippedLabel => 'Подхлъзнах се';

  @override
  String get promptSlippedSubtitle => 'Без осъждане, само подкрепа';

  @override
  String get typeMessageHint => 'Напишете съобщение...';

  @override
  String get editProfileTitle => 'Редактиране на профила';

  @override
  String couldNotSaveProfile(String error) {
    return 'Профилът не можа да се запази: $error';
  }

  @override
  String get heightCmLabel => 'Височина (см)';

  @override
  String get weightKgLabel => 'Тегло (кг)';

  @override
  String get saveChangesLabel => 'Запази промените';

  @override
  String get premiumBadgeLabel => 'ПРЕМИУМ';

  @override
  String get featureAdvancedInsights => 'Задълбочени анализи и статистики';

  @override
  String get featureUnlimitedJournal => 'Неограничени записи в дневника';

  @override
  String get featureUnlimitedChat => 'Неограничен чат с AI треньор';

  @override
  String get featureCommunityGroups => 'Ексклузивни общностни групи';

  @override
  String get featurePrioritySupport => 'Приоритетна поддръжка от експерти';

  @override
  String get featureThemePacks => 'Персонализирани теми';

  @override
  String get featureDataExport => 'Експорт на данни';

  @override
  String get featureAdFree => 'Изживяване без реклами';

  @override
  String get premiumMemberTitle => 'Вие сте Премиум член';

  @override
  String get unlockFullRecoveryTitle => 'Отключете пълното си\nвъзстановяване';

  @override
  String get premiumMemberSubtitle =>
      'Благодарим ви, че подкрепяте пътя си — всяка премиум функция по-долу е отключена.';

  @override
  String get premiumJoinSubtitle =>
      'Присъединете се към хиляди хора, които\nускоряват оздравителния си процес с нашите\nпремиум инструменти и подкрепа.';

  @override
  String get monthlyPlanLabel => 'Месечно';

  @override
  String get perMonthSuffix => '/месец';

  @override
  String get cancelAnytimeLabel => 'Отказ по всяко време';

  @override
  String get yearlyPlanLabel => 'Годишно';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Таксува се годишно по $amount';
  }

  @override
  String get bestValueLabel => 'Най-добра стойност';

  @override
  String get alreadyPremiumLabel => 'Вие сте Премиум ✓';

  @override
  String get startPremiumLabel => 'Започни Премиум';

  @override
  String get manageSubscriptionLabel =>
      'Управлявайте или откажете от настройките за абонамент на устройството си.';

  @override
  String get noCommitmentLabel => 'Без обвързване. Отказ по всяко време.';

  @override
  String get continueFreePlanLabel => 'Продължи с безплатния план';

  @override
  String get backToHomeLabel => 'Обратно към Начало';

  @override
  String get cancelPremiumLabel => 'Откажи Премиум';

  @override
  String get cancelPremiumTitle => 'Отказване на Премиум?';

  @override
  String get cancelPremiumMessage =>
      'Ще загубите достъп до неограничени записи, неограничен чат, подробни статистики и седмични доклади. Можете да се абонирате отново по всяко време.';

  @override
  String get keepPremiumLabel => 'Запази Премиум';

  @override
  String get nowPremiumMessage =>
      'Вече сте Премиум! Насладете се на пълното изживяване.';

  @override
  String get premiumCancelledMessage =>
      'Премиум абонаментът е отменен. Отново сте на безплатен план.';

  @override
  String get termsOfUseLabel => 'Условия за ползване';

  @override
  String get navHomeLabel => 'Начало';

  @override
  String get navStatsLabel => 'Статистика';

  @override
  String get navJournalLabel => 'Дневник';

  @override
  String get navBadgesLabel => 'Значки';

  @override
  String get navProfileLabel => 'Профил';

  @override
  String get recoveryGoalsTitle => 'Цели на възстановяването';

  @override
  String get drinksPerWeekLabel => 'Питиета на седмица';

  @override
  String get quitReasonsLabel => 'Причини за спиране';

  @override
  String get quitReasonsHelperText => 'Разделете няколко причини със запетая.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Целите не можаха да се запазят: $error';
  }

  @override
  String get goalHint => 'напр. Пълно въздържание';

  @override
  String get drinksPerWeekHint => 'напр. 12';

  @override
  String get quitReasonsHint => 'напр. Здраве, Семейство, Пари';

  @override
  String get todaysPrompt => 'Днешната тема';

  @override
  String get defaultJournalPrompt => 'Какво ви минава през ума днес?';

  @override
  String get aiJournalInsights => 'AI анализ на дневника';

  @override
  String get unlockJournalInsightsMessage =>
      'Отключете седмични модели, тенденции в настроението и персонализирани изводи от вашите записи.';

  @override
  String get notEnoughJournalData =>
      'Все още няма достатъчно данни — напишете няколко записа тази седмица и проверете отново.';

  @override
  String get openEntry => 'Отвори';

  @override
  String get editEntry => 'Редактирай';

  @override
  String get deleteEntry => 'Изтрий';

  @override
  String get searchJournalEntries => 'Търсене в записите...';

  @override
  String get writeNewEntry => 'Напиши нов запись';

  @override
  String get recentEntries => 'Скорошни записи';

  @override
  String get noJournalEntriesYet =>
      'Все още няма записи в дневника — напишете първите си мисли по-горе.';

  @override
  String get noEntriesMatchFilters =>
      'Няма записи, съответстващи на вашите филтри.';

  @override
  String get weeklyJournalLimitReached => 'Седмичният лимит е достигнат';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Използвахте всички $limit безплатни записа в дневника за тази седмица. Преминете към Премиум за неограничен брой записи.';
  }

  @override
  String get newEntry => 'Нов запис';

  @override
  String get writeYourThoughts => 'Запишете вашите мисли';

  @override
  String get saveEntry => 'Запази записа';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Остават $remaining от $limit безплатни записа тази седмица';
  }

  @override
  String get deleteEntryQuestion => 'Изтриване на записа?';

  @override
  String get deleteEntryConfirmation =>
      'Този запис ще бъде постоянно изтрит. Това не може да бъде отменено.';

  @override
  String get journalEntryNotFound => 'Записът не е намерен';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Този запис в дневника може да е бил изтрит.';

  @override
  String get goBack => 'Върни се';

  @override
  String get journalEntryTitle => 'Запис в дневника';

  @override
  String get moodStruggling => 'Затруднен';

  @override
  String get moodUnwell => 'Неразположен';

  @override
  String get moodNeutral => 'Неутрален';

  @override
  String get whatHappenedToday => 'Какво се случи днес?';

  @override
  String get trigger => 'Тригер';

  @override
  String get whatHelped => 'Какво помогна';

  @override
  String get whatIllTryNextTime => 'Какво ще опитам следващия път';

  @override
  String get journalPrivacyMessage =>
      'Вашите размисли са лични и се запазват във вашия дневник.';

  @override
  String get unlocked => 'Отключено';

  @override
  String daysLeft(int count) {
    return 'Остават $count дни';
  }

  @override
  String daysCount(int count) {
    return '$count дни';
  }

  @override
  String get firstReflection => 'Първи\nразмисли';

  @override
  String get oneJournalEntry => '1 запис в дневника';

  @override
  String get openBook => 'Отворена книга';

  @override
  String get tenJournalEntries => '10 записа в дневника';

  @override
  String get dedicatedWriter => 'Отделен\nписател';

  @override
  String get thirtyJournalEntries => '30 записа в дневника';

  @override
  String get firstConversation => 'Първи\nразговор';

  @override
  String get oneAiCoachChat => '1 чат с AI треньор';

  @override
  String get keepTalking => 'Продължавай да говориш';

  @override
  String get fiveConversations => '5 разговора';

  @override
  String get coachCompanion => 'Треньор и\nспътник';

  @override
  String get twentyConversations => '20 разговора';

  @override
  String get checkInHabit => 'Навик за\nотчитане';

  @override
  String get sevenCheckIns => '7 отчета';

  @override
  String get consistencyPro => 'Профи по\nпоследователност';

  @override
  String get thirtyCheckIns => '30 отчета';

  @override
  String get dedicatedJourney => 'Отдадено\nпътуване';

  @override
  String get hundredCheckIns => '100 отчета';

  @override
  String get goalGetter => 'Постигащ цели';

  @override
  String get threeGoalsCompleted => '3 изпълнени цели';

  @override
  String get goalAchiever => 'Изпълнител\nна цели';

  @override
  String get tenGoalsCompleted => '10 изпълнени цели';

  @override
  String get firstSavings => 'Първи\nспестявания';

  @override
  String get fiveHundredSaved => '\$500 спестени';

  @override
  String get smartSaver => 'Умен спестовник';

  @override
  String get oneThousandSaved => '\$1,000 спестени';

  @override
  String get bigSaver => 'Голям спестовник';

  @override
  String get fiveThousandSaved => '\$5,000 спестени';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current от \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current от $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Продължавайте — вашето първо постижение ви очаква!';

  @override
  String get badgesAndMilestones => 'Значки и постижения';

  @override
  String get yourMilestoneJourney => 'Вашето пътуване по постижения';

  @override
  String milestonesAchieved(int count) {
    return '$count постижения намерени.\nНатиснете, за да видите';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Отключили сте $unlocked от $total постижения по вашия път.';
  }

  @override
  String get remaining => 'Оставащи';

  @override
  String get complete => 'Завършено';

  @override
  String get nextMilestone => 'Следващо постижение';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% постигнати';
  }

  @override
  String get sobrietyMilestones => 'Постижения в трезвостта';

  @override
  String get journeyBadges => 'Значки от пътуването';

  @override
  String get bronze => 'БРОНЗ';

  @override
  String get silver => 'СРЕБРО';

  @override
  String get gold => 'ЗЛАТО';

  @override
  String get platinum => 'ПЛАТИНА';

  @override
  String get diamond => 'ДИАМАНТ';

  @override
  String get analyzingYourJourney => 'Анализиране на вашето пътуване...';

  @override
  String get aiCreatingSanctuary =>
      'Нашият AI създава вашето лично пространство.';

  @override
  String get understandingHabits => 'Разбиране на навиците...';

  @override
  String get calculatingBaseline => 'Изчисляване на началната точка...';

  @override
  String get personalizingPlan => 'Персонализиране на вашия план...';

  @override
  String get finalizingSanctuary => 'Финализиране на личното пространство...';

  @override
  String get creatingYourPlan => 'Създаване на вашия план...';

  @override
  String get personalizedPlanError =>
      'Не можахме да създадем вашия персонализиран план. Моля, опитайте отново.';

  @override
  String get retry => 'Опитай отново';

  @override
  String get breathInhale => 'ВДИШАЙТЕ';

  @override
  String get breathHold => 'ЗАДРЪЖТЕ';

  @override
  String get breathExhale => 'ИЗДИШАЙТЕ';

  @override
  String get breathDone => 'ГОТОВО';

  @override
  String get breathGreatJob => 'Страхотна работа!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сесии днес',
      one: '$count сесия днес',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Край на упражнението';

  @override
  String get done => 'Готово';

  @override
  String get noCopingTipsYet => 'Все още няма съвети за справяне';

  @override
  String get copingStrategiesWillAppear =>
      'Вашите персонализирани стратегии за справяне ще се появят тук, след като планът ви приключи да се генерира.';

  @override
  String get strategiesTailoredToTriggers =>
      'Стратегии, адаптирани спрямо вашите тригери';

  @override
  String get cravingsPeakAndPass => 'Силните желания достигат пик\nи отминават';

  @override
  String get rideTheWaveDescription =>
      'Повечето силни желания преминават в рамките на 15 минути. Не е нужно да действате според тях — просто преминете през това с нас.';

  @override
  String get stayWithIt => 'Останете с това';

  @override
  String get youMadeIt => 'Успяхте';

  @override
  String get readyWhenYouAre => 'Готови сме, когато и вие';

  @override
  String get rideItAgain => 'Премини отново';

  @override
  String get start15MinuteTimer => 'Стартирай 15-минутен таймер';

  @override
  String get rideTheWaveCompletedMessage =>
      'Преминахте през вълната. Това е истинска сила. 💪';

  @override
  String get myProgress => 'Моят напредък';

  @override
  String get weekLabel => 'Седмица';

  @override
  String get monthLabel => 'Месец';

  @override
  String get allLabel => 'Всички';

  @override
  String get daysSoberStatLabel => 'Дни\nтрезв';

  @override
  String get savedStatLabel => 'Спестени';

  @override
  String get avoidedStatLabel => 'Избегнати';

  @override
  String get moodTrends => 'Тенденции в настроението';

  @override
  String get cravingsPattern => 'Модели на желанията';

  @override
  String get unlockLabel => 'Отключи';

  @override
  String get unlockFullStats => 'Отключи пълните статистики';

  @override
  String get premiumStatsMessage =>
      'Тенденциите в настроението и моделите на силното желание са Премиум функции. Надградете, за да видите всички статистики.';

  @override
  String get healthMilestonesWillAppear =>
      'Вашите здравни постижения ще се появят тук.';

  @override
  String get healthMilestones => 'Здравни постижения';

  @override
  String dayNumber(int day) {
    return 'Ден $day';
  }

  @override
  String get soberLabel => 'Трезв';

  @override
  String get slipLabel => 'Подхлъзване';

  @override
  String get noDataLabel => 'Няма данни';

  @override
  String get milestone24Hours => '24 часа';

  @override
  String get milestoneOneWeek => 'Една седмица';

  @override
  String get milestoneOneMonth => 'Един месец';

  @override
  String get milestoneThreeMonths => 'Три месеца';

  @override
  String get milestoneSixMonths => 'Шест месеца';

  @override
  String get milestoneOneYear => 'Една година';

  @override
  String milestoneDayCount(int day) {
    return 'Постижение за Ден $day';
  }

  @override
  String get maybeLaterLabel => 'Може би по-късно';

  @override
  String get cancelLabel => 'Отказ';
}
