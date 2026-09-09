// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get skip => 'Jäta vahele';

  @override
  String get continueButton => 'Jätka';

  @override
  String get getStarted => 'Alusta';

  @override
  String get onboardingTitle1 => 'Võta oma elu üle kontroll';

  @override
  String get onboardingSubtitle1 =>
      'Jälgi oma teekonda, tähista iga saavutust ja saa tervislikumaks päev-päevalt.';

  @override
  String get onboardingTitle2 => 'Sinu tehisintellektiga taastumiskaaslane';

  @override
  String get onboardingSubtitle2 =>
      'Saa isikupärastatud juhiseid, tervislikke harjumusi, motivatsioonimeeldetuletusi ja edenemisraporteid, mis on loodud sinu teekonna jaoks.';

  @override
  String get goodMorning => 'Tere hommikust';

  @override
  String get goodAfternoon => 'Tere päevast';

  @override
  String get goodEvening => 'Tere õhtust';

  @override
  String get goodNight => 'Head ööd';

  @override
  String get embracingClarity => 'Mõtteselguse omaksvõtmine, üks päev korraga.';

  @override
  String get streakLabel => 'JÄRJEPIDEVUS';

  @override
  String get goalLabel => 'EESMÄRK';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päeva',
      one: '$count päev',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium-pakett';

  @override
  String get premiumPlanSubtitle => 'Ava oma täielik taastumiskogemus';

  @override
  String get accountAndSupport => 'KONTO JA TUGI';

  @override
  String get privacyPolicy => 'Privaatsuspoliitika';

  @override
  String get privacyPolicySubtitle =>
      'Halda andmete jagamist ja konto turvalisust';

  @override
  String get termsOfService => 'Teenusetingimused';

  @override
  String get termsOfServiceSubtitle => 'KKK, võta ühendust ja ressursid';

  @override
  String get shareApp => 'Jaga rakendust';

  @override
  String get shareAppSubtitle => 'Jaga rakendust oma sõpradega';

  @override
  String get resetData => 'Lähtesta andmed';

  @override
  String get resetDataSubtitle => 'Kustuta kõik sellesse seadmesse salvestatu';

  @override
  String get resetAllDataTitle => 'Kas lähtestada kõik andmed?';

  @override
  String get resetAllDataMessage =>
      'See kustutab kõik sellesse seadmesse salvestatud andmed — profiili, päevikukanded ja edenemise — ning seda ei saa tagasi võtta.';

  @override
  String get cancel => 'Tühista';

  @override
  String get reset => 'Lähtesta';

  @override
  String get chooseFromGallery => 'Vali galeriist';

  @override
  String get takePhoto => 'Tee pilti';

  @override
  String get removePhoto => 'Eemalda pilt';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Pilti ei saanud värskendada: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Pilti ei saanud eemaldada: $error';
  }

  @override
  String get photoTooLarge =>
      'See pilt on isegi pärast tihendamist liiga suur — palun proovi teist.';

  @override
  String get unableToLoadProfile => 'Sinu profiili ei saa laadida';

  @override
  String get pleaseTryAgain => 'Palun proovi uuesti.';

  @override
  String get tryAgain => 'Proovi uuesti';

  @override
  String get profileNotFound => 'Profiili ei leitud';

  @override
  String get refresh => 'Värskenda';

  @override
  String get noProfileDataFound =>
      'Selles seadmes ei leitud veel profiiliandmeid.';

  @override
  String couldNotResetData(String error) {
    return 'Andmeid ei saanud lähtestada: $error';
  }

  @override
  String get navHome => 'Avaleht';

  @override
  String get navStats => 'Statistika';

  @override
  String get navJournal => 'Päevik';

  @override
  String get navBadges => 'Märgid';

  @override
  String get navProfile => 'Profiil';

  @override
  String featureComingSoon(String feature) {
    return '$feature on peagi saadaval.';
  }

  @override
  String get appWordmark => 'HEAOLU';

  @override
  String get appTitle => 'Lõpetage joomine';

  @override
  String get splashSubtitle => 'Astu esimene samm\nalkoholivaba elu poole';

  @override
  String get preparingJourney => 'Valmistame ette sinu\nteekonda';

  @override
  String get taskMorningMeditation => 'Hommikune meditatsioon (10 min)';

  @override
  String get taskReadChapter => 'Loe raamatu \"The Sober Diaries\" 4. peatükki';

  @override
  String get taskEveningJournal => 'Õhtune tänulikkuse päevik';

  @override
  String get close => 'Sulge';

  @override
  String get youAreDoingGreat => 'Sul läheb suurepäraselt!';

  @override
  String get shareMilestone => 'Jaga tähist';

  @override
  String shareMilestoneMessage(int days) {
    return 'Olen oma taastumisteekonna $days. päeval! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Minu taastumise tähis';

  @override
  String get weeklyReportReadyTitle => 'Sinu nädalaaruanne on valmis';

  @override
  String get weeklyReportReadySubtitle =>
      'Puuduta, et näha, kuidas sul nädal läks';

  @override
  String get howAreYouFeeling => 'Kuidas sa end tunned?';

  @override
  String get moodTough => 'Raske';

  @override
  String get moodOkay => 'Okei';

  @override
  String get moodGood => 'Hea';

  @override
  String get moneySaved => 'Säästetud raha';

  @override
  String get caloriesSaved => 'Säästetud kalorid';

  @override
  String get healthScore => 'Terviseskoor';

  @override
  String get drinksAvoided => 'Välditud joogid';

  @override
  String get estimated => 'Hinnanguline';

  @override
  String get aiGenerated => 'AI loodud';

  @override
  String get daysCapsLabel => 'PÄEVA';

  @override
  String get todaysMotivation => 'Tänane motivatsioon';

  @override
  String get defaultMotivationQuote =>
      'Oled oma lubadust edukalt hoidnud. Jätka positiivsete muutuste lainel sõitmist.';

  @override
  String get talkToCoach => 'Räägi nõustajaga';

  @override
  String get havingACraving => 'Mul on isu';

  @override
  String get unlockWeeklyReportsTitle => 'Ava nädalaaruanded';

  @override
  String get unlockWeeklyReportsMessage =>
      'Vaata igal nädalal oma kaineid päevi, meeleolutrende ja isikupärastatud AI tagasisidet. Ava juurdepääs Premium-paketiga.';

  @override
  String get maybeLater => 'Ehk hiljem';

  @override
  String get upgrade => 'Uuenda';

  @override
  String get weeklyReportTitle => 'Nädalaaruanne';

  @override
  String get weeklyReportsPremiumTitle =>
      'Nädalaaruanded on Premium-funktsioon';

  @override
  String get weeklyReportsPremiumMessage =>
      'Vaata igal nädalal oma kaineid päevi, meeleolutrende, isusid ja isikupärastatud AI tagasisidet.';

  @override
  String get upgradeToPremium => 'Uuenda Premiumiks';

  @override
  String get couldNotGenerateReport => 'Aruannet ei saanud praegu luua.';

  @override
  String get tryAgainLower => 'Proovi uuesti';

  @override
  String get statSoberDays => 'Kained päevad';

  @override
  String get statAvgMood => 'Keskmine meeleolu';

  @override
  String get statCravings => 'Isud';

  @override
  String get statMoneySaved => 'Säästetud raha';

  @override
  String get coachFeedback => 'Nõustaja tagasiside';

  @override
  String get journalInsights => 'Päeviku ülevaated';

  @override
  String get next => 'Edasi';

  @override
  String get question1Title => 'Mis on sinu eesmärk';

  @override
  String get question1Subtitle =>
      'Vali eesmärk, mis on sinu jaoks\nkõige olulisem';

  @override
  String get goalQuitCompletely => 'Loobu täielikult';

  @override
  String get goalReduceDrinking => 'Vähenda joomist';

  @override
  String get goalTakeABreak => 'Tee paus';

  @override
  String get goalBuildHealthierHabits => 'Kujunda tervislikumaid harjumusi';

  @override
  String get question3Title => 'Räägi meile oma\nrutiinist';

  @override
  String get drinksPerWeek => 'Jooke nädalas';

  @override
  String get moneySpentPerWeek => 'Kulutatud raha nädalas';

  @override
  String get drinkingLevel => 'Joomise tase';

  @override
  String get triggersLabel => 'Päästikud';

  @override
  String get levelSocial => 'Sotsiaalne';

  @override
  String get levelRegular => 'Tavapärane';

  @override
  String get levelHeavy => 'Tugev';

  @override
  String get levelDependent => 'Sõltuv';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Üksindus';

  @override
  String get triggerHabit => 'Harjumus';

  @override
  String get triggerSadness => 'Kurbus';

  @override
  String get triggerAnger => 'Viha';

  @override
  String get triggerBoredom => 'Igavus';

  @override
  String get triggerSocialPressure => 'Sotsiaalne surve';

  @override
  String get triggerCelebration => 'Tähistamine';

  @override
  String get triggerSleepProblems => 'Uneprobleemid';

  @override
  String get triggerWorkPressure => 'Tööpinge';

  @override
  String get question4Title => 'Miks sa soovid muutust?';

  @override
  String get question4Subtitle => 'Sinu põhjus aitab sind motiveerida.';

  @override
  String get reasonImproveHealth => 'Parandada oma tervist';

  @override
  String get reasonSaveMoney => 'Säästa raha';

  @override
  String get reasonFamily => 'Perekond';

  @override
  String get reasonBetterSleep => 'Parem uni';

  @override
  String get reasonMentalClarity => 'Vaimne selgus';

  @override
  String get reasonFitness => 'Füüsiline vorm';

  @override
  String get reasonSelfRespect => 'Eneseväärikus';

  @override
  String get reasonCareer => 'Karjäär';

  @override
  String get milestoneUnlockedLabel => 'TÄHIS AVATUD';

  @override
  String incredibleNamePrefix(String name) {
    return 'Uskumatu, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount säästetud';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count välditud';
  }

  @override
  String get shareMyMilestone => 'Jaga minu tähist';

  @override
  String get milestoneImageShareError =>
      'Tähise pildi loomine ebaõnnestus. Palun proovi uuesti.';

  @override
  String get dailyCheckInTitle => 'Igapäevane registreerimine';

  @override
  String get howAreYouFeelingToday => 'Kuidas sa end täna tunned?';

  @override
  String get honestAnswerHelp =>
      'Sinu aus vastus aitab meil sind paremini toetada';

  @override
  String get didYouDrinkToday => 'Kas sa täna jõid?';

  @override
  String get noLabel => 'Ei';

  @override
  String get yesLabel => 'Jah';

  @override
  String get cravingLevelNow => 'Isu tase praegusel hetkel?';

  @override
  String get anythingOnMind => 'Kas miski vaevab südant?';

  @override
  String get optionalLabel => '(valikuline)';

  @override
  String get dailyNoteHint => 'Kirjuta oma päevast, päästikutest, võitudest...';

  @override
  String get alreadyCheckedInToday => 'Täna juba registreeritud';

  @override
  String get saveCheckIn => 'Salvesta registreerimine';

  @override
  String get checkInsHelpTrack =>
      'Registreerimised aitavad jälgida edenemist aja jooksul';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Oled tänase registreerimise juba täitnud.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Palun vasta kõigepealt mõlemale ülaltoodud küsimusele';

  @override
  String get checkInSaved => 'Registreerimine salvestatud';

  @override
  String get cravingNone => 'Puudub';

  @override
  String get cravingLow => 'Madal';

  @override
  String get cravingMedium => 'Keskmine';

  @override
  String get cravingStrong => 'Tugev';

  @override
  String get moodBad => 'Halb';

  @override
  String get moodLow => 'Madal';

  @override
  String get moodGreat => 'Suurepärane';

  @override
  String get sosSupportTitle => 'SOS-tugi';

  @override
  String notAloneMessage(String name) {
    return 'Sa ei ole alleen, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Isud mööduvad. Vali altpoolt midagi, mis aitab sul selle hetke üle elada.';

  @override
  String get breathingExercise => 'Hingamisharjutus';

  @override
  String get breathingExerciseSubtitle =>
      'Juhendatud 4-7-8 tehnikat, 2 minutit';

  @override
  String get rideTheWave => 'Sõida lainel';

  @override
  String get rideTheWaveSubtitle =>
      '15-minutiline taimer — isud mööduvad alati';

  @override
  String get copingTips => 'Toimetulekunõuanded';

  @override
  String get copingTipsSubtitle =>
      'Isikupärastatud strateegiad sinu päästikute jaoks';

  @override
  String get talkToAiCoach => 'Räägi AI-nõustajaga';

  @override
  String get talkToAiCoachSubtitle => 'Vestle oma taastumiskaaslasega';

  @override
  String get callSomeone => 'Helista kellelegi';

  @override
  String get callSomeoneSubtitle => 'Võta ühendust oma usaldusisikuga';

  @override
  String get contactsPermissionNeeded =>
      'Kontaktile helistamiseks on vaja kontaktide luba.';

  @override
  String get beatenCravingsPrefix => 'Oled isudest jagu saanud juba ';

  @override
  String beatenCravingsCount(int count) {
    return '$count korda';
  }

  @override
  String get beatenCravingsSuffix => '. Suudad seda uuesti.';

  @override
  String get tellUsAboutYourself => 'Räägi meile endast';

  @override
  String get detailsSubtitle =>
      'See teave aitab meil isikupärastada sinu taastumisteekonda ja pakkuda täpseid ülevaateid.';

  @override
  String get nameLabel => 'Nimi';

  @override
  String get nameHint => 'nt Alex Rivers';

  @override
  String get ageLabel => 'Vanus';

  @override
  String get ageHint => 'nt 32';

  @override
  String get sexAssignedAtBirth => 'Sünnil määratud sugu';

  @override
  String get sexFemale => 'Naine';

  @override
  String get sexMale => 'Mees';

  @override
  String get heightLabel => 'Pikkus';

  @override
  String get weightLabel => 'Kaal';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Päevane limiit on käes';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Oled täna kasutanud ära kõik $limit tasuta teadet. Uuenda Premiumiks, et vestelda nõustajaga piiramatult.';
  }

  @override
  String get coachConnectError =>
      'Praegu ei saanud ühendust luua. Palun proovi hetke pärast uuesti.';

  @override
  String get clearConversationTitle => 'Kas tühjendada vestlus?';

  @override
  String get clearConversationMessage =>
      'See eemaldab jäädavalt sinu vestlusajaloo nõustajaga.';

  @override
  String get clearLabel => 'Tühjenda';

  @override
  String get recoveryCoachTitle => 'Taastumis nõustaja';

  @override
  String get onlineLabel => 'Sisselogitud';

  @override
  String get clearConversationMenuItem => 'Tühjenda vestlus';

  @override
  String chatGreeting(String name) {
    return 'Tere $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Oled oma teekonna $days. päeval. Olen siin, kui soovid asju arutada.';
  }

  @override
  String get quickPromptsLabel => 'KIIRMÄRKUSED';

  @override
  String get promptCravingLabel => 'Mul on isu';

  @override
  String get promptCravingSubtitle => 'Saa kiiresti tasakaal tagasi';

  @override
  String get promptMotivationLabel => 'Vajan motivatsiooni';

  @override
  String get promptMotivationSubtitle => 'Tõuge raskel hetkel';

  @override
  String get promptSocialLabel => 'Sotsiaalne olukord';

  @override
  String get promptSocialSubtitle => 'Tule toime koosviibimisel';

  @override
  String get promptSlippedLabel => 'Eksisin teelt';

  @override
  String get promptSlippedSubtitle => 'Hukkamõistuta, ainult tugi';

  @override
  String get typeMessageHint => 'Kirjuta teade...';

  @override
  String get editProfileTitle => 'Muuda profiili';

  @override
  String couldNotSaveProfile(String error) {
    return 'Profiili ei saanud salvestada: $error';
  }

  @override
  String get heightCmLabel => 'Pikkus (cm)';

  @override
  String get weightKgLabel => 'Kaal (kg)';

  @override
  String get saveChangesLabel => 'Salvesta muudatused';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Täpsemad ülevaated ja analüütika';

  @override
  String get featureUnlimitedJournal => 'Piiramatu arv päevikukandeid';

  @override
  String get featureUnlimitedChat => 'Piiramatu vestlus AI-nõustajaga';

  @override
  String get featureCommunityGroups => 'Eksklusiivsed kogukonnagrupid';

  @override
  String get featurePrioritySupport => 'Prioriteetne eksperttugi';

  @override
  String get featureThemePacks => 'Kohandatud teemapaketid';

  @override
  String get featureDataExport => 'Andmete eksportimine';

  @override
  String get featureAdFree => 'Reklaamivaba kogemus';

  @override
  String get premiumMemberTitle => 'Oled Premium-liige';

  @override
  String get unlockFullRecoveryTitle => 'Ava oma täielik\ntaastumiskogemus';

  @override
  String get premiumMemberSubtitle =>
      'Täname, et toetad oma taastumisteekonda — kõik allolevad funktsioonid on avatud.';

  @override
  String get premiumJoinSubtitle =>
      'Liitu tuhandete inimestega, kes kiirendavad oma taastumisteekonda meie premium-tööriistade ja isikupärastatud toe abil.';

  @override
  String get monthlyPlanLabel => 'Igakuine';

  @override
  String get perMonthSuffix => '/kuu';

  @override
  String get cancelAnytimeLabel => 'Tühista igal ajal';

  @override
  String get yearlyPlanLabel => 'Iga-aastane';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Arvutatakse kord aastas summas $amount';
  }

  @override
  String get bestValueLabel => 'Parim väärtus';

  @override
  String get alreadyPremiumLabel => 'Oled Premium ✓';

  @override
  String get startPremiumLabel => 'Alusta Premiumit';

  @override
  String get manageSubscriptionLabel =>
      'Halda või tühista seadme tellimuste seadetest.';

  @override
  String get noCommitmentLabel => 'Lepingukohustuseta. Tühista igal ajal.';

  @override
  String get continueFreePlanLabel => 'Jätka tasuta paketiga';

  @override
  String get backToHomeLabel => 'Tagasi avalehele';

  @override
  String get cancelPremiumLabel => 'Tühista Premium';

  @override
  String get cancelPremiumTitle => 'Kas tühistada Premium?';

  @override
  String get cancelPremiumMessage =>
      'Kaotad juurdepääsu piiramatutele päevikukannetele, piiramatule nõustajavestlusele, statistikaülevaadetele ja nädalaaruannetele. Võid igal ajal uuesti tellida.';

  @override
  String get keepPremiumLabel => 'Jäta Premium alles';

  @override
  String get nowPremiumMessage =>
      'Oled nüüd Premium-kasutaja! Naudi oma täielikku taastumiskogemust.';

  @override
  String get premiumCancelledMessage =>
      'Premium tühistatud. Oled tagasi tasuta paketil.';

  @override
  String get termsOfUseLabel => 'Kasutustingimused';

  @override
  String get navHomeLabel => 'Avaleht';

  @override
  String get navStatsLabel => 'Statistika';

  @override
  String get navJournalLabel => 'Päevik';

  @override
  String get navBadgesLabel => 'Märgid';

  @override
  String get navProfileLabel => 'Profiil';

  @override
  String get recoveryGoalsTitle => 'Taastumise eesmärgid';

  @override
  String get drinksPerWeekLabel => 'Drinks per week';

  @override
  String get quitReasonsLabel => 'Loobumise põhjused';

  @override
  String get quitReasonsHelperText => 'Eralda mitu põhjust komaga.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Taastumise eesmärke ei saanud salvestada: $error';
  }

  @override
  String get goalHint => 'nt Täielik karskus';

  @override
  String get drinksPerWeekHint => 'nt 12';

  @override
  String get quitReasonsHint => 'nt Tervis, Perekond, Raha';

  @override
  String get todaysPrompt => 'Tänane teema';

  @override
  String get defaultJournalPrompt => 'Mis sul täna mõttes on?';

  @override
  String get aiJournalInsights => 'AI päevikuülevaated';

  @override
  String get unlockJournalInsightsMessage =>
      'Ava oma päevikukannetest iganädalased mustrid, meeleolutrendid ja isikupärastatud ülevaated.';

  @override
  String get notEnoughJournalData =>
      'Andmeid pole veel piisavalt — kirjuta sel nädalal mõni kanne ja vaata uuesti.';

  @override
  String get openEntry => 'Ava';

  @override
  String get editEntry => 'Muuda';

  @override
  String get deleteEntry => 'Kustuta';

  @override
  String get searchJournalEntries => 'Otsi kandeid...';

  @override
  String get writeNewEntry => 'Kirjuta uus kanne';

  @override
  String get recentEntries => 'Hiljutised kanded';

  @override
  String get noJournalEntriesYet =>
      'Päevikukandeid veel pole — kirjuta oma esimene mõtisklus ülalpool.';

  @override
  String get noEntriesMatchFilters => 'Ükski kanne ei vasta filtritele.';

  @override
  String get weeklyJournalLimitReached => 'Nädala limiit on käes';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Oled kasutanud sel nädalal ära kõik $limit tasuta päevikukanne. Uuenda Premiumiks piiramatute kannete jaoks.';
  }

  @override
  String get newEntry => 'Uus kanne';

  @override
  String get writeYourThoughts => 'Kirjuta oma mõtted';

  @override
  String get saveEntry => 'Salvesta kanne';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Sel nädalal on jäänud $remaining tasuta kanti $limit-st';
  }

  @override
  String get deleteEntryQuestion => 'Kas kustutada kanne?';

  @override
  String get deleteEntryConfirmation =>
      'See kanne kustutatakse jäädavalt. Seda ei saa tagasi võtta.';

  @override
  String get journalEntryNotFound => 'Kannet ei leitud';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'See päevikukanne võib olla kustutatud.';

  @override
  String get goBack => 'Mine tagasi';

  @override
  String get journalEntryTitle => 'Päevikukanne';

  @override
  String get moodStruggling => 'Raskustes';

  @override
  String get moodUnwell => 'Halb enesetunne';

  @override
  String get moodNeutral => 'Neutraalne';

  @override
  String get whatHappenedToday => 'Mis täna juhtus?';

  @override
  String get trigger => 'Päästik';

  @override
  String get whatHelped => 'Mis aitas';

  @override
  String get whatIllTryNextTime => 'Mida proovin järgmisel korral';

  @override
  String get journalPrivacyMessage =>
      'Sinu mõtisklus on privaatne ja salvestatud päevikusse.';

  @override
  String get unlocked => 'Avatud';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päeva jäänud',
      one: '$count päev jäänud',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count päeva';
  }

  @override
  String get firstReflection => 'Esimene\nmõtisklus';

  @override
  String get oneJournalEntry => '1 päevikukanne';

  @override
  String get openBook => 'Avatud raamat';

  @override
  String get tenJournalEntries => '10 päevikukanne';

  @override
  String get dedicatedWriter => 'Pühendunud\nkirjutaja';

  @override
  String get thirtyJournalEntries => '30 päevikukanne';

  @override
  String get firstConversation => 'Esimene\nvestlus';

  @override
  String get oneAiCoachChat => '1 AI-nõustaja vestlus';

  @override
  String get keepTalking => 'Räägi edasi';

  @override
  String get fiveConversations => '5 vestlust';

  @override
  String get coachCompanion => 'Nõustaja-\nkaaslane';

  @override
  String get twentyConversations => '20 vestlust';

  @override
  String get checkInHabit => 'Registreerimise\nharjumus';

  @override
  String get sevenCheckIns => '7 registreerimist';

  @override
  String get consistencyPro => 'Järjepidevuse\nmeister';

  @override
  String get thirtyCheckIns => '30 registreerimist';

  @override
  String get dedicatedJourney => 'Pühendunud\nteekond';

  @override
  String get hundredCheckIns => '100 registreerimist';

  @override
  String get goalGetter => 'Eesmärgi püüdja';

  @override
  String get threeGoalsCompleted => '3 eesmärki täidetud';

  @override
  String get goalAchiever => 'Eesmärkide\ntäitja';

  @override
  String get tenGoalsCompleted => '10 eesmärki täidetud';

  @override
  String get firstSavings => 'Esimene\nsääst';

  @override
  String get fiveHundredSaved => '\$500 säästetud';

  @override
  String get smartSaver => 'Nuti säästja';

  @override
  String get oneThousandSaved => '\$1000 säästetud';

  @override
  String get bigSaver => 'Suur säästja';

  @override
  String get fiveThousandSaved => '\$5000 säästetud';

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
      'Jätka samas vaimus — sinu esimene tähis ootab sind!';

  @override
  String get badgesAndMilestones => 'Märgid ja tähised';

  @override
  String get yourMilestoneJourney => 'Sinu tähiste teekond';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tähist saavutatud.\nPuuduta vaatamiseks',
      one: '$count tähis saavutatud.\nPuuduta vaatamiseks',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Oled oma teekonnal avanud $unlocked tähist $total-st.';
  }

  @override
  String get remaining => 'Järelejäänud';

  @override
  String get complete => 'Tehtud';

  @override
  String get nextMilestone => 'Järgmine tähis';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% tehtud';
  }

  @override
  String get sobrietyMilestones => 'Karskuse tähised';

  @override
  String get journeyBadges => 'Teekonna märgid';

  @override
  String get bronze => 'PRONKS';

  @override
  String get silver => 'HÕBE';

  @override
  String get gold => 'KULD';

  @override
  String get platinum => 'PLAATINA';

  @override
  String get diamond => 'TEEMANT';

  @override
  String get analyzingYourJourney => 'Sinu teekonna analüüsimine...';

  @override
  String get aiCreatingSanctuary => 'Meie AI loob sinu isiklikku turvapaika.';

  @override
  String get understandingHabits => 'Harjumuste mõistmine...';

  @override
  String get calculatingBaseline => 'Algseisu arvutamine...';

  @override
  String get personalizingPlan => 'Plaani isikupärastamine...';

  @override
  String get finalizingSanctuary => 'Turvapaiga viimistlemine...';

  @override
  String get creatingYourPlan => 'Plaani loomine...';

  @override
  String get personalizedPlanError =>
      'Sinu isikupärastatud plaani ei saanud luua. Palun proovi uuesti.';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get breathInhale => 'HINGA SISSE';

  @override
  String get breathHold => 'HOIA HINGE KINNI';

  @override
  String get breathExhale => 'HINGA VÄLJA';

  @override
  String get breathDone => 'VALMIS';

  @override
  String get breathGreatJob => 'Tubli töö!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seanssi täna',
      one: '$count seanss täna',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Lõpeta harjutus';

  @override
  String get done => 'Valmis';

  @override
  String get noCopingTipsYet => 'Toimetulekunõuandeid veel pole';

  @override
  String get copingStrategiesWillAppear =>
      'Sinu isikupärastatud toimetulekustrateegiad ilmuvad siia, kui sinu taastumisplaan on loodud.';

  @override
  String get strategiesTailoredToTriggers =>
      'Sinu päästikutele kohandatud strateegiad';

  @override
  String get cravingsPeakAndPass => 'Isud tõusevad tipput\nja mööduvad';

  @override
  String get rideTheWaveDescription =>
      'Enamik isusid möödub 15 minuti jooksul. Sa ei pea selle kohaselt tegutsema — sõida sellest lihtsalt koos meiega üle.';

  @override
  String get stayWithIt => 'püsi selles';

  @override
  String get youMadeIt => 'said hakkama';

  @override
  String get readyWhenYouAre => 'valmis, kui sina oled';

  @override
  String get rideItAgain => 'Sõida uuesti';

  @override
  String get start15MinuteTimer => 'Käivita 15-minutiline taimer';

  @override
  String get rideTheWaveCompletedMessage =>
      'Sa sõitsid lainest üle. See on tõeline tugevus. 💪';

  @override
  String get myProgress => 'Minu edenemine';

  @override
  String get weekLabel => 'Nädal';

  @override
  String get monthLabel => 'Kuu';

  @override
  String get allLabel => 'Kõik';

  @override
  String get daysSoberStatLabel => 'Päeva\nkaine';

  @override
  String get savedStatLabel => 'Säästetud';

  @override
  String get avoidedStatLabel => 'Välditud';

  @override
  String get moodTrends => 'Meeleolutrendid';

  @override
  String get cravingsPattern => 'Isude muster';

  @override
  String get unlockLabel => 'Ava';

  @override
  String get unlockFullStats => 'Ava täielik statistika';

  @override
  String get premiumStatsMessage =>
      'Meeleolutrendid ja isude mustrid on Premium-funktsioonid. Uuenda oma täieliku statistika nägemiseks.';

  @override
  String get healthMilestonesWillAppear =>
      'Sinu tervisenäitajate tähised ilmuvad siia.';

  @override
  String get healthMilestones => 'Tervise tähised';

  @override
  String dayNumber(int day) {
    return '$day. päev';
  }

  @override
  String get soberLabel => 'Kaine';

  @override
  String get slipLabel => 'Eksimus';

  @override
  String get noDataLabel => 'Andmed puuduvad';

  @override
  String get milestone24Hours => '24 tundi';

  @override
  String get milestoneOneWeek => 'Üks nädal';

  @override
  String get milestoneOneMonth => 'Üks kuu';

  @override
  String get milestoneThreeMonths => 'Kolm kuud';

  @override
  String get milestoneSixMonths => 'Kuus kuud';

  @override
  String get milestoneOneYear => 'Üks aasta';

  @override
  String milestoneDayCount(int day) {
    return '$day. päeva tähis';
  }

  @override
  String get maybeLaterLabel => 'Võib-olla hiljem';

  @override
  String get cancelLabel => 'Tühista';
}
