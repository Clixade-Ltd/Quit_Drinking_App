// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get skip => 'Пропустить';

  @override
  String get continueButton => 'Продолжить';

  @override
  String get getStarted => 'Начать';

  @override
  String get onboardingTitle1 => 'Возьмите жизнь под свой контроль';

  @override
  String get onboardingSubtitle1 =>
      'Отслеживайте свой путь, отмечайте каждое достижение и становитесь здоровее день за днём.';

  @override
  String get onboardingTitle2 => 'Ваш AI-компаньон по восстановлению';

  @override
  String get onboardingSubtitle2 =>
      'Получайте персональные рекомендации, полезные привычки, напоминания для мотивации и отчёты о прогрессе, созданные специально для вашего пути.';

  @override
  String get goodMorning => 'Доброе утро';

  @override
  String get goodAfternoon => 'Добрый день';

  @override
  String get goodEvening => 'Добрый вечер';

  @override
  String get goodNight => 'Спокойной ночи';

  @override
  String get embracingClarity => 'К ясности — шаг за шагом, день за днём.';

  @override
  String get streakLabel => 'СЕРИЯ';

  @override
  String get goalLabel => 'Цель';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'План Premium';

  @override
  String get premiumPlanSubtitle => 'Откройте полный опыт восстановления';

  @override
  String get accountAndSupport => 'АККАУНТ И ПОДДЕРЖКА';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get privacyPolicySubtitle =>
      'Управление обменом данными и безопасностью аккаунта';

  @override
  String get termsOfService => 'Условия использования';

  @override
  String get termsOfServiceSubtitle =>
      'Часто задаваемые вопросы, связь с нами и полезные ресурсы';

  @override
  String get shareApp => 'Поделиться приложением';

  @override
  String get shareAppSubtitle => 'Поделитесь приложением с друзьями';

  @override
  String get resetData => 'Сбросить данные';

  @override
  String get resetDataSubtitle => 'Удалить всё сохранённое на этом устройстве';

  @override
  String get resetAllDataTitle => 'Сбросить все данные?';

  @override
  String get resetAllDataMessage =>
      'Это удалит всё сохранённое на этом устройстве — профиль, записи дневника и прогресс — и действие нельзя будет отменить.';

  @override
  String get cancel => 'Отмена';

  @override
  String get reset => 'Сбросить';

  @override
  String get chooseFromGallery => 'Выбрать из галереи';

  @override
  String get takePhoto => 'Сделать фото';

  @override
  String get removePhoto => 'Удалить фото';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Не удалось обновить фото: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Не удалось удалить фото: $error';
  }

  @override
  String get photoTooLarge =>
      'Это фото слишком большое даже после сжатия — попробуйте другое.';

  @override
  String get unableToLoadProfile => 'Не удалось загрузить ваш профиль';

  @override
  String get pleaseTryAgain => 'Пожалуйста, попробуйте ещё раз.';

  @override
  String get tryAgain => 'Повторить';

  @override
  String get profileNotFound => 'Профиль не найден';

  @override
  String get refresh => 'Обновить';

  @override
  String get noProfileDataFound =>
      'На этом устройстве пока нет данных профиля.';

  @override
  String couldNotResetData(String error) {
    return 'Не удалось сбросить данные: $error';
  }

  @override
  String get navHome => 'Главная';

  @override
  String get navStats => 'Статистика';

  @override
  String get navJournal => 'Дневник';

  @override
  String get navBadges => 'Значки';

  @override
  String get navProfile => 'Профиль';

  @override
  String featureComingSoon(String feature) {
    return '$feature скоро будет доступна.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Бросить пить';

  @override
  String get splashSubtitle => 'Сделайте первый шаг к жизни\nбез алкоголя';

  @override
  String get preparingJourney => 'Подготовка вашего\nпути';

  @override
  String get taskMorningMeditation => 'Утренняя медитация (10 мин)';

  @override
  String get taskReadChapter => 'Прочитать главу 4 из «The Sober Diaries»';

  @override
  String get taskEveningJournal => 'Вечерний дневник благодарности';

  @override
  String get close => 'Закрыть';

  @override
  String get youAreDoingGreat => 'Вы отлично справляетесь!';

  @override
  String get shareMilestone => 'Поделиться достижением';

  @override
  String shareMilestoneMessage(int days) {
    return 'Сегодня $days-й день моего пути к восстановлению! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Моё достижение на пути к восстановлению';

  @override
  String get weeklyReportReadyTitle => 'Ваш недельный отчёт готов';

  @override
  String get weeklyReportReadySubtitle =>
      'Нажмите, чтобы узнать, как прошла ваша неделя';

  @override
  String get howAreYouFeeling => 'Как вы себя чувствуете?';

  @override
  String get moodTough => 'Тяжело';

  @override
  String get moodOkay => 'Нормально';

  @override
  String get moodGood => 'Хорошо';

  @override
  String get moneySaved => 'Сэкономлено денег';

  @override
  String get caloriesSaved => 'Сохранено калорий';

  @override
  String get healthScore => 'Оценка здоровья';

  @override
  String get drinksAvoided => 'Избегаемые напитки';

  @override
  String get estimated => 'Расчётное';

  @override
  String get aiGenerated => 'Создано AI';

  @override
  String get daysCapsLabel => 'ДНЕЙ';

  @override
  String get todaysMotivation => 'Мотивация на сегодня';

  @override
  String get defaultMotivationQuote =>
      'Вы успешно придерживаетесь своего решения. Продолжайте двигаться на волне позитивных изменений.';

  @override
  String get talkToCoach => 'Поговорить с коучем';

  @override
  String get havingACraving => 'У меня сильная тяга';

  @override
  String get unlockWeeklyReportsTitle => 'Открыть недельные отчёты';

  @override
  String get unlockWeeklyReportsMessage =>
      'Каждую неделю просматривайте дни без алкоголя, тенденции настроения и персональную обратную связь AI. Перейдите на Premium, чтобы открыть эту функцию.';

  @override
  String get maybeLater => 'Возможно, позже';

  @override
  String get upgrade => 'Перейти на Premium';

  @override
  String get weeklyReportTitle => 'Недельный отчёт';

  @override
  String get weeklyReportsPremiumTitle => 'Недельные отчёты доступны в Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Каждую неделю просматривайте дни без алкоголя, тенденции настроения, тягу и персональную обратную связь AI.';

  @override
  String get upgradeToPremium => 'Перейти на Premium';

  @override
  String get couldNotGenerateReport =>
      'Не удалось создать ваш отчёт прямо сейчас.';

  @override
  String get tryAgainLower => 'Попробовать снова';

  @override
  String get statSoberDays => 'Дни без алкоголя';

  @override
  String get statAvgMood => 'Среднее настроение';

  @override
  String get statCravings => 'Тяга';

  @override
  String get statMoneySaved => 'Сэкономлено';

  @override
  String get coachFeedback => 'Отзыв коуча';

  @override
  String get journalInsights => 'Анализ дневника';

  @override
  String get next => 'Далее';

  @override
  String get question1Title => 'Какова ваша цель';

  @override
  String get question1Subtitle =>
      'Выберите цель, которая важнее\nвсего для вас';

  @override
  String get goalQuitCompletely => 'Полностью отказаться';

  @override
  String get goalReduceDrinking => 'Сократить употребление';

  @override
  String get goalTakeABreak => 'Сделать перерыв';

  @override
  String get goalBuildHealthierHabits => 'Сформировать здоровые привычки';

  @override
  String get question3Title => 'Расскажите о своей\nрутине';

  @override
  String get drinksPerWeek => 'Напитков в неделю';

  @override
  String get moneySpentPerWeek => 'Расходы в неделю';

  @override
  String get drinkingLevel => 'Уровень употребления';

  @override
  String get triggersLabel => 'Триггеры';

  @override
  String get levelSocial => 'Социальный';

  @override
  String get levelRegular => 'Регулярный';

  @override
  String get levelHeavy => 'Высокий';

  @override
  String get levelDependent => 'Зависимый';

  @override
  String get triggerStress => 'Стресс';

  @override
  String get triggerLoneliness => 'Одиночество';

  @override
  String get triggerHabit => 'Привычка';

  @override
  String get triggerSadness => 'Грусть';

  @override
  String get triggerAnger => 'Гнев';

  @override
  String get triggerBoredom => 'Скука';

  @override
  String get triggerSocialPressure => 'Социальное давление';

  @override
  String get triggerCelebration => 'Праздник';

  @override
  String get triggerSleepProblems => 'Проблемы со сном';

  @override
  String get triggerWorkPressure => 'Рабочее давление';

  @override
  String get question4Title => 'Почему вы хотите измениться?';

  @override
  String get question4Subtitle =>
      'Ваша причина поможет вам сохранять мотивацию.';

  @override
  String get reasonImproveHealth => 'Улучшить здоровье';

  @override
  String get reasonSaveMoney => 'Сэкономить деньги';

  @override
  String get reasonFamily => 'Семья';

  @override
  String get reasonBetterSleep => 'Лучший сон';

  @override
  String get reasonMentalClarity => 'Ясность мышления';

  @override
  String get reasonFitness => 'Фитнес';

  @override
  String get reasonSelfRespect => 'Самоуважение';

  @override
  String get reasonCareer => 'Карьера';

  @override
  String get milestoneUnlockedLabel => 'ДОСТИЖЕНИЕ ОТКРЫТО';

  @override
  String incredibleNamePrefix(String name) {
    return 'Невероятно, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount сэкономлено';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count не выпито';
  }

  @override
  String get shareMyMilestone => 'Поделиться достижением';

  @override
  String get milestoneImageShareError =>
      'Не удалось создать изображение достижения. Попробуйте ещё раз.';

  @override
  String get dailyCheckInTitle => 'Ежедневная отметка';

  @override
  String get howAreYouFeelingToday => 'Как вы себя чувствуете сегодня?';

  @override
  String get honestAnswerHelp =>
      'Ваш честный ответ помогает нам лучше вас поддерживать';

  @override
  String get didYouDrinkToday => 'Вы пили сегодня?';

  @override
  String get noLabel => 'Нет';

  @override
  String get yesLabel => 'Да';

  @override
  String get cravingLevelNow => 'Насколько сильна тяга сейчас?';

  @override
  String get anythingOnMind => 'Что-нибудь вас беспокоит?';

  @override
  String get optionalLabel => '(необязательно)';

  @override
  String get dailyNoteHint => 'Напишите о своём дне, триггерах, победах...';

  @override
  String get alreadyCheckedInToday => 'Сегодня вы уже отметились';

  @override
  String get saveCheckIn => 'Сохранить отметку';

  @override
  String get checkInsHelpTrack =>
      'Ежедневные отметки помогают отслеживать ваш прогресс';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Вы уже завершили сегодняшнюю отметку.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Сначала ответьте на оба вопроса выше';

  @override
  String get checkInSaved => 'Отметка сохранена';

  @override
  String get cravingNone => 'Нет';

  @override
  String get cravingLow => 'Слабая';

  @override
  String get cravingMedium => 'Средняя';

  @override
  String get cravingStrong => 'Сильная';

  @override
  String get moodBad => 'Плохо';

  @override
  String get moodLow => 'Низкое';

  @override
  String get moodGreat => 'Отлично';

  @override
  String get sosSupportTitle => 'SOS-поддержка';

  @override
  String notAloneMessage(String name) {
    return 'Вы не одиноки, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Тяга проходит. Выберите что-нибудь ниже, чтобы справиться с этим моментом.';

  @override
  String get breathingExercise => 'Дыхательное упражнение';

  @override
  String get breathingExerciseSubtitle => 'Управляемая техника 4-7-8, 2 минуты';

  @override
  String get rideTheWave => 'Пережить волну';

  @override
  String get rideTheWaveSubtitle => 'Таймер на 15 минут — тяга всегда проходит';

  @override
  String get copingTips => 'Советы по преодолению';

  @override
  String get copingTipsSubtitle => 'Персональные стратегии для ваших триггеров';

  @override
  String get talkToAiCoach => 'Поговорить с AI-коучем';

  @override
  String get talkToAiCoachSubtitle =>
      'Пообщайтесь со своим помощником по восстановлению';

  @override
  String get callSomeone => 'Позвонить кому-нибудь';

  @override
  String get callSomeoneSubtitle => 'Свяжитесь с доверенным человеком';

  @override
  String get contactsPermissionNeeded =>
      'Для звонка контакту необходимо разрешение на доступ к контактам.';

  @override
  String get beatenCravingsPrefix => 'Вы уже преодолели тягу ';

  @override
  String beatenCravingsCount(int count) {
    return '$count раз';
  }

  @override
  String get beatenCravingsSuffix => ' раньше. Вы сможете сделать это снова.';

  @override
  String get tellUsAboutYourself => 'Расскажите о себе';

  @override
  String get detailsSubtitle =>
      'Эта информация помогает персонализировать ваш путь восстановления и предоставлять точные сведения.';

  @override
  String get nameLabel => 'Имя';

  @override
  String get nameHint => 'например, Алекс Риверс';

  @override
  String get ageLabel => 'Возраст';

  @override
  String get ageHint => 'например, 32';

  @override
  String get sexAssignedAtBirth => 'Пол при рождении';

  @override
  String get sexFemale => 'Женский';

  @override
  String get sexMale => 'Мужской';

  @override
  String get heightLabel => 'Рост';

  @override
  String get weightLabel => 'Вес';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Достигнут дневной лимит';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Вы использовали все $limit бесплатных сообщений на сегодня. Перейдите на Premium для неограниченного общения с коучем.';
  }

  @override
  String get coachConnectError =>
      'Не удалось подключиться сейчас. Попробуйте ещё раз через несколько минут.';

  @override
  String get clearConversationTitle => 'Очистить разговор?';

  @override
  String get clearConversationMessage =>
      'История чата с коучем будет удалена навсегда.';

  @override
  String get clearLabel => 'Очистить';

  @override
  String get recoveryCoachTitle => 'Коуч по восстановлению';

  @override
  String get onlineLabel => 'В сети';

  @override
  String get clearConversationMenuItem => 'Очистить разговор';

  @override
  String chatGreeting(String name) {
    return 'Привет, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Сегодня $days-й день вашего пути. Я здесь, когда вы захотите поговорить.';
  }

  @override
  String get quickPromptsLabel => 'БЫСТРЫЕ ЗАПРОСЫ';

  @override
  String get promptCravingLabel => 'Меня тянет выпить';

  @override
  String get promptCravingSubtitle => 'Быстро вернуться в равновесие';

  @override
  String get promptMotivationLabel => 'Нужна мотивация';

  @override
  String get promptMotivationSubtitle => 'Поддержка, когда тяжело';

  @override
  String get promptSocialLabel => 'Социальная ситуация';

  @override
  String get promptSocialSubtitle => 'Как справиться с мероприятием';

  @override
  String get promptSlippedLabel => 'Я сорвался';

  @override
  String get promptSlippedSubtitle => 'Без осуждения, только поддержка';

  @override
  String get typeMessageHint => 'Введите сообщение...';

  @override
  String get editProfileTitle => 'Редактировать профиль';

  @override
  String couldNotSaveProfile(String error) {
    return 'Не удалось сохранить профиль: $error';
  }

  @override
  String get heightCmLabel => 'Рост (см)';

  @override
  String get weightKgLabel => 'Вес (кг)';

  @override
  String get saveChangesLabel => 'Сохранить изменения';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Расширенная аналитика и сведения';

  @override
  String get featureUnlimitedJournal => 'Неограниченные записи в дневнике';

  @override
  String get featureUnlimitedChat => 'Неограниченный чат с AI-коучем';

  @override
  String get featureCommunityGroups => 'Эксклюзивные группы сообщества';

  @override
  String get featurePrioritySupport => 'Приоритетная помощь экспертов';

  @override
  String get featureThemePacks => 'Пользовательские наборы тем';

  @override
  String get featureDataExport => 'Экспорт данных';

  @override
  String get featureAdFree => 'Без рекламы';

  @override
  String get premiumMemberTitle => 'Вы участник Premium';

  @override
  String get unlockFullRecoveryTitle => 'Откройте полный опыт\nвосстановления';

  @override
  String get premiumMemberSubtitle =>
      'Спасибо за поддержку вашего пути восстановления — все функции Premium ниже уже доступны.';

  @override
  String get premiumJoinSubtitle =>
      'Присоединяйтесь к сообществу тысяч людей, которые\nускоряют свой путь к восстановлению с помощью наших\nPremium-инструментов и персональной поддержки.';

  @override
  String get monthlyPlanLabel => 'Ежемесячно';

  @override
  String get perMonthSuffix => '/мес.';

  @override
  String get cancelAnytimeLabel => 'Отмена в любое время';

  @override
  String get yearlyPlanLabel => 'Ежегодно';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Ежегодная оплата: $amount';
  }

  @override
  String get bestValueLabel => 'Лучшая цена';

  @override
  String get alreadyPremiumLabel => 'У вас Premium ✓';

  @override
  String get startPremiumLabel => 'Начать Premium';

  @override
  String get manageSubscriptionLabel =>
      'Управляйте подпиской или отменяйте её в настройках подписок вашего устройства.';

  @override
  String get noCommitmentLabel =>
      'Без обязательств. Отменить можно в любое время.';

  @override
  String get continueFreePlanLabel => 'Продолжить с бесплатным планом';

  @override
  String get backToHomeLabel => 'Вернуться на главную';

  @override
  String get cancelPremiumLabel => 'Отменить Premium';

  @override
  String get cancelPremiumTitle => 'Отменить Premium?';

  @override
  String get cancelPremiumMessage =>
      'Вы потеряете доступ к неограниченным записям дневника, неограниченному чату с коучем, статистике и недельным отчётам. Вы сможете оформить подписку снова в любое время.';

  @override
  String get keepPremiumLabel => 'Оставить Premium';

  @override
  String get nowPremiumMessage =>
      'Теперь у вас Premium! Наслаждайтесь полным опытом восстановления.';

  @override
  String get premiumCancelledMessage =>
      'Premium отменён. Вы вернулись на бесплатный план.';

  @override
  String get termsOfUseLabel => 'Условия использования';

  @override
  String get navHomeLabel => 'Главная';

  @override
  String get navStatsLabel => 'Статистика';

  @override
  String get navJournalLabel => 'Дневник';

  @override
  String get navBadgesLabel => 'Значки';

  @override
  String get navProfileLabel => 'Профиль';

  @override
  String get recoveryGoalsTitle => 'Цели восстановления';

  @override
  String get drinksPerWeekLabel => 'Напитков в неделю';

  @override
  String get quitReasonsLabel => 'Причины отказаться';

  @override
  String get quitReasonsHelperText => 'Разделяйте несколько причин запятыми.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Не удалось сохранить цели восстановления: $error';
  }

  @override
  String get goalHint => 'например, Полный отказ';

  @override
  String get drinksPerWeekHint => 'например, 12';

  @override
  String get quitReasonsHint => 'например, Здоровье, Семья, Деньги';

  @override
  String get todaysPrompt => 'Вопрос дня';

  @override
  String get defaultJournalPrompt => 'О чём вы думаете сегодня?';

  @override
  String get aiJournalInsights => 'AI-анализ дневника';

  @override
  String get unlockJournalInsightsMessage =>
      'Откройте недельные закономерности, тенденции настроения и персональные сведения из записей вашего дневника.';

  @override
  String get notEnoughJournalData =>
      'Пока недостаточно данных — сделайте несколько записей на этой неделе и загляните снова.';

  @override
  String get openEntry => 'Открыть';

  @override
  String get editEntry => 'Редактировать';

  @override
  String get deleteEntry => 'Удалить';

  @override
  String get searchJournalEntries => 'Поиск записей...';

  @override
  String get writeNewEntry => 'Написать новую запись';

  @override
  String get recentEntries => 'Недавние записи';

  @override
  String get noJournalEntriesYet =>
      'Записей в дневнике пока нет — напишите свою первую запись выше.';

  @override
  String get noEntriesMatchFilters =>
      'Нет записей, соответствующих вашим фильтрам.';

  @override
  String get weeklyJournalLimitReached => 'Достигнут недельный лимит';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Вы использовали все $limit бесплатных записей дневника на этой неделе. Перейдите на Premium для неограниченных записей.';
  }

  @override
  String get newEntry => 'Новая запись';

  @override
  String get writeYourThoughts => 'Запишите свои мысли';

  @override
  String get saveEntry => 'Сохранить запись';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Осталось $remaining из $limit бесплатных записей на этой неделе';
  }

  @override
  String get deleteEntryQuestion => 'Удалить запись?';

  @override
  String get deleteEntryConfirmation =>
      'Эта запись будет удалена навсегда. Действие нельзя отменить.';

  @override
  String get journalEntryNotFound => 'Запись не найдена';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Возможно, эта запись дневника была удалена.';

  @override
  String get goBack => 'Назад';

  @override
  String get journalEntryTitle => 'Запись дневника';

  @override
  String get moodStruggling => 'Тяжело';

  @override
  String get moodUnwell => 'Плохо';

  @override
  String get moodNeutral => 'Нейтрально';

  @override
  String get whatHappenedToday => 'Что произошло сегодня?';

  @override
  String get trigger => 'Триггер';

  @override
  String get whatHelped => 'Что помогло';

  @override
  String get whatIllTryNextTime => 'Что я попробую в следующий раз';

  @override
  String get journalPrivacyMessage =>
      'Ваша запись конфиденциальна и сохранена в дневнике.';

  @override
  String get unlocked => 'Открыто';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'дня',
      many: 'дней',
      few: 'я',
      one: '',
    );
    return 'Остался $count день$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count дней';
  }

  @override
  String get firstReflection => 'Первая\nрефлексия';

  @override
  String get oneJournalEntry => '1 запись дневника';

  @override
  String get openBook => 'Открыть книгу';

  @override
  String get tenJournalEntries => '10 записей дневника';

  @override
  String get dedicatedWriter => 'Преданный\nписатель';

  @override
  String get thirtyJournalEntries => '30 записей дневника';

  @override
  String get firstConversation => 'Первый\nразговор';

  @override
  String get oneAiCoachChat => '1 чат с AI-коучем';

  @override
  String get keepTalking => 'Продолжайте общаться';

  @override
  String get fiveConversations => '5 разговоров';

  @override
  String get coachCompanion => 'Компаньон\nкоуча';

  @override
  String get twentyConversations => '20 разговоров';

  @override
  String get checkInHabit => 'Привычка\nотмечаться';

  @override
  String get sevenCheckIns => '7 отметок';

  @override
  String get consistencyPro => 'Мастер\nпостоянства';

  @override
  String get thirtyCheckIns => '30 отметок';

  @override
  String get dedicatedJourney => 'Преданный\nпуть';

  @override
  String get hundredCheckIns => '100 отметок';

  @override
  String get goalGetter => 'Достигатор';

  @override
  String get threeGoalsCompleted => '3 цели выполнены';

  @override
  String get goalAchiever => 'Достигатор\nцелей';

  @override
  String get tenGoalsCompleted => '10 целей выполнено';

  @override
  String get firstSavings => 'Первая\nэкономия';

  @override
  String get fiveHundredSaved => '\$500 сэкономлено';

  @override
  String get smartSaver => 'Разумный экономист';

  @override
  String get oneThousandSaved => '\$1,000 сэкономлено';

  @override
  String get bigSaver => 'Большой экономист';

  @override
  String get fiveThousandSaved => '\$5,000 сэкономлено';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current из \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current из $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Продолжайте — ваше первое достижение уже ждёт вас!';

  @override
  String get badgesAndMilestones => 'Значки и достижения';

  @override
  String get yourMilestoneJourney => 'Ваш путь достижений';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'я',
      many: 'й',
      few: 'я',
      one: 'е',
    );
    return '$count достижени$_temp0 выполнено.\nНажмите, чтобы посмотреть';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Вы открыли $unlocked из $total достижений на своём пути.';
  }

  @override
  String get remaining => 'Осталось';

  @override
  String get complete => 'Выполнено';

  @override
  String get nextMilestone => 'Следующее достижение';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% выполнено';
  }

  @override
  String get sobrietyMilestones => 'Достижения трезвости';

  @override
  String get journeyBadges => 'Значки пути';

  @override
  String get bronze => 'БРОНЗА';

  @override
  String get silver => 'СЕРЕБРО';

  @override
  String get gold => 'ЗОЛОТО';

  @override
  String get platinum => 'ПЛАТИНА';

  @override
  String get diamond => 'АЛМАЗ';

  @override
  String get analyzingYourJourney => 'Анализируем ваш путь...';

  @override
  String get aiCreatingSanctuary =>
      'Наш AI создаёт ваше персональное пространство для восстановления.';

  @override
  String get understandingHabits => 'Изучаем привычки...';

  @override
  String get calculatingBaseline => 'Рассчитываем вашу исходную точку...';

  @override
  String get personalizingPlan => 'Персонализируем ваш план...';

  @override
  String get finalizingSanctuary => 'Завершаем создание вашего пространства...';

  @override
  String get creatingYourPlan => 'Создаём ваш план...';

  @override
  String get personalizedPlanError =>
      'Не удалось создать ваш персональный план. Попробуйте ещё раз.';

  @override
  String get retry => 'Повторить';

  @override
  String get breathInhale => 'ВДОХ';

  @override
  String get breathHold => 'ЗАДЕРЖИТЕ';

  @override
  String get breathExhale => 'ВЫДОХ';

  @override
  String get breathDone => 'ГОТОВО';

  @override
  String get breathGreatJob => 'Отличная работа!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сеанса сегодня',
      many: '$count сеансов сегодня',
      few: '$count сеанса сегодня',
      one: '$count сеанс сегодня',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Завершить упражнение';

  @override
  String get done => 'Готово';

  @override
  String get noCopingTipsYet => 'Советов пока нет';

  @override
  String get copingStrategiesWillAppear =>
      'Ваши персональные стратегии преодоления появятся здесь после завершения создания плана восстановления.';

  @override
  String get strategiesTailoredToTriggers =>
      'Стратегии с учётом ваших триггеров';

  @override
  String get cravingsPeakAndPass => 'Тяга достигает пика\nи проходит';

  @override
  String get rideTheWaveDescription =>
      'Большинство приступов тяги проходят в течение 15 минут. Вам не нужно поддаваться — просто переждите этот момент вместе с нами.';

  @override
  String get stayWithIt => 'оставайтесь с этим';

  @override
  String get youMadeIt => 'вы справились';

  @override
  String get readyWhenYouAre => 'когда будете готовы';

  @override
  String get rideItAgain => 'Пережить снова';

  @override
  String get start15MinuteTimer => 'Запустить таймер на 15 минут';

  @override
  String get rideTheWaveCompletedMessage =>
      'Вы пережили эту волну. Это настоящая сила. 💪';

  @override
  String get myProgress => 'Мой прогресс';

  @override
  String get weekLabel => 'Неделя';

  @override
  String get monthLabel => 'Месяц';

  @override
  String get allLabel => 'Всё';

  @override
  String get daysSoberStatLabel => 'Дней\nбез алкоголя';

  @override
  String get savedStatLabel => 'Сэкономлено';

  @override
  String get avoidedStatLabel => 'Избегнуто';

  @override
  String get moodTrends => 'Тенденции настроения';

  @override
  String get cravingsPattern => 'Динамика тяги';

  @override
  String get unlockLabel => 'Открыть';

  @override
  String get unlockFullStats => 'Открыть полную статистику';

  @override
  String get premiumStatsMessage =>
      'Тенденции настроения и динамика тяги доступны в Premium. Перейдите на Premium, чтобы увидеть полную статистику.';

  @override
  String get healthMilestonesWillAppear =>
      'Ваши достижения в области здоровья появятся здесь.';

  @override
  String get healthMilestones => 'Достижения для здоровья';

  @override
  String dayNumber(int day) {
    return 'День $day';
  }

  @override
  String get soberLabel => 'Без алкоголя';

  @override
  String get slipLabel => 'Срыв';

  @override
  String get noDataLabel => 'Нет данных';

  @override
  String get milestone24Hours => '24 часа';

  @override
  String get milestoneOneWeek => 'Одна неделя';

  @override
  String get milestoneOneMonth => 'Один месяц';

  @override
  String get milestoneThreeMonths => 'Три месяца';

  @override
  String get milestoneSixMonths => 'Шесть месяцев';

  @override
  String get milestoneOneYear => 'Один год';

  @override
  String milestoneDayCount(int day) {
    return 'Достижение дня $day';
  }

  @override
  String get maybeLaterLabel => 'Может быть позже';

  @override
  String get cancelLabel => 'Отмена';
}
