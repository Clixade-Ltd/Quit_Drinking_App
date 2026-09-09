// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get skip => 'Preskoči';

  @override
  String get continueButton => 'Nadaljuj';

  @override
  String get getStarted => 'Začni';

  @override
  String get onboardingTitle1 => 'Prevzemi nadzor nad svojim življenjem';

  @override
  String get onboardingSubtitle1 =>
      'Spremljaj svojo pot, praznuj vsak dosežek in postajaj bolj zdrav dan za dnem.';

  @override
  String get onboardingTitle2 => 'Tvoj AI spremljevalec pri okrevanju';

  @override
  String get onboardingSubtitle2 =>
      'Prejemaj prilagojene nasvete, zdrave navade, opomnike za motivacijo in poročila o napredku, oblikovana glede na tvojo pot.';

  @override
  String get goodMorning => 'Dobro jutro';

  @override
  String get goodAfternoon => 'Dober dan';

  @override
  String get goodEvening => 'Dober večer';

  @override
  String get goodNight => 'Lahko noč';

  @override
  String get embracingClarity => 'Objemaj jasnost, dan za dnem.';

  @override
  String get streakLabel => 'NIZ';

  @override
  String get goalLabel => 'Cilj';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dni',
      few: '$count dni',
      two: '$count dneva',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium paket';

  @override
  String get premiumPlanSubtitle => 'Odkleni popolno izkušnjo okrevanja';

  @override
  String get accountAndSupport => 'RAČUN IN PODPORA';

  @override
  String get privacyPolicy => 'Pravilnik o zasebnosti';

  @override
  String get privacyPolicySubtitle =>
      'Upravljaj skupno rabo podatkov in varnost računa';

  @override
  String get termsOfService => 'Pogoji uporabe';

  @override
  String get termsOfServiceSubtitle =>
      'Pogosta vprašanja, kontaktiraj nas in viri';

  @override
  String get shareApp => 'Deli aplikacijo';

  @override
  String get shareAppSubtitle => 'Deli aplikacijo s prijatelji';

  @override
  String get resetData => 'Ponastavi podatke';

  @override
  String get resetDataSubtitle => 'Izbriši vse, kar je shranjeno v tej napravi';

  @override
  String get resetAllDataTitle => 'Ponastavi vse podatke?';

  @override
  String get resetAllDataMessage =>
      'S tem bo izbrisano vse, kar je shranjeno v tej napravi — profil, vnosi v dnevnik in napredek — tega dejanja pa ni mogoče razveljaviti.';

  @override
  String get cancel => 'Prekliči';

  @override
  String get reset => 'Ponastavi';

  @override
  String get chooseFromGallery => 'Izberi iz galerije';

  @override
  String get takePhoto => 'Posnemi fotografijo';

  @override
  String get removePhoto => 'Odstrani fotografijo';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Fotografije ni bilo mogoče posodobiti: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Fotografije ni bilo mogoče odstraniti: $error';
  }

  @override
  String get photoTooLarge =>
      'Fotografija je tudi po stiskanju prevelika — poskusi z drugo.';

  @override
  String get unableToLoadProfile => 'Tvojega profila ni mogoče naložiti';

  @override
  String get pleaseTryAgain => 'Poskusi znova.';

  @override
  String get tryAgain => 'Poskusi znova';

  @override
  String get profileNotFound => 'Profil ni bil najden';

  @override
  String get refresh => 'Osveži';

  @override
  String get noProfileDataFound => 'V tej napravi še ni podatkov o profilu.';

  @override
  String couldNotResetData(String error) {
    return 'Podatkov ni bilo mogoče ponastaviti: $error';
  }

  @override
  String get navHome => 'Domov';

  @override
  String get navStats => 'Statistika';

  @override
  String get navJournal => 'Dnevnik';

  @override
  String get navBadges => 'Značke';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature bo kmalu na voljo.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Prenehaj piti';

  @override
  String get splashSubtitle =>
      'Naredi prvi korak proti\nživljenju brez alkohola';

  @override
  String get preparingJourney => 'Pripravljamo tvojo\npot';

  @override
  String get taskMorningMeditation => 'Jutranja meditacija (10 min)';

  @override
  String get taskReadChapter =>
      'Preberi 4. poglavje knjige \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Večerni dnevnik hvaležnosti';

  @override
  String get close => 'Zapri';

  @override
  String get youAreDoingGreat => 'Odlično ti gre!';

  @override
  String get shareMilestone => 'Deli mejnik';

  @override
  String shareMilestoneMessage(int days) {
    return 'Danes je $days. dan moje poti okrevanja! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Moj mejnik okrevanja';

  @override
  String get weeklyReportReadyTitle =>
      'Tvoje tedensko poročilo je pripravljeno';

  @override
  String get weeklyReportReadySubtitle =>
      'Tapni, da vidiš, kako je potekal tvoj teden';

  @override
  String get howAreYouFeeling => 'Kako se počutiš?';

  @override
  String get moodTough => 'Težko';

  @override
  String get moodOkay => 'V redu';

  @override
  String get moodGood => 'Dobro';

  @override
  String get moneySaved => 'Prihranjen denar';

  @override
  String get caloriesSaved => 'Prihranjene kalorije';

  @override
  String get healthScore => 'Zdravstvena ocena';

  @override
  String get drinksAvoided => 'Izognjene pijače';

  @override
  String get estimated => 'Ocenjeno';

  @override
  String get aiGenerated => 'Ustvarila umetna inteligenca';

  @override
  String get daysCapsLabel => 'DNI';

  @override
  String get todaysMotivation => 'Današnja motivacija';

  @override
  String get defaultMotivationQuote =>
      'Uspešno ohranjaš svojo zavezanost. Nadaljuj na valu pozitivnih sprememb.';

  @override
  String get talkToCoach => 'Pogovori se s trenerjem';

  @override
  String get havingACraving => 'Čutim željo po alkoholu';

  @override
  String get unlockWeeklyReportsTitle => 'Odkleni tedenska poročila';

  @override
  String get unlockWeeklyReportsMessage =>
      'Vsak teden si oglej svoje dni brez alkohola, trende razpoloženja in prilagojene povratne informacije AI. Nadgradi na Premium za odklep.';

  @override
  String get maybeLater => 'Morda pozneje';

  @override
  String get upgrade => 'Nadgradi';

  @override
  String get weeklyReportTitle => 'Tedensko poročilo';

  @override
  String get weeklyReportsPremiumTitle =>
      'Tedenska poročila so Premium funkcija';

  @override
  String get weeklyReportsPremiumMessage =>
      'Vsak teden si oglej svoje dni brez alkohola, trende razpoloženja, želje po alkoholu in prilagojene povratne informacije AI.';

  @override
  String get upgradeToPremium => 'Nadgradi na Premium';

  @override
  String get couldNotGenerateReport =>
      'Poročila trenutno ni bilo mogoče ustvariti.';

  @override
  String get tryAgainLower => 'Poskusi znova';

  @override
  String get statSoberDays => 'Dni brez alkohola';

  @override
  String get statAvgMood => 'Povp. razpoloženje';

  @override
  String get statCravings => 'Želje';

  @override
  String get statMoneySaved => 'Prihranjen denar';

  @override
  String get coachFeedback => 'Povratne informacije trenerja';

  @override
  String get journalInsights => 'Vpogledi iz dnevnika';

  @override
  String get next => 'Naprej';

  @override
  String get question1Title => 'Kakšen je tvoj cilj';

  @override
  String get question1Subtitle => 'Izberi cilj, ki ti je\nnajpomembnejši';

  @override
  String get goalQuitCompletely => 'Popolnoma prenehati';

  @override
  String get goalReduceDrinking => 'Zmanjšati pitje';

  @override
  String get goalTakeABreak => 'Vzeti premor';

  @override
  String get goalBuildHealthierHabits => 'Ustvariti bolj zdrave navade';

  @override
  String get question3Title => 'Povej nam o svoji\nrutini';

  @override
  String get drinksPerWeek => 'Pijače na teden';

  @override
  String get moneySpentPerWeek => 'Poraba na teden';

  @override
  String get drinkingLevel => 'Raven pitja';

  @override
  String get triggersLabel => 'Sprožilci';

  @override
  String get levelSocial => 'Družabno';

  @override
  String get levelRegular => 'Redno';

  @override
  String get levelHeavy => 'Močno';

  @override
  String get levelDependent => 'Odvisno';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Osamljenost';

  @override
  String get triggerHabit => 'Navada';

  @override
  String get triggerSadness => 'Žalost';

  @override
  String get triggerAnger => 'Jeza';

  @override
  String get triggerBoredom => 'Dolgčas';

  @override
  String get triggerSocialPressure => 'Družbeni pritisk';

  @override
  String get triggerCelebration => 'Praznovanje';

  @override
  String get triggerSleepProblems => 'Težave s spanjem';

  @override
  String get triggerWorkPressure => 'Pritisk na delovnem mestu';

  @override
  String get question4Title => 'Zakaj se želiš spremeniti?';

  @override
  String get question4Subtitle =>
      'Tvoj razlog ti bo pomagal ohraniti motivacijo.';

  @override
  String get reasonImproveHealth => 'Izboljšati svoje zdravje';

  @override
  String get reasonSaveMoney => 'Prihraniti denar';

  @override
  String get reasonFamily => 'Družina';

  @override
  String get reasonBetterSleep => 'Boljši spanec';

  @override
  String get reasonMentalClarity => 'Mentalna jasnost';

  @override
  String get reasonFitness => 'Telesna pripravljenost';

  @override
  String get reasonSelfRespect => 'Samospoštovanje';

  @override
  String get reasonCareer => 'Kariera';

  @override
  String get milestoneUnlockedLabel => 'MEJNIK ODKLENJEN';

  @override
  String incredibleNamePrefix(String name) {
    return 'Neverjetno, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount prihranjeno';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count izognjenih';
  }

  @override
  String get shareMyMilestone => 'Deli moj mejnik';

  @override
  String get milestoneImageShareError =>
      'Slike mejnika ni bilo mogoče ustvariti. Poskusi znova.';

  @override
  String get dailyCheckInTitle => 'Dnevna prijava';

  @override
  String get howAreYouFeelingToday => 'Kako se danes počutiš?';

  @override
  String get honestAnswerHelp =>
      'Tvoj iskren odgovor nam pomaga, da te bolje podpremo';

  @override
  String get didYouDrinkToday => 'Ali si danes pil/a?';

  @override
  String get noLabel => 'Ne';

  @override
  String get yesLabel => 'Da';

  @override
  String get cravingLevelNow => 'Kako močna je trenutno želja po alkoholu?';

  @override
  String get anythingOnMind => 'Ali ti kaj leži na duši?';

  @override
  String get optionalLabel => '(neobvezno)';

  @override
  String get dailyNoteHint => 'Piši o svojem dnevu, sprožilcih, zmagah...';

  @override
  String get alreadyCheckedInToday => 'Danes si se že prijavil/a';

  @override
  String get saveCheckIn => 'Shrani prijavo';

  @override
  String get checkInsHelpTrack =>
      'Prijave pomagajo spremljati tvoj napredek skozi čas';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Današnjo prijavo si že zaključil/a.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Najprej odgovori na obe zgornji vprašanji';

  @override
  String get checkInSaved => 'Prijava shranjena';

  @override
  String get cravingNone => 'Nič';

  @override
  String get cravingLow => 'Nizka';

  @override
  String get cravingMedium => 'Srednja';

  @override
  String get cravingStrong => 'Močna';

  @override
  String get moodBad => 'Slabo';

  @override
  String get moodLow => 'Nizko';

  @override
  String get moodGreat => 'Odlično';

  @override
  String get sosSupportTitle => 'SOS pomoč';

  @override
  String notAloneMessage(String name) {
    return 'Nisi sam/a, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Želje minejo. Izberi nekaj spodaj, kar ti bo pomagalo skozi ta trenutek.';

  @override
  String get breathingExercise => 'Dihalna vaja';

  @override
  String get breathingExerciseSubtitle => 'Vodena tehnika 4-7-8, 2 minuti';

  @override
  String get rideTheWave => 'Prejadrati val';

  @override
  String get rideTheWaveSubtitle => '15-minutni časovnik — želje vedno minejo';

  @override
  String get copingTips => 'Nasveti za spoprijemanje';

  @override
  String get copingTipsSubtitle => 'Prilagojene strategije za tvoje sprožilce';

  @override
  String get talkToAiCoach => 'Pogovori se z AI trenerjem';

  @override
  String get talkToAiCoachSubtitle =>
      'Klepetaj s svojim spremljevalcem pri okrevanju';

  @override
  String get callSomeone => 'Pokliči nekoga';

  @override
  String get callSomeoneSubtitle => 'Pokliči zaupanja vredno osebo';

  @override
  String get contactsPermissionNeeded =>
      'Za klic stika je potrebno dovoljenje za kontakte.';

  @override
  String get beatenCravingsPrefix => 'Želje po alkoholu si premagal/a ';

  @override
  String beatenCravingsCount(int count) {
    return '$count-krat';
  }

  @override
  String get beatenCravingsSuffix => ' že prej. Zmoreš znova.';

  @override
  String get tellUsAboutYourself => 'Povej nam nekaj o sebi';

  @override
  String get detailsSubtitle =>
      'Te informacije nam pomagajo prilagoditi tvojo pot okrevanja in zagotoviti natančne vpoglede.';

  @override
  String get nameLabel => 'Ime';

  @override
  String get nameHint => 'npr. Alex Rivers';

  @override
  String get ageLabel => 'Starost';

  @override
  String get ageHint => 'npr. 32';

  @override
  String get sexAssignedAtBirth => 'Spol ob rojstvu';

  @override
  String get sexFemale => 'Ženska';

  @override
  String get sexMale => 'Moški';

  @override
  String get heightLabel => 'Višina';

  @override
  String get weightLabel => 'Teža';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Dnevna omejitev dosežena';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Danes si porabil/a vseh $limit brezplačnih sporočil. Nadgradi na Premium za neomejen klepet s trenerjem.';
  }

  @override
  String get coachConnectError =>
      'Trenutno se ni mogoče povezati. Poskusi znova čez trenutek.';

  @override
  String get clearConversationTitle => 'Izbrišem pogovor?';

  @override
  String get clearConversationMessage =>
      'S tem bo zgodovina klepeta s trenerjem trajno odstranjena.';

  @override
  String get clearLabel => 'Izbriši';

  @override
  String get recoveryCoachTitle => 'Trener za okrevanje';

  @override
  String get onlineLabel => 'Povezan';

  @override
  String get clearConversationMenuItem => 'Izbriši pogovor';

  @override
  String chatGreeting(String name) {
    return 'Živjo $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Danes je $days. dan tvoje poti. Tukaj sem, kadar želiš stvari predelati skozi pogovor.';
  }

  @override
  String get quickPromptsLabel => 'HITRE IZBIRE';

  @override
  String get promptCravingLabel => 'Čutim željo po alkoholu';

  @override
  String get promptCravingSubtitle => 'Hitro se umiri';

  @override
  String get promptMotivationLabel => 'Potrebujem motivacijo';

  @override
  String get promptMotivationSubtitle => 'Spodbuda, ko je težko';

  @override
  String get promptSocialLabel => 'Družabna situacija';

  @override
  String get promptSocialSubtitle => 'Kako obvladati druženje';

  @override
  String get promptSlippedLabel => 'Zdrsnil/a sem';

  @override
  String get promptSlippedSubtitle => 'Brez obsojanja, samo podpora';

  @override
  String get typeMessageHint => 'Vnesi sporočilo...';

  @override
  String get editProfileTitle => 'Uredi profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Profila ni bilo mogoče shraniti: $error';
  }

  @override
  String get heightCmLabel => 'Višina (cm)';

  @override
  String get weightKgLabel => 'Teža (kg)';

  @override
  String get saveChangesLabel => 'Shrani spremembe';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Napredni vpogledi in analitika';

  @override
  String get featureUnlimitedJournal => 'Neomejeni vnosi v dnevnik';

  @override
  String get featureUnlimitedChat => 'Neomejen klepet z AI trenerjem';

  @override
  String get featureCommunityGroups => 'Ekskluzivne skupine skupnosti';

  @override
  String get featurePrioritySupport => 'Prednostna strokovna podpora';

  @override
  String get featureThemePacks => 'Prilagojeni tematski paketi';

  @override
  String get featureDataExport => 'Izvoz podatkov';

  @override
  String get featureAdFree => 'Izkušnja brez oglasov';

  @override
  String get premiumMemberTitle => 'Si Premium član/ica';

  @override
  String get unlockFullRecoveryTitle => 'Odkleni popolno\nizkušnjo okrevanja';

  @override
  String get premiumMemberSubtitle =>
      'Hvala, ker podpiraš svojo pot okrevanja — vse spodaj navedene Premium funkcije so odklenjene.';

  @override
  String get premiumJoinSubtitle =>
      'Pridruži se skupnosti tisočev, ki\npospešujejo svojo pot okrevanja z našimi\nPremium orodji in prilagojeno podporo.';

  @override
  String get monthlyPlanLabel => 'Mesečno';

  @override
  String get perMonthSuffix => '/mes.';

  @override
  String get cancelAnytimeLabel => 'Prekliči kadar koli';

  @override
  String get yearlyPlanLabel => 'Letno';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Letno zaračunano $amount';
  }

  @override
  String get bestValueLabel => 'Najboljša vrednost';

  @override
  String get alreadyPremiumLabel => 'Si Premium ✓';

  @override
  String get startPremiumLabel => 'Začni Premium';

  @override
  String get manageSubscriptionLabel =>
      'Upravljaj ali prekliči naročnino v nastavitvah naročnin svoje naprave.';

  @override
  String get noCommitmentLabel => 'Brez obveznosti. Prekliči kadar koli.';

  @override
  String get continueFreePlanLabel => 'Nadaljuj z brezplačnim paketom';

  @override
  String get backToHomeLabel => 'Nazaj na domov';

  @override
  String get cancelPremiumLabel => 'Prekliči Premium';

  @override
  String get cancelPremiumTitle => 'Prekliči Premium?';

  @override
  String get cancelPremiumMessage =>
      'Izgubil/a boš dostop do neomejenih vnosov v dnevnik, neomejenega klepeta s trenerjem, vpogledov v statistiko in tedenskih poročil. Kadar koli se lahko znova naročiš.';

  @override
  String get keepPremiumLabel => 'Obdrži Premium';

  @override
  String get nowPremiumMessage =>
      'Zdaj imaš Premium! Uživaj v popolni izkušnji okrevanja.';

  @override
  String get premiumCancelledMessage =>
      'Premium je preklican. Vrnjen/a si na brezplačni paket.';

  @override
  String get termsOfUseLabel => 'Pogoji uporabe';

  @override
  String get navHomeLabel => 'Domov';

  @override
  String get navStatsLabel => 'Statistika';

  @override
  String get navJournalLabel => 'Dnevnik';

  @override
  String get navBadgesLabel => 'Značke';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Cilji okrevanja';

  @override
  String get drinksPerWeekLabel => 'Pijače na teden';

  @override
  String get quitReasonsLabel => 'Razlogi za prenehanje';

  @override
  String get quitReasonsHelperText => 'Več razlogov loči z vejico.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Ciljev okrevanja ni bilo mogoče shraniti: $error';
  }

  @override
  String get goalHint => 'npr. popolna abstinenca';

  @override
  String get drinksPerWeekHint => 'npr. 12';

  @override
  String get quitReasonsHint => 'npr. zdravje, družina, denar';

  @override
  String get todaysPrompt => 'Današnji poziv';

  @override
  String get defaultJournalPrompt => 'Kaj ti je danes na mislih?';

  @override
  String get aiJournalInsights => 'AI vpogledi v dnevnik';

  @override
  String get unlockJournalInsightsMessage =>
      'Odkleni tedenske vzorce, trende razpoloženja in prilagojene vpoglede iz svojih zapisov v dnevniku.';

  @override
  String get notEnoughJournalData =>
      'Še ni dovolj podatkov — ta teden napiši nekaj vnosov in preveri znova.';

  @override
  String get openEntry => 'Odpri';

  @override
  String get editEntry => 'Uredi';

  @override
  String get deleteEntry => 'Izbriši';

  @override
  String get searchJournalEntries => 'Išči vnose...';

  @override
  String get writeNewEntry => 'Napiši nov vnos';

  @override
  String get recentEntries => 'Nedavni vnosi';

  @override
  String get noJournalEntriesYet =>
      'Še ni vnosov v dnevniku — zgoraj napiši svoj prvi razmislek.';

  @override
  String get noEntriesMatchFilters => 'Noben vnos ne ustreza tvojim filtrom.';

  @override
  String get weeklyJournalLimitReached => 'Tedenska omejitev dosežena';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Ta teden si porabil/a vseh $limit brezplačnih vnosov v dnevnik. Nadgradi na Premium za neomejene vnose.';
  }

  @override
  String get newEntry => 'Nov vnos';

  @override
  String get writeYourThoughts => 'Zapiši svoje misli';

  @override
  String get saveEntry => 'Shrani vnos';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Ta teden ti je ostalo $remaining od $limit brezplačnih vnosov';
  }

  @override
  String get deleteEntryQuestion => 'Izbrišem vnos?';

  @override
  String get deleteEntryConfirmation =>
      'Ta vnos bo trajno izbrisan. Tega dejanja ni mogoče razveljaviti.';

  @override
  String get journalEntryNotFound => 'Vnos ni bil najden';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Ta vnos v dnevniku je bil morda izbrisan.';

  @override
  String get goBack => 'Nazaj';

  @override
  String get journalEntryTitle => 'Vnos v dnevniku';

  @override
  String get moodStruggling => 'Težko mi je';

  @override
  String get moodUnwell => 'Slabo';

  @override
  String get moodNeutral => 'Nevtralno';

  @override
  String get whatHappenedToday => 'Kaj se je danes zgodilo?';

  @override
  String get trigger => 'Sprožilec';

  @override
  String get whatHelped => 'Kaj je pomagalo';

  @override
  String get whatIllTryNextTime => 'Kaj bom poskusil/a naslednjič';

  @override
  String get journalPrivacyMessage =>
      'Tvoj zapis je zaseben in shranjen v tvojem dnevniku.';

  @override
  String get unlocked => 'Odklenjeno';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'i',
      few: 'i',
      two: 'a',
      one: '',
    );
    return '$count dan$_temp0 je še ostal';
  }

  @override
  String daysCount(int count) {
    return '$count dni';
  }

  @override
  String get firstReflection => 'Prvi\nrazmislek';

  @override
  String get oneJournalEntry => '1 vnos v dnevniku';

  @override
  String get openBook => 'Odpri knjigo';

  @override
  String get tenJournalEntries => '10 vnosov v dnevniku';

  @override
  String get dedicatedWriter => 'Predan/a\npisatelj/ica';

  @override
  String get thirtyJournalEntries => '30 vnosov v dnevniku';

  @override
  String get firstConversation => 'Prvi\npogovor';

  @override
  String get oneAiCoachChat => '1 klepet z AI trenerjem';

  @override
  String get keepTalking => 'Nadaljuj pogovor';

  @override
  String get fiveConversations => '5 pogovorov';

  @override
  String get coachCompanion => 'Trenerjev\nspremljevalec';

  @override
  String get twentyConversations => '20 pogovorov';

  @override
  String get checkInHabit => 'Navada\ndnevne prijave';

  @override
  String get sevenCheckIns => '7 prijav';

  @override
  String get consistencyPro => 'Mojster\nvztrajnosti';

  @override
  String get thirtyCheckIns => '30 prijav';

  @override
  String get dedicatedJourney => 'Predana\npot';

  @override
  String get hundredCheckIns => '100 prijav';

  @override
  String get goalGetter => 'Dosegalec ciljev';

  @override
  String get threeGoalsCompleted => '3 doseženi cilji';

  @override
  String get goalAchiever => 'Doseženi\ncilji';

  @override
  String get tenGoalsCompleted => '10 doseženih ciljev';

  @override
  String get firstSavings => 'Prvi\nprihranek';

  @override
  String get fiveHundredSaved => '\$500 prihranjenih';

  @override
  String get smartSaver => 'Pameten varčevalec';

  @override
  String get oneThousandSaved => '\$1.000 prihranjenih';

  @override
  String get bigSaver => 'Velik varčevalec';

  @override
  String get fiveThousandSaved => '\$5.000 prihranjenih';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current od \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current od $target';
  }

  @override
  String get firstMilestoneWaiting => 'Nadaljuj — tvoj prvi mejnik te čaka!';

  @override
  String get badgesAndMilestones => 'Značke in mejniki';

  @override
  String get yourMilestoneJourney => 'Tvoja pot mejnikov';

  @override
  String milestonesAchieved(int count) {
    return 'Doseženih mejnikov: $count.\nTapni za ogled';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Na svoji poti si odklenil/a $unlocked od $total mejnikov.';
  }

  @override
  String get remaining => 'Preostalo';

  @override
  String get complete => 'Dokončano';

  @override
  String get nextMilestone => 'Naslednji mejnik';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% doseženo';
  }

  @override
  String get sobrietyMilestones => 'Mejniki abstinence';

  @override
  String get journeyBadges => 'Značke poti';

  @override
  String get bronze => 'BRON';

  @override
  String get silver => 'SREBRO';

  @override
  String get gold => 'ZLATO';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Analiziramo tvojo pot...';

  @override
  String get aiCreatingSanctuary =>
      'Naš AI ustvarja tvoje prilagojeno varno okolje.';

  @override
  String get understandingHabits => 'Razumevanje navad...';

  @override
  String get calculatingBaseline => 'Izračunavanje tvoje osnovne vrednosti...';

  @override
  String get personalizingPlan => 'Prilagajanje tvojega načrta...';

  @override
  String get finalizingSanctuary => 'Dokončujemo tvoje varno okolje...';

  @override
  String get creatingYourPlan => 'Ustvarjamo tvoj načrt...';

  @override
  String get personalizedPlanError =>
      'Tvojega prilagojenega načrta ni bilo mogoče ustvariti. Poskusi znova.';

  @override
  String get retry => 'Poskusi znova';

  @override
  String get breathInhale => 'VDAHNI';

  @override
  String get breathHold => 'ZADRŽI';

  @override
  String get breathExhale => 'IZDIHNI';

  @override
  String get breathDone => 'KONČANO';

  @override
  String get breathGreatJob => 'Odlično!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sej danes',
      few: '$count seje danes',
      two: '$count seji danes',
      one: '$count seja danes',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Končaj vajo';

  @override
  String get done => 'Končano';

  @override
  String get noCopingTipsYet => 'Še ni nasvetov za spoprijemanje';

  @override
  String get copingStrategiesWillAppear =>
      'Tvoje prilagojene strategije spoprijemanja bodo prikazane tukaj, ko bo ustvarjanje načrta okrevanja končano.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategije, prilagojene tvojim sprožilcem';

  @override
  String get cravingsPeakAndPass => 'Želje dosežejo vrh\nin nato minejo';

  @override
  String get rideTheWaveDescription =>
      'Večina želja mine v 15 minutah. Ni ti treba ukrepati — samo prebrodi jih skupaj z nami.';

  @override
  String get stayWithIt => 'vztrajaj';

  @override
  String get youMadeIt => 'uspelo ti je';

  @override
  String get readyWhenYouAre => 'ko boš pripravljen/a';

  @override
  String get rideItAgain => 'Ponovno prebrodi';

  @override
  String get start15MinuteTimer => 'Zaženi 15-minutni časovnik';

  @override
  String get rideTheWaveCompletedMessage =>
      'Prebrodil/a si val. To je prava moč. 💪';

  @override
  String get myProgress => 'Moj napredek';

  @override
  String get weekLabel => 'Teden';

  @override
  String get monthLabel => 'Mesec';

  @override
  String get allLabel => 'Vse';

  @override
  String get daysSoberStatLabel => 'Dni brez\nalkohola';

  @override
  String get savedStatLabel => 'Prihranjeno';

  @override
  String get avoidedStatLabel => 'Izognjeno';

  @override
  String get moodTrends => 'Trendi razpoloženja';

  @override
  String get cravingsPattern => 'Vzorec želja';

  @override
  String get unlockLabel => 'Odkleni';

  @override
  String get unlockFullStats => 'Odkleni celotno statistiko';

  @override
  String get premiumStatsMessage =>
      'Trendi razpoloženja in vzorci želja so Premium funkcije. Nadgradi, da si ogledaš celotno statistiko.';

  @override
  String get healthMilestonesWillAppear =>
      'Tvoji zdravstveni mejniki bodo prikazani tukaj.';

  @override
  String get healthMilestones => 'Zdravstveni mejniki';

  @override
  String dayNumber(int day) {
    return 'Dan $day';
  }

  @override
  String get soberLabel => 'Brez alkohola';

  @override
  String get slipLabel => 'Zdrs';

  @override
  String get noDataLabel => 'Ni podatkov';

  @override
  String get milestone24Hours => '24 ur';

  @override
  String get milestoneOneWeek => 'En teden';

  @override
  String get milestoneOneMonth => 'En mesec';

  @override
  String get milestoneThreeMonths => 'Trije meseci';

  @override
  String get milestoneSixMonths => 'Šest mesecev';

  @override
  String get milestoneOneYear => 'Eno leto';

  @override
  String milestoneDayCount(int day) {
    return 'Mejnik dne $day';
  }

  @override
  String get maybeLaterLabel => 'Morda kasneje';

  @override
  String get cancelLabel => 'Prekliči';
}
