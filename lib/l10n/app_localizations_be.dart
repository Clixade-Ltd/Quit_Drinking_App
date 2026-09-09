// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get skip => 'Прапусціць';

  @override
  String get continueButton => 'Працягнуць';

  @override
  String get getStarted => 'Пачаць';

  @override
  String get onboardingTitle1 => 'Вазьміце жыццё пад кантроль';

  @override
  String get onboardingSubtitle1 =>
      'Адсочвайце свой шлях, святкуйце кожнае дасягненне і станавіцеся здаравейшымі з кожным днём.';

  @override
  String get onboardingTitle2 => 'Ваш ШІ-памочнік у аднаўленні';

  @override
  String get onboardingSubtitle2 =>
      'Атрымлівайце персаналізаваныя парады, здаровыя звычкі, матывацыйныя нагадванні і справаздачы пра прагрэс.';

  @override
  String get goodMorning => 'Добрай раніцы';

  @override
  String get goodAfternoon => 'Добры дзень';

  @override
  String get goodEvening => 'Добры вечар';

  @override
  String get goodNight => 'Добрай ночы';

  @override
  String get embracingClarity => 'Крок за крокам да яснасці думкамі.';

  @override
  String get streakLabel => 'СЕРЫЯ';

  @override
  String get goalLabel => 'Мэта';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дзён',
      many: '$count дзён',
      few: '$count дні',
      one: '$count дзень',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Преміум-план';

  @override
  String get premiumPlanSubtitle => 'Разблакуйце поўны функцыянал аднаўлення';

  @override
  String get accountAndSupport => 'АКУНТ І ПАДТРЫМКА';

  @override
  String get privacyPolicy => 'Палітыка прыватнасці';

  @override
  String get privacyPolicySubtitle => 'Кіраванне данымі і бяспека акаўнта';

  @override
  String get termsOfService => 'Умовы выкарыстання';

  @override
  String get termsOfServiceSubtitle => 'FAQ, кантакты і рэсурсы';

  @override
  String get shareApp => 'Падзяліцца праграмай';

  @override
  String get shareAppSubtitle => 'Падзяліцеся праграмай з сябрамі';

  @override
  String get resetData => 'Скінуць даныя';

  @override
  String get resetDataSubtitle =>
      'Выдаліць усе захаваныя даныя на гэтай прыладзе';

  @override
  String get resetAllDataTitle => 'Скінуць усе даныя?';

  @override
  String get resetAllDataMessage =>
      'Гэта выдаліць усе захаваныя на прыладзе даныя: профіль, запісы ў дзённіку і прагрэс. Дзеянне нельга адмяніць.';

  @override
  String get cancel => 'Адмена';

  @override
  String get reset => 'Скінуць';

  @override
  String get chooseFromGallery => 'Выбраць з галерэі';

  @override
  String get takePhoto => 'Зрабіць фота';

  @override
  String get removePhoto => 'Выдаліць фота';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Не ўдалося абнавіць фота: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Не ўдалося выдаліць фота: $error';
  }

  @override
  String get photoTooLarge =>
      'Фота занадта вялікае нават пасля сціскання — паспрабуйце іншае.';

  @override
  String get unableToLoadProfile => 'Не ўдалося загрузіць профіль';

  @override
  String get pleaseTryAgain => 'Паспрабуйце яшчэ раз.';

  @override
  String get tryAgain => 'Паўтарыць';

  @override
  String get profileNotFound => 'Профіль не знойдзены';

  @override
  String get refresh => 'Абнавіць';

  @override
  String get noProfileDataFound =>
      'На гэтай прыладзе пакуль няма даных профілю.';

  @override
  String couldNotResetData(String error) {
    return 'Не ўдалося скінуць даныя: $error';
  }

  @override
  String get navHome => 'Галоўная';

  @override
  String get navStats => 'Статыстыка';

  @override
  String get navJournal => 'Дзённік';

  @override
  String get navBadges => 'Значкі';

  @override
  String get navProfile => 'Профіль';

  @override
  String featureComingSoon(String feature) {
    return 'Функцыя «$feature» хутка стане даступнай.';
  }

  @override
  String get appWordmark => 'ЗДАРОЎЕ';

  @override
  String get appTitle => 'Sober Flow';

  @override
  String get splashSubtitle => 'Зрабіце першы крок да\nцвярозага жыцця';

  @override
  String get preparingJourney => 'Падрыхтоўка вашага\nшляху';

  @override
  String get taskMorningMeditation => 'Унітраняя медытацыя (10хв)';

  @override
  String get taskReadChapter => 'Прачытаць главу 4 з \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Вячэрні дзённік удзячнасці';

  @override
  String get close => 'Зачыніць';

  @override
  String get youAreDoingGreat => 'Вы выдатна трымаецеся!';

  @override
  String get shareMilestone => 'Падзяліцца дасягненнем';

  @override
  String shareMilestoneMessage(int days) {
    return 'Я ўжо $days-і дзень на шляху да цвярозасці! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Маё дасягненне ў цвярозасці';

  @override
  String get weeklyReportReadyTitle => 'Ваша тыднёвая справаздача гатова';

  @override
  String get weeklyReportReadySubtitle => 'Націсніце, каб убачыць вынікі тыдня';

  @override
  String get howAreYouFeeling => 'Як вы сябе адчуваеце?';

  @override
  String get moodTough => 'Цяжка';

  @override
  String get moodOkay => 'Нармальны';

  @override
  String get moodGood => 'Добра';

  @override
  String get moneySaved => 'Захавана грошай';

  @override
  String get caloriesSaved => 'Сэканомлена калорый';

  @override
  String get healthScore => 'Індэкс здароўя';

  @override
  String get drinksAvoided => 'Прапушчана напіткаў';

  @override
  String get estimated => 'Прыблізна';

  @override
  String get aiGenerated => 'Згенеравана ШІ';

  @override
  String get daysCapsLabel => 'ДЗЁН';

  @override
  String get todaysMotivation => 'Матывацыя на сёння';

  @override
  String get defaultMotivationQuote =>
      'Вы паспяхова прытрымліваецеся свайго абяцання. Працягвайце рухацца да станоўчых змен.';

  @override
  String get talkToCoach => 'Пагаварыць з настаўнікам';

  @override
  String get havingACraving => 'Адчуваю цягу';

  @override
  String get unlockWeeklyReportsTitle => 'Разблакаваць тыднёвыя справаздачы';

  @override
  String get unlockWeeklyReportsMessage =>
      'Сачыце за цвярозымі днямі, дынамікай настрою і атрымлівайце парады ад ШІ кожны тыдзень. Перайдзіце на Преміум.';

  @override
  String get maybeLater => 'Магчыма, пазней';

  @override
  String get upgrade => 'Абнавіць';

  @override
  String get weeklyReportTitle => 'Тыднёвая справаздача';

  @override
  String get weeklyReportsPremiumTitle =>
      'Тыднёвыя справаздачы — функцыя Преміум';

  @override
  String get weeklyReportsPremiumMessage =>
      'Аналізуйце свае цвярозыя дні, змены настрою, усыпыскі цягі і атрымлівайце персаналізаваны аналіз ад ШІ.';

  @override
  String get upgradeToPremium => 'Перайсці на Преміум';

  @override
  String get couldNotGenerateReport =>
      'Не ўдалося сфарміраваць справаздачу прама зараз.';

  @override
  String get tryAgainLower => 'Паспрабаваць зноў';

  @override
  String get statSoberDays => 'Цвярозыя дні';

  @override
  String get statAvgMood => 'Сярэдні настрой';

  @override
  String get statCravings => 'Успышкі цягі';

  @override
  String get statMoneySaved => 'Захаваныя грошы';

  @override
  String get coachFeedback => 'Парады настаўніка';

  @override
  String get journalInsights => 'Аналіз дзённіка';

  @override
  String get next => 'Далей';

  @override
  String get question1Title => 'Якая ваша мэта';

  @override
  String get question1Subtitle =>
      'Выберыце мэту, якая найбольш\nважная для вас';

  @override
  String get goalQuitCompletely => 'Кінуць цалкам';

  @override
  String get goalReduceDrinking => 'Зменшыць ужыванне';

  @override
  String get goalTakeABreak => 'Зрабіць перапынак';

  @override
  String get goalBuildHealthierHabits => 'Сфарміраваць карысныя звычкі';

  @override
  String get question3Title => 'Раскажыце пра ваш\nзвычайны рэжым';

  @override
  String get drinksPerWeek => 'Порцый у тыдзень';

  @override
  String get moneySpentPerWeek => 'Выдаткі ў тыдзень';

  @override
  String get drinkingLevel => 'Узровень ужывання';

  @override
  String get triggersLabel => 'Трыгеры';

  @override
  String get levelSocial => 'Па святах';

  @override
  String get levelRegular => 'Рэгулярна';

  @override
  String get levelHeavy => 'Шмат';

  @override
  String get levelDependent => 'Залежнасць';

  @override
  String get triggerStress => 'Стрэс';

  @override
  String get triggerLoneliness => 'Адната';

  @override
  String get triggerHabit => 'Звычка';

  @override
  String get triggerSadness => 'Смутак';

  @override
  String get triggerAnger => 'Злосць';

  @override
  String get triggerBoredom => 'Нуда';

  @override
  String get triggerSocialPressure => 'Ціск асяроддзя';

  @override
  String get triggerCelebration => 'Святкаванне';

  @override
  String get triggerSleepProblems => 'Праблы з сном';

  @override
  String get triggerWorkPressure => 'Працоўны ціск';

  @override
  String get question4Title => 'Чаму вы хочаце змяніцца?';

  @override
  String get question4Subtitle => 'Ваша прычына дапаможа захаваць матывацыю.';

  @override
  String get reasonImproveHealth => 'Палепшыць здароўе';

  @override
  String get reasonSaveMoney => 'Сэканоміць грошы';

  @override
  String get reasonFamily => 'Сям\'я';

  @override
  String get reasonBetterSleep => 'Лепшы сон';

  @override
  String get reasonMentalClarity => 'Яснасць розуму';

  @override
  String get reasonFitness => 'Фізічная форма';

  @override
  String get reasonSelfRespect => 'Павага да сябе';

  @override
  String get reasonCareer => 'Кар\'ера';

  @override
  String get milestoneUnlockedLabel => 'ДАСЯГНЕННЕ РАЗБЛАКАВАНА';

  @override
  String incredibleNamePrefix(String name) {
    return 'Неверагодна, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'Захавана $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'Прапушчана порцый: $count';
  }

  @override
  String get shareMyMilestone => 'Падзяліцца дасягненнем';

  @override
  String get milestoneImageShareError =>
      'Не ўдалося стварыць малюнак дасягнення. Паспрабуйце зноў.';

  @override
  String get dailyCheckInTitle => 'Штодзённая адзнака';

  @override
  String get howAreYouFeelingToday => 'Як вы сябе адчуваеце сёння?';

  @override
  String get honestAnswerHelp => 'Шчыры адказ дапаможа нам лепш падтрымаць вас';

  @override
  String get didYouDrinkToday => 'Вы пілі сёння?';

  @override
  String get noLabel => 'Ні';

  @override
  String get yesLabel => 'Так';

  @override
  String get cravingLevelNow => 'Узровень цягі зараз?';

  @override
  String get anythingOnMind => 'Што ў вас на душы?';

  @override
  String get optionalLabel => '(неабавязкова)';

  @override
  String get dailyNoteHint => 'Напішыце пра свой дзень, трыгеры, перамогі...';

  @override
  String get alreadyCheckedInToday => 'Вы ўжо адзначыліся сёння';

  @override
  String get saveCheckIn => 'Захаваць адзнаку';

  @override
  String get checkInsHelpTrack =>
      'Штодзённыя адзнакі дапамагаюць сачыць за прагрэсам';

  @override
  String get alreadyCompletedTodayCheckIn => 'Вы ўжо прайшлі адзнаку на сёння.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Калі ласка, спачатку адкажыце на абодва пытанні вышэй';

  @override
  String get checkInSaved => 'Адзнака захавана';

  @override
  String get cravingNone => 'Няма';

  @override
  String get cravingLow => 'Нізкі';

  @override
  String get cravingMedium => 'Сярэдні';

  @override
  String get cravingStrong => 'Сильны';

  @override
  String get moodBad => 'Дрэнны';

  @override
  String get moodLow => 'Прыгнечаны';

  @override
  String get moodGreat => 'Выдатна';

  @override
  String get sosSupportTitle => 'SOS Падтрымка';

  @override
  String notAloneMessage(String name) {
    return 'Вы не адны, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Цяга праходзіць. Выберыце што-небудзь ніжэй, каб пераадолець гэты момант.';

  @override
  String get breathingExercise => 'Дыхальныя практыкаванні';

  @override
  String get breathingExerciseSubtitle =>
      'Тэхніка 4-7-8 з інструкцыямі, 2 хвіліны';

  @override
  String get rideTheWave => 'Перачакаць хвалю';

  @override
  String get rideTheWaveSubtitle =>
      'Таймер на 15 хвілін — цяга заўсёды праходзіць';

  @override
  String get copingTips => 'Парады па супакаенні';

  @override
  String get copingTipsSubtitle => 'Персанальныя стратэгіі для вашых трыгераў';

  @override
  String get talkToAiCoach => 'Пагаварыць з ШІ-настаўнікам';

  @override
  String get talkToAiCoachSubtitle => 'Чат з вашым памочнікам па аднаўленні';

  @override
  String get callSomeone => 'Патэлефанаваць камусьці';

  @override
  String get callSomeoneSubtitle => 'Звязацца з давераным кантактам';

  @override
  String get contactsPermissionNeeded =>
      'Дазвол на доступ да кантактаў патрэбны для званка.';

  @override
  String get beatenCravingsPrefix => 'Вы ўжо пераадольвалі цягу ';

  @override
  String beatenCravingsCount(int count) {
    return '$count разоў';
  }

  @override
  String get beatenCravingsSuffix => '. Вы зможаце зрабіць гэта зноў.';

  @override
  String get tellUsAboutYourself => 'Раскажыце пра сябе';

  @override
  String get detailsSubtitle =>
      'Гэтая інфармацыя дапаможа нам персаналізаваць ваш шлях і прадастаўляць точныя звесткі.';

  @override
  String get nameLabel => 'Імя';

  @override
  String get nameHint => 'напрыклад, Аляксей';

  @override
  String get ageLabel => 'Узрост';

  @override
  String get ageHint => 'напрыклад, 32';

  @override
  String get sexAssignedAtBirth => 'Біялагічны пол';

  @override
  String get sexFemale => 'Жаночы';

  @override
  String get sexMale => 'Мужчынскі';

  @override
  String get heightLabel => 'Рост';

  @override
  String get weightLabel => 'Вага';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Дасягнуты дзённы ліміт';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Вы выкарысталі ўсе $limit бясплатныя паведамленні на сёння. Перайдзіце на Преміум для неабмежаванага чата.';
  }

  @override
  String get coachConnectError =>
      'Не ўдалося падключыцца. Калі ласка, паспрабуйце трохі пазней.';

  @override
  String get clearConversationTitle => 'Ачысціць дыялог?';

  @override
  String get clearConversationMessage =>
      'Гэта незваротна выдаліць гісторыю чата з настаўнікам.';

  @override
  String get clearLabel => 'Ачысціць';

  @override
  String get recoveryCoachTitle => 'Настаўнік па аднаўленні';

  @override
  String get onlineLabel => 'У сетцы';

  @override
  String get clearConversationMenuItem => 'Ачысціць дыялог';

  @override
  String chatGreeting(String name) {
    return 'Прывіт, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Вы ўжо $days-і дзень у дарозе. Я тут, калі вам спатрэбіцца пагаварыць.';
  }

  @override
  String get quickPromptsLabel => 'ХУТКІЯ ПЫТАННІ';

  @override
  String get promptCravingLabel => 'Адчуваю цягу';

  @override
  String get promptCravingSubtitle => 'Хутка супакоіцца';

  @override
  String get promptMotivationLabel => 'Патрэбна матывацыя';

  @override
  String get promptMotivationSubtitle => 'Падтрымка ў цяжкі момант';

  @override
  String get promptSocialLabel => 'Сацыяльная сітуацыя';

  @override
  String get promptSocialSubtitle => 'Як паводзіць сябе на сустрэчы';

  @override
  String get promptSlippedLabel => 'Я сарваўся(лася)';

  @override
  String get promptSlippedSubtitle => 'Без асуджэння, толькі падтрымка';

  @override
  String get typeMessageHint => 'Напішыце паведамленне...';

  @override
  String get editProfileTitle => 'Рэдагаваць профіль';

  @override
  String couldNotSaveProfile(String error) {
    return 'Не ўдалося захаваць профіль: $error';
  }

  @override
  String get heightCmLabel => 'Рост (см)';

  @override
  String get weightKgLabel => 'Вага (кг)';

  @override
  String get saveChangesLabel => 'Захаваць змены';

  @override
  String get premiumBadgeLabel => 'ПРЕМІУМ';

  @override
  String get featureAdvancedInsights => 'Пашыраны аналіз і статыстыка';

  @override
  String get featureUnlimitedJournal => 'Неабмежаваныя запісы ў дзённіку';

  @override
  String get featureUnlimitedChat => 'Неабмежаваны чат з ШІ-настаўнікам';

  @override
  String get featureCommunityGroups => 'Эксклюзіўныя групы супольнасці';

  @override
  String get featurePrioritySupport => 'Прыярытэтная падтрымка экспертаў';

  @override
  String get featureThemePacks => 'Уласныя кастомныя тэмы';

  @override
  String get featureDataExport => 'Экспарт даных';

  @override
  String get featureAdFree => 'Без рэкламы';

  @override
  String get premiumMemberTitle => 'Вы Преміум-карыстальнік';

  @override
  String get unlockFullRecoveryTitle =>
      'Разблакуйце ўсе магчымасці\nвашага аднаўлення';

  @override
  String get premiumMemberSubtitle =>
      'Дзякуй за падтрымку вашага шляху — усе преміум-функцыі ніжэй разблакаваны.';

  @override
  String get premiumJoinSubtitle =>
      'Далучайцеся да супольнасці тысяч людзей,\nякія паскараюць сваё аднаўленне з дапамогай\nнашых преміум-інструментаў.';

  @override
  String get monthlyPlanLabel => 'За месяц';

  @override
  String get perMonthSuffix => '/мес';

  @override
  String get cancelAnytimeLabel => 'Адмена ў любы час';

  @override
  String get yearlyPlanLabel => 'За год';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Спісваецца $amount у год';
  }

  @override
  String get bestValueLabel => 'Самае выгаднае';

  @override
  String get alreadyPremiumLabel => 'У вас Преміум ✓';

  @override
  String get startPremiumLabel => 'Пачаць Преміум';

  @override
  String get manageSubscriptionLabel =>
      'Кіруйце падпіскай або адмяняйце яе ў наладах прылады.';

  @override
  String get noCommitmentLabel => 'Без абавязацельстваў. Адмена ў любы час.';

  @override
  String get continueFreePlanLabel => 'Працягнуць з бясплатным планам';

  @override
  String get backToHomeLabel => 'На галоўную';

  @override
  String get cancelPremiumLabel => 'Адмяніць Преміум';

  @override
  String get cancelPremiumTitle => 'Адмяніць Преміум?';

  @override
  String get cancelPremiumMessage =>
      'Вы страціце доступ да неабмежаванага дзённіка, чата з настаўнікам, пашыранай статыстыкі і тыднёвых справаздач. Вы зможаце падпісацца зноў у любы час.';

  @override
  String get keepPremiumLabel => 'Пакінуць Преміум';

  @override
  String get nowPremiumMessage =>
      'Цяпер у вас Преміум! Карыстайцеся ўсімі магчымасцямі.';

  @override
  String get premiumCancelledMessage =>
      'Преміум скасаваны. Вы вярнуліся на бясплатны план.';

  @override
  String get termsOfUseLabel => 'Умовы выкарыстання';

  @override
  String get navHomeLabel => 'Галоўная';

  @override
  String get navStatsLabel => 'Статыстыка';

  @override
  String get navJournalLabel => 'Дзённік';

  @override
  String get navBadgesLabel => 'Значкі';

  @override
  String get navProfileLabel => 'Профіль';

  @override
  String get recoveryGoalsTitle => 'Мэты аднаўлення';

  @override
  String get drinksPerWeekLabel => 'Порцый у тыдзень';

  @override
  String get quitReasonsLabel => 'Прычыны кінуць';

  @override
  String get quitReasonsHelperText => 'Задзяляйце некалькі прычын коскай.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Не ўдалося захаваць мэты: $error';
  }

  @override
  String get goalHint => 'напрыклад, Поўны адмова';

  @override
  String get drinksPerWeekHint => 'напрыклад, 12';

  @override
  String get quitReasonsHint => 'напрыклад, Здароўе, Сям\'я, Грошы';

  @override
  String get todaysPrompt => 'Тэма дня';

  @override
  String get defaultJournalPrompt => 'Пра што вы думаеце сёння?';

  @override
  String get aiJournalInsights => 'Аналіз дзённіка ад ШІ';

  @override
  String get unlockJournalInsightsMessage =>
      'Разблакуйце аналіз за тыдзень, трэнды настрою і індывідуальныя высновы на аснове вашых запісаў.';

  @override
  String get notEnoughJournalData =>
      'Пакуль недастаткова даных — зрабіце некалькі запісаў на гэтым тыдні і зазірніце пазней.';

  @override
  String get openEntry => 'Адкрыць';

  @override
  String get editEntry => 'Рэдагаваць';

  @override
  String get deleteEntry => 'Выдаліць';

  @override
  String get searchJournalEntries => 'Пошук запісаў...';

  @override
  String get writeNewEntry => 'Новы запіс';

  @override
  String get recentEntries => 'Aпошнія запісы';

  @override
  String get noJournalEntriesYet =>
      'Запісаў у дзённіку пакуль няма — напішыце сваю першую думку вышэй.';

  @override
  String get noEntriesMatchFilters =>
      'Няма запісаў, якія адпавядаюць фільтрам.';

  @override
  String get weeklyJournalLimitReached => 'Дасягнуты тыднёвы ліміт';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Вы выкарысталі ўсе $limit бясплатныя запісы на гэтым тыдні. Перайдзіце на Преміум для неабмежаваных запісаў.';
  }

  @override
  String get newEntry => 'Новы запіс';

  @override
  String get writeYourThoughts => 'Запішыце свае думкі';

  @override
  String get saveEntry => 'Захаваць запіс';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Засталося бясплатных запісаў на тыдні: $remaining з $limit';
  }

  @override
  String get deleteEntryQuestion => 'Выдаліць запіс?';

  @override
  String get deleteEntryConfirmation =>
      'Гэты запіс будзе выдалены канчаткова. Дзеянне нельга адмяніць.';

  @override
  String get journalEntryNotFound => 'Запіс не знойдзены';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Магчыма, гэты запіс у дзённіку быў выдалены.';

  @override
  String get goBack => 'Назад';

  @override
  String get journalEntryTitle => 'Запіс у дзённіку';

  @override
  String get moodStruggling => 'Цяжка';

  @override
  String get moodUnwell => 'Дрэнна';

  @override
  String get moodNeutral => 'Нейтральна';

  @override
  String get whatHappenedToday => 'Што здарылася сёння?';

  @override
  String get trigger => 'Трыгер';

  @override
  String get whatHelped => 'Што дапамагло';

  @override
  String get whatIllTryNextTime => 'Што я паспрабую ў наступны раз';

  @override
  String get journalPrivacyMessage =>
      'Вашы разважанні прыватныя і захаваны ў вашым дзённіку.';

  @override
  String get unlocked => 'Разблакавана';

  @override
  String daysLeft(int count) {
    return 'Засталося дзён: $count';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дзён',
      many: '$count дзён',
      few: '$count дні',
      one: '$count дзень',
    );
    return '$_temp0';
  }

  @override
  String get firstReflection => 'Першыя\nдумкі';

  @override
  String get oneJournalEntry => '1 запіс у дзённіку';

  @override
  String get openBook => 'Адкрытая кніга';

  @override
  String get tenJournalEntries => '10 запісаў у дзённіку';

  @override
  String get dedicatedWriter => 'Адданы\nаўтар';

  @override
  String get thirtyJournalEntries => '30 запісаў у дзённіку';

  @override
  String get firstConversation => 'Першы\nдыялог';

  @override
  String get oneAiCoachChat => '1 чат з ШІ-настаўнікам';

  @override
  String get keepTalking => 'Працягвайце дыялог';

  @override
  String get fiveConversations => '5 дыялогаў';

  @override
  String get coachCompanion => 'Настаўнік і\nпамочнік';

  @override
  String get twentyConversations => '20 дыялогаў';

  @override
  String get checkInHabit => 'Звычка\nадзначацца';

  @override
  String get sevenCheckIns => '7 адзнак';

  @override
  String get consistencyPro => 'Майстар\nпастаянства';

  @override
  String get thirtyCheckIns => '30 адзнак';

  @override
  String get dedicatedJourney => 'Адданы\nшлях';

  @override
  String get hundredCheckIns => '100 адзнак';

  @override
  String get goalGetter => 'Цэлеспрэмлены';

  @override
  String get threeGoalsCompleted => '3 дасягнутыя мэты';

  @override
  String get goalAchiever => 'Дасягальнік\nмэт';

  @override
  String get tenGoalsCompleted => '10 дасягнутых мэт';

  @override
  String get firstSavings => 'Першыя\nашчаджэнні';

  @override
  String get fiveHundredSaved => 'Сэканомлена \$500';

  @override
  String get smartSaver => 'Разумны эканом';

  @override
  String get oneThousandSaved => 'Сэканомлена \$1,000';

  @override
  String get bigSaver => 'Вялікі эканом';

  @override
  String get fiveThousandSaved => 'Сэканомлена \$5,000';

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
      'Рухайцеся далей — ваша першае дасягненне чакае вас!';

  @override
  String get badgesAndMilestones => 'Значкі і дасягненні';

  @override
  String get yourMilestoneJourney => 'Ваш шлях дасягненняў';

  @override
  String milestonesAchieved(int count) {
    return 'Дасягнута: $count.\nНацісніце для прагляду';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Вы разблакавалі $unlocked з $total дасягненняў на сваім шляху.';
  }

  @override
  String get remaining => 'Засталося';

  @override
  String get complete => 'Завершана';

  @override
  String get nextMilestone => 'Наступнае дасягненне';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% прайдзена';
  }

  @override
  String get sobrietyMilestones => 'Дасягненні ў цвярозасці';

  @override
  String get journeyBadges => 'Значкі шляху';

  @override
  String get bronze => 'БРОНЗА';

  @override
  String get silver => 'СРАБРА';

  @override
  String get gold => 'ЗОЛАТА';

  @override
  String get platinum => 'ПЛАТІНА';

  @override
  String get diamond => 'ДЫЯМАНТ';

  @override
  String get analyzingYourJourney => 'Аналіз вашага шляху...';

  @override
  String get aiCreatingSanctuary =>
      'Наш ШІ стварае вашу персанальную прастору.';

  @override
  String get understandingHabits => 'Аналіз звычак...';

  @override
  String get calculatingBaseline => 'Разлік пачатковага ўзроўню...';

  @override
  String get personalizingPlan => 'Персаналізацыя плана...';

  @override
  String get finalizingSanctuary => 'Завяршэнне стварэння прасторы...';

  @override
  String get creatingYourPlan => 'Стварэнне вашага плана...';

  @override
  String get personalizedPlanError =>
      'Не ўдалося стварыць ваш індывідуальны план. Паспрабуйце зноў.';

  @override
  String get retry => 'Паўтарыць';

  @override
  String get breathInhale => 'УДЫХ';

  @override
  String get breathHold => 'ЗАТРЫМКА';

  @override
  String get breathExhale => 'ВЫДЫХ';

  @override
  String get breathDone => 'ГАТОВА';

  @override
  String get breathGreatJob => 'Выдатная праца!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сеансаў сёння',
      many: '$count сеансаў сёння',
      few: '$count сеансы сёння',
      one: '$count сеанс сёння',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Завяршыць практыкаванне';

  @override
  String get done => 'Гатова';

  @override
  String get noCopingTipsYet => 'Парадаў пакуль няма';

  @override
  String get copingStrategiesWillAppear =>
      'Вашы персанальныя стратэгіі з\'явяцца тут пасля завяршэння генерацыі плана.';

  @override
  String get strategiesTailoredToTriggers =>
      'Стратэгіі, адаптаваныя пад вашы трыгеры';

  @override
  String get cravingsPeakAndPass => 'Цяга дасягае піку\nі праходзіць';

  @override
  String get rideTheWaveDescription =>
      'Большасць успышак цягі праходзяць за 15 хвілін. Вам не трэба паддавацца — basit перачакайце гэта разам з намі.';

  @override
  String get stayWithIt => 'Трымайцеся';

  @override
  String get youMadeIt => 'Вы зрабілі гэта';

  @override
  String get readyWhenYouAre => 'Гатовы, калі вы гатовы';

  @override
  String get rideItAgain => 'Перачакаць яшчэ раз';

  @override
  String get start15MinuteTimer => 'Запусціць таймер на 15 хвілін';

  @override
  String get rideTheWaveCompletedMessage =>
      'Вы перачакалі хвалю. Гэта сапраўдная сіла. 💪';

  @override
  String get myProgress => 'Мой прагрэс';

  @override
  String get weekLabel => 'Тыдзень';

  @override
  String get monthLabel => 'Месяц';

  @override
  String get allLabel => 'Усе';

  @override
  String get daysSoberStatLabel => 'Цвярозыя\nдні';

  @override
  String get savedStatLabel => 'Захавана';

  @override
  String get avoidedStatLabel => 'Прапушчана';

  @override
  String get moodTrends => 'Трэнды настрою';

  @override
  String get cravingsPattern => 'Патэрны цягі';

  @override
  String get unlockLabel => 'Разблакаваць';

  @override
  String get unlockFullStats => 'Разблакаваць поўную статыстыку';

  @override
  String get premiumStatsMessage =>
      'Аналітыка настрою і патэрны цягі даступныя ў Преміум. Абнавіцеся для поўнага доступу.';

  @override
  String get healthMilestonesWillAppear =>
      'Вашы дасягненні ў здароўі з\'явяцца тут.';

  @override
  String get healthMilestones => 'Дасягненні ў здароўі';

  @override
  String dayNumber(int day) {
    return 'Дзень $day';
  }

  @override
  String get soberLabel => 'Цвярозасць';

  @override
  String get slipLabel => 'Срыў';

  @override
  String get noDataLabel => 'Няма даных';

  @override
  String get milestone24Hours => '24 гадзіны';

  @override
  String get milestoneOneWeek => 'Адзін тыдзень';

  @override
  String get milestoneOneMonth => 'Адзін месяц';

  @override
  String get milestoneThreeMonths => 'Тры месяцы';

  @override
  String get milestoneSixMonths => 'Шэсць месяцаў';

  @override
  String get milestoneOneYear => 'Адзін год';

  @override
  String milestoneDayCount(int day) {
    return 'Дасягненне: дзень $day';
  }

  @override
  String get maybeLaterLabel => 'Магчыма пазней';

  @override
  String get cancelLabel => 'Скасаваць';
}
