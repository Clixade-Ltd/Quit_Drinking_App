// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

  @override
  String get skip => 'Yeqa';

  @override
  String get continueButton => 'Qhubeka';

  @override
  String get getStarted => 'Qala';

  @override
  String get onboardingTitle1 => 'Lawula Impilo Yakho';

  @override
  String get onboardingSubtitle1 =>
      'Landela uhambo lwakho, bungaza yonke impumelelo, futhi ube nempilo engcono usuku nosuku.';

  @override
  String get onboardingTitle2 => 'Umlingani Wakho we-AI Wokululama';

  @override
  String get onboardingSubtitle2 =>
      'Thola isiqondiso esenziwe ngokwezifiso, imikhuba enempilo, izikhumbuzi zokukhuthaza, nemibiko yenqubekelaphambili ehambisana nohambo lwakho.';

  @override
  String get goodMorning => 'Sawubona ekuseni';

  @override
  String get goodAfternoon => 'Sawubona ntambama';

  @override
  String get goodEvening => 'Sawubona kusihlwa';

  @override
  String get goodNight => 'Ulale kahle';

  @override
  String get embracingClarity =>
      'Yamukela ukucaca, usuku olulodwa ngesikhathi.';

  @override
  String get streakLabel => 'UCHUNGECHUNGE';

  @override
  String get goalLabel => 'Inhloso';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Izinsuku',
      one: '$count Usuku',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Uhlelo lwe-Premium';

  @override
  String get premiumPlanSubtitle => 'Vula lonke ulwazi lwakho lokululama';

  @override
  String get accountAndSupport => 'I-AKHAWUNTI NOKUSEKELELWA';

  @override
  String get privacyPolicy => 'Inqubomgomo Yobumfihlo';

  @override
  String get privacyPolicySubtitle =>
      'Phatha ukwabelana ngedatha nokuphepha kwe-akhawunti';

  @override
  String get termsOfService => 'Imigomo Yesevisi';

  @override
  String get termsOfServiceSubtitle =>
      'Imibuzo evame ukubuzwa, xhumana nathi, nezinsiza';

  @override
  String get shareApp => 'Yabelana Ngohlelo Lokusebenza';

  @override
  String get shareAppSubtitle =>
      'Yabelana ngohlelo lokusebenza nabangani bakho';

  @override
  String get resetData => 'Setha Kabusha Idatha';

  @override
  String get resetDataSubtitle => 'Sula konke okulondolozwe kule divayisi';

  @override
  String get resetAllDataTitle => 'Setha kabusha yonke idatha?';

  @override
  String get resetAllDataMessage =>
      'Lokhu kuzosula konke okulondolozwe kule divayisi — iphrofayela, okubhalwe kudayari, nenqubekelaphambili — futhi ngeke kuhlehliswe.';

  @override
  String get cancel => 'Khansela';

  @override
  String get reset => 'Setha kabusha';

  @override
  String get chooseFromGallery => 'Khetha Kugalari';

  @override
  String get takePhoto => 'Thatha Isithombe';

  @override
  String get removePhoto => 'Susa Isithombe';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Isithombe asikwazanga ukubuyekezwa: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Isithombe asikwazanga ukususwa: $error';
  }

  @override
  String get photoTooLarge =>
      'Leso sithombe sikhulu kakhulu ngisho nangemva kokucindezelwa — sicela uzame esinye.';

  @override
  String get unableToLoadProfile => 'Ayikwazanga ukulayisha iphrofayela yakho';

  @override
  String get pleaseTryAgain => 'Sicela uzame futhi.';

  @override
  String get tryAgain => 'Zama Futhi';

  @override
  String get profileNotFound => 'Iphrofayela ayitholakalanga';

  @override
  String get refresh => 'Vuselela';

  @override
  String get noProfileDataFound =>
      'Ayikho idatha yephrofayela etholakele kule divayisi okwamanje.';

  @override
  String couldNotResetData(String error) {
    return 'Idatha ayikwazanga ukusethwa kabusha: $error';
  }

  @override
  String get navHome => 'Ikhaya';

  @override
  String get navStats => 'Izibalo';

  @override
  String get navJournal => 'Idayari';

  @override
  String get navBadges => 'Amabheji';

  @override
  String get navProfile => 'Iphrofayela';

  @override
  String featureComingSoon(String feature) {
    return '$feature izotholakala maduze.';
  }

  @override
  String get appWordmark => 'IMPILO';

  @override
  String get appTitle => 'Yeka Ukuphuza';

  @override
  String get splashSubtitle =>
      'Thatha isinyathelo sokuqala uye\nempilweni engenabo utshwala';

  @override
  String get preparingJourney => 'Silungiselela\nuhambo lwakho';

  @override
  String get taskMorningMeditation => 'Ukuzindla Kwasekuseni (imizuzu eyi-10)';

  @override
  String get taskReadChapter => 'Funda Isahluko 4 se-\"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Idayari Yokubonga Yasebusuku';

  @override
  String get close => 'Vala';

  @override
  String get youAreDoingGreat => 'Wenza kahle kakhulu!';

  @override
  String get shareMilestone => 'Yabelana Ngempumelelo';

  @override
  String shareMilestoneMessage(int days) {
    return 'Ngisosukwini $days lohambo lwami lokululama! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Impumelelo yami yokululama';

  @override
  String get weeklyReportReadyTitle => 'Umbiko wakho wamasonto onke usulungile';

  @override
  String get weeklyReportReadySubtitle =>
      'Thepha ukuze ubone ukuthi isonto lakho lihambe kanjani';

  @override
  String get howAreYouFeeling => 'Uzizwa kanjani?';

  @override
  String get moodTough => 'Kunzima';

  @override
  String get moodOkay => 'Kulungile';

  @override
  String get moodGood => 'Kuhle';

  @override
  String get moneySaved => 'Imali Eyongiwe';

  @override
  String get caloriesSaved => 'Ama-calorie Agciniwe';

  @override
  String get healthScore => 'Amaphuzu Ezempilo';

  @override
  String get drinksAvoided => 'Iziphuzo Ezigwenyiwe';

  @override
  String get estimated => 'Okulinganiselwe';

  @override
  String get aiGenerated => 'Kwenziwe yi-AI';

  @override
  String get daysCapsLabel => 'IZINSUKU';

  @override
  String get todaysMotivation => 'Ugqozi Lwanamuhla';

  @override
  String get defaultMotivationQuote =>
      'Uphumelele ekugcineni ukuzibophezela kwakho. Qhubeka ugibele igagasi loshintsho oluhle.';

  @override
  String get talkToCoach => 'Khuluma nomqeqeshi';

  @override
  String get havingACraving => 'Ngifisa Ukuphuza';

  @override
  String get unlockWeeklyReportsTitle => 'Vula Imibiko Yamasonto Onke';

  @override
  String get unlockWeeklyReportsMessage =>
      'Bona izinsuku zakho ungaphuzile, izitayela zemizwa, kanye nempendulo ye-AI eyenzelwe wena masonto onke. Thuthukela ku-Premium ukuze uvule lokhu.';

  @override
  String get maybeLater => 'Mhlawumbe kamuva';

  @override
  String get upgrade => 'Thuthukela';

  @override
  String get weeklyReportTitle => 'Umbiko Wamasonto Onke';

  @override
  String get weeklyReportsPremiumTitle =>
      'Imibiko yamasonto onke iyisici se-Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Bona izinsuku zakho ungaphuzile, izitayela zemizwa, izifiso zokuphuza, kanye nempendulo ye-AI eyenzelwe wena masonto onke.';

  @override
  String get upgradeToPremium => 'Thuthukela ku-Premium';

  @override
  String get couldNotGenerateReport =>
      'Umbiko wakho awukwazanga ukwenziwa manje.';

  @override
  String get tryAgainLower => 'Zama futhi';

  @override
  String get statSoberDays => 'Izinsuku ungaphuzile';

  @override
  String get statAvgMood => 'Imizwa emaphakathi';

  @override
  String get statCravings => 'Izifiso zokuphuza';

  @override
  String get statMoneySaved => 'Imali eyongiwe';

  @override
  String get coachFeedback => 'Impendulo yomqeqeshi';

  @override
  String get journalInsights => 'Ulwazi oluvela kudayari';

  @override
  String get next => 'Okulandelayo';

  @override
  String get question1Title => 'Iyini inhloso yakho';

  @override
  String get question1Subtitle => 'Khetha inhloso ebaluleke\nkakhulu kuwe';

  @override
  String get goalQuitCompletely => 'Yeka Ngokuphelele';

  @override
  String get goalReduceDrinking => 'Nciphisa Ukuphuza';

  @override
  String get goalTakeABreak => 'Thatha Ikhefu';

  @override
  String get goalBuildHealthierHabits => 'Yakha Imikhuba Enempilo Kakhudlwana';

  @override
  String get question3Title => 'Sitshele mayelana\nnesimiso sakho';

  @override
  String get drinksPerWeek => 'Iziphuzo ngesonto';

  @override
  String get moneySpentPerWeek => 'Imali esetshenziswa ngesonto';

  @override
  String get drinkingLevel => 'Izinga lokuphuza';

  @override
  String get triggersLabel => 'Izimbangela';

  @override
  String get levelSocial => 'Kwezenhlalo';

  @override
  String get levelRegular => 'Okuvamile';

  @override
  String get levelHeavy => 'Kakhulu';

  @override
  String get levelDependent => 'Okuncike kukho';

  @override
  String get triggerStress => 'Ukucindezeleka';

  @override
  String get triggerLoneliness => 'Isizungu';

  @override
  String get triggerHabit => 'Umkhuba';

  @override
  String get triggerSadness => 'Usizi';

  @override
  String get triggerAnger => 'Intukuthelo';

  @override
  String get triggerBoredom => 'Isithukuthezi';

  @override
  String get triggerSocialPressure => 'Ingcindezi yomphakathi';

  @override
  String get triggerCelebration => 'Ukugubha';

  @override
  String get triggerSleepProblems => 'Izinkinga zokulala';

  @override
  String get triggerWorkPressure => 'Ingcindezi yomsebenzi';

  @override
  String get question4Title => 'Kungani ufuna ukushintsha?';

  @override
  String get question4Subtitle =>
      'Isizathu sakho sizokusiza ukuthi uhlale unogqozi.';

  @override
  String get reasonImproveHealth => 'Thuthukisa Impilo Yami';

  @override
  String get reasonSaveMoney => 'Yonga Imali';

  @override
  String get reasonFamily => 'Umndeni';

  @override
  String get reasonBetterSleep => 'Ukulala Kangcono';

  @override
  String get reasonMentalClarity => 'Ukucaca Kwengqondo';

  @override
  String get reasonFitness => 'Ukuqina Komzimba';

  @override
  String get reasonSelfRespect => 'Ukuzihlonipha';

  @override
  String get reasonCareer => 'Umsebenzi';

  @override
  String get milestoneUnlockedLabel => 'IMPUMELELO IVULIWE';

  @override
  String incredibleNamePrefix(String name) {
    return 'Kuyamangalisa, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount oyongile';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count okugwenyiwe';
  }

  @override
  String get shareMyMilestone => 'Yabelana ngempumelelo yami';

  @override
  String get milestoneImageShareError =>
      'Isithombe sempumelelo asikwazanga ukwenziwa. Sicela uzame futhi.';

  @override
  String get dailyCheckInTitle => 'Ukungena Kwansuku Zonke';

  @override
  String get howAreYouFeelingToday => 'Uzizwa kanjani namuhla?';

  @override
  String get honestAnswerHelp =>
      'Impendulo yakho eqotho isisiza ukuthi sikusekele kangcono';

  @override
  String get didYouDrinkToday => 'Ingabe uphuze namuhla?';

  @override
  String get noLabel => 'Cha';

  @override
  String get yesLabel => 'Yebo';

  @override
  String get cravingLevelNow =>
      'Sinamandla kangakanani isifiso sokuphuza manje?';

  @override
  String get anythingOnMind => 'Ingabe kukhona okusemqondweni wakho?';

  @override
  String get optionalLabel => '(akuphoqelekile)';

  @override
  String get dailyNoteHint => 'Bhala ngosuku lwakho, izimbangela, ukunqoba...';

  @override
  String get alreadyCheckedInToday => 'Usungenile namuhla';

  @override
  String get saveCheckIn => 'Londoloza ukungena';

  @override
  String get checkInsHelpTrack =>
      'Ukungena kusiza ukulandelela inqubekelaphambili yakho ngokuhamba kwesikhathi';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Usuku lwanamuhla lokungena seluqediwe.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Sicela uphendule yomibili imibuzo engenhla kuqala';

  @override
  String get checkInSaved => 'Ukungena kulondoloziwe';

  @override
  String get cravingNone => 'Akukho';

  @override
  String get cravingLow => 'Kuphansi';

  @override
  String get cravingMedium => 'Phakathi';

  @override
  String get cravingStrong => 'Kunamandla';

  @override
  String get moodBad => 'Kubi';

  @override
  String get moodLow => 'Kuphansi';

  @override
  String get moodGreat => 'Kuhle kakhulu';

  @override
  String get sosSupportTitle => 'Usizo lwe-SOS';

  @override
  String notAloneMessage(String name) {
    return 'Awuwedwa, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Izifiso zokuphuza ziyadlula. Khetha okuthile ngezansi okuzokusiza udlule kulesi sikhathi.';

  @override
  String get breathingExercise => 'Ukuzivocavoca Ngokuphefumula';

  @override
  String get breathingExerciseSubtitle =>
      'Indlela eqondisiwe ye-4-7-8, imizuzu emi-2';

  @override
  String get rideTheWave => 'Gibela Igagasi';

  @override
  String get rideTheWaveSubtitle =>
      'Isibali-sikhathi semizuzu eyi-15 — izifiso zokuphuza zihlala zidlula';

  @override
  String get copingTips => 'Amathiphu Okubhekana Nakho';

  @override
  String get copingTipsSubtitle => 'Amasu enzelwe wena nezimbangela zakho';

  @override
  String get talkToAiCoach => 'Khuluma nomqeqeshi we-AI';

  @override
  String get talkToAiCoachSubtitle => 'Xoxa nomngane wakho wokululama';

  @override
  String get callSomeone => 'Shayela umuntu';

  @override
  String get callSomeoneSubtitle => 'Xhumana nomuntu omethembayo';

  @override
  String get contactsPermissionNeeded =>
      'Imvume yoxhumana nabo iyadingeka ukuze ushayele umuntu.';

  @override
  String get beatenCravingsPrefix => 'Usunqobe izifiso zokuphuza ';

  @override
  String beatenCravingsCount(int count) {
    return '$count izikhathi';
  }

  @override
  String get beatenCravingsSuffix => ' ngaphambilini. Ungakwenza futhi.';

  @override
  String get tellUsAboutYourself => 'Sitshele Ngawe';

  @override
  String get detailsSubtitle =>
      'Lolu lwazi lusisiza ukuthi senze uhambo lwakho lokululama lube ngokwezifiso futhi sinikeze ulwazi olunembile.';

  @override
  String get nameLabel => 'Igama';

  @override
  String get nameHint => 'isb., Alex Rivers';

  @override
  String get ageLabel => 'Iminyaka';

  @override
  String get ageHint => 'isb., 32';

  @override
  String get sexAssignedAtBirth => 'Ubulili obabekwa ngesikhathi sokuzalwa';

  @override
  String get sexFemale => 'Owesifazane';

  @override
  String get sexMale => 'Owesilisa';

  @override
  String get heightLabel => 'Ubude';

  @override
  String get weightLabel => 'Isisindo';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Umkhawulo wansuku zonke usufinyelelwe';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Usebenzise yonke imilayezo yamahhala engu-$limit yanamuhla. Thuthukela ku-Premium ukuze uxoxe nomqeqeshi ngaphandle komkhawulo.';
  }

  @override
  String get coachConnectError =>
      'Angikwazanga ukuxhuma manje. Sicela uzame futhi ngemva kwesikhashana.';

  @override
  String get clearConversationTitle => 'Sula ingxoxo?';

  @override
  String get clearConversationMessage =>
      'Lokhu kuzosusa unomphela umlando wengxoxo yakho nomqeqeshi.';

  @override
  String get clearLabel => 'Sula';

  @override
  String get recoveryCoachTitle => 'Umqeqeshi Wokululama';

  @override
  String get onlineLabel => 'Ku-inthanethi';

  @override
  String get clearConversationMenuItem => 'Sula ingxoxo';

  @override
  String chatGreeting(String name) {
    return 'Sawubona $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Usosukwini $days lohambo lwakho. Ngikhona noma nini lapho ufuna ukukhuluma ngezinto.';
  }

  @override
  String get quickPromptsLabel => 'IZICELO EZISHESHAYO';

  @override
  String get promptCravingLabel => 'Ngifisa ukuphuza';

  @override
  String get promptCravingSubtitle => 'Zolisa ingqondo ngokushesha';

  @override
  String get promptMotivationLabel => 'Ngidinga ugqozi';

  @override
  String get promptMotivationSubtitle => 'Ukukhuthazwa lapho kunzima';

  @override
  String get promptSocialLabel => 'Isimo senhlalo';

  @override
  String get promptSocialSubtitle => 'Bhekana nomhlangano';

  @override
  String get promptSlippedLabel => 'Ngiphinde ngaphuza';

  @override
  String get promptSlippedSubtitle => 'Akukho ukwahlulela, ukwesekwa kuphela';

  @override
  String get typeMessageHint => 'Bhala umlayezo...';

  @override
  String get editProfileTitle => 'Hlela Iphrofayela';

  @override
  String couldNotSaveProfile(String error) {
    return 'Iphrofayela ayikwazanga ukulondolozwa: $error';
  }

  @override
  String get heightCmLabel => 'Ubude (cm)';

  @override
  String get weightKgLabel => 'Isisindo (kg)';

  @override
  String get saveChangesLabel => 'Londoloza Izinguquko';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Ulwazi Oluthuthukile Nokuhlaziywa';

  @override
  String get featureUnlimitedJournal => 'Okubhalwe Kudayari Okungenamkhawulo';

  @override
  String get featureUnlimitedChat => 'Ingxoxo Engenamkhawulo Nomqeqeshi we-AI';

  @override
  String get featureCommunityGroups => 'Amaqembu Omphakathi Akhethekile';

  @override
  String get featurePrioritySupport => 'Ukusekelwa Okubalulekile Kochwepheshe';

  @override
  String get featureThemePacks => 'Amaphakheji Ezindikimba Ngokwezifiso';

  @override
  String get featureDataExport => 'Ukuthunyelwa Kwedatha';

  @override
  String get featureAdFree => 'Okuhlangenwe Nakho Okungenazo Izikhangiso';

  @override
  String get premiumMemberTitle => 'Uyilungu le-Premium';

  @override
  String get unlockFullRecoveryTitle => 'Vula Lonke Uhambo Lwakho\nLokululama';

  @override
  String get premiumMemberSubtitle =>
      'Siyabonga ngokweseka uhambo lwakho lokululama — zonke izici ze-Premium ezingezansi zivuliwe.';

  @override
  String get premiumJoinSubtitle =>
      'Joyina umphakathi wezinkulungwane zabantu\nabasheshisa uhambo lwabo lokuphulukisa ngamathuluzi ethu\nwe-Premium nokusekelwa okwenziwe ngokwezifiso.';

  @override
  String get monthlyPlanLabel => 'Nyanga zonke';

  @override
  String get perMonthSuffix => '/ngenyanga';

  @override
  String get cancelAnytimeLabel => 'Khansela noma nini';

  @override
  String get yearlyPlanLabel => 'Ngonyaka';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Kukhokhwa minyaka yonke ngo-$amount';
  }

  @override
  String get bestValueLabel => 'Inani Elingcono Kakhulu';

  @override
  String get alreadyPremiumLabel => 'Usuyi-Premium ✓';

  @override
  String get startPremiumLabel => 'Qala i-Premium';

  @override
  String get manageSubscriptionLabel =>
      'Phatha noma khansela kuzilungiselelo zokubhalisa zedivayisi yakho.';

  @override
  String get noCommitmentLabel => 'Akukho ukuzibophezela. Khansela noma nini.';

  @override
  String get continueFreePlanLabel => 'Qhubeka nohlelo lwamahhala';

  @override
  String get backToHomeLabel => 'Buyela Ekhaya';

  @override
  String get cancelPremiumLabel => 'Khansela i-Premium';

  @override
  String get cancelPremiumTitle => 'Khansela i-Premium?';

  @override
  String get cancelPremiumMessage =>
      'Uzolahlekelwa ukufinyelela kokubhalwe kudayari okungenamkhawulo, ingxoxo nomqeqeshi engenamkhawulo, ulwazi lwezibalo, nemibiko yamasonto onke. Ungabhalisa futhi noma nini.';

  @override
  String get keepPremiumLabel => 'Gcina i-Premium';

  @override
  String get nowPremiumMessage =>
      'Manje usuyi-Premium! Jabulela lonke ulwazi lwakho lokululama.';

  @override
  String get premiumCancelledMessage =>
      'I-Premium ikhanseliwe. Usuphinde wabuyela ohlelweni lwamahhala.';

  @override
  String get termsOfUseLabel => 'Imigomo Yokusebenzisa';

  @override
  String get navHomeLabel => 'Ikhaya';

  @override
  String get navStatsLabel => 'Izibalo';

  @override
  String get navJournalLabel => 'Idayari';

  @override
  String get navBadgesLabel => 'Amabheji';

  @override
  String get navProfileLabel => 'Iphrofayela';

  @override
  String get recoveryGoalsTitle => 'Izinhloso Zokululama';

  @override
  String get drinksPerWeekLabel => 'Iziphuzo ngesonto';

  @override
  String get quitReasonsLabel => 'Izizathu Zokuyeka';

  @override
  String get quitReasonsHelperText => 'Hlukanisa izizathu eziningi ngekhoma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Izinhloso zokululama azikwazanga ukulondolozwa: $error';
  }

  @override
  String get goalHint => 'isb., Ukuyeka ngokuphelele';

  @override
  String get drinksPerWeekHint => 'isb., 12';

  @override
  String get quitReasonsHint => 'isb., Impilo, Umndeni, Imali';

  @override
  String get todaysPrompt => 'Umbuzo wanamuhla';

  @override
  String get defaultJournalPrompt => 'Yini esengqondweni yakho namuhla?';

  @override
  String get aiJournalInsights => 'Ulwazi lwe-AI oluvela kudayari';

  @override
  String get unlockJournalInsightsMessage =>
      'Vula amaphethini amasonto onke, izitayela zemizwa, nolwazi olwenziwe ngokwezifiso oluvela kokubhalwe kudayari yakho.';

  @override
  String get notEnoughJournalData =>
      'Ayikho idatha eyanele okwamanje — bhala okubhaliwe okumbalwa kuleli sonto bese ubuya.';

  @override
  String get openEntry => 'Vula';

  @override
  String get editEntry => 'Hlela';

  @override
  String get deleteEntry => 'Susa';

  @override
  String get searchJournalEntries => 'Sesha okubhaliwe...';

  @override
  String get writeNewEntry => 'Bhala okusha';

  @override
  String get recentEntries => 'Okubhaliwe Kwakamuva';

  @override
  String get noJournalEntriesYet =>
      'Akukho okubhaliwe kudayari okwamanje — bhala ukucabanga kwakho kokuqala ngenhla.';

  @override
  String get noEntriesMatchFilters =>
      'Akukho okubhaliwe okuhambisana nezihlungi zakho.';

  @override
  String get weeklyJournalLimitReached => 'Umkhawulo wamasonto usufinyelelwe';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Usebenzise konke okubhaliwe kwamahhala okungu-$limit kuleli sonto. Thuthukela ku-Premium ukuze ubhale ngaphandle komkhawulo.';
  }

  @override
  String get newEntry => 'Okubhaliwe Okusha';

  @override
  String get writeYourThoughts => 'Bhala imicabango yakho';

  @override
  String get saveEntry => 'Londoloza Okubhaliwe';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Kusele $remaining kokungu-$limit okubhaliwe kwamahhala kuleli sonto';
  }

  @override
  String get deleteEntryQuestion => 'Susa okubhaliwe?';

  @override
  String get deleteEntryConfirmation =>
      'Lokhu okubhaliwe kuzosuswa unomphela. Lokhu ngeke kuhlehliswe.';

  @override
  String get journalEntryNotFound => 'Okubhaliwe akutholakalanga';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Lokhu okubhaliwe kudayari kungenzeka kususiwe.';

  @override
  String get goBack => 'Buyela emuva';

  @override
  String get journalEntryTitle => 'Okubhaliwe Kudayari';

  @override
  String get moodStruggling => 'Ngiyazabalaza';

  @override
  String get moodUnwell => 'Angizizwa kahle';

  @override
  String get moodNeutral => 'Okuvamile';

  @override
  String get whatHappenedToday => 'Kwenzekeni namuhla?';

  @override
  String get trigger => 'Isimbangela';

  @override
  String get whatHelped => 'Okusize';

  @override
  String get whatIllTryNextTime => 'Engizozama ngakho ngokuzayo';

  @override
  String get journalPrivacyMessage =>
      'Ukucabanga kwakho kuyimfihlo futhi kugcinwa kudayari yakho.';

  @override
  String get unlocked => 'Kuvuliwe';

  @override
  String daysLeft(int count) {
    return 'Kusele izinsuku ezingu-$count';
  }

  @override
  String daysCount(int count) {
    return 'Izinsuku ezingu-$count';
  }

  @override
  String get firstReflection => 'Ukucabanga\nKokuqala';

  @override
  String get oneJournalEntry => 'Okubhaliwe Kudayari oku-1';

  @override
  String get openBook => 'Vula Incwadi';

  @override
  String get tenJournalEntries => 'Okubhaliwe Kudayari okuyi-10';

  @override
  String get dedicatedWriter => 'Umbhali\nOzinikele';

  @override
  String get thirtyJournalEntries => 'Okubhaliwe Kudayari okungu-30';

  @override
  String get firstConversation => 'Ingxoxo\nYokuqala';

  @override
  String get oneAiCoachChat => 'Ingxoxo ye-AI Coach eyi-1';

  @override
  String get keepTalking => 'Qhubeka Ukhuluma';

  @override
  String get fiveConversations => 'Izingxoxo ezi-5';

  @override
  String get coachCompanion => 'Umlingani\nWomqeqeshi';

  @override
  String get twentyConversations => 'Izingxoxo ezingama-20';

  @override
  String get checkInHabit => 'Umkhuba\nWokungena';

  @override
  String get sevenCheckIns => 'Ukungena okungu-7';

  @override
  String get consistencyPro => 'Uchwepheshe\nWokungaguquguquki';

  @override
  String get thirtyCheckIns => 'Ukungena okungu-30';

  @override
  String get dedicatedJourney => 'Uhambo\nOluzinikele';

  @override
  String get hundredCheckIns => 'Ukungena okungu-100';

  @override
  String get goalGetter => 'Umzuzi Wezinhloso';

  @override
  String get threeGoalsCompleted => 'Izinhloso ezi-3 Ziqediwe';

  @override
  String get goalAchiever => 'Umzuzi\nWezinhloso';

  @override
  String get tenGoalsCompleted => 'Izinhloso eziyi-10 Ziqediwe';

  @override
  String get firstSavings => 'Ukonga\nKokuqala';

  @override
  String get fiveHundredSaved => '\$500 Oyongile';

  @override
  String get smartSaver => 'Umlondolozi Ohlakaniphile';

  @override
  String get oneThousandSaved => '\$1,000 Oyongile';

  @override
  String get bigSaver => 'Umlondolozi Omkhulu';

  @override
  String get fiveThousandSaved => '\$5,000 Oyongile';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current kokungu-\$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current kokungu-$target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Qhubeka — impumelelo yakho yokuqala ikulindile!';

  @override
  String get badgesAndMilestones => 'Amabheji Nezimpumelelo';

  @override
  String get yourMilestoneJourney => 'Uhambo Lwakho Lwezimpumelelo';

  @override
  String milestonesAchieved(int count) {
    return 'Izimpumelelo ezingu-$count sezitholakele.\nThepha ukuze ubuke';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Uvule izimpumelelo ezingu-$unlocked kwezingu-$total ohambweni lwakho.';
  }

  @override
  String get remaining => 'Okusele';

  @override
  String get complete => 'Kuqediwe';

  @override
  String get nextMilestone => 'Impumelelo Elandelayo';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% usufikile';
  }

  @override
  String get sobrietyMilestones => 'Izimpumelelo Zokungaphuzi';

  @override
  String get journeyBadges => 'Amabheji Ohambo';

  @override
  String get bronze => 'ITHUSI';

  @override
  String get silver => 'ISILIVA';

  @override
  String get gold => 'IGOLIDE';

  @override
  String get platinum => 'IPLATINUM';

  @override
  String get diamond => 'IDAYAMONDI';

  @override
  String get analyzingYourJourney => 'Ihlaziya Uhambo Lwakho...';

  @override
  String get aiCreatingSanctuary =>
      'I-AI yethu idala indawo yakho yokululama eyenziwe ngokwezifiso.';

  @override
  String get understandingHabits => 'Iqonda imikhuba...';

  @override
  String get calculatingBaseline => 'Ibala isisekelo sakho...';

  @override
  String get personalizingPlan => 'Yenza uhlelo lwakho lube ngokwezifiso...';

  @override
  String get finalizingSanctuary => 'Iqedela indawo yakho yokululama...';

  @override
  String get creatingYourPlan => 'Idala uhlelo lwakho...';

  @override
  String get personalizedPlanError =>
      'Asikwazanga ukudala uhlelo lwakho olwenziwe ngokwezifiso. Sicela uzame futhi.';

  @override
  String get retry => 'Zama futhi';

  @override
  String get breathInhale => 'DONSELA UMFUTHO';

  @override
  String get breathHold => 'BAMBA';

  @override
  String get breathExhale => 'KHIPHA UMFUTHO';

  @override
  String get breathDone => 'KUQEDIWE';

  @override
  String get breathGreatJob => 'Wenze kahle!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count amaseshini namuhla',
      one: '$count iseshini namuhla',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Qeda Ukuzivocavoca';

  @override
  String get done => 'Kwenziwe';

  @override
  String get noCopingTipsYet => 'Awekho amathiphu okubhekana nakho okwamanje';

  @override
  String get copingStrategiesWillAppear =>
      'Amasu akho okwenziwa ngokwezifiso azovela lapha uma uhlelo lwakho lokululama seluqediwe.';

  @override
  String get strategiesTailoredToTriggers => 'Amasu enzelwe izimbangela zakho';

  @override
  String get cravingsPeakAndPass =>
      'Izifiso zokuphuza ziyaphakama\nbese zidlula';

  @override
  String get rideTheWaveDescription =>
      'Izifiso eziningi zokuphuza zidlula emizuzwini eyi-15. Akudingeki wenze okuthile ngazo — vele uzidlule nathi.';

  @override
  String get stayWithIt => 'qhubeka';

  @override
  String get youMadeIt => 'uphumelele';

  @override
  String get readyWhenYouAre => 'silungele uma usulungile';

  @override
  String get rideItAgain => 'Gibela futhi';

  @override
  String get start15MinuteTimer => 'Qala Isibali-sikhathi Semizuzu eyi-15';

  @override
  String get rideTheWaveCompletedMessage =>
      'Udlule egagasini. Lokho amandla angempela. 💪';

  @override
  String get myProgress => 'Inqubekelaphambili Yami';

  @override
  String get weekLabel => 'Isonto';

  @override
  String get monthLabel => 'Inyanga';

  @override
  String get allLabel => 'Konke';

  @override
  String get daysSoberStatLabel => 'Izinsuku\nungaphuzile';

  @override
  String get savedStatLabel => 'Oyongile';

  @override
  String get avoidedStatLabel => 'Okugwenyiwe';

  @override
  String get moodTrends => 'Izitayela Zemizwa';

  @override
  String get cravingsPattern => 'Iphethini Yezifiso';

  @override
  String get unlockLabel => 'Vula';

  @override
  String get unlockFullStats => 'Vula zonke izibalo';

  @override
  String get premiumStatsMessage =>
      'Izitayela zemizwa namaphethini ezifiso yizici ze-Premium. Thuthukela ukuze ubone zonke izibalo zakho.';

  @override
  String get healthMilestonesWillAppear =>
      'Izimpumelelo zakho zezempilo zizovela lapha.';

  @override
  String get healthMilestones => 'Izimpumelelo Zezempilo';

  @override
  String dayNumber(int day) {
    return 'Usuku $day';
  }

  @override
  String get soberLabel => 'Awuphuzi';

  @override
  String get slipLabel => 'Ukuphinda uphuze';

  @override
  String get noDataLabel => 'Ayikho idatha';

  @override
  String get milestone24Hours => 'Amahora angama-24';

  @override
  String get milestoneOneWeek => 'Isonto Elilodwa';

  @override
  String get milestoneOneMonth => 'Inyanga Eyodwa';

  @override
  String get milestoneThreeMonths => 'Izinyanga Ezintathu';

  @override
  String get milestoneSixMonths => 'Izinyanga Eziyisithupha';

  @override
  String get milestoneOneYear => 'Unyaka Owodwa';

  @override
  String milestoneDayCount(int day) {
    return 'Impumelelo Yosuku $day';
  }

  @override
  String get maybeLaterLabel => 'Mhlawumbe kamuva';

  @override
  String get cancelLabel => 'Khansela';
}
