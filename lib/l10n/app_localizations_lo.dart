// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get skip => 'ຂ້າມ';

  @override
  String get continueButton => 'ສືບຕໍ່';

  @override
  String get getStarted => 'ເລີ່ມຕົ້ນ';

  @override
  String get onboardingTitle1 => 'ຄວບຄຸມຊີວິດຂອງທ່ານ';

  @override
  String get onboardingSubtitle1 =>
      'ຕິດຕາມເສັ້ນທາງຂອງທ່ານ, ສະຫຼອງທຸກຄວາມສຳເລັດ ແລະ ກາຍເປັນຄົນທີ່ສຸຂະພາບດີຂຶ້ນໃນແຕ່ລະມື້.';

  @override
  String get onboardingTitle2 => 'ຄູ່ຮ່ວມການຟື້ນຟູ AI ຂອງທ່ານ';

  @override
  String get onboardingSubtitle2 =>
      'ຮັບຄຳແນະນຳສ່ວນບຸກຄົນ, ນິໄສທີ່ດີຕໍ່ສຸຂະພາບ, ການເຕືອນໃຈເພື່ອສ້າງກຳລັງໃຈ ແລະ ລາຍງານຄວາມຄືບໜ້າທີ່ອອກແບບຕາມເສັ້ນທາງຂອງທ່ານ.';

  @override
  String get goodMorning => 'ສະບາຍດີຕອນເຊົ້າ';

  @override
  String get goodAfternoon => 'ສະບາຍດີຕອນບ່າຍ';

  @override
  String get goodEvening => 'ສະບາຍດີຕອນແລງ';

  @override
  String get goodNight => 'ລາຕີສະຫວັດ';

  @override
  String get embracingClarity => 'ຄ່ອຍໆສ້າງຄວາມຊັດເຈນໃນຊີວິດ, ເທື່ອລະມື້.';

  @override
  String get streakLabel => 'ຕໍ່ເນື່ອງ';

  @override
  String get goalLabel => 'ເປົ້າໝາຍ';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ມື້',
      one: '$count ມື້',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'ແຜນ Premium';

  @override
  String get premiumPlanSubtitle => 'ປົດລັອກປະສົບການການຟື້ນຟູເຕັມຮູບແບບ';

  @override
  String get accountAndSupport => 'ບັນຊີ ແລະ ການຊ່ວຍເຫຼືອ';

  @override
  String get privacyPolicy => 'ນະໂຍບາຍຄວາມສ່ວນຕົວ';

  @override
  String get privacyPolicySubtitle =>
      'ຈັດການການແບ່ງປັນຂໍ້ມູນ ແລະ ຄວາມປອດໄພບັນຊີ';

  @override
  String get termsOfService => 'ເງື່ອນໄຂການບໍລິການ';

  @override
  String get termsOfServiceSubtitle =>
      'ຄຳຖາມທີ່ພົບເລື້ອຍ, ຕິດຕໍ່ພວກເຮົາ ແລະ ແຫຼ່ງຂໍ້ມູນ';

  @override
  String get shareApp => 'ແບ່ງປັນແອັບ';

  @override
  String get shareAppSubtitle => 'ແບ່ງປັນແອັບກັບໝູ່ຂອງທ່ານ';

  @override
  String get resetData => 'ຣີເຊັດຂໍ້ມູນ';

  @override
  String get resetDataSubtitle => 'ລຶບທຸກສິ່ງທີ່ບັນທຶກໄວ້ໃນອຸປະກອນນີ້';

  @override
  String get resetAllDataTitle => 'ຣີເຊັດຂໍ້ມູນທັງໝົດບໍ?';

  @override
  String get resetAllDataMessage =>
      'ການດຳເນີນການນີ້ຈະລຶບໂປຣໄຟລ໌, ບັນທຶກປະຈຳວັນ ແລະ ຄວາມຄືບໜ້າທັງໝົດທີ່ບັນທຶກໄວ້ໃນອຸປະກອນນີ້ ແລະ ບໍ່ສາມາດຍົກເລີກໄດ້.';

  @override
  String get cancel => 'ຍົກເລີກ';

  @override
  String get reset => 'ຣີເຊັດ';

  @override
  String get chooseFromGallery => 'ເລືອກຈາກແກລລະຣີ';

  @override
  String get takePhoto => 'ຖ່າຍຮູບ';

  @override
  String get removePhoto => 'ລຶບຮູບ';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ບໍ່ສາມາດອັບເດດຮູບໄດ້: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ບໍ່ສາມາດລຶບຮູບໄດ້: $error';
  }

  @override
  String get photoTooLarge =>
      'ຮູບນັ້ນຍັງໃຫຍ່ເກີນໄປແມ່ນແຕ່ຫຼັງຈາກບີບອັດແລ້ວ — ກະລຸນາລອງໃຊ້ຮູບອື່ນ.';

  @override
  String get unableToLoadProfile => 'ບໍ່ສາມາດໂຫຼດໂປຣໄຟລ໌ຂອງທ່ານໄດ້';

  @override
  String get pleaseTryAgain => 'ກະລຸນາລອງໃໝ່.';

  @override
  String get tryAgain => 'ລອງໃໝ່';

  @override
  String get profileNotFound => 'ບໍ່ພົບໂປຣໄຟລ໌';

  @override
  String get refresh => 'ໂຫຼດໃໝ່';

  @override
  String get noProfileDataFound => 'ຍັງບໍ່ພົບຂໍ້ມູນໂປຣໄຟລ໌ໃນອຸປະກອນນີ້.';

  @override
  String couldNotResetData(String error) {
    return 'ບໍ່ສາມາດຣີເຊັດຂໍ້ມູນໄດ້: $error';
  }

  @override
  String get navHome => 'ໜ້າຫຼັກ';

  @override
  String get navStats => 'ສະຖິຕິ';

  @override
  String get navJournal => 'ບັນທຶກ';

  @override
  String get navBadges => 'ປ້າຍ';

  @override
  String get navProfile => 'ໂປຣໄຟລ໌';

  @override
  String featureComingSoon(String feature) {
    return '$feature ຈະໃຊ້ໄດ້ໃນໄວໆນີ້.';
  }

  @override
  String get appWordmark => 'ສຸຂະພາບ';

  @override
  String get appTitle => 'ເຊົາດື່ມເຫຼົ້າ';

  @override
  String get splashSubtitle => 'ເລີ່ມຕົ້ນກ້າວທຳອິດສູ່\nຊີວິດທີ່ປາສະຈາກເຫຼົ້າ';

  @override
  String get preparingJourney => 'ກຳລັງກຽມ\nເສັ້ນທາງຂອງທ່ານ';

  @override
  String get taskMorningMeditation => 'ສະມາທິຕອນເຊົ້າ (10 ນາທີ)';

  @override
  String get taskReadChapter => 'ອ່ານບົດທີ 4 ຂອງ \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'ບັນທຶກຄວາມຂອບໃຈຕອນແລງ';

  @override
  String get close => 'ປິດ';

  @override
  String get youAreDoingGreat => 'ທ່ານກຳລັງເຮັດໄດ້ດີຫຼາຍ!';

  @override
  String get shareMilestone => 'ແບ່ງປັນຄວາມສຳເລັດ';

  @override
  String shareMilestoneMessage(int days) {
    return 'ຂ້ອຍຢູ່ໃນວັນທີ $days ຂອງເສັ້ນທາງການຟື້ນຟູຂອງຂ້ອຍ! 💪';
  }

  @override
  String get shareMilestoneSubject => 'ຄວາມສຳເລັດການຟື້ນຟູຂອງຂ້ອຍ';

  @override
  String get weeklyReportReadyTitle => 'ລາຍງານປະຈຳອາທິດຂອງທ່ານພ້ອມແລ້ວ';

  @override
  String get weeklyReportReadySubtitle =>
      'ແຕະເພື່ອເບິ່ງວ່າອາທິດຂອງທ່ານເປັນແນວໃດ';

  @override
  String get howAreYouFeeling => 'ທ່ານຮູ້ສຶກແນວໃດ?';

  @override
  String get moodTough => 'ຍາກ';

  @override
  String get moodOkay => 'ດີຢູ່';

  @override
  String get moodGood => 'ດີ';

  @override
  String get moneySaved => 'ເງິນທີ່ປະຫຍັດ';

  @override
  String get caloriesSaved => 'ແຄລໍຣີທີ່ປະຫຍັດ';

  @override
  String get healthScore => 'ຄະແນນສຸຂະພາບ';

  @override
  String get drinksAvoided => 'ເຄື່ອງດື່ມທີ່ຫຼີກລ້ຽງ';

  @override
  String get estimated => 'ຄາດຄະເນ';

  @override
  String get aiGenerated => 'ສ້າງໂດຍ AI';

  @override
  String get daysCapsLabel => 'ມື້';

  @override
  String get todaysMotivation => 'ກຳລັງໃຈຂອງມື້ນີ້';

  @override
  String get defaultMotivationQuote =>
      'ທ່ານໄດ້ຮັກສາຄຳມັ່ນສັນຍາຂອງຕົນເອງສຳເລັດແລ້ວ. ສືບຕໍ່ໄປຕາມຄື້ນຂອງການປ່ຽນແປງໃນທາງບວກ.';

  @override
  String get talkToCoach => 'ລົມກັບຄູຝຶກ';

  @override
  String get havingACraving => 'ຂ້ອຍກຳລັງຢາກດື່ມ';

  @override
  String get unlockWeeklyReportsTitle => 'ປົດລັອກລາຍງານປະຈຳອາທິດ';

  @override
  String get unlockWeeklyReportsMessage =>
      'ເບິ່ງຈຳນວນມື້ທີ່ບໍ່ດື່ມ, ແນວໂນ້ມອາລົມ ແລະ ຄຳຕິຊົມຈາກ AI ສ່ວນບຸກຄົນທຸກອາທິດ. ອັບເກຣດເປັນ Premium ເພື່ອປົດລັອກ.';

  @override
  String get maybeLater => 'ໄວ້ພາຍຫຼັງ';

  @override
  String get upgrade => 'ອັບເກຣດ';

  @override
  String get weeklyReportTitle => 'ລາຍງານປະຈຳອາທິດ';

  @override
  String get weeklyReportsPremiumTitle => 'ລາຍງານປະຈຳອາທິດແມ່ນຟັງຊັນ Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'ເບິ່ງຈຳນວນມື້ທີ່ບໍ່ດື່ມ, ແນວໂນ້ມອາລົມ, ຄວາມຢາກ ແລະ ຄຳຕິຊົມຈາກ AI ສ່ວນບຸກຄົນທຸກອາທິດ.';

  @override
  String get upgradeToPremium => 'ອັບເກຣດເປັນ Premium';

  @override
  String get couldNotGenerateReport => 'ບໍ່ສາມາດສ້າງລາຍງານໄດ້ໃນຕອນນີ້.';

  @override
  String get tryAgainLower => 'ລອງໃໝ່';

  @override
  String get statSoberDays => 'ມື້ທີ່ບໍ່ດື່ມ';

  @override
  String get statAvgMood => 'ອາລົມສະເລ່ຍ';

  @override
  String get statCravings => 'ຄວາມຢາກ';

  @override
  String get statMoneySaved => 'ເງິນທີ່ປະຫຍັດ';

  @override
  String get coachFeedback => 'ຄຳຕິຊົມຈາກຄູຝຶກ';

  @override
  String get journalInsights => 'ຂໍ້ມູນເຊິ່ງເຂົ້າໃຈຈາກບັນທຶກ';

  @override
  String get next => 'ຕໍ່ໄປ';

  @override
  String get question1Title => 'ເປົ້າໝາຍຂອງທ່ານແມ່ນຫຍັງ?';

  @override
  String get question1Subtitle => 'ເລືອກເປົ້າໝາຍທີ່ສຳຄັນ\nທີ່ສຸດສຳລັບທ່ານ';

  @override
  String get goalQuitCompletely => 'ເຊົາຢ່າງສົມບູນ';

  @override
  String get goalReduceDrinking => 'ຫຼຸດການດື່ມ';

  @override
  String get goalTakeABreak => 'ພັກຈາກການດື່ມ';

  @override
  String get goalBuildHealthierHabits => 'ສ້າງນິໄສທີ່ດີຕໍ່ສຸຂະພາບ';

  @override
  String get question3Title => 'ບອກພວກເຮົາກ່ຽວກັບ\nກິດຈະວັດຂອງທ່ານ';

  @override
  String get drinksPerWeek => 'ຈຳນວນເຄື່ອງດື່ມຕໍ່ອາທິດ';

  @override
  String get moneySpentPerWeek => 'ເງິນທີ່ໃຊ້ຕໍ່ອາທິດ';

  @override
  String get drinkingLevel => 'ລະດັບການດື່ມ';

  @override
  String get triggersLabel => 'ສິ່ງກະຕຸ້ນ';

  @override
  String get levelSocial => 'ສັງຄົມ';

  @override
  String get levelRegular => 'ເປັນປະຈຳ';

  @override
  String get levelHeavy => 'ຫນັກ';

  @override
  String get levelDependent => 'ພຶງພາ';

  @override
  String get triggerStress => 'ຄວາມເຄັ່ງຕຶງ';

  @override
  String get triggerLoneliness => 'ຄວາມໂດດດ່ຽວ';

  @override
  String get triggerHabit => 'ນິໄສ';

  @override
  String get triggerSadness => 'ຄວາມເສົ້າ';

  @override
  String get triggerAnger => 'ຄວາມໂກດ';

  @override
  String get triggerBoredom => 'ຄວາມເບື່ອ';

  @override
  String get triggerSocialPressure => 'ແຮງກົດດັນທາງສັງຄົມ';

  @override
  String get triggerCelebration => 'ການສະຫຼອງ';

  @override
  String get triggerSleepProblems => 'ບັນຫາການນອນ';

  @override
  String get triggerWorkPressure => 'ແຮງກົດດັນຈາກວຽກ';

  @override
  String get question4Title => 'ເປັນຫຍັງທ່ານຈຶ່ງຢາກປ່ຽນແປງ?';

  @override
  String get question4Subtitle => 'ເຫດຜົນຂອງທ່ານຈະຊ່ວຍສ້າງກຳລັງໃຈ.';

  @override
  String get reasonImproveHealth => 'ປັບປຸງສຸຂະພາບ';

  @override
  String get reasonSaveMoney => 'ປະຫຍັດເງິນ';

  @override
  String get reasonFamily => 'ຄອບຄົວ';

  @override
  String get reasonBetterSleep => 'ນອນໃຫ້ດີຂຶ້ນ';

  @override
  String get reasonMentalClarity => 'ຄວາມຊັດເຈນທາງຈິດໃຈ';

  @override
  String get reasonFitness => 'ສຸຂະພາບຮ່າງກາຍ';

  @override
  String get reasonSelfRespect => 'ການເຄົາລົບຕົນເອງ';

  @override
  String get reasonCareer => 'ອາຊີບ';

  @override
  String get milestoneUnlockedLabel => 'ປົດລັອກຄວາມສຳເລັດ';

  @override
  String incredibleNamePrefix(String name) {
    return 'ສຸດຍອດ, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'ປະຫຍັດ $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'ຫຼີກລ້ຽງໄດ້ $count';
  }

  @override
  String get shareMyMilestone => 'ແບ່ງປັນຄວາມສຳເລັດ';

  @override
  String get milestoneImageShareError =>
      'ບໍ່ສາມາດສ້າງຮູບຄວາມສຳເລັດໄດ້. ກະລຸນາລອງໃໝ່.';

  @override
  String get dailyCheckInTitle => 'ເຊັກອິນປະຈຳວັນ';

  @override
  String get howAreYouFeelingToday => 'ມື້ນີ້ທ່ານຮູ້ສຶກແນວໃດ?';

  @override
  String get honestAnswerHelp =>
      'ຄຳຕອບທີ່ຊື່ສັດຂອງທ່ານຊ່ວຍໃຫ້ພວກເຮົາສະໜັບສະໜູນທ່ານໄດ້ດີຂຶ້ນ';

  @override
  String get didYouDrinkToday => 'ມື້ນີ້ທ່ານດື່ມບໍ?';

  @override
  String get noLabel => 'ບໍ່';

  @override
  String get yesLabel => 'ແມ່ນ';

  @override
  String get cravingLevelNow => 'ຕອນນີ້ຄວາມຢາກດື່ມຂອງທ່ານຢູ່ໃນລະດັບໃດ?';

  @override
  String get anythingOnMind => 'ມີຫຍັງຢູ່ໃນໃຈບໍ?';

  @override
  String get optionalLabel => '(ບໍ່ບັງຄັບ)';

  @override
  String get dailyNoteHint =>
      'ຂຽນກ່ຽວກັບມື້ຂອງທ່ານ, ສິ່ງກະຕຸ້ນ, ສິ່ງທີ່ເຮັດສຳເລັດ...';

  @override
  String get alreadyCheckedInToday => 'ມື້ນີ້ເຊັກອິນແລ້ວ';

  @override
  String get saveCheckIn => 'ບັນທຶກເຊັກອິນ';

  @override
  String get checkInsHelpTrack =>
      'ການເຊັກອິນຊ່ວຍຕິດຕາມຄວາມຄືບໜ້າຂອງທ່ານຕາມເວລາ';

  @override
  String get alreadyCompletedTodayCheckIn => 'ທ່ານໄດ້ເຮັດເຊັກອິນຂອງມື້ນີ້ແລ້ວ.';

  @override
  String get pleaseAnswerBothQuestions => 'ກະລຸນາຕອບທັງສອງຄຳຖາມຂ້າງເທິງກ່ອນ';

  @override
  String get checkInSaved => 'ບັນທຶກເຊັກອິນແລ້ວ';

  @override
  String get cravingNone => 'ບໍ່ມີ';

  @override
  String get cravingLow => 'ຕ່ຳ';

  @override
  String get cravingMedium => 'ປານກາງ';

  @override
  String get cravingStrong => 'ສູງ';

  @override
  String get moodBad => 'ບໍ່ດີ';

  @override
  String get moodLow => 'ຕ່ຳ';

  @override
  String get moodGreat => 'ດີຫຼາຍ';

  @override
  String get sosSupportTitle => 'ການຊ່ວຍເຫຼືອ SOS';

  @override
  String notAloneMessage(String name) {
    return 'ທ່ານບໍ່ໄດ້ຢູ່ຄົນດຽວ, $name';
  }

  @override
  String get cravingsPassMessage =>
      'ຄວາມຢາກດື່ມຈະຜ່ານໄປ. ເລືອກບາງຢ່າງດ້ານລຸ່ມເພື່ອຊ່ວຍທ່ານຜ່ານຊ່ວງເວລານີ້.';

  @override
  String get breathingExercise => 'ການຝຶກຫາຍໃຈ';

  @override
  String get breathingExerciseSubtitle => 'ເຕັກນິກ 4-7-8 ແບບມີຜູ້ນຳ, 2 ນາທີ';

  @override
  String get rideTheWave => 'ຜ່ານຄື້ນ';

  @override
  String get rideTheWaveSubtitle =>
      'ເຄື່ອງຈັບເວລາ 15 ນາທີ — ຄວາມຢາກຈະຜ່ານໄປສະເໝີ';

  @override
  String get copingTips => 'ຄຳແນະນຳໃນການຮັບມື';

  @override
  String get copingTipsSubtitle => 'ກົນລະຍຸດສ່ວນບຸກຄົນສຳລັບສິ່ງກະຕຸ້ນຂອງທ່ານ';

  @override
  String get talkToAiCoach => 'ລົມກັບຄູຝຶກ AI';

  @override
  String get talkToAiCoachSubtitle => 'ສົນທະນາກັບຄູ່ຮ່ວມການຟື້ນຟູຂອງທ່ານ';

  @override
  String get callSomeone => 'ໂທຫາຄົນອື່ນ';

  @override
  String get callSomeoneSubtitle => 'ຕິດຕໍ່ບຸກຄົນທີ່ທ່ານໄວ້ໃຈ';

  @override
  String get contactsPermissionNeeded =>
      'ຈຳເປັນຕ້ອງອະນຸຍາດໃຫ້ເຂົ້າເຖິງລາຍຊື່ຕິດຕໍ່ເພື່ອໂທຫາຜູ້ຕິດຕໍ່.';

  @override
  String get beatenCravingsPrefix => 'ທ່ານເອົາຊະນະຄວາມຢາກດື່ມໄດ້ ';

  @override
  String beatenCravingsCount(int count) {
    return '$count ຄັ້ງ';
  }

  @override
  String get beatenCravingsSuffix => ' ແລ້ວ. ທ່ານເຮັດໄດ້ອີກ.';

  @override
  String get tellUsAboutYourself => 'ບອກພວກເຮົາກ່ຽວກັບທ່ານ';

  @override
  String get detailsSubtitle =>
      'ຂໍ້ມູນນີ້ຊ່ວຍໃຫ້ພວກເຮົາປັບແຕ່ງເສັ້ນທາງການຟື້ນຟູຂອງທ່ານ ແລະ ໃຫ້ຂໍ້ມູນເຊິ່ງແມ່ນຍຳ.';

  @override
  String get nameLabel => 'ຊື່';

  @override
  String get nameHint => 'ເຊັ່ນ: Alex Rivers';

  @override
  String get ageLabel => 'ອາຍຸ';

  @override
  String get ageHint => 'ເຊັ່ນ: 32';

  @override
  String get sexAssignedAtBirth => 'ເພດທີ່ກຳນົດໃນເວລາເກີດ';

  @override
  String get sexFemale => 'ຍິງ';

  @override
  String get sexMale => 'ຊາຍ';

  @override
  String get heightLabel => 'ສ່ວນສູງ';

  @override
  String get weightLabel => 'ນ້ຳໜັກ';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'ເຖິງຂີດຈຳກັດປະຈຳວັນແລ້ວ';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'ທ່ານໃຊ້ຂໍ້ຄວາມຟຣີ $limit ຂໍ້ຄວາມຂອງມື້ນີ້ໝົດແລ້ວ. ອັບເກຣດເປັນ Premium ເພື່ອສົນທະນາກັບຄູຝຶກໄດ້ບໍ່ຈຳກັດ.';
  }

  @override
  String get coachConnectError =>
      'ບໍ່ສາມາດເຊື່ອມຕໍ່ໄດ້ໃນຕອນນີ້. ກະລຸນາລອງໃໝ່ໃນອີກສັກຄູ່.';

  @override
  String get clearConversationTitle => 'ລຶບການສົນທະນາບໍ?';

  @override
  String get clearConversationMessage =>
      'ປະຫວັດການສົນທະນາກັບຄູຝຶກຈະຖືກລຶບຖາວອນ.';

  @override
  String get clearLabel => 'ລຶບ';

  @override
  String get recoveryCoachTitle => 'ຄູຝຶກການຟື້ນຟູ';

  @override
  String get onlineLabel => 'ອອນລາຍ';

  @override
  String get clearConversationMenuItem => 'ລຶບການສົນທະນາ';

  @override
  String chatGreeting(String name) {
    return 'ສະບາຍດີ $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'ທ່ານຢູ່ໃນວັນທີ $days ຂອງເສັ້ນທາງຂອງທ່ານ. ຂ້ອຍຢູ່ທີ່ນີ້ທຸກເວລາທີ່ທ່ານຢາກເວົ້າຄຸຍ.';
  }

  @override
  String get quickPromptsLabel => 'ຄຳຖາມດ່ວນ';

  @override
  String get promptCravingLabel => 'ກຳລັງຢາກດື່ມ';

  @override
  String get promptCravingSubtitle => 'ຕັ້ງສະຕິໃຫ້ໄວ';

  @override
  String get promptMotivationLabel => 'ຕ້ອງການກຳລັງໃຈ';

  @override
  String get promptMotivationSubtitle => 'ເພີ່ມກຳລັງໃຈໃນຍາມຍາກ';

  @override
  String get promptSocialLabel => 'ສະຖານະການທາງສັງຄົມ';

  @override
  String get promptSocialSubtitle => 'ຮັບມືກັບການຮ່ວມງານ';

  @override
  String get promptSlippedLabel => 'ຂ້ອຍພາດ';

  @override
  String get promptSlippedSubtitle => 'ບໍ່ຕັດສິນ, ມີແຕ່ການສະໜັບສະໜູນ';

  @override
  String get typeMessageHint => 'ພິມຂໍ້ຄວາມ...';

  @override
  String get editProfileTitle => 'ແກ້ໄຂໂປຣໄຟລ໌';

  @override
  String couldNotSaveProfile(String error) {
    return 'ບໍ່ສາມາດບັນທຶກໂປຣໄຟລ໌ໄດ້: $error';
  }

  @override
  String get heightCmLabel => 'ສ່ວນສູງ (ຊມ.)';

  @override
  String get weightKgLabel => 'ນ້ຳໜັກ (ກກ.)';

  @override
  String get saveChangesLabel => 'ບັນທຶກການປ່ຽນແປງ';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights =>
      'ຂໍ້ມູນເຊິ່ງເຂົ້າໃຈ ແລະ ການວິເຄາະຂັ້ນສູງ';

  @override
  String get featureUnlimitedJournal => 'ບັນທຶກບັນທຶກບໍ່ຈຳກັດ';

  @override
  String get featureUnlimitedChat => 'ສົນທະນາກັບຄູຝຶກ AI ບໍ່ຈຳກັດ';

  @override
  String get featureCommunityGroups => 'ກຸ່ມຊຸມຊົນພິເສດ';

  @override
  String get featurePrioritySupport => 'ການສະໜັບສະໜູນຈາກຜູ້ຊ່ຽວຊານກ່ອນ';

  @override
  String get featureThemePacks => 'ຊຸດຮູບແບບທີ່ກຳນົດເອງ';

  @override
  String get featureDataExport => 'ສົ່ງອອກຂໍ້ມູນ';

  @override
  String get featureAdFree => 'ປະສົບການບໍ່ມີໂຄສະນາ';

  @override
  String get premiumMemberTitle => 'ທ່ານເປັນສະມາຊິກ Premium';

  @override
  String get unlockFullRecoveryTitle => 'ປົດລັອກປະສົບການ\nການຟື້ນຟູເຕັມຮູບແບບ';

  @override
  String get premiumMemberSubtitle =>
      'ຂອບໃຈທີ່ສະໜັບສະໜູນເສັ້ນທາງການຟື້ນຟູຂອງທ່ານ — ຟັງຊັນ Premium ທັງໝົດດ້ານລຸ່ມໄດ້ຖືກປົດລັອກແລ້ວ.';

  @override
  String get premiumJoinSubtitle =>
      'ເຂົ້າຮ່ວມຊຸມຊົນຂອງຫຼາຍພັນຄົນທີ່ກຳລັງ\nເລັ່ງການຟື້ນຟູຂອງພວກເຂົາດ້ວຍ\nເຄື່ອງມື Premium ແລະ ການສະໜັບສະໜູນສ່ວນບຸກຄົນ.';

  @override
  String get monthlyPlanLabel => 'ລາຍເດືອນ';

  @override
  String get perMonthSuffix => '/ເດືອນ';

  @override
  String get cancelAnytimeLabel => 'ຍົກເລີກໄດ້ທຸກເວລາ';

  @override
  String get yearlyPlanLabel => 'ລາຍປີ';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'ຮຽກເກັບລາຍປີ $amount';
  }

  @override
  String get bestValueLabel => 'ຄຸ້ມຄ່າທີ່ສຸດ';

  @override
  String get alreadyPremiumLabel => 'ທ່ານເປັນ Premium ແລ້ວ ✓';

  @override
  String get startPremiumLabel => 'ເລີ່ມ Premium';

  @override
  String get manageSubscriptionLabel =>
      'ຈັດການ ຫຼື ຍົກເລີກຈາກການຕັ້ງຄ່າການສະໝັກສະມາຊິກຂອງອຸປະກອນ.';

  @override
  String get noCommitmentLabel => 'ບໍ່ມີຂໍ້ຜູກມັດ. ຍົກເລີກໄດ້ທຸກເວລາ.';

  @override
  String get continueFreePlanLabel => 'ສືບຕໍ່ດ້ວຍແຜນຟຣີ';

  @override
  String get backToHomeLabel => 'ກັບໄປໜ້າຫຼັກ';

  @override
  String get cancelPremiumLabel => 'ຍົກເລີກ Premium';

  @override
  String get cancelPremiumTitle => 'ຍົກເລີກ Premium ບໍ?';

  @override
  String get cancelPremiumMessage =>
      'ທ່ານຈະເສຍສິດໃນການໃຊ້ບັນທຶກບໍ່ຈຳກັດ, ແຊັດກັບຄູຝຶກບໍ່ຈຳກັດ, ຂໍ້ມູນສະຖິຕິ ແລະ ລາຍງານປະຈຳອາທິດ. ທ່ານສາມາດສະໝັກໃໝ່ໄດ້ທຸກເວລາ.';

  @override
  String get keepPremiumLabel => 'ຮັກສາ Premium';

  @override
  String get nowPremiumMessage =>
      'ຕອນນີ້ທ່ານເປັນ Premium ແລ້ວ! ສຳຜັດປະສົບການການຟື້ນຟູເຕັມຮູບແບບຂອງທ່ານ.';

  @override
  String get premiumCancelledMessage =>
      'ຍົກເລີກ Premium ແລ້ວ. ທ່ານກັບໄປສູ່ແຜນຟຣີ.';

  @override
  String get termsOfUseLabel => 'ເງື່ອນໄຂການໃຊ້';

  @override
  String get navHomeLabel => 'ໜ້າຫຼັກ';

  @override
  String get navStatsLabel => 'ສະຖິຕິ';

  @override
  String get navJournalLabel => 'ບັນທຶກ';

  @override
  String get navBadgesLabel => 'ປ້າຍ';

  @override
  String get navProfileLabel => 'ໂປຣໄຟລ໌';

  @override
  String get recoveryGoalsTitle => 'ເປົ້າໝາຍການຟື້ນຟູ';

  @override
  String get drinksPerWeekLabel => 'ຈຳນວນເຄື່ອງດື່ມຕໍ່ອາທິດ';

  @override
  String get quitReasonsLabel => 'ເຫດຜົນທີ່ຈະເຊົາ';

  @override
  String get quitReasonsHelperText => 'ແຍກຫຼາຍເຫດຜົນດ້ວຍເຄື່ອງໝາຍຈຸດ.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'ບໍ່ສາມາດບັນທຶກເປົ້າໝາຍການຟື້ນຟູໄດ້: $error';
  }

  @override
  String get goalHint => 'ເຊັ່ນ: ເຊົາຢ່າງສົມບູນ';

  @override
  String get drinksPerWeekHint => 'ເຊັ່ນ: 12';

  @override
  String get quitReasonsHint => 'ເຊັ່ນ: ສຸຂະພາບ, ຄອບຄົວ, ເງິນ';

  @override
  String get todaysPrompt => 'ຄຳຖາມຂອງມື້ນີ້';

  @override
  String get defaultJournalPrompt => 'ມື້ນີ້ທ່ານກຳລັງຄິດຫຍັງ?';

  @override
  String get aiJournalInsights => 'ຂໍ້ມູນເຊິ່ງເຂົ້າໃຈຈາກບັນທຶກ AI';

  @override
  String get unlockJournalInsightsMessage =>
      'ປົດລັອກແນວໂນ້ມປະຈຳອາທິດ, ແນວໂນ້ມອາລົມ ແລະ ຂໍ້ມູນເຊິ່ງເຂົ້າໃຈສ່ວນບຸກຄົນຈາກບັນທຶກຂອງທ່ານ.';

  @override
  String get notEnoughJournalData =>
      'ຍັງມີຂໍ້ມູນບໍ່ພຽງພໍ — ຂຽນບັນທຶກສອງສາມອັນໃນອາທິດນີ້ ແລ້ວກັບມາເບິ່ງອີກຄັ້ງ.';

  @override
  String get openEntry => 'ເປີດ';

  @override
  String get editEntry => 'ແກ້ໄຂ';

  @override
  String get deleteEntry => 'ລຶບ';

  @override
  String get searchJournalEntries => 'ຄົ້ນຫາບັນທຶກ...';

  @override
  String get writeNewEntry => 'ຂຽນບັນທຶກໃໝ່';

  @override
  String get recentEntries => 'ບັນທຶກຫຼ້າສຸດ';

  @override
  String get noJournalEntriesYet =>
      'ຍັງບໍ່ມີບັນທຶກ — ຂຽນການທົບທວນຄັ້ງທຳອິດຂອງທ່ານດ້ານເທິງ.';

  @override
  String get noEntriesMatchFilters => 'ບໍ່ມີບັນທຶກທີ່ກົງກັບຕົວກອງຂອງທ່ານ.';

  @override
  String get weeklyJournalLimitReached => 'ເຖິງຂີດຈຳກັດປະຈຳອາທິດແລ້ວ';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'ທ່ານໃຊ້ບັນທຶກຟຣີ $limit ອັນຂອງອາທິດນີ້ໝົດແລ້ວ. ອັບເກຣດເປັນ Premium ເພື່ອບັນທຶກໄດ້ບໍ່ຈຳກັດ.';
  }

  @override
  String get newEntry => 'ບັນທຶກໃໝ່';

  @override
  String get writeYourThoughts => 'ຂຽນຄວາມຄິດຂອງທ່ານ';

  @override
  String get saveEntry => 'ບັນທຶກ';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'ເຫຼືອ $remaining ຈາກ $limit ບັນທຶກຟຣີໃນອາທິດນີ້';
  }

  @override
  String get deleteEntryQuestion => 'ລຶບບັນທຶກບໍ?';

  @override
  String get deleteEntryConfirmation =>
      'ບັນທຶກນີ້ຈະຖືກລຶບຖາວອນ. ບໍ່ສາມາດຍົກເລີກໄດ້.';

  @override
  String get journalEntryNotFound => 'ບໍ່ພົບບັນທຶກ';

  @override
  String get journalEntryMayHaveBeenDeleted => 'ບັນທຶກນີ້ອາດຖືກລຶບແລ້ວ.';

  @override
  String get goBack => 'ກັບຄືນ';

  @override
  String get journalEntryTitle => 'ບັນທຶກ';

  @override
  String get moodStruggling => 'ກຳລັງລຳບາກ';

  @override
  String get moodUnwell => 'ບໍ່ສະບາຍ';

  @override
  String get moodNeutral => 'ເປັນກາງ';

  @override
  String get whatHappenedToday => 'ມື້ນີ້ເກີດຫຍັງຂຶ້ນ?';

  @override
  String get trigger => 'ສິ່ງກະຕຸ້ນ';

  @override
  String get whatHelped => 'ສິ່ງທີ່ຊ່ວຍ';

  @override
  String get whatIllTryNextTime => 'ຄັ້ງໜ້າຂ້ອຍຈະລອງ';

  @override
  String get journalPrivacyMessage =>
      'ການທົບທວນຂອງທ່ານເປັນສ່ວນຕົວ ແລະ ບັນທຶກໄວ້ໃນບັນທຶກຂອງທ່ານ.';

  @override
  String get unlocked => 'ປົດລັອກແລ້ວ';

  @override
  String daysLeft(int count) {
    return 'ເຫຼືອ $count ມື້';
  }

  @override
  String daysCount(int count) {
    return '$count ມື້';
  }

  @override
  String get firstReflection => 'ການທົບທວນ\nຄັ້ງທຳອິດ';

  @override
  String get oneJournalEntry => 'ບັນທຶກ 1 ອັນ';

  @override
  String get openBook => 'ເປີດປຶ້ມ';

  @override
  String get tenJournalEntries => 'ບັນທຶກ 10 ອັນ';

  @override
  String get dedicatedWriter => 'ນັກຂຽນ\nຜູ້ທຸ່ມເທ';

  @override
  String get thirtyJournalEntries => 'ບັນທຶກ 30 ອັນ';

  @override
  String get firstConversation => 'ການສົນທະນາ\nຄັ້ງທຳອິດ';

  @override
  String get oneAiCoachChat => 'ແຊັດກັບຄູຝຶກ AI 1 ຄັ້ງ';

  @override
  String get keepTalking => 'ສືບຕໍ່ລົມ';

  @override
  String get fiveConversations => '5 ການສົນທະນາ';

  @override
  String get coachCompanion => 'ຄູ່ຮ່ວມ\nຄູຝຶກ';

  @override
  String get twentyConversations => '20 ການສົນທະນາ';

  @override
  String get checkInHabit => 'ນິໄສ\nເຊັກອິນ';

  @override
  String get sevenCheckIns => '7 ການເຊັກອິນ';

  @override
  String get consistencyPro => 'ມືອາຊີບດ້ານ\nຄວາມສະໝ່ຳສະເໝີ';

  @override
  String get thirtyCheckIns => '30 ການເຊັກອິນ';

  @override
  String get dedicatedJourney => 'ເສັ້ນທາງ\nທີ່ທຸ່ມເທ';

  @override
  String get hundredCheckIns => '100 ການເຊັກອິນ';

  @override
  String get goalGetter => 'ຜູ້ບັນລຸເປົ້າໝາຍ';

  @override
  String get threeGoalsCompleted => 'ສຳເລັດ 3 ເປົ້າໝາຍ';

  @override
  String get goalAchiever => 'ຜູ້ບັນລຸ\nເປົ້າໝາຍ';

  @override
  String get tenGoalsCompleted => 'ສຳເລັດ 10 ເປົ້າໝາຍ';

  @override
  String get firstSavings => 'ການປະຫຍັດ\nຄັ້ງທຳອິດ';

  @override
  String get fiveHundredSaved => 'ປະຫຍັດ \$500';

  @override
  String get smartSaver => 'ນັກປະຫຍັດອັດສະລິຍະ';

  @override
  String get oneThousandSaved => 'ປະຫຍັດ \$1,000';

  @override
  String get bigSaver => 'ນັກປະຫຍັດລາຍໃຫຍ່';

  @override
  String get fiveThousandSaved => 'ປະຫຍັດ \$5,000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current ຈາກ \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current ຈາກ $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'ສືບຕໍ່ໄປ — ຄວາມສຳເລັດຄັ້ງທຳອິດກຳລັງລໍຖ້າທ່ານ!';

  @override
  String get badgesAndMilestones => 'ປ້າຍ ແລະ ຄວາມສຳເລັດ';

  @override
  String get yourMilestoneJourney => 'ເສັ້ນທາງຄວາມສຳເລັດຂອງທ່ານ';

  @override
  String milestonesAchieved(int count) {
    return 'ບັນລຸ $count ຄວາມສຳເລັດ.\nແຕະເພື່ອເບິ່ງ';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'ທ່ານໄດ້ປົດລັອກ $unlocked ຈາກ $total ຄວາມສຳເລັດໃນເສັ້ນທາງຂອງທ່ານ.';
  }

  @override
  String get remaining => 'ເຫຼືອ';

  @override
  String get complete => 'ສຳເລັດ';

  @override
  String get nextMilestone => 'ຄວາມສຳເລັດຕໍ່ໄປ';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · ສຳເລັດ $percent%';
  }

  @override
  String get sobrietyMilestones => 'ຄວາມສຳເລັດດ້ານການບໍ່ດື່ມ';

  @override
  String get journeyBadges => 'ປ້າຍເສັ້ນທາງ';

  @override
  String get bronze => 'ທອງແດງ';

  @override
  String get silver => 'ເງິນ';

  @override
  String get gold => 'ຄຳ';

  @override
  String get platinum => 'ແພລັດຕິນຳ';

  @override
  String get diamond => 'ເພັດ';

  @override
  String get analyzingYourJourney => 'ກຳລັງວິເຄາະເສັ້ນທາງຂອງທ່ານ...';

  @override
  String get aiCreatingSanctuary =>
      'AI ກຳລັງສ້າງພື້ນທີ່ການຟື້ນຟູສ່ວນບຸກຄົນຂອງທ່ານ.';

  @override
  String get understandingHabits => 'ກຳລັງເຂົ້າໃຈນິໄສ...';

  @override
  String get calculatingBaseline => 'ກຳລັງຄຳນວນຄ່າພື້ນຖານ...';

  @override
  String get personalizingPlan => 'ກຳລັງປັບແຕ່ງແຜນຂອງທ່ານ...';

  @override
  String get finalizingSanctuary => 'ກຳລັງສຳເລັດພື້ນທີ່ການຟື້ນຟູ...';

  @override
  String get creatingYourPlan => 'ກຳລັງສ້າງແຜນຂອງທ່ານ...';

  @override
  String get personalizedPlanError =>
      'ພວກເຮົາບໍ່ສາມາດສ້າງແຜນສ່ວນບຸກຄົນຂອງທ່ານໄດ້. ກະລຸນາລອງໃໝ່.';

  @override
  String get retry => 'ລອງໃໝ່';

  @override
  String get breathInhale => 'ຫາຍໃຈເຂົ້າ';

  @override
  String get breathHold => 'ກັ້ນ';

  @override
  String get breathExhale => 'ຫາຍໃຈອອກ';

  @override
  String get breathDone => 'ສຳເລັດ';

  @override
  String get breathGreatJob => 'ເຮັດໄດ້ດີ!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ເທື່ອໃນມື້ນີ້',
      one: '$count ເທື່ອໃນມື້ນີ້',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'ຈົບການຝຶກ';

  @override
  String get done => 'ສຳເລັດ';

  @override
  String get noCopingTipsYet => 'ຍັງບໍ່ມີຄຳແນະນຳໃນການຮັບມື';

  @override
  String get copingStrategiesWillAppear =>
      'ກົນລະຍຸດການຮັບມືສ່ວນບຸກຄົນຂອງທ່ານຈະປາກົດຢູ່ບ່ອນນີ້ເມື່ອແຜນການຟື້ນຟູສ້າງສຳເລັດ.';

  @override
  String get strategiesTailoredToTriggers => 'ກົນລະຍຸດທີ່ປັບຕາມສິ່ງກະຕຸ້ນ';

  @override
  String get cravingsPeakAndPass => 'ຄວາມຢາກຈະຮຸນແຮງ\nແລ້ວຜ່ານໄປ';

  @override
  String get rideTheWaveDescription =>
      'ຄວາມຢາກສ່ວນໃຫຍ່ຈະຜ່ານໄປພາຍໃນ 15 ນາທີ. ທ່ານບໍ່ຈຳເປັນຕ້ອງຕາມມັນ — ພຽງແຕ່ຢູ່ກັບພວກເຮົາຈົນມັນຜ່ານໄປ.';

  @override
  String get stayWithIt => 'ຢູ່ກັບມັນ';

  @override
  String get youMadeIt => 'ທ່ານເຮັດໄດ້ແລ້ວ';

  @override
  String get readyWhenYouAre => 'ພ້ອມເມື່ອທ່ານພ້ອມ';

  @override
  String get rideItAgain => 'ຜ່ານອີກຄັ້ງ';

  @override
  String get start15MinuteTimer => 'ເລີ່ມເຄື່ອງຈັບເວລາ 15 ນາທີ';

  @override
  String get rideTheWaveCompletedMessage =>
      'ທ່ານຜ່ານຄື້ນໄດ້ແລ້ວ. ນັ້ນຄືຄວາມເຂັ້ມແຂງທີ່ແທ້ຈິງ. 💪';

  @override
  String get myProgress => 'ຄວາມຄືບໜ້າຂອງຂ້ອຍ';

  @override
  String get weekLabel => 'ອາທິດ';

  @override
  String get monthLabel => 'ເດືອນ';

  @override
  String get allLabel => 'ທັງໝົດ';

  @override
  String get daysSoberStatLabel => 'ມື້\nບໍ່ດື່ມ';

  @override
  String get savedStatLabel => 'ປະຫຍັດ';

  @override
  String get avoidedStatLabel => 'ຫຼີກລ້ຽງ';

  @override
  String get moodTrends => 'ແນວໂນ້ມອາລົມ';

  @override
  String get cravingsPattern => 'ຮູບແບບຄວາມຢາກ';

  @override
  String get unlockLabel => 'ປົດລັອກ';

  @override
  String get unlockFullStats => 'ປົດລັອກສະຖິຕິເຕັມ';

  @override
  String get premiumStatsMessage =>
      'ແນວໂນ້ມອາລົມ ແລະ ຮູບແບບຄວາມຢາກແມ່ນຟັງຊັນ Premium. ອັບເກຣດເພື່ອເບິ່ງສະຖິຕິເຕັມຂອງທ່ານ.';

  @override
  String get healthMilestonesWillAppear =>
      'ຄວາມສຳເລັດດ້ານສຸຂະພາບຈະປາກົດຢູ່ບ່ອນນີ້.';

  @override
  String get healthMilestones => 'ຄວາມສຳເລັດດ້ານສຸຂະພາບ';

  @override
  String dayNumber(int day) {
    return 'ວັນທີ $day';
  }

  @override
  String get soberLabel => 'ບໍ່ດື່ມ';

  @override
  String get slipLabel => 'ພາດ';

  @override
  String get noDataLabel => 'ບໍ່ມີຂໍ້ມູນ';

  @override
  String get milestone24Hours => '24 ຊົ່ວໂມງ';

  @override
  String get milestoneOneWeek => '1 ອາທິດ';

  @override
  String get milestoneOneMonth => '1 ເດືອນ';

  @override
  String get milestoneThreeMonths => '3 ເດືອນ';

  @override
  String get milestoneSixMonths => '6 ເດືອນ';

  @override
  String get milestoneOneYear => '1 ປີ';

  @override
  String milestoneDayCount(int day) {
    return 'ຄວາມສຳເລັດວັນທີ $day';
  }

  @override
  String get maybeLaterLabel => 'ບາງທີພາຍຫຼັງ';

  @override
  String get cancelLabel => 'ຍົກເລີກ';
}
