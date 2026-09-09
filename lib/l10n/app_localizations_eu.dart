// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get skip => 'Saltatu';

  @override
  String get continueButton => 'Jarraitu';

  @override
  String get getStarted => 'Hasi';

  @override
  String get onboardingTitle1 => 'Hartu zure bizitzaren kontrola';

  @override
  String get onboardingSubtitle1 =>
      'Jarraitu zure bidea, ospatu lorpen bakoitza eta izan osasuntsuago egun bakoitzean.';

  @override
  String get onboardingTitle2 => 'Zure AI osatze laguna';

  @override
  String get onboardingSubtitle2 =>
      'Jaso orientazio pertsonalizatua, ohitura osasungarriak, motibazio abisuak eta zure bideari egokitutako aurrerapen erreportajeak.';

  @override
  String get goodMorning => 'Egun on';

  @override
  String get goodAfternoon => 'Arratsalde on';

  @override
  String get goodEvening => 'Arratsalde on';

  @override
  String get goodNight => 'Gabon';

  @override
  String get embracingClarity => 'Argitasuna besarkatzen, egunez egun.';

  @override
  String get streakLabel => 'RAXA';

  @override
  String get goalLabel => 'Helburua';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Egun',
      one: 'Egun $count',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium Plana';

  @override
  String get premiumPlanSubtitle => 'Desblokeatu zure osatze esperientzia osoa';

  @override
  String get accountAndSupport => 'KONTUA ETA LAGUNTZA';

  @override
  String get privacyPolicy => 'Pribatutasun politika';

  @override
  String get privacyPolicySubtitle =>
      'Kudeatu datuak partekatzea eta kontuaren segurtasuna';

  @override
  String get termsOfService => 'Zerbitzu-baldintzak';

  @override
  String get termsOfServiceSubtitle =>
      'Galdera arruntak, kontaktua eta baliabideak';

  @override
  String get shareApp => 'Partekatuko aplikazioa';

  @override
  String get shareAppSubtitle => 'Partekatu aplikazioa zure lagunekin';

  @override
  String get resetData => 'Berrabiarazi datuak';

  @override
  String get resetDataSubtitle => 'Ezabatu gailu honetan gordetako guztia';

  @override
  String get resetAllDataTitle => 'Datu guztiak berrabiarazi?';

  @override
  String get resetAllDataMessage =>
      'Honek gailu honetan gordetako guztia garbitzen du — profila, egunkariko sarrerak eta aurrerapena — eta ezin da atzera egin.';

  @override
  String get cancel => 'Ezeztatu';

  @override
  String get reset => 'Berrabiarazi';

  @override
  String get chooseFromGallery => 'Aukeratu galeriatik';

  @override
  String get takePhoto => 'Atera argazkia';

  @override
  String get removePhoto => 'Kendu argazkia';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Ezin izan da argazkia eguneratu: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Ezin izan da argazkia kendu: $error';
  }

  @override
  String get photoTooLarge =>
      'Argazki hori handiegia da konprimitu ondoren ere — mesedez, saiatu beste batekin.';

  @override
  String get unableToLoadProfile => 'Ezin da zure profila kargatu';

  @override
  String get pleaseTryAgain => 'Mesedez saiatu berriro.';

  @override
  String get tryAgain => 'Saiatu berriro';

  @override
  String get profileNotFound => 'Ez da profila aurkitu';

  @override
  String get refresh => 'Eguneratu';

  @override
  String get noProfileDataFound =>
      'Oraindik ez da profil daturik aurkitu gailu honetan.';

  @override
  String couldNotResetData(String error) {
    return 'Ezin izan dira datuak berrabiarazi: $error';
  }

  @override
  String get navHome => 'Hasiera';

  @override
  String get navStats => 'Estatistikak';

  @override
  String get navJournal => 'Egunkaria';

  @override
  String get navBadges => 'Intsigniak';

  @override
  String get navProfile => 'Profila';

  @override
  String featureComingSoon(String feature) {
    return '$feature laster egongo da erabilgarri.';
  }

  @override
  String get appWordmark => 'OSASUNA';

  @override
  String get appTitle => 'Utzi edateari';

  @override
  String get splashSubtitle =>
      'Egin lehen urratsa alkoholik gabeko\nbizitza baterantz';

  @override
  String get preparingJourney => 'Zure bidaia\nprestatzen';

  @override
  String get taskMorningMeditation => 'Goizeko meditazioa (10m)';

  @override
  String get taskReadChapter =>
      'Irakurri \"The Sober Diaries\" liburuko 4. kapitulua';

  @override
  String get taskEveningJournal => 'Arratsaldeko esker oneko egunkaria';

  @override
  String get close => 'Itxi';

  @override
  String get youAreDoingGreat => 'Oso ondo ari zara egiten!';

  @override
  String get shareMilestone => 'Partekatu mugarria';

  @override
  String shareMilestoneMessage(int days) {
    return '$days. egunean nago nire osatze bidaian! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Nire osatze mugarria';

  @override
  String get weeklyReportReadyTitle => 'Zure asteko erreportajea prest dago';

  @override
  String get weeklyReportReadySubtitle => 'Sakatuta ikusi nola joan den astea';

  @override
  String get howAreYouFeeling => 'Nola sentitzen zara?';

  @override
  String get moodTough => 'Zaila';

  @override
  String get moodOkay => 'Ondo';

  @override
  String get moodGood => 'Ona';

  @override
  String get moneySaved => 'Aurreztutako dirua';

  @override
  String get caloriesSaved => 'Aurreztutako kaloriak';

  @override
  String get healthScore => 'Osasun puntuazioa';

  @override
  String get drinksAvoided => 'Saihestutako edariak';

  @override
  String get estimated => 'Mugatu gabeko estimazioa';

  @override
  String get aiGenerated => 'AI bidez sortua';

  @override
  String get daysCapsLabel => 'EGUNAK';

  @override
  String get todaysMotivation => 'Gaurko motibazioa';

  @override
  String get defaultMotivationQuote =>
      'Arrakastaz eutsi diozu zure konpromisoari. Jarraitu aldaketa positiboaren olatua gidatzen.';

  @override
  String get talkToCoach => 'Hitz egin entrenatzailearekin';

  @override
  String get havingACraving => 'Gogo bizia dut';

  @override
  String get unlockWeeklyReportsTitle => 'Desblokeatu asteko erreportajeak';

  @override
  String get unlockWeeklyReportsMessage =>
      'Ikusi zure egun mozkortu gabeak, umore joerak eta AI bidezko gomendio pertsonalizatuak astero. Eguneratu Premium-era desblokeatzeko.';

  @override
  String get maybeLater => 'Agian geroago';

  @override
  String get upgrade => 'Eguneratu';

  @override
  String get weeklyReportTitle => 'Asteko erreportajea';

  @override
  String get weeklyReportsPremiumTitle =>
      'Asteko erreportajeak Premium ezaugarri bat dira';

  @override
  String get weeklyReportsPremiumMessage =>
      'Ikusi zure egun mozkortu gabeak, umore joerak, gogo biziak eta AI bidezko ohar pertsonalizatuak astero.';

  @override
  String get upgradeToPremium => 'Eguneratu Premium-era';

  @override
  String get couldNotGenerateReport =>
      'Ezin izan da zure erreportajea sortu oraintxe bertan.';

  @override
  String get tryAgainLower => 'Saiatu berriro';

  @override
  String get statSoberDays => 'Mozkortu gabeko egunak';

  @override
  String get statAvgMood => 'Batez besteko umorea';

  @override
  String get statCravings => 'Gogo biziak';

  @override
  String get statMoneySaved => 'Aurreztutako dirua';

  @override
  String get coachFeedback => 'Entrenatzailearen oharrak';

  @override
  String get journalInsights => 'Egunkariko ikuspegiak';

  @override
  String get next => 'Hurrengoa';

  @override
  String get question1Title => 'Zein da zure helburua';

  @override
  String get question1Subtitle => 'Aukeratu gehien inporta zaizun\nhelburua';

  @override
  String get goalQuitCompletely => 'Guztiz utzi';

  @override
  String get goalReduceDrinking => 'Edatea murriztu';

  @override
  String get goalTakeABreak => 'Atsedenaldi bat hartu';

  @override
  String get goalBuildHealthierHabits => 'Ohitura osasungarriagoak eraiki';

  @override
  String get question3Title => 'Esaguzu zure errutinari buruz';

  @override
  String get drinksPerWeek => 'Edariak astean';

  @override
  String get moneySpentPerWeek => 'Astean gastatutako dirua';

  @override
  String get drinkingLevel => 'Edandako maila';

  @override
  String get triggersLabel => 'Pizgarriak';

  @override
  String get levelSocial => 'Soziala';

  @override
  String get levelRegular => 'Erregularra';

  @override
  String get levelHeavy => 'Ugariegia';

  @override
  String get levelDependent => 'Mendekoa';

  @override
  String get triggerStress => 'Estresa';

  @override
  String get triggerLoneliness => 'Bakardadea';

  @override
  String get triggerHabit => 'Ohitura';

  @override
  String get triggerSadness => 'Trristura';

  @override
  String get triggerAnger => 'Haserrea';

  @override
  String get triggerBoredom => 'Nezkadura';

  @override
  String get triggerSocialPressure => 'Presio soziala';

  @override
  String get triggerCelebration => 'Ospakizuna';

  @override
  String get triggerSleepProblems => 'Lo arazoak';

  @override
  String get triggerWorkPressure => 'Laneko presioa';

  @override
  String get question4Title => 'Zergatik aldatu nahi duzu?';

  @override
  String get question4Subtitle => 'Zure arrazoiak motibatzen lagunduko dizu.';

  @override
  String get reasonImproveHealth => 'Nire osasuna hobetu';

  @override
  String get reasonSaveMoney => 'Dirua aurreztu';

  @override
  String get reasonFamily => 'Familia';

  @override
  String get reasonBetterSleep => 'Lo hobeto egin';

  @override
  String get reasonMentalClarity => 'Argitasun mentala';

  @override
  String get reasonFitness => 'Forma fisikoa';

  @override
  String get reasonSelfRespect => 'Norberaganako errespetua';

  @override
  String get reasonCareer => 'Karrera profesionala';

  @override
  String get milestoneUnlockedLabel => 'MUGARRIA DESBLOKEATUTA';

  @override
  String incredibleNamePrefix(String name) {
    return 'Miresgarria, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount aurreztuta';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count edari saihestuta';
  }

  @override
  String get shareMyMilestone => 'Partekatu nire mugarria';

  @override
  String get milestoneImageShareError =>
      'Ezin izan da mugarriaren irudia sortu. Mesedez, saiatu berriro.';

  @override
  String get dailyCheckInTitle => 'Eguneroko azterketa';

  @override
  String get howAreYouFeelingToday => 'Nola sentitzen zara gaur?';

  @override
  String get honestAnswerHelp =>
      'Zure erantzun finak zuri hobeto laguntzen laguntzen digu';

  @override
  String get didYouDrinkToday => 'Edan al duzu gaur?';

  @override
  String get noLabel => 'Ez';

  @override
  String get yesLabel => 'Bai';

  @override
  String get cravingLevelNow => 'Zein da zure gogo bizia oraintxe bertan?';

  @override
  String get anythingOnMind => 'Bada zerbait zure buruan?';

  @override
  String get optionalLabel => '(aukerakoa)';

  @override
  String get dailyNoteHint =>
      'Idatzi zure egunari, pizgarriei, lorpenei buruz...';

  @override
  String get alreadyCheckedInToday => 'Dagoeneko azterketa egina gaur';

  @override
  String get saveCheckIn => 'Gorde azterketa';

  @override
  String get checkInsHelpTrack =>
      'Azterketek denboran zehar zure aurrerapena jarraitzen laguntzen dute';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Dagoeneko osatu duzu gaurko azterketa.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Mesedez erantzun goiko bi galderak lehenik';

  @override
  String get checkInSaved => 'Azterketa gordeta';

  @override
  String get cravingNone => 'Batere ez';

  @override
  String get cravingLow => 'Baxua';

  @override
  String get cravingMedium => 'Ertaina';

  @override
  String get cravingStrong => 'Indartsua';

  @override
  String get moodBad => 'Oso txarra';

  @override
  String get moodLow => 'Txarra';

  @override
  String get moodGreat => 'Oso ona';

  @override
  String get sosSupportTitle => 'SOS Laguntza';

  @override
  String notAloneMessage(String name) {
    return 'Ez zaude bakarrik, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Gogo biziak igaro egiten dira. Aukeratu beheko zerbait une hau igarotzen laguntzeko.';

  @override
  String get breathingExercise => 'Arnasketa ariketa';

  @override
  String get breathingExerciseSubtitle => 'Gidatutako 4-7-8 teknika, 2 minutu';

  @override
  String get rideTheWave => 'Mugitu olatuarekin';

  @override
  String get rideTheWaveSubtitle =>
      '15 minutuko tenporizadorea — gogo biziak beti igarotzen dira';

  @override
  String get copingTips => 'Aurre egiteko aholkuak';

  @override
  String get copingTipsSubtitle =>
      'Estratégia pertsonalizatuak zure pizgarrientzat';

  @override
  String get talkToAiCoach => 'Hitz egin AI entrenatzailearekin';

  @override
  String get talkToAiCoachSubtitle => 'Chateatu zure osatze lagunarekin';

  @override
  String get callSomeone => 'Deitu norbaiti';

  @override
  String get callSomeoneSubtitle =>
      'Jarri harremanetan zure konfiantzazko kontaktuarekin';

  @override
  String get contactsPermissionNeeded =>
      'Kontaktuetarako baimena behar da norbaiti deitzeko.';

  @override
  String get beatenCravingsPrefix => 'Gogo biziei irabazi diezu ';

  @override
  String beatenCravingsCount(int count) {
    return '$count aldiz';
  }

  @override
  String get beatenCravingsSuffix => ' aurretik. Berriro egin dezakezu.';

  @override
  String get tellUsAboutYourself => 'Esaguzu zuri buruz';

  @override
  String get detailsSubtitle =>
      'Informazio honek zure osatze bidaia pertsonalizatzen eta datu zehatzak ematen laguntzen digu.';

  @override
  String get nameLabel => 'Izena';

  @override
  String get nameHint => 'adib., Alex Rivers';

  @override
  String get ageLabel => 'Adina';

  @override
  String get ageHint => 'adib., 32';

  @override
  String get sexAssignedAtBirth => 'Jaiotzean esleitutako sexua';

  @override
  String get sexFemale => 'Emakumezkoa';

  @override
  String get sexMale => 'Gizonezkoa';

  @override
  String get heightLabel => 'Altuera';

  @override
  String get weightLabel => 'Pisua';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Eguneko muga lortuta';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Gaurko $limit doako mezu guztiak erabili dituzu. Eguneratu Premium-era entrenatzailearekin mugarik gabe txateatzeko.';
  }

  @override
  String get coachConnectError =>
      'Ezin izan naiz konektatu oraintxe bertan. Mesedez saiatu berriro une bat barru.';

  @override
  String get clearConversationTitle => 'Ekarpena garbitu?';

  @override
  String get clearConversationMessage =>
      'Honek betiko kenduko du zure entrenatzailearen txat-historia.';

  @override
  String get clearLabel => 'Garbitu';

  @override
  String get recoveryCoachTitle => 'Osatze entrenatzailea';

  @override
  String get onlineLabel => 'Konektatuta';

  @override
  String get clearConversationMenuItem => 'Garbitu elkarrizketa';

  @override
  String chatGreeting(String name) {
    return 'Kaixo $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Zure bidaiaren $days. egunean zaude. Hemen nago gauzak hitz egin nahi dituzun bakoitzean.';
  }

  @override
  String get quickPromptsLabel => 'AZKARKO GALDERAK';

  @override
  String get promptCravingLabel => 'Gogo bizia dut';

  @override
  String get promptCravingSubtitle => 'Lasaitu zaitez, azkar';

  @override
  String get promptMotivationLabel => 'Motibazioa behar dut';

  @override
  String get promptMotivationSubtitle => 'Bultzada bat zaila denean';

  @override
  String get promptSocialLabel => 'Egoera soziala';

  @override
  String get promptSocialSubtitle => 'Maneiatu bilera bat';

  @override
  String get promptSlippedLabel => 'Erori egin naiz';

  @override
  String get promptSlippedSubtitle => 'Ejuiziorik gabe, laguntza soilik';

  @override
  String get typeMessageHint => 'Idatzi mezu bat...';

  @override
  String get editProfileTitle => 'Editatu profila';

  @override
  String couldNotSaveProfile(String error) {
    return 'Ezin izan da profila gorde: $error';
  }

  @override
  String get heightCmLabel => 'Altuera (cm)';

  @override
  String get weightKgLabel => 'Pisua (kg)';

  @override
  String get saveChangesLabel => 'Gorde aldaketak';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Ikuspegi eta analitika aurreratuak';

  @override
  String get featureUnlimitedJournal => 'Mugarik gabeko egunkari sarrerak';

  @override
  String get featureUnlimitedChat =>
      'Mugarik gabeko txata AI entrenatzailearekin';

  @override
  String get featureCommunityGroups => 'Komunitate talde esklusiboak';

  @override
  String get featurePrioritySupport => 'Lehentasunezko adituen laguntza';

  @override
  String get featureThemePacks => 'Gai pertsonalizatuen paketeak';

  @override
  String get featureDataExport => 'Datuak esportatzea';

  @override
  String get featureAdFree => 'Publizitaterik gabeko esperientzia';

  @override
  String get premiumMemberTitle => 'Premium kidea zara';

  @override
  String get unlockFullRecoveryTitle =>
      'Desblokeatu zure osatze esperientzia\nosoa';

  @override
  String get premiumMemberSubtitle =>
      'Eskerrik asko zure osatze bidaia laguntzeagatik — beheko premium ezaugarri guztiak desblokeatuta daude.';

  @override
  String get premiumJoinSubtitle =>
      'Batu zaitez milaka pertsonako komunitate batera,\nure premium tresnekin eta laguntza pertsonalizatuarekin\nosatze bidaia azkartzen ari direnak.';

  @override
  String get monthlyPlanLabel => 'Hilero';

  @override
  String get perMonthSuffix => '/hilabete';

  @override
  String get cancelAnytimeLabel => 'Ezeztatu edozein unetan';

  @override
  String get yearlyPlanLabel => 'Urtero';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Urtero fakturatua $amount-tan';
  }

  @override
  String get bestValueLabel => 'Balio onena';

  @override
  String get alreadyPremiumLabel => 'Premium zara ✓';

  @override
  String get startPremiumLabel => 'Hasi Premium-a';

  @override
  String get manageSubscriptionLabel =>
      'Kudeatu edo ezeztatu zure gailuko harpidetza ezarpenetatik.';

  @override
  String get noCommitmentLabel =>
      'Konpromisorik gabe. Ezeztatu edozein unetan.';

  @override
  String get continueFreePlanLabel => 'Jarraitu doako planarekin';

  @override
  String get backToHomeLabel => 'Itzuli hasierara';

  @override
  String get cancelPremiumLabel => 'Ezeztatu Premium-a';

  @override
  String get cancelPremiumTitle => 'Ezeztatu Premium-a?';

  @override
  String get cancelPremiumMessage =>
      'Mugarik gabeko egunkari sarrerak, entrenatzailearen txat mugagabea, estatistiken ikuspegiak eta asteko erreportajeak atzitzeko gaitasuna galduko duzu. Edozein unetan berridatzi zaitezke.';

  @override
  String get keepPremiumLabel => 'Mantendu Premium-a';

  @override
  String get nowPremiumMessage =>
      'Orain Premium zara! Gozatu zure osatze esperientzia osoaz.';

  @override
  String get premiumCancelledMessage =>
      'Premium ezeztatua. Doako planean zaude berriro.';

  @override
  String get termsOfUseLabel => 'Erabilera baldintzak';

  @override
  String get navHomeLabel => 'Hasiera';

  @override
  String get navStatsLabel => 'Estatistikak';

  @override
  String get navJournalLabel => 'Egunkaria';

  @override
  String get navBadgesLabel => 'Intsigniak';

  @override
  String get navProfileLabel => 'Profila';

  @override
  String get recoveryGoalsTitle => 'Osatze helburuak';

  @override
  String get drinksPerWeekLabel => 'Edariak astean';

  @override
  String get quitReasonsLabel => 'Uztekoko arrazoiak';

  @override
  String get quitReasonsHelperText => 'Banatu hainbat arrazoi koma batekin.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Ezin izan dira osatze helburuak gorde: $error';
  }

  @override
  String get goalHint => 'adib., Abstinentzia osoa';

  @override
  String get drinksPerWeekHint => 'adib., 12';

  @override
  String get quitReasonsHint => 'adib., Osasuna, Familia, Dirua';

  @override
  String get todaysPrompt => 'Gaurko galdera';

  @override
  String get defaultJournalPrompt => 'Zer duzu buruan gaur?';

  @override
  String get aiJournalInsights => 'AI egunkariko ikuspegiak';

  @override
  String get unlockJournalInsightsMessage =>
      'Desblokeatu asteko patroiak, umore joerak eta ikuspegi pertsonalizatuak zure egunkariko sarreretatik.';

  @override
  String get notEnoughJournalData =>
      'Oraindik ez dago nahiko daturik — idatzi sarrera batzuk aste honetan eta itzuli geroago.';

  @override
  String get openEntry => 'Apertura';

  @override
  String get editEntry => 'Editatu';

  @override
  String get deleteEntry => 'Ezabatu';

  @override
  String get searchJournalEntries => 'Bilatu sarrerak...';

  @override
  String get writeNewEntry => 'Idatzi sarrera berria';

  @override
  String get recentEntries => 'Azken sarrerak';

  @override
  String get noJournalEntriesYet =>
      'Oraindik ez dago egunkari sarrerarik — idatzi zure lehen hausnarketa goian.';

  @override
  String get noEntriesMatchFilters =>
      'Ez dago zure iragazkiekin bat datorren sarrerarik.';

  @override
  String get weeklyJournalLimitReached => 'Asteko muga lortuta';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Aste honetako $limit doako egunkari sarrera guztiak erabili dituzu. Eguneratu Premium-era mugarik gabeko sarrerak lortzeko.';
  }

  @override
  String get newEntry => 'Sarrera berria';

  @override
  String get writeYourThoughts => 'Idatzi zure pentsamenduak';

  @override
  String get saveEntry => 'Gorde sarrera';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining / $limit doako sarrera geratzen dira aste honetan';
  }

  @override
  String get deleteEntryQuestion => 'Sarrera ezabatu?';

  @override
  String get deleteEntryConfirmation =>
      'Sarrera hau betiko ezabatuko da. Ezin da atzera egin.';

  @override
  String get journalEntryNotFound => 'Ez da sarrera aurkitu';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Baliteke egunkari sarrera hau ezabatua izana.';

  @override
  String get goBack => 'Atzera egin';

  @override
  String get journalEntryTitle => 'Egunkari sarrera';

  @override
  String get moodStruggling => 'Zailtasunekin';

  @override
  String get moodUnwell => 'Gaizki';

  @override
  String get moodNeutral => 'Neutroa';

  @override
  String get whatHappenedToday => 'Zer gertatu da gaur?';

  @override
  String get trigger => 'Pizgarria';

  @override
  String get whatHelped => 'Zerk lagundu du';

  @override
  String get whatIllTryNextTime => 'Zer saiatuko naiz hurrengoan';

  @override
  String get journalPrivacyMessage =>
      'Zure hausnarketa pribatua da eta zure egunkarian gordetzen da.';

  @override
  String get unlocked => 'Desblokeatuta';

  @override
  String daysLeft(int count) {
    return '$count egun geratzen dira';
  }

  @override
  String daysCount(int count) {
    return '$count Egun';
  }

  @override
  String get firstReflection => 'Lehen\nHausnarketa';

  @override
  String get oneJournalEntry => 'Egunkari Sarrera 1';

  @override
  String get openBook => 'Liburu Irekia';

  @override
  String get tenJournalEntries => '10 Egunkari Sarrera';

  @override
  String get dedicatedWriter => 'Idazle\nDedikatua';

  @override
  String get thirtyJournalEntries => '30 Egunkari Sarrera';

  @override
  String get firstConversation => 'Lehen\nElkarrizketa';

  @override
  String get oneAiCoachChat => 'AI Entrenatzailearen Txat 1';

  @override
  String get keepTalking => 'Jarraitu Hitz Egiten';

  @override
  String get fiveConversations => '5 Elkarrizketa';

  @override
  String get coachCompanion => 'Entrenatzaile\nLaguna';

  @override
  String get twentyConversations => '20 Elkarrizketa';

  @override
  String get checkInHabit => 'Azterketa\nOhitura';

  @override
  String get sevenCheckIns => '7 Azterketa';

  @override
  String get consistencyPro => 'Konstantzia\nAditua';

  @override
  String get thirtyCheckIns => '30 Azterketa';

  @override
  String get dedicatedJourney => 'Bidaia\nDedikatua';

  @override
  String get hundredCheckIns => '100 Azterketa';

  @override
  String get goalGetter => 'Helburu Lortzailea';

  @override
  String get threeGoalsCompleted => '3 Helburu Osatuta';

  @override
  String get goalAchiever => 'Helburu\nLortzailea';

  @override
  String get tenGoalsCompleted => '10 Helburu Osatuta';

  @override
  String get firstSavings => 'Lehen\nAurreztuak';

  @override
  String get fiveHundredSaved => '\$500 Aurreztuta';

  @override
  String get smartSaver => 'Aurrezle Adimentsua';

  @override
  String get oneThousandSaved => '\$1.000 Aurreztuta';

  @override
  String get bigSaver => 'Aurrezle Handia';

  @override
  String get fiveThousandSaved => '\$5.000 Aurreztuta';

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
      'Jarraitu aurrera — zure lehen mugarria zure zain dago!';

  @override
  String get badgesAndMilestones => 'Intsigniak eta Mugarriak';

  @override
  String get yourMilestoneJourney => 'Zure Mugarrien Bidaia';

  @override
  String milestonesAchieved(int count) {
    return '$count mugarri lortuta.\nSakatuta ikusi';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return '$total-tik $unlocked mugarri desblokeatu dituzu zure bidaian.';
  }

  @override
  String get remaining => 'Geratzen direnak';

  @override
  String get complete => 'Osatuta';

  @override
  String get nextMilestone => 'Hurrengo Mugarria';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · %$percent eginda';
  }

  @override
  String get sobrietyMilestones => 'Mozkortu Gabeko Mugarriak';

  @override
  String get journeyBadges => 'Bidaiaren Intsigniak';

  @override
  String get bronze => 'BRONTZEA';

  @override
  String get silver => 'ZIRTZILA';

  @override
  String get gold => 'URREA';

  @override
  String get platinum => 'PLATINOA';

  @override
  String get diamond => 'DIAMANTEA';

  @override
  String get analyzingYourJourney => 'Zure Bidaia Analizatzen...';

  @override
  String get aiCreatingSanctuary =>
      'Gure AI-ak zure babesleku pertsonalizatua sortzen ari da.';

  @override
  String get understandingHabits => 'Ohiturak ulertzen...';

  @override
  String get calculatingBaseline => 'Zure oinarria kalkulatzen...';

  @override
  String get personalizingPlan => 'Zure plana pertsonalizatzen...';

  @override
  String get finalizingSanctuary => 'Babeslekua amaitzen...';

  @override
  String get creatingYourPlan => 'Zure plana sortzen...';

  @override
  String get personalizedPlanError =>
      'Ezin izan dugu zure plan pertsonalizatua sortu. Mesedez saiatu berriro.';

  @override
  String get retry => 'Saiatu berriro';

  @override
  String get breathInhale => 'ARNASTU';

  @override
  String get breathHold => 'EUTSI';

  @override
  String get breathExhale => 'BOTATU';

  @override
  String get breathDone => 'EGINDA';

  @override
  String get breathGreatJob => 'Lan bikaina!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saio gaur',
      one: 'Saio $count gaur',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Amaitu Ariketa';

  @override
  String get done => 'Eginda';

  @override
  String get noCopingTipsYet => 'Oraindik ez dago aurre egiteko aholkurik';

  @override
  String get copingStrategiesWillAppear =>
      'Zure estrategia pertsonalizatuak hemen agertuko dira osatze plana sortzen amaitzen denean.';

  @override
  String get strategiesTailoredToTriggers =>
      'Zure pizgarriei egokitutako estrategiak';

  @override
  String get cravingsPeakAndPass =>
      'Gogo biziak gailurrera iristen dira\neta igaro egiten dira';

  @override
  String get rideTheWaveDescription =>
      'Gogo bizi gehienak 15 minututan igarotzen dira. Ez duzu horren arabera jokatu behar — bide hori gurekin igaro soilik.';

  @override
  String get stayWithIt => 'Eutsi horri';

  @override
  String get youMadeIt => 'Lortu duzu';

  @override
  String get readyWhenYouAre => 'Prest zaudenean';

  @override
  String get rideItAgain => 'Berriro egin';

  @override
  String get start15MinuteTimer => 'Hasi 15 Minutuko Tenporizadorea';

  @override
  String get rideTheWaveCompletedMessage =>
      'Olatua igaro duzu. Hori benetako indarra da. 💪';

  @override
  String get myProgress => 'Nire Aurrerapena';

  @override
  String get weekLabel => 'Astea';

  @override
  String get monthLabel => 'Hilabetea';

  @override
  String get allLabel => 'Guztia';

  @override
  String get daysSoberStatLabel => 'Mozkortu gabeko\negunak';

  @override
  String get savedStatLabel => 'Aurreztuta';

  @override
  String get avoidedStatLabel => 'Saihestuta';

  @override
  String get moodTrends => 'Umore joerak';

  @override
  String get cravingsPattern => 'Gogo bizien patroia';

  @override
  String get unlockLabel => 'Desblokeatu';

  @override
  String get unlockFullStats => 'Desblokeatu estatistika osoak';

  @override
  String get premiumStatsMessage =>
      'Umore joerak eta gogo bizien patroiak Premium ezaugarriak dira. Eguneratu zure estatistika osoak ikusteko.';

  @override
  String get healthMilestonesWillAppear =>
      'Zure osasun mugarriak hemen agertuko dira.';

  @override
  String get healthMilestones => 'Osasun mugarriak';

  @override
  String dayNumber(int day) {
    return '$day. eguna';
  }

  @override
  String get soberLabel => 'Mozkortu gabe';

  @override
  String get slipLabel => 'Erorialdia';

  @override
  String get noDataLabel => 'Daturik ez';

  @override
  String get milestone24Hours => '24 Ordu';

  @override
  String get milestoneOneWeek => 'Aste Bat';

  @override
  String get milestoneOneMonth => 'Hilabete Bat';

  @override
  String get milestoneThreeMonths => 'Hiru Hilabete';

  @override
  String get milestoneSixMonths => 'Sei Hilabete';

  @override
  String get milestoneOneYear => 'Urte Bat';

  @override
  String milestoneDayCount(int day) {
    return '$day. Eguneko Mugarria';
  }

  @override
  String get maybeLaterLabel => 'Beharbada geroago';

  @override
  String get cancelLabel => 'Utzi';
}
