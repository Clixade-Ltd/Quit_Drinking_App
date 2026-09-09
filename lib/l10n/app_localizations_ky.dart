// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get skip => 'Өткөрүп жиберүү';

  @override
  String get continueButton => 'Улантуу';

  @override
  String get getStarted => 'Баштоо';

  @override
  String get onboardingTitle1 => 'Жашооңузду көзөмөлдөңүз';

  @override
  String get onboardingSubtitle1 =>
      'Жолуңузду көзөмөлдөп, ар бир жетишкендигиңизди белгилеп, күн сайын ден соолугуңузду жакшыртыңыз.';

  @override
  String get onboardingTitle2 => 'Сиздин AI калыбына келүү өнөктөшүңүз';

  @override
  String get onboardingSubtitle2 =>
      'Жолуңузга ылайыкташтырылган жеке кеңештерди, пайдалуу адаттарды, мотивациялык эскертүүлөрдү жана прогресс отчетторун алыңыз.';

  @override
  String get goodMorning => 'Кутман таң';

  @override
  String get goodAfternoon => 'Кутман күн';

  @override
  String get goodEvening => 'Кутман кеч';

  @override
  String get goodNight => 'Кайырлуу түн';

  @override
  String get embracingClarity =>
      'Ар бир күн сайын айкын жашоого кадам таштаңыз.';

  @override
  String get streakLabel => 'КАТАР';

  @override
  String get goalLabel => 'Максат';

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
  String get premiumPlan => 'Premium планы';

  @override
  String get premiumPlanSubtitle =>
      'Толук калыбына келүү тажрыйбаңыздын мүмкүнчүлүктөрүн ачыңыз';

  @override
  String get accountAndSupport => 'АККАУНТ ЖАНА КОЛДОО';

  @override
  String get privacyPolicy => 'Купуялык саясаты';

  @override
  String get privacyPolicySubtitle =>
      'Маалымат бөлүшүүнү жана аккаунт коопсуздугун башкаруу';

  @override
  String get termsOfService => 'Кызмат көрсөтүү шарттары';

  @override
  String get termsOfServiceSubtitle =>
      'Көп берилүүчү суроолор, байланыш жана ресурстар';

  @override
  String get shareApp => 'Колдонмону бөлүшүү';

  @override
  String get shareAppSubtitle => 'Колдонмону досторуңуз менен бөлүшүңүз';

  @override
  String get resetData => 'Маалыматтарды баштапкы абалга келтирүү';

  @override
  String get resetDataSubtitle =>
      'Бул түзмөктө сакталган нерселердин баарын өчүрүү';

  @override
  String get resetAllDataTitle =>
      'Бардык маалыматтарды баштапкы абалга келтиресизби?';

  @override
  String get resetAllDataMessage =>
      'Бул түзмөктө сакталган профилди, күндөлүк жазууларын жана прогрессти толугу менен өчүрөт жана бул аракетти артка кайтарууга болбойт.';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get reset => 'Баштапкы абалга келтирүү';

  @override
  String get chooseFromGallery => 'Галереядан тандоо';

  @override
  String get takePhoto => 'Сүрөткө тартуу';

  @override
  String get removePhoto => 'Сүрөттү өчүрүү';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Сүрөттү жаңыртуу мүмкүн болгон жок: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Сүрөттү өчүрүү мүмкүн болгон жок: $error';
  }

  @override
  String get photoTooLarge =>
      'Кысылгандан кийин да сүрөт өтө чоң — башка сүрөт колдонуп көрүңүз.';

  @override
  String get unableToLoadProfile => 'Профилиңизди жүктөө мүмкүн болгон жок';

  @override
  String get pleaseTryAgain => 'Кайра аракет кылыңыз.';

  @override
  String get tryAgain => 'Кайра аракет кылуу';

  @override
  String get profileNotFound => 'Профиль табылган жок';

  @override
  String get refresh => 'Жаңыртуу';

  @override
  String get noProfileDataFound =>
      'Бул түзмөктөн азырынча профиль маалыматтары табылган жок.';

  @override
  String couldNotResetData(String error) {
    return 'Маалыматтарды баштапкы абалга келтирүү мүмкүн болгон жок: $error';
  }

  @override
  String get navHome => 'Башкы бет';

  @override
  String get navStats => 'Статистика';

  @override
  String get navJournal => 'Күндөлүк';

  @override
  String get navBadges => 'Белгилер';

  @override
  String get navProfile => 'Профиль';

  @override
  String featureComingSoon(String feature) {
    return '$feature жакында жеткиликтүү болот.';
  }

  @override
  String get appWordmark => 'САЛАМАТТЫК';

  @override
  String get appTitle => 'Ичкиликти таштоо';

  @override
  String get splashSubtitle =>
      'Ичкиликсиз жашоого\nалгачкы кадамыңызды жасаңыз';

  @override
  String get preparingJourney => 'Жолуңузду\nдаярдап жатабыз';

  @override
  String get taskMorningMeditation => 'Эртең мененки медитация (10 мүн)';

  @override
  String get taskReadChapter =>
      '\"The Sober Diaries\" китебинин 4-бөлүмүн окуу';

  @override
  String get taskEveningJournal => 'Кечки ыраазычылык күндөлүгү';

  @override
  String get close => 'Жабуу';

  @override
  String get youAreDoingGreat => 'Сиз абдан жакшы аракет кылып жатасыз!';

  @override
  String get shareMilestone => 'Жетишкендикти бөлүшүү';

  @override
  String shareMilestoneMessage(int days) {
    return 'Мен калыбына келүү жолумдун $days-күнүндөмүн! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Менин калыбына келүү жетишкендигим';

  @override
  String get weeklyReportReadyTitle => 'Апталык отчетуңуз даяр';

  @override
  String get weeklyReportReadySubtitle =>
      'Аптаңыз кандай өткөнүн көрүү үчүн басыңыз';

  @override
  String get howAreYouFeeling => 'Өзүңүздү кандай сезип жатасыз?';

  @override
  String get moodTough => 'Кыйын';

  @override
  String get moodOkay => 'Жакшы эле';

  @override
  String get moodGood => 'Жакшы';

  @override
  String get moneySaved => 'Үнөмдөлгөн акча';

  @override
  String get caloriesSaved => 'Үнөмдөлгөн калория';

  @override
  String get healthScore => 'Ден соолук упайы';

  @override
  String get drinksAvoided => 'Ичилбей калган суусундуктар';

  @override
  String get estimated => 'Болжолдуу';

  @override
  String get aiGenerated => 'AI тарабынан түзүлгөн';

  @override
  String get daysCapsLabel => 'КҮН';

  @override
  String get todaysMotivation => 'Бүгүнкү мотивация';

  @override
  String get defaultMotivationQuote =>
      'Сиз өз чечимиңизди ийгиликтүү сактап келесиз. Оң өзгөрүүлөрдүн агымын уланта бериңиз.';

  @override
  String get talkToCoach => 'Кеңешчи менен сүйлөшүү';

  @override
  String get havingACraving => 'Ичким келип жатат';

  @override
  String get unlockWeeklyReportsTitle => 'Апталык отчетторду ачуу';

  @override
  String get unlockWeeklyReportsMessage =>
      'Ар жума сайын ичпеген күндөрүңүздү, маанайыңыздын өзгөрүшүн жана жеке AI пикирлерин көрүңүз. Ачуу үчүн Premium\'го өтүңүз.';

  @override
  String get maybeLater => 'Балким кийин';

  @override
  String get upgrade => 'Жаңыртуу';

  @override
  String get weeklyReportTitle => 'Апталык отчет';

  @override
  String get weeklyReportsPremiumTitle =>
      'Апталык отчеттор — Premium функциясы';

  @override
  String get weeklyReportsPremiumMessage =>
      'Ар жума сайын ичпеген күндөрүңүздү, маанайыңызды, каалоолоруңузду жана жеке AI пикирлерин көрүңүз.';

  @override
  String get upgradeToPremium => 'Premium\'го өтүү';

  @override
  String get couldNotGenerateReport => 'Учурда отчет түзүү мүмкүн болгон жок.';

  @override
  String get tryAgainLower => 'Кайра аракет кылуу';

  @override
  String get statSoberDays => 'Ичпеген күндөр';

  @override
  String get statAvgMood => 'Орточо маанай';

  @override
  String get statCravings => 'Каалоолор';

  @override
  String get statMoneySaved => 'Үнөмдөлгөн акча';

  @override
  String get coachFeedback => 'Кеңешчинин пикири';

  @override
  String get journalInsights => 'Күндөлүк түшүнүктөрү';

  @override
  String get next => 'Кийинки';

  @override
  String get question1Title => 'Максатыңыз кандай?';

  @override
  String get question1Subtitle => 'Сиз үчүн эң маанилүү\nмаксатты тандаңыз';

  @override
  String get goalQuitCompletely => 'Толугу менен таштоо';

  @override
  String get goalReduceDrinking => 'Ичүүнү азайтуу';

  @override
  String get goalTakeABreak => 'Тыныгуу алуу';

  @override
  String get goalBuildHealthierHabits =>
      'Ден соолукка пайдалуу адаттарды түзүү';

  @override
  String get question3Title => 'Күнүмдүк\nтартибиңиз жөнүндө айтып бериңиз';

  @override
  String get drinksPerWeek => 'Жумасына ичкен суусундуктар';

  @override
  String get moneySpentPerWeek => 'Жумасына сарпталган акча';

  @override
  String get drinkingLevel => 'Ичүү деңгээли';

  @override
  String get triggersLabel => 'Түрткү берүүчү факторлор';

  @override
  String get levelSocial => 'Социалдык';

  @override
  String get levelRegular => 'Үзгүлтүксүз';

  @override
  String get levelHeavy => 'Көп';

  @override
  String get levelDependent => 'Көз каранды';

  @override
  String get triggerStress => 'Стресс';

  @override
  String get triggerLoneliness => 'Жалгыздык';

  @override
  String get triggerHabit => 'Адат';

  @override
  String get triggerSadness => 'Кайгы';

  @override
  String get triggerAnger => 'Ачуулануу';

  @override
  String get triggerBoredom => 'Зеригүү';

  @override
  String get triggerSocialPressure => 'Социалдык басым';

  @override
  String get triggerCelebration => 'Майрамдоо';

  @override
  String get triggerSleepProblems => 'Уйку көйгөйлөрү';

  @override
  String get triggerWorkPressure => 'Жумуш басымы';

  @override
  String get question4Title => 'Эмне үчүн өзгөргүңүз келет?';

  @override
  String get question4Subtitle =>
      'Себебиңиз сизге мотивация берүүгө жардам берет.';

  @override
  String get reasonImproveHealth => 'Ден соолугумду жакшыртуу';

  @override
  String get reasonSaveMoney => 'Акча үнөмдөө';

  @override
  String get reasonFamily => 'Үй-бүлө';

  @override
  String get reasonBetterSleep => 'Жакшыраак уйку';

  @override
  String get reasonMentalClarity => 'Акыл-эстин тунуктугу';

  @override
  String get reasonFitness => 'Фитнес';

  @override
  String get reasonSelfRespect => 'Өзүн сыйлоо';

  @override
  String get reasonCareer => 'Карьера';

  @override
  String get milestoneUnlockedLabel => 'ЖЕТИШКЕНДИК АЧЫЛДЫ';

  @override
  String incredibleNamePrefix(String name) {
    return 'Укмуш, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount үнөмдөлдү';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count ичилбей калды';
  }

  @override
  String get shareMyMilestone => 'Жетишкендигимди бөлүшүү';

  @override
  String get milestoneImageShareError =>
      'Жетишкендиктин сүрөтүн түзүү мүмкүн болгон жок. Кайра аракет кылыңыз.';

  @override
  String get dailyCheckInTitle => 'Күнүмдүк текшерүү';

  @override
  String get howAreYouFeelingToday => 'Бүгүн өзүңүздү кандай сезип жатасыз?';

  @override
  String get honestAnswerHelp =>
      'Чынчыл жообуңуз бизге сизди жакшыраак колдоого жардам берет';

  @override
  String get didYouDrinkToday => 'Бүгүн ичтиңизби?';

  @override
  String get noLabel => 'Жок';

  @override
  String get yesLabel => 'Ооба';

  @override
  String get cravingLevelNow => 'Азыр ичүүгө болгон каалооңуз канчалык күчтүү?';

  @override
  String get anythingOnMind => 'Оюңузда бир нерсе барбы?';

  @override
  String get optionalLabel => '(милдеттүү эмес)';

  @override
  String get dailyNoteHint =>
      'Күнүңүз, түрткүлөрүңүз, жетишкендиктериңиз жөнүндө жазыңыз...';

  @override
  String get alreadyCheckedInToday => 'Бүгүн текшерүүдөн өттүңүз';

  @override
  String get saveCheckIn => 'Текшерүүнү сактоо';

  @override
  String get checkInsHelpTrack =>
      'Текшерүүлөр убакыттын өтүшү менен прогрессти көзөмөлдөөгө жардам берет';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Бүгүнкү текшерүүнү мурунтан эле аяктадыңыз.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Адегенде жогорудагы эки суроого тең жооп бериңиз';

  @override
  String get checkInSaved => 'Текшерүү сакталды';

  @override
  String get cravingNone => 'Жок';

  @override
  String get cravingLow => 'Төмөн';

  @override
  String get cravingMedium => 'Орточо';

  @override
  String get cravingStrong => 'Күчтүү';

  @override
  String get moodBad => 'Жаман';

  @override
  String get moodLow => 'Төмөн';

  @override
  String get moodGreat => 'Абдан жакшы';

  @override
  String get sosSupportTitle => 'SOS колдоо';

  @override
  String notAloneMessage(String name) {
    return 'Сиз жалгыз эмессиз, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Ичүүгө болгон каалоо өтүп кетет. Ушул учурдан өтүүгө жардам бере турган нерсени төмөндөн тандаңыз.';

  @override
  String get breathingExercise => 'Дем алуу көнүгүүсү';

  @override
  String get breathingExerciseSubtitle => 'Жетектелген 4-7-8 ыкмасы, 2 мүнөт';

  @override
  String get rideTheWave => 'Толкунду өткөрүү';

  @override
  String get rideTheWaveSubtitle =>
      '15 мүнөттүк таймер — каалоо дайыма өтүп кетет';

  @override
  String get copingTips => 'Жеңүү боюнча кеңештер';

  @override
  String get copingTipsSubtitle =>
      'Сиздин түрткүлөрүңүзгө ылайыкташтырылган стратегиялар';

  @override
  String get talkToAiCoach => 'AI кеңешчи менен сүйлөшүү';

  @override
  String get talkToAiCoachSubtitle =>
      'Калыбына келүү боюнча өнөктөшүңүз менен сүйлөшүңүз';

  @override
  String get callSomeone => 'Бирөөгө чалуу';

  @override
  String get callSomeoneSubtitle => 'Ишенген адамыңыз менен байланышыңыз';

  @override
  String get contactsPermissionNeeded =>
      'Байланышка чалуу үчүн байланыштарга уруксат керек.';

  @override
  String get beatenCravingsPrefix => 'Сиз ичүүгө болгон каалоону ';

  @override
  String beatenCravingsCount(int count) {
    return '$count жолу жеңдиңиз';
  }

  @override
  String get beatenCravingsSuffix => ' мурда. Муну дагы бир жолу жасай аласыз.';

  @override
  String get tellUsAboutYourself => 'Өзүңүз жөнүндө айтып бериңиз';

  @override
  String get detailsSubtitle =>
      'Бул маалымат калыбына келүү жолуңузду жекелештирүүгө жана так түшүнүктөрдү берүүгө жардам берет.';

  @override
  String get nameLabel => 'Аты';

  @override
  String get nameHint => 'мис., Alex Rivers';

  @override
  String get ageLabel => 'Жаш';

  @override
  String get ageHint => 'мис., 32';

  @override
  String get sexAssignedAtBirth => 'Туулганда аныкталган жыныс';

  @override
  String get sexFemale => 'Аял';

  @override
  String get sexMale => 'Эркек';

  @override
  String get heightLabel => 'Бою';

  @override
  String get weightLabel => 'Салмагы';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Күндөлүк чектөө бүттү';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Бүгүнкү $limit акысыз билдирүүнүн баарын колдондуңуз. Кеңешчи менен чексиз баарлашуу үчүн Premium\'го өтүңүз.';
  }

  @override
  String get coachConnectError =>
      'Учурда туташуу мүмкүн болгон жок. Бир аздан кийин кайра аракет кылыңыз.';

  @override
  String get clearConversationTitle => 'Баарлашууну тазалайсызбы?';

  @override
  String get clearConversationMessage =>
      'Бул кеңешчи менен болгон баарлашуу тарыхыңызды биротоло өчүрөт.';

  @override
  String get clearLabel => 'Тазалоо';

  @override
  String get recoveryCoachTitle => 'Калыбына келүү кеңешчиси';

  @override
  String get onlineLabel => 'Онлайн';

  @override
  String get clearConversationMenuItem => 'Баарлашууну тазалоо';

  @override
  String chatGreeting(String name) {
    return 'Салам, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Сиз жолуңуздун $days-күнүндөсүз. Качан сүйлөшкүңүз келсе, мен ушул жердемин.';
  }

  @override
  String get quickPromptsLabel => 'ТЕЗ СУРООЛОР';

  @override
  String get promptCravingLabel => 'Ичким келип жатат';

  @override
  String get promptCravingSubtitle => 'Тез арада өзүңүздү колго алыңыз';

  @override
  String get promptMotivationLabel => 'Мотивация керек';

  @override
  String get promptMotivationSubtitle => 'Кыйын учурда дем берүү';

  @override
  String get promptSocialLabel => 'Социалдык кырдаал';

  @override
  String get promptSocialSubtitle => 'Жолугушууда туура мамиле кылуу';

  @override
  String get promptSlippedLabel => 'Жаңылып кеттим';

  @override
  String get promptSlippedSubtitle => 'Соттоо жок, жөн гана колдоо';

  @override
  String get typeMessageHint => 'Билдирүү жазыңыз...';

  @override
  String get editProfileTitle => 'Профилди өзгөртүү';

  @override
  String couldNotSaveProfile(String error) {
    return 'Профилди сактоо мүмкүн болгон жок: $error';
  }

  @override
  String get heightCmLabel => 'Бою (см)';

  @override
  String get weightKgLabel => 'Салмагы (кг)';

  @override
  String get saveChangesLabel => 'Өзгөртүүлөрдү сактоо';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights =>
      'Өркүндөтүлгөн түшүнүктөр жана аналитика';

  @override
  String get featureUnlimitedJournal => 'Чексиз күндөлүк жазуулары';

  @override
  String get featureUnlimitedChat => 'AI кеңешчи менен чексиз баарлашуу';

  @override
  String get featureCommunityGroups => 'Өзгөчө коомдук топтор';

  @override
  String get featurePrioritySupport => 'Эксперттик артыкчылыктуу колдоо';

  @override
  String get featureThemePacks => 'Ыңгайлаштырылган тема топтомдору';

  @override
  String get featureDataExport => 'Маалыматтарды экспорттоо';

  @override
  String get featureAdFree => 'Жарнамасыз тажрыйба';

  @override
  String get premiumMemberTitle => 'Сиз Premium мүчөсүсүз';

  @override
  String get unlockFullRecoveryTitle =>
      'Толук калыбына келүү\nтажрыйбасын ачыңыз';

  @override
  String get premiumMemberSubtitle =>
      'Калыбына келүү жолуңузду колдогонуңуз үчүн рахмат — төмөндөгү бардык Premium функциялары ачылды.';

  @override
  String get premiumJoinSubtitle =>
      'Премиум куралдар жана жеке колдоо менен\nкалыбына келүү жолун тездетип жаткан\nмиңдеген адамдардын коомчулугуна кошулуңуз.';

  @override
  String get monthlyPlanLabel => 'Айлык';

  @override
  String get perMonthSuffix => '/ай';

  @override
  String get cancelAnytimeLabel => 'Каалаган убакта жокко чыгарыңыз';

  @override
  String get yearlyPlanLabel => 'Жылдык';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Жылына $amount төлөнөт';
  }

  @override
  String get bestValueLabel => 'Эң пайдалуу';

  @override
  String get alreadyPremiumLabel => 'Сиз Premium ✓';

  @override
  String get startPremiumLabel => 'Premium\'ду баштоо';

  @override
  String get manageSubscriptionLabel =>
      'Түзмөгүңүздүн жазылуу жөндөөлөрүнөн башкаруу же жокко чыгаруу.';

  @override
  String get noCommitmentLabel =>
      'Милдеттенме жок. Каалаган убакта жокко чыгара аласыз.';

  @override
  String get continueFreePlanLabel => 'Акысыз план менен улантуу';

  @override
  String get backToHomeLabel => 'Башкы бетке кайтуу';

  @override
  String get cancelPremiumLabel => 'Premium\'ду жокко чыгаруу';

  @override
  String get cancelPremiumTitle => 'Premium\'ду жокко чыгарасызбы?';

  @override
  String get cancelPremiumMessage =>
      'Чексиз күндөлүк жазууларына, чексиз кеңешчи чатына, статистикалык түшүнүктөргө жана апталык отчетторго жетүү мүмкүнчүлүгүн жоготосуз. Каалаган убакта кайра жазыла аласыз.';

  @override
  String get keepPremiumLabel => 'Premium\'ду сактоо';

  @override
  String get nowPremiumMessage =>
      'Эми сиз Premium мүчөсүсүз! Толук калыбына келүү тажрыйбаңыздан ырахат алыңыз.';

  @override
  String get premiumCancelledMessage =>
      'Premium жокко чыгарылды. Сиз кайра акысыз планга өттүңүз.';

  @override
  String get termsOfUseLabel => 'Колдонуу шарттары';

  @override
  String get navHomeLabel => 'Башкы бет';

  @override
  String get navStatsLabel => 'Статистика';

  @override
  String get navJournalLabel => 'Күндөлүк';

  @override
  String get navBadgesLabel => 'Белгилер';

  @override
  String get navProfileLabel => 'Профиль';

  @override
  String get recoveryGoalsTitle => 'Калыбына келүү максаттары';

  @override
  String get drinksPerWeekLabel => 'Жумасына ичкен суусундуктар';

  @override
  String get quitReasonsLabel => 'Таштоо себептери';

  @override
  String get quitReasonsHelperText => 'Бир нече себепти үтүр менен бөлүңүз.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Калыбына келүү максаттарын сактоо мүмкүн болгон жок: $error';
  }

  @override
  String get goalHint => 'мис., Толук баш тартуу';

  @override
  String get drinksPerWeekHint => 'мис., 12';

  @override
  String get quitReasonsHint => 'мис., Ден соолук, Үй-бүлө, Акча';

  @override
  String get todaysPrompt => 'Бүгүнкү суроо';

  @override
  String get defaultJournalPrompt => 'Бүгүн эмнени ойлоп жатасыз?';

  @override
  String get aiJournalInsights => 'AI күндөлүк түшүнүктөрү';

  @override
  String get unlockJournalInsightsMessage =>
      'Күндөлүк жазууларыңыздан апталык үлгүлөрдү, маанайдын өзгөрүшүн жана жеке түшүнүктөрдү ачыңыз.';

  @override
  String get notEnoughJournalData =>
      'Азырынча маалымат жетишсиз — ушул аптада бир нече жазуу калтырып, кайра текшериңиз.';

  @override
  String get openEntry => 'Ачуу';

  @override
  String get editEntry => 'Өзгөртүү';

  @override
  String get deleteEntry => 'Өчүрүү';

  @override
  String get searchJournalEntries => 'Жазууларды издөө...';

  @override
  String get writeNewEntry => 'Жаңы жазуу жазуу';

  @override
  String get recentEntries => 'Акыркы жазуулар';

  @override
  String get noJournalEntriesYet =>
      'Азырынча күндөлүк жазуулары жок — жогоруда биринчи ой-толгооңузду жазыңыз.';

  @override
  String get noEntriesMatchFilters =>
      'Чыпкаларыңызга туура келген жазуулар жок.';

  @override
  String get weeklyJournalLimitReached => 'Апталык чектөө бүттү';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Бул аптадагы $limit акысыз күндөлүк жазууларынын баарын колдондуңуз. Чексиз жазуулар үчүн Premium\'го өтүңүз.';
  }

  @override
  String get newEntry => 'Жаңы жазуу';

  @override
  String get writeYourThoughts => 'Ойлоруңузду жазыңыз';

  @override
  String get saveEntry => 'Жазууну сактоо';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Бул аптада $limit акысыз жазуунун $remaining даанасы калды';
  }

  @override
  String get deleteEntryQuestion => 'Жазууну өчүрөсүзбү?';

  @override
  String get deleteEntryConfirmation =>
      'Бул жазуу биротоло өчүрүлөт. Муну артка кайтарууга болбойт.';

  @override
  String get journalEntryNotFound => 'Жазуу табылган жок';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Бул күндөлүк жазуусу өчүрүлгөн болушу мүмкүн.';

  @override
  String get goBack => 'Артка кайтуу';

  @override
  String get journalEntryTitle => 'Күндөлүк жазуусу';

  @override
  String get moodStruggling => 'Кыйын болуп жатат';

  @override
  String get moodUnwell => 'Өзүмдү жаман сезип жатам';

  @override
  String get moodNeutral => 'Бейтарап';

  @override
  String get whatHappenedToday => 'Бүгүн эмне болду?';

  @override
  String get trigger => 'Түрткү';

  @override
  String get whatHelped => 'Эмне жардам берди';

  @override
  String get whatIllTryNextTime => 'Кийинки жолу эмнени аракет кылам';

  @override
  String get journalPrivacyMessage =>
      'Сиздин ой-толгооңуз купуя жана күндөлүгүңүздө сакталат.';

  @override
  String get unlocked => 'Ачылды';

  @override
  String daysLeft(int count) {
    return '$count күн калды';
  }

  @override
  String daysCount(int count) {
    return '$count күн';
  }

  @override
  String get firstReflection => 'Биринчи\nой-толгонуу';

  @override
  String get oneJournalEntry => '1 күндөлүк жазуусу';

  @override
  String get openBook => 'Китепти ачуу';

  @override
  String get tenJournalEntries => '10 күндөлүк жазуусу';

  @override
  String get dedicatedWriter => 'Берилген\nжазуучу';

  @override
  String get thirtyJournalEntries => '30 күндөлүк жазуусу';

  @override
  String get firstConversation => 'Биринчи\nбаарлашуу';

  @override
  String get oneAiCoachChat => '1 AI кеңешчи чаты';

  @override
  String get keepTalking => 'Сүйлөшүүнү улантуу';

  @override
  String get fiveConversations => '5 баарлашуу';

  @override
  String get coachCompanion => 'Кеңешчи\nөнөктөш';

  @override
  String get twentyConversations => '20 баарлашуу';

  @override
  String get checkInHabit => 'Текшерүү\nадаты';

  @override
  String get sevenCheckIns => '7 текшерүү';

  @override
  String get consistencyPro => 'Туруктуулук\nчебери';

  @override
  String get thirtyCheckIns => '30 текшерүү';

  @override
  String get dedicatedJourney => 'Берилген\nжол';

  @override
  String get hundredCheckIns => '100 текшерүү';

  @override
  String get goalGetter => 'Максатка жетүүчү';

  @override
  String get threeGoalsCompleted => '3 максат аткарылды';

  @override
  String get goalAchiever => 'Максат\nжетишкен';

  @override
  String get tenGoalsCompleted => '10 максат аткарылды';

  @override
  String get firstSavings => 'Биринчи\nүнөмдөө';

  @override
  String get fiveHundredSaved => '\$500 үнөмдөлдү';

  @override
  String get smartSaver => 'Акылдуу үнөмдөөчү';

  @override
  String get oneThousandSaved => '\$1,000 үнөмдөлдү';

  @override
  String get bigSaver => 'Чоң үнөмдөөчү';

  @override
  String get fiveThousandSaved => '\$5,000 үнөмдөлдү';

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
      'Уланта бериңиз — биринчи жетишкендигиңиз сизди күтүп жатат!';

  @override
  String get badgesAndMilestones => 'Белгилер жана жетишкендиктер';

  @override
  String get yourMilestoneJourney => 'Сиздин жетишкендиктер жолу';

  @override
  String milestonesAchieved(int count) {
    return '$count жетишкендикке жеттиңиз.\nКөрүү үчүн басыңыз';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Жолуңуздагы $total жетишкендиктин ичинен $unlocked жетишкендикти ачтыңыз.';
  }

  @override
  String get remaining => 'Калган';

  @override
  String get complete => 'Аяктады';

  @override
  String get nextMilestone => 'Кийинки жетишкендик';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% аткарылды';
  }

  @override
  String get sobrietyMilestones => 'Ичпөө жетишкендиктери';

  @override
  String get journeyBadges => 'Жол белгилери';

  @override
  String get bronze => 'КОЛО';

  @override
  String get silver => 'КҮМҮШ';

  @override
  String get gold => 'АЛТЫН';

  @override
  String get platinum => 'ПЛАТИНА';

  @override
  String get diamond => 'БРИЛЛИАНТ';

  @override
  String get analyzingYourJourney => 'Жолуңуз талданып жатат...';

  @override
  String get aiCreatingSanctuary =>
      'AI сиз үчүн жеке калыбына келүү мейкиндигин түзүп жатат.';

  @override
  String get understandingHabits => 'Адаттарды түшүнүп жатабыз...';

  @override
  String get calculatingBaseline => 'Баштапкы көрсөткүчүңүз эсептелүүдө...';

  @override
  String get personalizingPlan => 'Планыңыз жекелештирилүүдө...';

  @override
  String get finalizingSanctuary =>
      'Калыбына келүү мейкиндигиңиз даярдалууда...';

  @override
  String get creatingYourPlan => 'Планыңыз түзүлүүдө...';

  @override
  String get personalizedPlanError =>
      'Сиз үчүн жеке план түзө алган жокпуз. Кайра аракет кылыңыз.';

  @override
  String get retry => 'Кайра аракет кылуу';

  @override
  String get breathInhale => 'ДЕМ АЛУУ';

  @override
  String get breathHold => 'КАРМОО';

  @override
  String get breathExhale => 'ДЕМ ЧЫГАРУУ';

  @override
  String get breathDone => 'БҮТТҮ';

  @override
  String get breathGreatJob => 'Азаматсыз!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'бүгүн $count сессия',
      one: 'бүгүн $count сессия',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Көнүгүүнү аяктоо';

  @override
  String get done => 'Бүттү';

  @override
  String get noCopingTipsYet => 'Азырынча жеңүү боюнча кеңештер жок';

  @override
  String get copingStrategiesWillAppear =>
      'Калыбына келүү планыңыз түзүлүп бүткөндөн кийин, жеке стратегияларыңыз бул жерде көрсөтүлөт.';

  @override
  String get strategiesTailoredToTriggers =>
      'Түрткүлөрүңүзгө ылайыкташтырылган стратегиялар';

  @override
  String get cravingsPeakAndPass =>
      'Ичүүгө болгон каалоо күчөп,\nанан өтүп кетет';

  @override
  String get rideTheWaveDescription =>
      'Көпчүлүк каалоолор 15 мүнөттүн ичинде өтүп кетет. Ага берилип кетүүнүн кереги жок — биз менен бирге бул учурду өткөрүп жибериңиз.';

  @override
  String get stayWithIt => 'уланта бериңиз';

  @override
  String get youMadeIt => 'сиз муну жасадыңыз';

  @override
  String get readyWhenYouAre => 'даяр болгондо баштаңыз';

  @override
  String get rideItAgain => 'Дагы бир жолу өткөрүү';

  @override
  String get start15MinuteTimer => '15 мүнөттүк таймерди баштоо';

  @override
  String get rideTheWaveCompletedMessage =>
      'Сиз бул толкундан өттүңүз. Бул чыныгы күч. 💪';

  @override
  String get myProgress => 'Менин прогрессим';

  @override
  String get weekLabel => 'Апта';

  @override
  String get monthLabel => 'Ай';

  @override
  String get allLabel => 'Баары';

  @override
  String get daysSoberStatLabel => 'Ичпеген\nкүндөр';

  @override
  String get savedStatLabel => 'Үнөмдөлдү';

  @override
  String get avoidedStatLabel => 'Ичилген жок';

  @override
  String get moodTrends => 'Маанайдын өзгөрүшү';

  @override
  String get cravingsPattern => 'Каалоолордун үлгүсү';

  @override
  String get unlockLabel => 'Ачуу';

  @override
  String get unlockFullStats => 'Толук статистиканы ачуу';

  @override
  String get premiumStatsMessage =>
      'Маанайдын өзгөрүшү жана каалоолордун үлгүлөрү Premium функциялары. Толук статистиканы көрүү үчүн жаңыртыңыз.';

  @override
  String get healthMilestonesWillAppear =>
      'Ден соолук жетишкендиктериңиз бул жерде көрсөтүлөт.';

  @override
  String get healthMilestones => 'Ден соолук жетишкендиктери';

  @override
  String dayNumber(int day) {
    return '$day-күн';
  }

  @override
  String get soberLabel => 'Ичпөө';

  @override
  String get slipLabel => 'Жаңылыштык';

  @override
  String get noDataLabel => 'Маалымат жок';

  @override
  String get milestone24Hours => '24 саат';

  @override
  String get milestoneOneWeek => 'Бир апта';

  @override
  String get milestoneOneMonth => 'Бир ай';

  @override
  String get milestoneThreeMonths => 'Үч ай';

  @override
  String get milestoneSixMonths => 'Алты ай';

  @override
  String get milestoneOneYear => 'Бир жыл';

  @override
  String milestoneDayCount(int day) {
    return '$day-күн жетишкендиги';
  }

  @override
  String get maybeLaterLabel => 'Балким кийинчерээк';

  @override
  String get cancelLabel => 'Жокко чыгаруу';
}
