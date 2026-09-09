// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get skip => 'Алгасах';

  @override
  String get continueButton => 'Үргэлжлүүлэх';

  @override
  String get getStarted => 'Эхлэх';

  @override
  String get onboardingTitle1 => 'Амьдралаа удирдаарай';

  @override
  String get onboardingSubtitle1 =>
      'Замналаа хянаж, амжилт бүрээ тэмдэглэн, өдөр бүр бага багаар эрүүл болоорой.';

  @override
  String get onboardingTitle2 => 'Таны AI сэргэлтийн хамтрагч';

  @override
  String get onboardingSubtitle2 =>
      'Таны замналд тохирсон хувийн зөвлөгөө, эрүүл дадал, урам зоригийн сануулга болон ахицын тайланг хүлээн аваарай.';

  @override
  String get goodMorning => 'Өглөөний мэнд';

  @override
  String get goodAfternoon => 'Өдрийн мэнд';

  @override
  String get goodEvening => 'Оройн мэнд';

  @override
  String get goodNight => 'Сайхан амраарай';

  @override
  String get embracingClarity =>
      'Өдөр бүр нэг алхмаар сэтгэл санаагаа цэгцэлж байна.';

  @override
  String get streakLabel => 'ДАРААЛАЛ';

  @override
  String get goalLabel => 'Зорилго';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count өдөр',
      one: '$count өдөр',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Премиум багц';

  @override
  String get premiumPlanSubtitle => 'Сэргэлтийн бүрэн боломжоо нээгээрэй';

  @override
  String get accountAndSupport => 'БҮРТГЭЛ БА ТУСЛАМЖ';

  @override
  String get privacyPolicy => 'Нууцлалын бодлого';

  @override
  String get privacyPolicySubtitle =>
      'Өгөгдөл хуваалцах болон бүртгэлийн аюулгүй байдлаа удирдах';

  @override
  String get termsOfService => 'Үйлчилгээний нөхцөл';

  @override
  String get termsOfServiceSubtitle =>
      'Түгээмэл асуулт, бидэнтэй холбогдох болон нөөцүүд';

  @override
  String get shareApp => 'Апп хуваалцах';

  @override
  String get shareAppSubtitle => 'Аппыг найзуудтайгаа хуваалцах';

  @override
  String get resetData => 'Өгөгдлийг дахин тохируулах';

  @override
  String get resetDataSubtitle =>
      'Энэ төхөөрөмж дээр хадгалсан бүх зүйлийг устгах';

  @override
  String get resetAllDataTitle => 'Бүх өгөгдлийг дахин тохируулах уу?';

  @override
  String get resetAllDataMessage =>
      'Энэ нь төхөөрөмж дээр хадгалсан профайл, тэмдэглэл болон ахиц зэрэг бүх зүйлийг устгах бөгөөд буцаах боломжгүй.';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get reset => 'Дахин тохируулах';

  @override
  String get chooseFromGallery => 'Галерейгаас сонгох';

  @override
  String get takePhoto => 'Зураг авах';

  @override
  String get removePhoto => 'Зургийг устгах';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Зургийг шинэчилж чадсангүй: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Зургийг устгаж чадсангүй: $error';
  }

  @override
  String get photoTooLarge =>
      'Энэ зураг шахсан ч хэтэрхий том байна — өөр зураг сонгоно уу.';

  @override
  String get unableToLoadProfile => 'Таны профайлыг ачаалж чадсангүй';

  @override
  String get pleaseTryAgain => 'Дахин оролдоно уу.';

  @override
  String get tryAgain => 'Дахин оролдох';

  @override
  String get profileNotFound => 'Профайл олдсонгүй';

  @override
  String get refresh => 'Шинэчлэх';

  @override
  String get noProfileDataFound =>
      'Энэ төхөөрөмж дээр одоогоор профайлын мэдээлэл алга байна.';

  @override
  String couldNotResetData(String error) {
    return 'Өгөгдлийг дахин тохируулж чадсангүй: $error';
  }

  @override
  String get navHome => 'Нүүр';

  @override
  String get navStats => 'Статистик';

  @override
  String get navJournal => 'Тэмдэглэл';

  @override
  String get navBadges => 'Тэмдгүүд';

  @override
  String get navProfile => 'Профайл';

  @override
  String featureComingSoon(String feature) {
    return '$feature удахгүй боломжтой болно.';
  }

  @override
  String get appWordmark => 'ЭРҮҮЛ МЭНД';

  @override
  String get appTitle => 'Архи уухаа болих';

  @override
  String get splashSubtitle => 'Архигүй амьдралынхаа\nэхний алхмыг хийгээрэй';

  @override
  String get preparingJourney => 'Таны\nзамналыг бэлдэж байна';

  @override
  String get taskMorningMeditation => 'Өглөөний бясалгал (10 мин)';

  @override
  String get taskReadChapter =>
      '\"Архигүй амьдралын тэмдэглэл\" номын 4-р бүлгийг унших';

  @override
  String get taskEveningJournal => 'Оройн талархлын тэмдэглэл';

  @override
  String get close => 'Хаах';

  @override
  String get youAreDoingGreat => 'Та маш сайн явж байна!';

  @override
  String get shareMilestone => 'Чухал үе шатаа хуваалцах';

  @override
  String shareMilestoneMessage(int days) {
    return 'Би сэргэлтийн замналынхаа $days дахь өдөрт явж байна! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Миний сэргэлтийн чухал үе шат';

  @override
  String get weeklyReportReadyTitle =>
      'Таны долоо хоногийн тайлан бэлэн боллоо';

  @override
  String get weeklyReportReadySubtitle =>
      'Долоо хоног тань хэр өнгөрснийг харахын тулд товшино уу';

  @override
  String get howAreYouFeeling => 'Та ямар санагдаж байна?';

  @override
  String get moodTough => 'Хэцүү';

  @override
  String get moodOkay => 'Зүгээр';

  @override
  String get moodGood => 'Сайн';

  @override
  String get moneySaved => 'Хэмнэсэн мөнгө';

  @override
  String get caloriesSaved => 'Хэмнэсэн калори';

  @override
  String get healthScore => 'Эрүүл мэндийн оноо';

  @override
  String get drinksAvoided => 'Зайлсхийсэн ундааны тоо';

  @override
  String get estimated => 'Тооцоолсон';

  @override
  String get aiGenerated => 'AI үүсгэсэн';

  @override
  String get daysCapsLabel => 'ӨДӨР';

  @override
  String get todaysMotivation => 'Өнөөдрийн урам зориг';

  @override
  String get defaultMotivationQuote =>
      'Та өөрийн амлалтаа амжилттай биелүүлсээр байна. Эерэг өөрчлөлтийн энэ давалгааг үргэлжлүүлээрэй.';

  @override
  String get talkToCoach => 'Дасгалжуулагчтай ярилцах';

  @override
  String get havingACraving => 'Би архи уух хүсэл төрж байна';

  @override
  String get unlockWeeklyReportsTitle => 'Долоо хоногийн тайланг нээх';

  @override
  String get unlockWeeklyReportsMessage =>
      'Архигүй өдрүүд, сэтгэл санааны чиг хандлага болон долоо хоног бүрийн хувийн AI зөвлөгөөг хараарай. Нээхийн тулд Премиум руу шилжинэ үү.';

  @override
  String get maybeLater => 'Дараа болъё';

  @override
  String get upgrade => 'Шинэчлэх';

  @override
  String get weeklyReportTitle => 'Долоо хоногийн тайлан';

  @override
  String get weeklyReportsPremiumTitle =>
      'Долоо хоногийн тайлан нь Премиум боломж';

  @override
  String get weeklyReportsPremiumMessage =>
      'Архигүй өдрүүд, сэтгэл санааны чиг хандлага, архи уух хүсэл болон хувийн AI зөвлөгөөг долоо хоног бүр хараарай.';

  @override
  String get upgradeToPremium => 'Премиум руу шилжих';

  @override
  String get couldNotGenerateReport =>
      'Таны тайланг одоогоор үүсгэж чадсангүй.';

  @override
  String get tryAgainLower => 'Дахин оролдох';

  @override
  String get statSoberDays => 'Архигүй өдрүүд';

  @override
  String get statAvgMood => 'Дундаж сэтгэл санаа';

  @override
  String get statCravings => 'Архи уух хүсэл';

  @override
  String get statMoneySaved => 'Хэмнэсэн мөнгө';

  @override
  String get coachFeedback => 'Дасгалжуулагчийн зөвлөгөө';

  @override
  String get journalInsights => 'Тэмдэглэлийн мэдээлэл';

  @override
  String get next => 'Дараагийн';

  @override
  String get question1Title => 'Таны зорилго юу вэ?';

  @override
  String get question1Subtitle =>
      'Танд хамгийн их ач холбогдолтой\nзорилгоо сонгоно уу';

  @override
  String get goalQuitCompletely => 'Бүрэн зогсоох';

  @override
  String get goalReduceDrinking => 'Архи уухаа багасгах';

  @override
  String get goalTakeABreak => 'Завсарлага авах';

  @override
  String get goalBuildHealthierHabits => 'Эрүүл дадал бий болгох';

  @override
  String get question3Title => 'Өдөр тутмынхаа\nхэвшлийн талаар хэлнэ үү';

  @override
  String get drinksPerWeek => 'Долоо хоногт уудаг ундаа';

  @override
  String get moneySpentPerWeek => 'Долоо хоногт зарцуулдаг мөнгө';

  @override
  String get drinkingLevel => 'Архи хэрэглээний түвшин';

  @override
  String get triggersLabel => 'Өдөөгч хүчин зүйлс';

  @override
  String get levelSocial => 'Нийгмийн';

  @override
  String get levelRegular => 'Тогтмол';

  @override
  String get levelHeavy => 'Их';

  @override
  String get levelDependent => 'Хамааралтай';

  @override
  String get triggerStress => 'Стресс';

  @override
  String get triggerLoneliness => 'Ганцаардал';

  @override
  String get triggerHabit => 'Дадал';

  @override
  String get triggerSadness => 'Гуниг';

  @override
  String get triggerAnger => 'Уур';

  @override
  String get triggerBoredom => 'Уйтгар';

  @override
  String get triggerSocialPressure => 'Нийгмийн дарамт';

  @override
  String get triggerCelebration => 'Баяр ёслол';

  @override
  String get triggerSleepProblems => 'Нойрны асуудал';

  @override
  String get triggerWorkPressure => 'Ажлын дарамт';

  @override
  String get question4Title => 'Та яагаад өөрчлөгдөхийг хүсэж байна вэ?';

  @override
  String get question4Subtitle => 'Таны шалтгаан танд урам зориг өгөх болно.';

  @override
  String get reasonImproveHealth => 'Эрүүл мэндээ сайжруулах';

  @override
  String get reasonSaveMoney => 'Мөнгө хэмнэх';

  @override
  String get reasonFamily => 'Гэр бүл';

  @override
  String get reasonBetterSleep => 'Илүү сайн унтах';

  @override
  String get reasonMentalClarity => 'Оюун санааны цэвэр байдал';

  @override
  String get reasonFitness => 'Биеийн тамир';

  @override
  String get reasonSelfRespect => 'Өөрийгөө хүндлэх';

  @override
  String get reasonCareer => 'Карьер';

  @override
  String get milestoneUnlockedLabel => 'ЧУХАЛ ҮЕ ШАТ НЭЭГДЛЭЭ';

  @override
  String incredibleNamePrefix(String name) {
    return 'Гайхалтай, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount хэмнэсэн';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count зайлсхийсэн';
  }

  @override
  String get shareMyMilestone => 'Чухал үе шатаа хуваалцах';

  @override
  String get milestoneImageShareError =>
      'Чухал үе шатны зургийг үүсгэж чадсангүй. Дахин оролдоно уу.';

  @override
  String get dailyCheckInTitle => 'Өдөр тутмын бүртгэл';

  @override
  String get howAreYouFeelingToday => 'Өнөөдөр танд ямар санагдаж байна?';

  @override
  String get honestAnswerHelp =>
      'Таны үнэн зөв хариулт бидэнд танд илүү сайн туслахад тусална';

  @override
  String get didYouDrinkToday => 'Та өнөөдөр архи уусан уу?';

  @override
  String get noLabel => 'Үгүй';

  @override
  String get yesLabel => 'Тийм';

  @override
  String get cravingLevelNow => 'Одоо архи уух хүсэл ямар түвшинд байна?';

  @override
  String get anythingOnMind => 'Таны санаанд юу байна?';

  @override
  String get optionalLabel => '(заавал биш)';

  @override
  String get dailyNoteHint =>
      'Өдөр, өдөөгч хүчин зүйлс, амжилтынхаа талаар бичээрэй...';

  @override
  String get alreadyCheckedInToday =>
      'Өнөөдрийн бүртгэлийг аль хэдийн хийсэн байна';

  @override
  String get saveCheckIn => 'Бүртгэлийг хадгалах';

  @override
  String get checkInsHelpTrack =>
      'Өдөр тутмын бүртгэл нь таны ахицыг цаг хугацааны явцад хянахад тусална';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Та өнөөдрийн бүртгэлийг аль хэдийн хийсэн байна.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Эхлээд дээрх хоёр асуултад хариулна уу';

  @override
  String get checkInSaved => 'Бүртгэл хадгалагдлаа';

  @override
  String get cravingNone => 'Огт байхгүй';

  @override
  String get cravingLow => 'Бага';

  @override
  String get cravingMedium => 'Дунд';

  @override
  String get cravingStrong => 'Хүчтэй';

  @override
  String get moodBad => 'Муу';

  @override
  String get moodLow => 'Тааруу';

  @override
  String get moodGreat => 'Маш сайн';

  @override
  String get sosSupportTitle => 'SOS тусламж';

  @override
  String notAloneMessage(String name) {
    return 'Та ганцаараа биш, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Архи уух хүсэл өнгөрдөг. Энэ мөчийг даван туулахад туслах доорх зүйлсээс сонгоно уу.';

  @override
  String get breathingExercise => 'Амьсгалын дасгал';

  @override
  String get breathingExerciseSubtitle => 'Удирдамжтай 4-7-8 техник, 2 минут';

  @override
  String get rideTheWave => 'Давалгааг даван туулах';

  @override
  String get rideTheWaveSubtitle => '15 минутын таймер — хүсэл үргэлж өнгөрдөг';

  @override
  String get copingTips => 'Даван туулах зөвлөмж';

  @override
  String get copingTipsSubtitle => 'Таны өдөөгч хүчин зүйлд тохирсон стратеги';

  @override
  String get talkToAiCoach => 'AI дасгалжуулагчтай ярилцах';

  @override
  String get talkToAiCoachSubtitle => 'Таны сэргэлтийн хамтрагчтай чатлах';

  @override
  String get callSomeone => 'Хэн нэгэн рүү залгах';

  @override
  String get callSomeoneSubtitle => 'Итгэдэг хүнтэйгээ холбогдох';

  @override
  String get contactsPermissionNeeded =>
      'Харилцагч руу залгахын тулд Contacts зөвшөөрөл шаардлагатай.';

  @override
  String get beatenCravingsPrefix => 'Та архи уух хүслийг ';

  @override
  String beatenCravingsCount(int count) {
    return '$count удаа давсан';
  }

  @override
  String get beatenCravingsSuffix => ' өмнө нь. Та дахин чадна.';

  @override
  String get tellUsAboutYourself => 'Өөрийнхөө талаар хэлнэ үү';

  @override
  String get detailsSubtitle =>
      'Энэ мэдээлэл нь таны сэргэлтийн замналыг хувийн болгож, зөв мэдээлэл өгөхөд тусална.';

  @override
  String get nameLabel => 'Нэр';

  @override
  String get nameHint => 'жишээ нь, Alex Rivers';

  @override
  String get ageLabel => 'Нас';

  @override
  String get ageHint => 'жишээ нь, 32';

  @override
  String get sexAssignedAtBirth => 'Төрөх үед бүртгэгдсэн хүйс';

  @override
  String get sexFemale => 'Эмэгтэй';

  @override
  String get sexMale => 'Эрэгтэй';

  @override
  String get heightLabel => 'Өндөр';

  @override
  String get weightLabel => 'Жин';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Өдрийн хязгаарт хүрлээ';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Та өнөөдөр үнэгүй ашиглах боломжтой $limit мессежээ бүгдийг ашигласан байна. Хязгааргүй дасгалжуулагчийн чат авахын тулд Премиум руу шилжинэ үү.';
  }

  @override
  String get coachConnectError =>
      'Одоогоор холбогдож чадсангүй. Хэсэг хугацааны дараа дахин оролдоно уу.';

  @override
  String get clearConversationTitle => 'Яриаг арилгах уу?';

  @override
  String get clearConversationMessage =>
      'Энэ нь таны дасгалжуулагчийн чатны түүхийг бүрмөсөн устгана.';

  @override
  String get clearLabel => 'Арилгах';

  @override
  String get recoveryCoachTitle => 'Сэргэлтийн дасгалжуулагч';

  @override
  String get onlineLabel => 'Онлайн';

  @override
  String get clearConversationMenuItem => 'Яриаг арилгах';

  @override
  String chatGreeting(String name) {
    return 'Сайн уу, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Та замналынхаа $days дахь өдөрт явж байна. Ярилцахыг хүссэн үед тань би энд байна.';
  }

  @override
  String get quickPromptsLabel => 'ШУУРХАЙ САНАЛУУД';

  @override
  String get promptCravingLabel => 'Архи уух хүсэл төрж байна';

  @override
  String get promptCravingSubtitle => 'Хурдан тайвшрах';

  @override
  String get promptMotivationLabel => 'Урам зориг хэрэгтэй';

  @override
  String get promptMotivationSubtitle => 'Хэцүү үед багахан дэмжлэг';

  @override
  String get promptSocialLabel => 'Нийгмийн нөхцөл байдал';

  @override
  String get promptSocialSubtitle => 'Цуглааныг даван туулах';

  @override
  String get promptSlippedLabel => 'Би алдчихлаа';

  @override
  String get promptSlippedSubtitle => 'Шүүмжлэлгүй, зөвхөн дэмжлэг';

  @override
  String get typeMessageHint => 'Мессеж бичих...';

  @override
  String get editProfileTitle => 'Профайл засах';

  @override
  String couldNotSaveProfile(String error) {
    return 'Профайлыг хадгалж чадсангүй: $error';
  }

  @override
  String get heightCmLabel => 'Өндөр (см)';

  @override
  String get weightKgLabel => 'Жин (кг)';

  @override
  String get saveChangesLabel => 'Өөрчлөлтийг хадгалах';

  @override
  String get premiumBadgeLabel => 'ПРЕМИУМ';

  @override
  String get featureAdvancedInsights => 'Дэвшилтэт мэдээлэл ба аналитик';

  @override
  String get featureUnlimitedJournal => 'Хязгааргүй тэмдэглэл';

  @override
  String get featureUnlimitedChat => 'AI дасгалжуулагчтай хязгааргүй чат';

  @override
  String get featureCommunityGroups => 'Онцгой нийгэмлэгийн бүлгүүд';

  @override
  String get featurePrioritySupport => 'Мэргэжилтний тэргүүлэх дэмжлэг';

  @override
  String get featureThemePacks => 'Захиалгат загварын багцууд';

  @override
  String get featureDataExport => 'Өгөгдөл экспортлох';

  @override
  String get featureAdFree => 'Зар сурталчилгаагүй хэрэглээ';

  @override
  String get premiumMemberTitle => 'Та Премиум гишүүн';

  @override
  String get unlockFullRecoveryTitle => 'Сэргэлтийн бүрэн\nболомжоо нээгээрэй';

  @override
  String get premiumMemberSubtitle =>
      'Сэргэлтийн замналаа дэмжиж байгаад баярлалаа — доорх бүх Премиум боломж нээгдсэн.';

  @override
  String get premiumJoinSubtitle =>
      'Сэргэлтийн замналаа манай\nПремиум хэрэгслүүд болон хувийн\nдэмжлэгээр хурдасгаж буй мянга мянган хүмүүст нэгдээрэй.';

  @override
  String get monthlyPlanLabel => 'Сар бүр';

  @override
  String get perMonthSuffix => '/сар';

  @override
  String get cancelAnytimeLabel => 'Хэзээ ч цуцалж болно';

  @override
  String get yearlyPlanLabel => 'Жил бүр';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Жил бүр $amount-оор төлбөр тооцно';
  }

  @override
  String get bestValueLabel => 'Хамгийн ашигтай';

  @override
  String get alreadyPremiumLabel => 'Та Премиум ✓';

  @override
  String get startPremiumLabel => 'Премиум эхлүүлэх';

  @override
  String get manageSubscriptionLabel =>
      'Төхөөрөмжийнхөө захиалгын тохиргооноос удирдах эсвэл цуцална уу.';

  @override
  String get noCommitmentLabel =>
      'Ямар ч үүрэг хариуцлагагүй. Хэзээ ч цуцалж болно.';

  @override
  String get continueFreePlanLabel => 'Үнэгүй багцаар үргэлжлүүлэх';

  @override
  String get backToHomeLabel => 'Нүүр рүү буцах';

  @override
  String get cancelPremiumLabel => 'Премиумыг цуцлах';

  @override
  String get cancelPremiumTitle => 'Премиумыг цуцлах уу?';

  @override
  String get cancelPremiumMessage =>
      'Та хязгааргүй тэмдэглэл, хязгааргүй дасгалжуулагчийн чат, статистикийн мэдээлэл болон долоо хоногийн тайлангийн эрхээ алдана. Та хүссэн үедээ дахин захиалж болно.';

  @override
  String get keepPremiumLabel => 'Премиумыг хадгалах';

  @override
  String get nowPremiumMessage =>
      'Та одоо Премиум хэрэглэгч боллоо! Сэргэлтийн бүрэн боломжоо ашиглаарай.';

  @override
  String get premiumCancelledMessage =>
      'Премиум цуцлагдлаа. Та үнэгүй багцдаа буцаж орлоо.';

  @override
  String get termsOfUseLabel => 'Ашиглах нөхцөл';

  @override
  String get navHomeLabel => 'Нүүр';

  @override
  String get navStatsLabel => 'Статистик';

  @override
  String get navJournalLabel => 'Тэмдэглэл';

  @override
  String get navBadgesLabel => 'Тэмдгүүд';

  @override
  String get navProfileLabel => 'Профайл';

  @override
  String get recoveryGoalsTitle => 'Сэргэлтийн зорилгууд';

  @override
  String get drinksPerWeekLabel => 'Долоо хоногт уудаг ундаа';

  @override
  String get quitReasonsLabel => 'Зогсоох шалтгаан';

  @override
  String get quitReasonsHelperText =>
      'Олон шалтгааныг таслалаар тусгаарлана уу.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Сэргэлтийн зорилгыг хадгалж чадсангүй: $error';
  }

  @override
  String get goalHint => 'жишээ нь, бүрэн татгалзах';

  @override
  String get drinksPerWeekHint => 'жишээ нь, 12';

  @override
  String get quitReasonsHint => 'жишээ нь, Эрүүл мэнд, Гэр бүл, Мөнгө';

  @override
  String get todaysPrompt => 'Өнөөдрийн асуулт';

  @override
  String get defaultJournalPrompt => 'Өнөөдөр таны санаанд юу байна?';

  @override
  String get aiJournalInsights => 'AI тэмдэглэлийн мэдээлэл';

  @override
  String get unlockJournalInsightsMessage =>
      'Тэмдэглэлээсээ долоо хоногийн хэв маяг, сэтгэл санааны чиг хандлага болон хувийн мэдээллийг нээгээрэй.';

  @override
  String get notEnoughJournalData =>
      'Одоогоор мэдээлэл хангалтгүй байна — энэ долоо хоногт хэдэн тэмдэглэл бичээд дараа дахин шалгана уу.';

  @override
  String get openEntry => 'Нээх';

  @override
  String get editEntry => 'Засах';

  @override
  String get deleteEntry => 'Устгах';

  @override
  String get searchJournalEntries => 'Тэмдэглэл хайх...';

  @override
  String get writeNewEntry => 'Шинэ тэмдэглэл бичих';

  @override
  String get recentEntries => 'Сүүлийн тэмдэглэлүүд';

  @override
  String get noJournalEntriesYet =>
      'Одоогоор тэмдэглэл алга — дээрх хэсэгт анхны бодлоо бичээрэй.';

  @override
  String get noEntriesMatchFilters => 'Таны шүүлтүүрт тохирох тэмдэглэл алга.';

  @override
  String get weeklyJournalLimitReached => 'Долоо хоногийн хязгаарт хүрлээ';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Та энэ долоо хоногт үнэгүй ашиглах боломжтой $limit тэмдэглэлээ бүгдийг ашигласан байна. Хязгааргүй тэмдэглэл авахын тулд Премиум руу шилжинэ үү.';
  }

  @override
  String get newEntry => 'Шинэ тэмдэглэл';

  @override
  String get writeYourThoughts => 'Бодол санаагаа бичээрэй';

  @override
  String get saveEntry => 'Тэмдэглэл хадгалах';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Энэ долоо хоногт $remaining / $limit үнэгүй тэмдэглэл үлдсэн';
  }

  @override
  String get deleteEntryQuestion => 'Тэмдэглэлийг устгах уу?';

  @override
  String get deleteEntryConfirmation =>
      'Энэ тэмдэглэл бүрмөсөн устах бөгөөд буцаах боломжгүй.';

  @override
  String get journalEntryNotFound => 'Тэмдэглэл олдсонгүй';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Энэ тэмдэглэл устсан байж болзошгүй.';

  @override
  String get goBack => 'Буцах';

  @override
  String get journalEntryTitle => 'Тэмдэглэл';

  @override
  String get moodStruggling => 'Хэцүү байна';

  @override
  String get moodUnwell => 'Тавгүй';

  @override
  String get moodNeutral => 'Төвийг сахисан';

  @override
  String get whatHappenedToday => 'Өнөөдөр юу болсон бэ?';

  @override
  String get trigger => 'Өдөөгч';

  @override
  String get whatHelped => 'Юу тус болсон';

  @override
  String get whatIllTryNextTime => 'Дараагийн удаа би юу туршиж үзэх вэ';

  @override
  String get journalPrivacyMessage =>
      'Таны эргэцүүлэл нууц бөгөөд тэмдэглэлд тань хадгалагдана.';

  @override
  String get unlocked => 'Нээгдсэн';

  @override
  String daysLeft(int count) {
    return '$count өдөр үлдлээ';
  }

  @override
  String daysCount(int count) {
    return '$count өдөр';
  }

  @override
  String get firstReflection => 'Анхны\nэргэцүүлэл';

  @override
  String get oneJournalEntry => '1 тэмдэглэл';

  @override
  String get openBook => 'Ном нээх';

  @override
  String get tenJournalEntries => '10 тэмдэглэл';

  @override
  String get dedicatedWriter => 'Тууштай\nбичигч';

  @override
  String get thirtyJournalEntries => '30 тэмдэглэл';

  @override
  String get firstConversation => 'Анхны\nяриа';

  @override
  String get oneAiCoachChat => '1 AI дасгалжуулагчийн чат';

  @override
  String get keepTalking => 'Яриагаа үргэлжлүүлэх';

  @override
  String get fiveConversations => '5 яриа';

  @override
  String get coachCompanion => 'Дасгалжуулагчийн\nхамтрагч';

  @override
  String get twentyConversations => '20 яриа';

  @override
  String get checkInHabit => 'Бүртгэлийн\nдадал';

  @override
  String get sevenCheckIns => '7 бүртгэл';

  @override
  String get consistencyPro => 'Тууштай байдлын\nмэргэжилтэн';

  @override
  String get thirtyCheckIns => '30 бүртгэл';

  @override
  String get dedicatedJourney => 'Тууштай\nзамнал';

  @override
  String get hundredCheckIns => '100 бүртгэл';

  @override
  String get goalGetter => 'Зорилгодоо хүрэгч';

  @override
  String get threeGoalsCompleted => '3 зорилго биелүүлсэн';

  @override
  String get goalAchiever => 'Зорилго\nбиелүүлэгч';

  @override
  String get tenGoalsCompleted => '10 зорилго биелүүлсэн';

  @override
  String get firstSavings => 'Анхны\nхуримтлал';

  @override
  String get fiveHundredSaved => '\$500 хэмнэсэн';

  @override
  String get smartSaver => 'Ухаалаг хэмнэгч';

  @override
  String get oneThousandSaved => '\$1,000 хэмнэсэн';

  @override
  String get bigSaver => 'Их хэмнэгч';

  @override
  String get fiveThousandSaved => '\$5,000 хэмнэсэн';

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
      'Үргэлжлүүлээрэй — таны анхны чухал үе шат таныг хүлээж байна!';

  @override
  String get badgesAndMilestones => 'Тэмдэг ба чухал үе шатууд';

  @override
  String get yourMilestoneJourney => 'Таны чухал үе шатын замнал';

  @override
  String milestonesAchieved(int count) {
    return '$count чухал үе шат биеллээ.\nҮзэхийн тулд товшино уу';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Та замналынхаа $total чухал үе шатаас $unlocked-г нээсэн байна.';
  }

  @override
  String get remaining => 'Үлдсэн';

  @override
  String get complete => 'Бүрэн';

  @override
  String get nextMilestone => 'Дараагийн чухал үе шат';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% хүрсэн';
  }

  @override
  String get sobrietyMilestones => 'Архигүй байдлын чухал үе шатууд';

  @override
  String get journeyBadges => 'Замналын тэмдгүүд';

  @override
  String get bronze => 'ХҮРЭЛ';

  @override
  String get silver => 'МӨНГӨН';

  @override
  String get gold => 'АЛТАН';

  @override
  String get platinum => 'ПЛАТИН';

  @override
  String get diamond => 'АЛМАЗ';

  @override
  String get analyzingYourJourney => 'Таны замналыг шинжилж байна...';

  @override
  String get aiCreatingSanctuary =>
      'Манай AI танд зориулсан хувийн орон зайг үүсгэж байна.';

  @override
  String get understandingHabits => 'Дадлуудыг ойлгож байна...';

  @override
  String get calculatingBaseline => 'Таны суурь үзүүлэлтийг тооцоолж байна...';

  @override
  String get personalizingPlan => 'Төлөвлөгөөг тань хувийн болгож байна...';

  @override
  String get finalizingSanctuary => 'Таны хувийн орон зайг эцэслэж байна...';

  @override
  String get creatingYourPlan => 'Таны төлөвлөгөөг үүсгэж байна...';

  @override
  String get personalizedPlanError =>
      'Таны хувийн төлөвлөгөөг үүсгэж чадсангүй. Дахин оролдоно уу.';

  @override
  String get retry => 'Дахин оролдох';

  @override
  String get breathInhale => 'АМЬСГАЛ АВАХ';

  @override
  String get breathHold => 'БАРИХ';

  @override
  String get breathExhale => 'АМЬСГАЛ ГАРГАХ';

  @override
  String get breathDone => 'БОЛСОН';

  @override
  String get breathGreatJob => 'Маш сайн!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сесс өнөөдөр',
      one: '$count сесс өнөөдөр',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Дасгалыг дуусгах';

  @override
  String get done => 'Болсон';

  @override
  String get noCopingTipsYet => 'Одоогоор даван туулах зөвлөмж алга';

  @override
  String get copingStrategiesWillAppear =>
      'Таны сэргэлтийн төлөвлөгөө үүсэж дуусмагц танд зориулсан даван туулах стратегиуд энд харагдана.';

  @override
  String get strategiesTailoredToTriggers =>
      'Таны өдөөгч хүчин зүйлд тохирсон стратегиуд';

  @override
  String get cravingsPeakAndPass => 'Хүсэл оргилдоо хүрээд\nөнгөрдөг';

  @override
  String get rideTheWaveDescription =>
      'Ихэнх архи уух хүсэл 15 минутын дотор өнгөрдөг. Та түүнд автах шаардлагагүй — бидэнтэй хамт түүнийг даван туул.';

  @override
  String get stayWithIt => 'тэвчээртэй бай';

  @override
  String get youMadeIt => 'та чадлаа';

  @override
  String get readyWhenYouAre => 'та бэлэн болмогц';

  @override
  String get rideItAgain => 'Дахин даван туулах';

  @override
  String get start15MinuteTimer => '15 минутын таймер эхлүүлэх';

  @override
  String get rideTheWaveCompletedMessage =>
      'Та энэ давалгааг даван гарлаа. Энэ бол жинхэнэ хүч чадал. 💪';

  @override
  String get myProgress => 'Миний ахиц';

  @override
  String get weekLabel => 'Долоо хоног';

  @override
  String get monthLabel => 'Сар';

  @override
  String get allLabel => 'Бүгд';

  @override
  String get daysSoberStatLabel => 'Архигүй\nөдөр';

  @override
  String get savedStatLabel => 'Хэмнэсэн';

  @override
  String get avoidedStatLabel => 'Зайлсхийсэн';

  @override
  String get moodTrends => 'Сэтгэл санааны чиг хандлага';

  @override
  String get cravingsPattern => 'Архи уух хүслийн хэв маяг';

  @override
  String get unlockLabel => 'Нээх';

  @override
  String get unlockFullStats => 'Бүх статистикийг нээх';

  @override
  String get premiumStatsMessage =>
      'Сэтгэл санааны чиг хандлага болон архи уух хүслийн хэв маяг нь Премиум боломжууд юм. Бүх статистикээ харахын тулд шинэчлээрэй.';

  @override
  String get healthMilestonesWillAppear =>
      'Таны эрүүл мэндийн чухал үе шатууд энд харагдана.';

  @override
  String get healthMilestones => 'Эрүүл мэндийн чухал үе шатууд';

  @override
  String dayNumber(int day) {
    return '$day дахь өдөр';
  }

  @override
  String get soberLabel => 'Архигүй';

  @override
  String get slipLabel => 'Алдаа';

  @override
  String get noDataLabel => 'Мэдээлэл алга';

  @override
  String get milestone24Hours => '24 цаг';

  @override
  String get milestoneOneWeek => 'Нэг долоо хоног';

  @override
  String get milestoneOneMonth => 'Нэг сар';

  @override
  String get milestoneThreeMonths => 'Гурван сар';

  @override
  String get milestoneSixMonths => 'Зургаан сар';

  @override
  String get milestoneOneYear => 'Нэг жил';

  @override
  String milestoneDayCount(int day) {
    return '$day дахь өдрийн чухал үе шат';
  }

  @override
  String get maybeLaterLabel => 'Магадгүй дараа';

  @override
  String get cancelLabel => 'Цуцлах';
}
