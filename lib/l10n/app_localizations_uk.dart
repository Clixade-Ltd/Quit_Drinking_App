// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get skip => 'Пропустити';

  @override
  String get continueButton => 'Продовжити';

  @override
  String get getStarted => 'Почати';

  @override
  String get onboardingTitle1 => 'Візьміть своє життя під контроль';

  @override
  String get onboardingSubtitle1 =>
      'Відстежуйте свій шлях, святкуйте кожне досягнення та ставайте здоровішими день за днем.';

  @override
  String get onboardingTitle2 => 'Ваш AI-помічник у відновленні';

  @override
  String get onboardingSubtitle2 =>
      'Отримуйте персональні поради, корисні звички, нагадування для мотивації та звіти про прогрес, створені для вашого шляху.';

  @override
  String get goodMorning => 'Доброго ранку';

  @override
  String get goodAfternoon => 'Добрий день';

  @override
  String get goodEvening => 'Добрий вечір';

  @override
  String get goodNight => 'Доброї ночі';

  @override
  String get embracingClarity => 'До ясності — день за днем.';

  @override
  String get streakLabel => 'СЕРІЯ';

  @override
  String get goalLabel => 'Мета';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count днів',
      few: '$count дні',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'План Premium';

  @override
  String get premiumPlanSubtitle => 'Відкрийте повний досвід відновлення';

  @override
  String get accountAndSupport => 'ОБЛІКОВИЙ ЗАПИС І ПІДТРИМКА';

  @override
  String get privacyPolicy => 'Політика конфіденційності';

  @override
  String get privacyPolicySubtitle =>
      'Керуйте обміном даними та безпекою облікового запису';

  @override
  String get termsOfService => 'Умови використання';

  @override
  String get termsOfServiceSubtitle =>
      'Поширені запитання, контакти та ресурси';

  @override
  String get shareApp => 'Поділитися застосунком';

  @override
  String get shareAppSubtitle => 'Поділіться застосунком із друзями';

  @override
  String get resetData => 'Скинути дані';

  @override
  String get resetDataSubtitle =>
      'Видалити все, що збережено на цьому пристрої';

  @override
  String get resetAllDataTitle => 'Скинути всі дані?';

  @override
  String get resetAllDataMessage =>
      'Це видалить усе, що збережено на цьому пристрої — профіль, записи щоденника та прогрес — і цю дію неможливо скасувати.';

  @override
  String get cancel => 'Скасувати';

  @override
  String get reset => 'Скинути';

  @override
  String get chooseFromGallery => 'Вибрати з галереї';

  @override
  String get takePhoto => 'Зробити фото';

  @override
  String get removePhoto => 'Видалити фото';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Не вдалося оновити фото: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Не вдалося видалити фото: $error';
  }

  @override
  String get photoTooLarge =>
      'Це фото завелике навіть після стиснення — спробуйте інше.';

  @override
  String get unableToLoadProfile => 'Не вдалося завантажити ваш профіль';

  @override
  String get pleaseTryAgain => 'Спробуйте ще раз.';

  @override
  String get tryAgain => 'Спробувати ще раз';

  @override
  String get profileNotFound => 'Профіль не знайдено';

  @override
  String get refresh => 'Оновити';

  @override
  String get noProfileDataFound =>
      'На цьому пристрої ще не знайдено даних профілю.';

  @override
  String couldNotResetData(String error) {
    return 'Не вдалося скинути дані: $error';
  }

  @override
  String get navHome => 'Головна';

  @override
  String get navStats => 'Статистика';

  @override
  String get navJournal => 'Щоденник';

  @override
  String get navBadges => 'Значки';

  @override
  String get navProfile => 'Профіль';

  @override
  String featureComingSoon(String feature) {
    return '$feature буде доступно незабаром.';
  }

  @override
  String get appWordmark => 'ЗДОРОВ\'Я';

  @override
  String get appTitle => 'Відмова від алкоголю';

  @override
  String get splashSubtitle => 'Зробіть перший крок до\nжиття без алкоголю';

  @override
  String get preparingJourney => 'Готуємо вашу\nподорож';

  @override
  String get taskMorningMeditation => 'Ранкова медитація (10 хв)';

  @override
  String get taskReadChapter => 'Прочитати розділ 4 \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Вечірній щоденник вдячності';

  @override
  String get close => 'Закрити';

  @override
  String get youAreDoingGreat => 'Ви чудово справляєтеся!';

  @override
  String get shareMilestone => 'Поділитися досягненням';

  @override
  String shareMilestoneMessage(int days) {
    return 'Я на $days-му дні свого шляху відновлення! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Моє досягнення на шляху відновлення';

  @override
  String get weeklyReportReadyTitle => 'Ваш тижневий звіт готовий';

  @override
  String get weeklyReportReadySubtitle =>
      'Натисніть, щоб переглянути свій тиждень';

  @override
  String get howAreYouFeeling => 'Як ви почуваєтеся?';

  @override
  String get moodTough => 'Важко';

  @override
  String get moodOkay => 'Нормально';

  @override
  String get moodGood => 'Добре';

  @override
  String get moneySaved => 'Зекономлено грошей';

  @override
  String get caloriesSaved => 'Збережено калорій';

  @override
  String get healthScore => 'Оцінка здоров\'я';

  @override
  String get drinksAvoided => 'Уникнуто напоїв';

  @override
  String get estimated => 'Орієнтовно';

  @override
  String get aiGenerated => 'Створено AI';

  @override
  String get daysCapsLabel => 'ДНІВ';

  @override
  String get todaysMotivation => 'Мотивація на сьогодні';

  @override
  String get defaultMotivationQuote =>
      'Ви успішно дотримуєтеся свого рішення. Продовжуйте рухатися хвилею позитивних змін.';

  @override
  String get talkToCoach => 'Поговорити з коучем';

  @override
  String get havingACraving => 'Мені хочеться випити';

  @override
  String get unlockWeeklyReportsTitle => 'Відкрити тижневі звіти';

  @override
  String get unlockWeeklyReportsMessage =>
      'Щотижня переглядайте дні без алкоголю, тенденції настрою та персональні відгуки AI. Перейдіть на Premium, щоб розблокувати цю функцію.';

  @override
  String get maybeLater => 'Можливо, пізніше';

  @override
  String get upgrade => 'Оновити';

  @override
  String get weeklyReportTitle => 'Тижневий звіт';

  @override
  String get weeklyReportsPremiumTitle => 'Тижневі звіти — функція Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Переглядайте дні без алкоголю, тенденції настрою, потяг до алкоголю та персональні відгуки AI щотижня.';

  @override
  String get upgradeToPremium => 'Перейти на Premium';

  @override
  String get couldNotGenerateReport => 'Не вдалося створити ваш звіт зараз.';

  @override
  String get tryAgainLower => 'Спробувати ще раз';

  @override
  String get statSoberDays => 'Дні без алкоголю';

  @override
  String get statAvgMood => 'Сер. настрій';

  @override
  String get statCravings => 'Потяг';

  @override
  String get statMoneySaved => 'Зекономлено';

  @override
  String get coachFeedback => 'Відгук коуча';

  @override
  String get journalInsights => 'Інсайти щоденника';

  @override
  String get next => 'Далі';

  @override
  String get question1Title => 'Яка ваша мета';

  @override
  String get question1Subtitle =>
      'Оберіть мету, яка має\nдля вас найбільше значення';

  @override
  String get goalQuitCompletely => 'Повністю відмовитися';

  @override
  String get goalReduceDrinking => 'Зменшити вживання';

  @override
  String get goalTakeABreak => 'Зробити перерву';

  @override
  String get goalBuildHealthierHabits => 'Сформувати здоровіші звички';

  @override
  String get question3Title => 'Розкажіть про свій\nрозпорядок';

  @override
  String get drinksPerWeek => 'Напоїв на тиждень';

  @override
  String get moneySpentPerWeek => 'Витрати на тиждень';

  @override
  String get drinkingLevel => 'Рівень вживання';

  @override
  String get triggersLabel => 'Тригери';

  @override
  String get levelSocial => 'Соціальне';

  @override
  String get levelRegular => 'Регулярне';

  @override
  String get levelHeavy => 'Інтенсивне';

  @override
  String get levelDependent => 'Залежне';

  @override
  String get triggerStress => 'Стрес';

  @override
  String get triggerLoneliness => 'Самотність';

  @override
  String get triggerHabit => 'Звичка';

  @override
  String get triggerSadness => 'Смуток';

  @override
  String get triggerAnger => 'Гнів';

  @override
  String get triggerBoredom => 'Нудьга';

  @override
  String get triggerSocialPressure => 'Соціальний тиск';

  @override
  String get triggerCelebration => 'Святкування';

  @override
  String get triggerSleepProblems => 'Проблеми зі сном';

  @override
  String get triggerWorkPressure => 'Тиск на роботі';

  @override
  String get question4Title => 'Чому ви хочете змінитися?';

  @override
  String get question4Subtitle =>
      'Ваша причина допоможе підтримувати мотивацію.';

  @override
  String get reasonImproveHealth => 'Покращити здоров\'я';

  @override
  String get reasonSaveMoney => 'Заощадити гроші';

  @override
  String get reasonFamily => 'Сім\'я';

  @override
  String get reasonBetterSleep => 'Кращий сон';

  @override
  String get reasonMentalClarity => 'Ясність думок';

  @override
  String get reasonFitness => 'Фізична форма';

  @override
  String get reasonSelfRespect => 'Самоповага';

  @override
  String get reasonCareer => 'Кар\'єра';

  @override
  String get milestoneUnlockedLabel => 'ДОСЯГНЕННЯ РОЗБЛОКОВАНО';

  @override
  String incredibleNamePrefix(String name) {
    return 'Неймовірно, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'Заощаджено $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'Уникнуто $count';
  }

  @override
  String get shareMyMilestone => 'Поділитися моїм досягненням';

  @override
  String get milestoneImageShareError =>
      'Не вдалося створити зображення досягнення. Спробуйте ще раз.';

  @override
  String get dailyCheckInTitle => 'Щоденна відмітка';

  @override
  String get howAreYouFeelingToday => 'Як ви почуваєтеся сьогодні?';

  @override
  String get honestAnswerHelp =>
      'Ваша чесна відповідь допомагає нам краще вас підтримувати';

  @override
  String get didYouDrinkToday => 'Ви сьогодні пили?';

  @override
  String get noLabel => 'Ні';

  @override
  String get yesLabel => 'Так';

  @override
  String get cravingLevelNow => 'Наскільки сильно вам хочеться випити зараз?';

  @override
  String get anythingOnMind => 'Щось вас турбує?';

  @override
  String get optionalLabel => '(необов\'язково)';

  @override
  String get dailyNoteHint => 'Напишіть про свій день, тригери, перемоги...';

  @override
  String get alreadyCheckedInToday => 'Ви вже відмітилися сьогодні';

  @override
  String get saveCheckIn => 'Зберегти відмітку';

  @override
  String get checkInsHelpTrack =>
      'Відмітки допомагають відстежувати ваш прогрес з часом';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Ви вже пройшли сьогоднішню відмітку.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Спочатку дайте відповіді на обидва запитання вище';

  @override
  String get checkInSaved => 'Відмітку збережено';

  @override
  String get cravingNone => 'Немає';

  @override
  String get cravingLow => 'Низький';

  @override
  String get cravingMedium => 'Середній';

  @override
  String get cravingStrong => 'Сильний';

  @override
  String get moodBad => 'Погано';

  @override
  String get moodLow => 'Не дуже';

  @override
  String get moodGreat => 'Чудово';

  @override
  String get sosSupportTitle => 'SOS-підтримка';

  @override
  String notAloneMessage(String name) {
    return 'Ви не самі, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Потяг минає. Оберіть щось нижче, щоб допомогти собі пережити цей момент.';

  @override
  String get breathingExercise => 'Дихальна вправа';

  @override
  String get breathingExerciseSubtitle => 'Керована техніка 4-7-8, 2 хвилини';

  @override
  String get rideTheWave => 'Перечекати хвилю';

  @override
  String get rideTheWaveSubtitle => 'Таймер на 15 хв — потяг завжди минає';

  @override
  String get copingTips => 'Поради для подолання';

  @override
  String get copingTipsSubtitle => 'Персональні стратегії для ваших тригерів';

  @override
  String get talkToAiCoach => 'Поговорити з AI-коучем';

  @override
  String get talkToAiCoachSubtitle =>
      'Спілкуйтеся зі своїм помічником у відновленні';

  @override
  String get callSomeone => 'Зателефонувати комусь';

  @override
  String get callSomeoneSubtitle => 'Зв\'яжіться з довіреною людиною';

  @override
  String get contactsPermissionNeeded =>
      'Для дзвінка контакту потрібен дозвіл на доступ до контактів.';

  @override
  String get beatenCravingsPrefix => 'Ви вже подолали потяг ';

  @override
  String beatenCravingsCount(int count) {
    return '$count разів';
  }

  @override
  String get beatenCravingsSuffix => ' раніше. Ви зможете зробити це знову.';

  @override
  String get tellUsAboutYourself => 'Розкажіть про себе';

  @override
  String get detailsSubtitle =>
      'Ця інформація допоможе персоналізувати ваш шлях відновлення та надавати точніші рекомендації.';

  @override
  String get nameLabel => 'Ім\'я';

  @override
  String get nameHint => 'наприклад, Alex Rivers';

  @override
  String get ageLabel => 'Вік';

  @override
  String get ageHint => 'наприклад, 32';

  @override
  String get sexAssignedAtBirth => 'Стать при народженні';

  @override
  String get sexFemale => 'Жінка';

  @override
  String get sexMale => 'Чоловік';

  @override
  String get heightLabel => 'Зріст';

  @override
  String get weightLabel => 'Вага';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Досягнуто денного ліміту';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Ви використали всі $limit безкоштовних повідомлень на сьогодні. Перейдіть на Premium для необмеженого спілкування з коучем.';
  }

  @override
  String get coachConnectError =>
      'Не вдалося підключитися зараз. Спробуйте ще раз за мить.';

  @override
  String get clearConversationTitle => 'Очистити розмову?';

  @override
  String get clearConversationMessage =>
      'Це назавжди видалить історію чату з коучем.';

  @override
  String get clearLabel => 'Очистити';

  @override
  String get recoveryCoachTitle => 'Коуч із відновлення';

  @override
  String get onlineLabel => 'Онлайн';

  @override
  String get clearConversationMenuItem => 'Очистити розмову';

  @override
  String chatGreeting(String name) {
    return 'Привіт, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Ви на $days-му дні свого шляху. Я поруч, коли захочете все обговорити.';
  }

  @override
  String get quickPromptsLabel => 'ШВИДКІ ЗАПИТИ';

  @override
  String get promptCravingLabel => 'Хочеться випити';

  @override
  String get promptCravingSubtitle => 'Швидко заспокоїтися';

  @override
  String get promptMotivationLabel => 'Потрібна мотивація';

  @override
  String get promptMotivationSubtitle => 'Підтримка у складний момент';

  @override
  String get promptSocialLabel => 'Соціальна ситуація';

  @override
  String get promptSocialSubtitle => 'Як пережити зустріч';

  @override
  String get promptSlippedLabel => 'Я зірвався';

  @override
  String get promptSlippedSubtitle => 'Без осуду, лише підтримка';

  @override
  String get typeMessageHint => 'Введіть повідомлення...';

  @override
  String get editProfileTitle => 'Редагувати профіль';

  @override
  String couldNotSaveProfile(String error) {
    return 'Не вдалося зберегти профіль: $error';
  }

  @override
  String get heightCmLabel => 'Зріст (см)';

  @override
  String get weightKgLabel => 'Вага (кг)';

  @override
  String get saveChangesLabel => 'Зберегти зміни';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Розширені інсайти та аналітика';

  @override
  String get featureUnlimitedJournal => 'Необмежені записи щоденника';

  @override
  String get featureUnlimitedChat => 'Необмежений чат з AI-коучем';

  @override
  String get featureCommunityGroups => 'Ексклюзивні групи спільноти';

  @override
  String get featurePrioritySupport => 'Пріоритетна підтримка експертів';

  @override
  String get featureThemePacks => 'Власні набори тем';

  @override
  String get featureDataExport => 'Експорт даних';

  @override
  String get featureAdFree => 'Без реклами';

  @override
  String get premiumMemberTitle => 'Ви учасник Premium';

  @override
  String get unlockFullRecoveryTitle => 'Відкрийте повний досвід\nвідновлення';

  @override
  String get premiumMemberSubtitle =>
      'Дякуємо за підтримку вашого шляху відновлення — усі наведені нижче функції Premium розблоковані.';

  @override
  String get premiumJoinSubtitle =>
      'Приєднуйтеся до спільноти тисяч людей, які\nприскорюють свій шлях до одужання за допомогою\nнаших Premium-інструментів і персональної підтримки.';

  @override
  String get monthlyPlanLabel => 'Щомісячно';

  @override
  String get perMonthSuffix => '/міс.';

  @override
  String get cancelAnytimeLabel => 'Скасуйте будь-коли';

  @override
  String get yearlyPlanLabel => 'Щорічно';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Щорічна оплата $amount';
  }

  @override
  String get bestValueLabel => 'Найвигідніше';

  @override
  String get alreadyPremiumLabel => 'У вас Premium ✓';

  @override
  String get startPremiumLabel => 'Почати Premium';

  @override
  String get manageSubscriptionLabel =>
      'Керуйте підпискою або скасовуйте її в налаштуваннях підписок вашого пристрою.';

  @override
  String get noCommitmentLabel => 'Без зобов\'язань. Скасовуйте будь-коли.';

  @override
  String get continueFreePlanLabel => 'Продовжити з безкоштовним планом';

  @override
  String get backToHomeLabel => 'Назад на головну';

  @override
  String get cancelPremiumLabel => 'Скасувати Premium';

  @override
  String get cancelPremiumTitle => 'Скасувати Premium?';

  @override
  String get cancelPremiumMessage =>
      'Ви втратите доступ до необмежених записів щоденника, необмеженого чату з коучем, статистичних інсайтів і тижневих звітів. Ви можете поновити підписку будь-коли.';

  @override
  String get keepPremiumLabel => 'Залишити Premium';

  @override
  String get nowPremiumMessage =>
      'Тепер у вас Premium! Насолоджуйтеся повним досвідом відновлення.';

  @override
  String get premiumCancelledMessage =>
      'Premium скасовано. Ви повернулися до безкоштовного плану.';

  @override
  String get termsOfUseLabel => 'Умови використання';

  @override
  String get navHomeLabel => 'Головна';

  @override
  String get navStatsLabel => 'Статистика';

  @override
  String get navJournalLabel => 'Щоденник';

  @override
  String get navBadgesLabel => 'Значки';

  @override
  String get navProfileLabel => 'Профіль';

  @override
  String get recoveryGoalsTitle => 'Цілі відновлення';

  @override
  String get drinksPerWeekLabel => 'Напоїв на тиждень';

  @override
  String get quitReasonsLabel => 'Причини відмови';

  @override
  String get quitReasonsHelperText => 'Розділяйте кілька причин комою.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Не вдалося зберегти цілі відновлення: $error';
  }

  @override
  String get goalHint => 'наприклад, повна відмова';

  @override
  String get drinksPerWeekHint => 'наприклад, 12';

  @override
  String get quitReasonsHint => 'наприклад, здоров\'я, сім\'я, гроші';

  @override
  String get todaysPrompt => 'Запитання дня';

  @override
  String get defaultJournalPrompt => 'Що у вас сьогодні на думці?';

  @override
  String get aiJournalInsights => 'AI-інсайти щоденника';

  @override
  String get unlockJournalInsightsMessage =>
      'Відкрийте щотижневі закономірності, тенденції настрою та персональні інсайти з ваших записів.';

  @override
  String get notEnoughJournalData =>
      'Поки недостатньо даних — зробіть кілька записів цього тижня та поверніться пізніше.';

  @override
  String get openEntry => 'Відкрити';

  @override
  String get editEntry => 'Редагувати';

  @override
  String get deleteEntry => 'Видалити';

  @override
  String get searchJournalEntries => 'Пошук записів...';

  @override
  String get writeNewEntry => 'Створити новий запис';

  @override
  String get recentEntries => 'Останні записи';

  @override
  String get noJournalEntriesYet =>
      'Записів ще немає — створіть свою першу рефлексію вище.';

  @override
  String get noEntriesMatchFilters =>
      'Немає записів, які відповідають вашим фільтрам.';

  @override
  String get weeklyJournalLimitReached => 'Тижневий ліміт досягнуто';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Ви використали всі $limit безкоштовних записів цього тижня. Перейдіть на Premium для необмежених записів.';
  }

  @override
  String get newEntry => 'Новий запис';

  @override
  String get writeYourThoughts => 'Запишіть свої думки';

  @override
  String get saveEntry => 'Зберегти запис';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Залишилося $remaining із $limit безкоштовних записів цього тижня';
  }

  @override
  String get deleteEntryQuestion => 'Видалити запис?';

  @override
  String get deleteEntryConfirmation =>
      'Цей запис буде видалено назавжди. Цю дію неможливо скасувати.';

  @override
  String get journalEntryNotFound => 'Запис не знайдено';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Цей запис щоденника, можливо, було видалено.';

  @override
  String get goBack => 'Назад';

  @override
  String get journalEntryTitle => 'Запис щоденника';

  @override
  String get moodStruggling => 'Важко';

  @override
  String get moodUnwell => 'Погано';

  @override
  String get moodNeutral => 'Нейтрально';

  @override
  String get whatHappenedToday => 'Що сталося сьогодні?';

  @override
  String get trigger => 'Тригер';

  @override
  String get whatHelped => 'Що допомогло';

  @override
  String get whatIllTryNextTime => 'Що я спробую наступного разу';

  @override
  String get journalPrivacyMessage =>
      'Ваша рефлексія приватна та зберігається у вашому щоденнику.';

  @override
  String get unlocked => 'Розблоковано';

  @override
  String daysLeft(int count) {
    return 'Залишилося $count дн.';
  }

  @override
  String daysCount(int count) {
    return '$count днів';
  }

  @override
  String get firstReflection => 'Перша\nрефлексія';

  @override
  String get oneJournalEntry => '1 запис щоденника';

  @override
  String get openBook => 'Відкрити книгу';

  @override
  String get tenJournalEntries => '10 записів щоденника';

  @override
  String get dedicatedWriter => 'Відданий\nписьменник';

  @override
  String get thirtyJournalEntries => '30 записів щоденника';

  @override
  String get firstConversation => 'Перша\nрозмова';

  @override
  String get oneAiCoachChat => '1 чат з AI-коучем';

  @override
  String get keepTalking => 'Продовжуйте спілкуватися';

  @override
  String get fiveConversations => '5 розмов';

  @override
  String get coachCompanion => 'Помічник\nкоуча';

  @override
  String get twentyConversations => '20 розмов';

  @override
  String get checkInHabit => 'Звичка\nвідмічатися';

  @override
  String get sevenCheckIns => '7 відміток';

  @override
  String get consistencyPro => 'Майстер\nпослідовності';

  @override
  String get thirtyCheckIns => '30 відміток';

  @override
  String get dedicatedJourney => 'Відданий\nшлях';

  @override
  String get hundredCheckIns => '100 відміток';

  @override
  String get goalGetter => 'Досягатор';

  @override
  String get threeGoalsCompleted => 'Виконано 3 цілі';

  @override
  String get goalAchiever => 'Досягнення\nцілей';

  @override
  String get tenGoalsCompleted => 'Виконано 10 цілей';

  @override
  String get firstSavings => 'Перші\nзаощадження';

  @override
  String get fiveHundredSaved => '\$500 заощаджено';

  @override
  String get smartSaver => 'Розумний заощадник';

  @override
  String get oneThousandSaved => '\$1 000 заощаджено';

  @override
  String get bigSaver => 'Великий заощадник';

  @override
  String get fiveThousandSaved => '\$5 000 заощаджено';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current з \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current з $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Продовжуйте — ваше перше досягнення вже чекає на вас!';

  @override
  String get badgesAndMilestones => 'Значки та досягнення';

  @override
  String get yourMilestoneJourney => 'Ваш шлях до досягнень';

  @override
  String milestonesAchieved(int count) {
    return 'Досягнень: $count.\nНатисніть, щоб переглянути';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Ви розблокували $unlocked із $total досягнень на своєму шляху.';
  }

  @override
  String get remaining => 'Залишилося';

  @override
  String get complete => 'Виконано';

  @override
  String get nextMilestone => 'Наступне досягнення';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% виконано';
  }

  @override
  String get sobrietyMilestones => 'Досягнення тверезості';

  @override
  String get journeyBadges => 'Значки шляху';

  @override
  String get bronze => 'БРОНЗА';

  @override
  String get silver => 'СРІБЛО';

  @override
  String get gold => 'ЗОЛОТО';

  @override
  String get platinum => 'ПЛАТИНА';

  @override
  String get diamond => 'ДІАМАНТ';

  @override
  String get analyzingYourJourney => 'Аналізуємо ваш шлях...';

  @override
  String get aiCreatingSanctuary =>
      'Наш AI створює ваш персональний простір відновлення.';

  @override
  String get understandingHabits => 'Вивчаємо звички...';

  @override
  String get calculatingBaseline => 'Розраховуємо вашу базову точку...';

  @override
  String get personalizingPlan => 'Персоналізуємо ваш план...';

  @override
  String get finalizingSanctuary => 'Завершуємо підготовку вашого простору...';

  @override
  String get creatingYourPlan => 'Створюємо ваш план...';

  @override
  String get personalizedPlanError =>
      'Не вдалося створити ваш персональний план. Спробуйте ще раз.';

  @override
  String get retry => 'Повторити';

  @override
  String get breathInhale => 'ВДИХ';

  @override
  String get breathHold => 'ЗАТРИМКА';

  @override
  String get breathExhale => 'ВИДИХ';

  @override
  String get breathDone => 'ГОТОВО';

  @override
  String get breathGreatJob => 'Чудова робота!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сеансу сьогодні',
      many: '$count сеансів сьогодні',
      few: '$count сеанси сьогодні',
      one: '$count сеанс сьогодні',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Завершити вправу';

  @override
  String get done => 'Готово';

  @override
  String get noCopingTipsYet => 'Порад для подолання ще немає';

  @override
  String get copingStrategiesWillAppear =>
      'Ваші персональні стратегії подолання з\'являться тут після завершення створення плану відновлення.';

  @override
  String get strategiesTailoredToTriggers =>
      'Стратегії, адаптовані до ваших тригерів';

  @override
  String get cravingsPeakAndPass => 'Потяг досягає піку\nі минає';

  @override
  String get rideTheWaveDescription =>
      'Більшість нападів потягу минає протягом 15 хвилин. Вам не потрібно діяти під його впливом — просто перечекайте його разом із нами.';

  @override
  String get stayWithIt => 'продовжуйте';

  @override
  String get youMadeIt => 'ви впоралися';

  @override
  String get readyWhenYouAre => 'готово, коли будете готові';

  @override
  String get rideItAgain => 'Перечекати ще раз';

  @override
  String get start15MinuteTimer => 'Запустити таймер на 15 хвилин';

  @override
  String get rideTheWaveCompletedMessage =>
      'Ви пережили цю хвилю. Це справжня сила. 💪';

  @override
  String get myProgress => 'Мій прогрес';

  @override
  String get weekLabel => 'Тиждень';

  @override
  String get monthLabel => 'Місяць';

  @override
  String get allLabel => 'Увесь період';

  @override
  String get daysSoberStatLabel => 'Дні\nбез алкоголю';

  @override
  String get savedStatLabel => 'Заощаджено';

  @override
  String get avoidedStatLabel => 'Уникнуто';

  @override
  String get moodTrends => 'Тенденції настрою';

  @override
  String get cravingsPattern => 'Модель потягу';

  @override
  String get unlockLabel => 'Розблокувати';

  @override
  String get unlockFullStats => 'Розблокувати повну статистику';

  @override
  String get premiumStatsMessage =>
      'Тенденції настрою та моделі потягу — це функції Premium. Перейдіть на Premium, щоб переглянути повну статистику.';

  @override
  String get healthMilestonesWillAppear =>
      'Ваші досягнення у сфері здоров\'я з\'являться тут.';

  @override
  String get healthMilestones => 'Досягнення у сфері здоров\'я';

  @override
  String dayNumber(int day) {
    return 'День $day';
  }

  @override
  String get soberLabel => 'Без алкоголю';

  @override
  String get slipLabel => 'Зрив';

  @override
  String get noDataLabel => 'Немає даних';

  @override
  String get milestone24Hours => '24 години';

  @override
  String get milestoneOneWeek => 'Один тиждень';

  @override
  String get milestoneOneMonth => 'Один місяць';

  @override
  String get milestoneThreeMonths => 'Три місяці';

  @override
  String get milestoneSixMonths => 'Шість місяців';

  @override
  String get milestoneOneYear => 'Один рік';

  @override
  String milestoneDayCount(int day) {
    return 'Досягнення дня $day';
  }

  @override
  String get maybeLaterLabel => 'Можливо пізніше';

  @override
  String get cancelLabel => 'Скасувати';
}
