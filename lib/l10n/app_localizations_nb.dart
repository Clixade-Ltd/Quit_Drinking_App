// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get skip => 'Hopp over';

  @override
  String get continueButton => 'Fortsett';

  @override
  String get getStarted => 'Kom i gang';

  @override
  String get onboardingTitle1 => 'Ta kontroll over livet ditt';

  @override
  String get onboardingSubtitle1 =>
      'Følg reisen din, feir hver prestasjon og bli sunnere én dag av gangen.';

  @override
  String get onboardingTitle2 => 'Din AI-følgesvenn på veien mot bedring';

  @override
  String get onboardingSubtitle2 =>
      'Få personlig veiledning, sunne vaner, motivasjonspåminnelser og fremdriftsrapporter tilpasset reisen din.';

  @override
  String get goodMorning => 'God morgen';

  @override
  String get goodAfternoon => 'God ettermiddag';

  @override
  String get goodEvening => 'God kveld';

  @override
  String get goodNight => 'God natt';

  @override
  String get embracingClarity => 'Omfavn klarheten, én dag av gangen.';

  @override
  String get streakLabel => 'REKKE';

  @override
  String get goalLabel => 'Mål';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dager',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium-abonnement';

  @override
  String get premiumPlanSubtitle => 'Lås opp hele bedringsopplevelsen din';

  @override
  String get accountAndSupport => 'KONTO OG STØTTE';

  @override
  String get privacyPolicy => 'Personvernerklæring';

  @override
  String get privacyPolicySubtitle =>
      'Administrer datadeling og kontosikkerhet';

  @override
  String get termsOfService => 'Vilkår for bruk';

  @override
  String get termsOfServiceSubtitle =>
      'Vanlige spørsmål, kontakt oss og ressurser';

  @override
  String get shareApp => 'Del appen';

  @override
  String get shareAppSubtitle => 'Del appen med vennene dine';

  @override
  String get resetData => 'Tilbakestill data';

  @override
  String get resetDataSubtitle => 'Slett alt som er lagret på denne enheten';

  @override
  String get resetAllDataTitle => 'Tilbakestille alle data?';

  @override
  String get resetAllDataMessage =>
      'Dette sletter alt som er lagret på denne enheten — profil, journalinnlegg og fremdrift — og kan ikke angres.';

  @override
  String get cancel => 'Avbryt';

  @override
  String get reset => 'Tilbakestill';

  @override
  String get chooseFromGallery => 'Velg fra galleriet';

  @override
  String get takePhoto => 'Ta bilde';

  @override
  String get removePhoto => 'Fjern bilde';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Kunne ikke oppdatere bildet: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Kunne ikke fjerne bildet: $error';
  }

  @override
  String get photoTooLarge =>
      'Bildet er for stort selv etter komprimering — prøv et annet bilde.';

  @override
  String get unableToLoadProfile => 'Kunne ikke laste inn profilen din';

  @override
  String get pleaseTryAgain => 'Prøv igjen.';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get profileNotFound => 'Profilen ble ikke funnet';

  @override
  String get refresh => 'Oppdater';

  @override
  String get noProfileDataFound =>
      'Ingen profildata er funnet på denne enheten ennå.';

  @override
  String couldNotResetData(String error) {
    return 'Kunne ikke tilbakestille data: $error';
  }

  @override
  String get navHome => 'Hjem';

  @override
  String get navStats => 'Statistikk';

  @override
  String get navJournal => 'Journal';

  @override
  String get navBadges => 'Merker';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature blir tilgjengelig snart.';
  }

  @override
  String get appWordmark => 'VELVÆRE';

  @override
  String get appTitle => 'Slutt å drikke';

  @override
  String get splashSubtitle => 'Ta det første steget mot et\nalkoholfritt liv';

  @override
  String get preparingJourney => 'Forbereder\nreisen din';

  @override
  String get taskMorningMeditation => 'Morgenmeditasjon (10 min)';

  @override
  String get taskReadChapter => 'Les kapittel 4 av \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Kveldsjournal med takknemlighet';

  @override
  String get close => 'Lukk';

  @override
  String get youAreDoingGreat => 'Du gjør en kjempebra jobb!';

  @override
  String get shareMilestone => 'Del milepæl';

  @override
  String shareMilestoneMessage(int days) {
    return 'Jeg er på dag $days av bedringsreisen min! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Min milepæl på bedringsreisen';

  @override
  String get weeklyReportReadyTitle => 'Den ukentlige rapporten din er klar';

  @override
  String get weeklyReportReadySubtitle =>
      'Trykk for å se hvordan uken din gikk';

  @override
  String get howAreYouFeeling => 'Hvordan føler du deg?';

  @override
  String get moodTough => 'Tøft';

  @override
  String get moodOkay => 'Greit';

  @override
  String get moodGood => 'Bra';

  @override
  String get moneySaved => 'Sparte penger';

  @override
  String get caloriesSaved => 'Sparte kalorier';

  @override
  String get healthScore => 'Helsescore';

  @override
  String get drinksAvoided => 'Unngåtte drinker';

  @override
  String get estimated => 'Estimert';

  @override
  String get aiGenerated => 'AI-generert';

  @override
  String get daysCapsLabel => 'DAGER';

  @override
  String get todaysMotivation => 'Dagens motivasjon';

  @override
  String get defaultMotivationQuote =>
      'Du har klart å holde fast ved forpliktelsen din. Fortsett på bølgen av positiv endring.';

  @override
  String get talkToCoach => 'Snakk med coachen';

  @override
  String get havingACraving => 'Jeg har lyst på alkohol';

  @override
  String get unlockWeeklyReportsTitle => 'Lås opp ukentlige rapporter';

  @override
  String get unlockWeeklyReportsMessage =>
      'Se alkoholfrie dager, humørtrender og personlig AI-tilbakemelding hver uke. Oppgrader til Premium for å låse opp.';

  @override
  String get maybeLater => 'Kanskje senere';

  @override
  String get upgrade => 'Oppgrader';

  @override
  String get weeklyReportTitle => 'Ukentlig rapport';

  @override
  String get weeklyReportsPremiumTitle =>
      'Ukentlige rapporter er en Premium-funksjon';

  @override
  String get weeklyReportsPremiumMessage =>
      'Se alkoholfrie dager, humørtrender, sug etter alkohol og personlig AI-tilbakemelding hver uke.';

  @override
  String get upgradeToPremium => 'Oppgrader til Premium';

  @override
  String get couldNotGenerateReport =>
      'Kunne ikke generere rapporten din akkurat nå.';

  @override
  String get tryAgainLower => 'Prøv igjen';

  @override
  String get statSoberDays => 'Alkoholfrie dager';

  @override
  String get statAvgMood => 'Gj.sn. humør';

  @override
  String get statCravings => 'Sug';

  @override
  String get statMoneySaved => 'Sparte penger';

  @override
  String get coachFeedback => 'Tilbakemelding fra coach';

  @override
  String get journalInsights => 'Innsikt fra journalen';

  @override
  String get next => 'Neste';

  @override
  String get question1Title => 'Hva er målet ditt?';

  @override
  String get question1Subtitle => 'Velg målet som betyr\nmest for deg';

  @override
  String get goalQuitCompletely => 'Slutte helt';

  @override
  String get goalReduceDrinking => 'Drikke mindre';

  @override
  String get goalTakeABreak => 'Ta en pause';

  @override
  String get goalBuildHealthierHabits => 'Bygge sunnere vaner';

  @override
  String get question3Title => 'Fortell oss om\nrutinen din';

  @override
  String get drinksPerWeek => 'Drink per uke';

  @override
  String get moneySpentPerWeek => 'Penger brukt per uke';

  @override
  String get drinkingLevel => 'Drikkenivå';

  @override
  String get triggersLabel => 'Utløsere';

  @override
  String get levelSocial => 'Sosialt';

  @override
  String get levelRegular => 'Regelmessig';

  @override
  String get levelHeavy => 'Mye';

  @override
  String get levelDependent => 'Avhengig';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Ensomhet';

  @override
  String get triggerHabit => 'Vane';

  @override
  String get triggerSadness => 'Tristhet';

  @override
  String get triggerAnger => 'Sinne';

  @override
  String get triggerBoredom => 'Kjedsomhet';

  @override
  String get triggerSocialPressure => 'Sosialt press';

  @override
  String get triggerCelebration => 'Feiring';

  @override
  String get triggerSleepProblems => 'Søvnproblemer';

  @override
  String get triggerWorkPressure => 'Arbeidspress';

  @override
  String get question4Title => 'Hvorfor ønsker du å endre deg?';

  @override
  String get question4Subtitle => 'Grunnen din vil bidra til å motivere deg.';

  @override
  String get reasonImproveHealth => 'Forbedre helsen min';

  @override
  String get reasonSaveMoney => 'Spare penger';

  @override
  String get reasonFamily => 'Familie';

  @override
  String get reasonBetterSleep => 'Bedre søvn';

  @override
  String get reasonMentalClarity => 'Mental klarhet';

  @override
  String get reasonFitness => 'Trening';

  @override
  String get reasonSelfRespect => 'Selvrespekt';

  @override
  String get reasonCareer => 'Karriere';

  @override
  String get milestoneUnlockedLabel => 'MILEPÆL LÅST OPP';

  @override
  String incredibleNamePrefix(String name) {
    return 'Utrolig, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount spart';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count unngått';
  }

  @override
  String get shareMyMilestone => 'Del milepælen min';

  @override
  String get milestoneImageShareError =>
      'Kunne ikke opprette milepælsbildet. Prøv igjen.';

  @override
  String get dailyCheckInTitle => 'Daglig innsjekking';

  @override
  String get howAreYouFeelingToday => 'Hvordan føler du deg i dag?';

  @override
  String get honestAnswerHelp =>
      'Det ærlige svaret ditt hjelper oss med å støtte deg bedre';

  @override
  String get didYouDrinkToday => 'Drakk du i dag?';

  @override
  String get noLabel => 'Nei';

  @override
  String get yesLabel => 'Ja';

  @override
  String get cravingLevelNow => 'Hvor sterkt sug har du akkurat nå?';

  @override
  String get anythingOnMind => 'Er det noe du tenker på?';

  @override
  String get optionalLabel => '(valgfritt)';

  @override
  String get dailyNoteHint => 'Skriv om dagen din, utløsere, seire...';

  @override
  String get alreadyCheckedInToday => 'Du har allerede sjekket inn i dag';

  @override
  String get saveCheckIn => 'Lagre innsjekking';

  @override
  String get checkInsHelpTrack =>
      'Innsjekkinger hjelper deg med å følge fremgangen over tid';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Du har allerede fullført dagens innsjekking.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Svar på begge spørsmålene ovenfor først';

  @override
  String get checkInSaved => 'Innsjekking lagret';

  @override
  String get cravingNone => 'Ingen';

  @override
  String get cravingLow => 'Lavt';

  @override
  String get cravingMedium => 'Middels';

  @override
  String get cravingStrong => 'Sterkt';

  @override
  String get moodBad => 'Dårlig';

  @override
  String get moodLow => 'Lavt';

  @override
  String get moodGreat => 'Flott';

  @override
  String get sosSupportTitle => 'SOS-støtte';

  @override
  String notAloneMessage(String name) {
    return 'Du er ikke alene, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Sug går over. Velg noe nedenfor som kan hjelpe deg gjennom dette øyeblikket.';

  @override
  String get breathingExercise => 'Pusteøvelse';

  @override
  String get breathingExerciseSubtitle => 'Veiledet 4-7-8-teknikk, 2 minutter';

  @override
  String get rideTheWave => 'Ri av bølgen';

  @override
  String get rideTheWaveSubtitle => '15-minutters timer — sug går alltid over';

  @override
  String get copingTips => 'Mestringstips';

  @override
  String get copingTipsSubtitle => 'Personlige strategier for utløsere dine';

  @override
  String get talkToAiCoach => 'Snakk med AI-coachen';

  @override
  String get talkToAiCoachSubtitle => 'Chat med bedringsfølgesvennen din';

  @override
  String get callSomeone => 'Ring noen';

  @override
  String get callSomeoneSubtitle => 'Ta kontakt med en person du stoler på';

  @override
  String get contactsPermissionNeeded =>
      'Kontakttillatelse er nødvendig for å ringe en kontakt.';

  @override
  String get beatenCravingsPrefix => 'Du har overvunnet sug ';

  @override
  String beatenCravingsCount(int count) {
    return '$count ganger';
  }

  @override
  String get beatenCravingsSuffix => ' tidligere. Du kan gjøre det igjen.';

  @override
  String get tellUsAboutYourself => 'Fortell oss om deg selv';

  @override
  String get detailsSubtitle =>
      'Denne informasjonen hjelper oss med å tilpasse bedringsreisen din og gi deg nøyaktig innsikt.';

  @override
  String get nameLabel => 'Navn';

  @override
  String get nameHint => 'f.eks. Alex Rivers';

  @override
  String get ageLabel => 'Alder';

  @override
  String get ageHint => 'f.eks. 32';

  @override
  String get sexAssignedAtBirth => 'Kjønn tildelt ved fødsel';

  @override
  String get sexFemale => 'Kvinne';

  @override
  String get sexMale => 'Mann';

  @override
  String get heightLabel => 'Høyde';

  @override
  String get weightLabel => 'Vekt';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Daglig grense nådd';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Du har brukt alle $limit gratis meldingene dine i dag. Oppgrader til Premium for ubegrenset coach-chat.';
  }

  @override
  String get coachConnectError =>
      'Jeg kunne ikke koble til akkurat nå. Prøv igjen om et øyeblikk.';

  @override
  String get clearConversationTitle => 'Tømme samtalen?';

  @override
  String get clearConversationMessage =>
      'Dette vil permanent fjerne chatloggen din med coachen.';

  @override
  String get clearLabel => 'Tøm';

  @override
  String get recoveryCoachTitle => 'Recovery-coach';

  @override
  String get onlineLabel => 'Pålogget';

  @override
  String get clearConversationMenuItem => 'Tøm samtalen';

  @override
  String chatGreeting(String name) {
    return 'Hei $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Du er på dag $days av reisen din. Jeg er her når du vil snakke om ting.';
  }

  @override
  String get quickPromptsLabel => 'HURTIGVALG';

  @override
  String get promptCravingLabel => 'Jeg har lyst på alkohol';

  @override
  String get promptCravingSubtitle => 'Finn roen raskt';

  @override
  String get promptMotivationLabel => 'Trenger motivasjon';

  @override
  String get promptMotivationSubtitle => 'Et løft når det er tøft';

  @override
  String get promptSocialLabel => 'Sosial situasjon';

  @override
  String get promptSocialSubtitle => 'Håndter en sammenkomst';

  @override
  String get promptSlippedLabel => 'Jeg sprakk';

  @override
  String get promptSlippedSubtitle => 'Ingen fordømmelse, bare støtte';

  @override
  String get typeMessageHint => 'Skriv en melding...';

  @override
  String get editProfileTitle => 'Rediger profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Kunne ikke lagre profilen: $error';
  }

  @override
  String get heightCmLabel => 'Høyde (cm)';

  @override
  String get weightKgLabel => 'Vekt (kg)';

  @override
  String get saveChangesLabel => 'Lagre endringer';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Avansert innsikt og analyse';

  @override
  String get featureUnlimitedJournal => 'Ubegrensede journalinnlegg';

  @override
  String get featureUnlimitedChat => 'Ubegrenset chat med AI-coach';

  @override
  String get featureCommunityGroups => 'Eksklusive fellesskapsgrupper';

  @override
  String get featurePrioritySupport => 'Prioritert ekspertstøtte';

  @override
  String get featureThemePacks => 'Tilpassede temapakker';

  @override
  String get featureDataExport => 'Dataeksport';

  @override
  String get featureAdFree => 'Annonsefri opplevelse';

  @override
  String get premiumMemberTitle => 'Du er Premium-medlem';

  @override
  String get unlockFullRecoveryTitle => 'Lås opp hele\nbedringsopplevelsen';

  @override
  String get premiumMemberSubtitle =>
      'Takk for at du støtter bedringsreisen din — alle premiumfunksjonene nedenfor er låst opp.';

  @override
  String get premiumJoinSubtitle =>
      'Bli med i et fellesskap med tusenvis av mennesker som\nfremskynder bedringsreisen sin med våre\npremiumverktøy og personlige støtte.';

  @override
  String get monthlyPlanLabel => 'Månedlig';

  @override
  String get perMonthSuffix => '/md.';

  @override
  String get cancelAnytimeLabel => 'Avslutt når som helst';

  @override
  String get yearlyPlanLabel => 'Årlig';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Belastes årlig med $amount';
  }

  @override
  String get bestValueLabel => 'Beste verdi';

  @override
  String get alreadyPremiumLabel => 'Du er Premium ✓';

  @override
  String get startPremiumLabel => 'Start Premium';

  @override
  String get manageSubscriptionLabel =>
      'Administrer eller avslutt abonnementet fra abonnementinnstillingene på enheten din.';

  @override
  String get noCommitmentLabel => 'Ingen bindingstid. Avslutt når som helst.';

  @override
  String get continueFreePlanLabel => 'Fortsett med gratisabonnementet';

  @override
  String get backToHomeLabel => 'Tilbake til hjem';

  @override
  String get cancelPremiumLabel => 'Avslutt Premium';

  @override
  String get cancelPremiumTitle => 'Avslutte Premium?';

  @override
  String get cancelPremiumMessage =>
      'Du mister tilgangen til ubegrensede journalinnlegg, ubegrenset coach-chat, statistikkinnsikt og ukentlige rapporter. Du kan abonnere på nytt når som helst.';

  @override
  String get keepPremiumLabel => 'Behold Premium';

  @override
  String get nowPremiumMessage =>
      'Du er nå Premium! Nyt hele bedringsopplevelsen din.';

  @override
  String get premiumCancelledMessage =>
      'Premium er avsluttet. Du er tilbake på gratisabonnementet.';

  @override
  String get termsOfUseLabel => 'Bruksvilkår';

  @override
  String get navHomeLabel => 'Hjem';

  @override
  String get navStatsLabel => 'Statistikk';

  @override
  String get navJournalLabel => 'Journal';

  @override
  String get navBadgesLabel => 'Merker';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Bedringsmål';

  @override
  String get drinksPerWeekLabel => 'Drink per uke';

  @override
  String get quitReasonsLabel => 'Grunner til å slutte';

  @override
  String get quitReasonsHelperText => 'Skill flere grunner med komma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Kunne ikke lagre bedringsmålene: $error';
  }

  @override
  String get goalHint => 'f.eks. full avholdenhet';

  @override
  String get drinksPerWeekHint => 'f.eks. 12';

  @override
  String get quitReasonsHint => 'f.eks. helse, familie, penger';

  @override
  String get todaysPrompt => 'Dagens spørsmål';

  @override
  String get defaultJournalPrompt => 'Hva tenker du på i dag?';

  @override
  String get aiJournalInsights => 'AI-innsikt fra journalen';

  @override
  String get unlockJournalInsightsMessage =>
      'Lås opp ukentlige mønstre, humørtrender og personlig innsikt fra journalinnleggene dine.';

  @override
  String get notEnoughJournalData =>
      'Ikke nok data ennå — skriv noen innlegg denne uken og kom tilbake senere.';

  @override
  String get openEntry => 'Åpne';

  @override
  String get editEntry => 'Rediger';

  @override
  String get deleteEntry => 'Slett';

  @override
  String get searchJournalEntries => 'Søk i innlegg...';

  @override
  String get writeNewEntry => 'Skriv nytt innlegg';

  @override
  String get recentEntries => 'Nylige innlegg';

  @override
  String get noJournalEntriesYet =>
      'Ingen journalinnlegg ennå — skriv din første refleksjon ovenfor.';

  @override
  String get noEntriesMatchFilters =>
      'Ingen innlegg samsvarer med filtrene dine.';

  @override
  String get weeklyJournalLimitReached => 'Ukentlig grense nådd';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Du har brukt alle $limit gratis journalinnleggene dine denne uken. Oppgrader til Premium for ubegrensede innlegg.';
  }

  @override
  String get newEntry => 'Nytt innlegg';

  @override
  String get writeYourThoughts => 'Skriv tankene dine';

  @override
  String get saveEntry => 'Lagre innlegg';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining av $limit gratis innlegg igjen denne uken';
  }

  @override
  String get deleteEntryQuestion => 'Slette innlegg?';

  @override
  String get deleteEntryConfirmation =>
      'Dette innlegget blir slettet permanent. Det kan ikke angres.';

  @override
  String get journalEntryNotFound => 'Innlegget ble ikke funnet';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Dette journalinnlegget kan ha blitt slettet.';

  @override
  String get goBack => 'Gå tilbake';

  @override
  String get journalEntryTitle => 'Journalinnlegg';

  @override
  String get moodStruggling => 'Sliter';

  @override
  String get moodUnwell => 'Uvel';

  @override
  String get moodNeutral => 'Nøytral';

  @override
  String get whatHappenedToday => 'Hva skjedde i dag?';

  @override
  String get trigger => 'Utløser';

  @override
  String get whatHelped => 'Hva hjalp';

  @override
  String get whatIllTryNextTime => 'Hva jeg skal prøve neste gang';

  @override
  String get journalPrivacyMessage =>
      'Refleksjonen din er privat og lagres i journalen din.';

  @override
  String get unlocked => 'Låst opp';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'er',
      one: '',
    );
    return '$count dag$_temp0 igjen';
  }

  @override
  String daysCount(int count) {
    return '$count dager';
  }

  @override
  String get firstReflection => 'Første\nrefleksjon';

  @override
  String get oneJournalEntry => '1 journalinnlegg';

  @override
  String get openBook => 'Åpne bok';

  @override
  String get tenJournalEntries => '10 journalinnlegg';

  @override
  String get dedicatedWriter => 'Dedikert\nskribent';

  @override
  String get thirtyJournalEntries => '30 journalinnlegg';

  @override
  String get firstConversation => 'Første\nsamtale';

  @override
  String get oneAiCoachChat => '1 AI-coach-chat';

  @override
  String get keepTalking => 'Fortsett å snakke';

  @override
  String get fiveConversations => '5 samtaler';

  @override
  String get coachCompanion => 'Coach-\nfølgesvenn';

  @override
  String get twentyConversations => '20 samtaler';

  @override
  String get checkInHabit => 'Innsjekkings-\nvane';

  @override
  String get sevenCheckIns => '7 innsjekkinger';

  @override
  String get consistencyPro => 'Ekspert på\nkonsistens';

  @override
  String get thirtyCheckIns => '30 innsjekkinger';

  @override
  String get dedicatedJourney => 'Dedikert\nreise';

  @override
  String get hundredCheckIns => '100 innsjekkinger';

  @override
  String get goalGetter => 'Måloppnåer';

  @override
  String get threeGoalsCompleted => '3 mål fullført';

  @override
  String get goalAchiever => 'Mål-\noppnåer';

  @override
  String get tenGoalsCompleted => '10 mål fullført';

  @override
  String get firstSavings => 'Første\nsparing';

  @override
  String get fiveHundredSaved => '\$500 spart';

  @override
  String get smartSaver => 'Smart sparer';

  @override
  String get oneThousandSaved => '\$1 000 spart';

  @override
  String get bigSaver => 'Stor sparer';

  @override
  String get fiveThousandSaved => '\$5 000 spart';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current av \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current av $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Fortsett — din første milepæl venter på deg!';

  @override
  String get badgesAndMilestones => 'Merker og milepæler';

  @override
  String get yourMilestoneJourney => 'Din milepælsreise';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'er',
      one: '',
    );
    return '$count milepæl$_temp0 oppnådd.\nTrykk for å se';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Du har låst opp $unlocked av $total milepæler på reisen din.';
  }

  @override
  String get remaining => 'Gjenstår';

  @override
  String get complete => 'Fullført';

  @override
  String get nextMilestone => 'Neste milepæl';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% på vei';
  }

  @override
  String get sobrietyMilestones => 'Milepæler for avholdenhet';

  @override
  String get journeyBadges => 'Reisemerker';

  @override
  String get bronze => 'BRONSE';

  @override
  String get silver => 'SØLV';

  @override
  String get gold => 'GULL';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Analyserer reisen din...';

  @override
  String get aiCreatingSanctuary => 'AI-en vår lager ditt personlige fristed.';

  @override
  String get understandingHabits => 'Forstår vanene dine...';

  @override
  String get calculatingBaseline => 'Beregner utgangspunktet ditt...';

  @override
  String get personalizingPlan => 'Tilpasser planen din...';

  @override
  String get finalizingSanctuary => 'Fullfører fristedet ditt...';

  @override
  String get creatingYourPlan => 'Lager planen din...';

  @override
  String get personalizedPlanError =>
      'Vi kunne ikke lage den personlige planen din. Prøv igjen.';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get breathInhale => 'PUST INN';

  @override
  String get breathHold => 'HOLD';

  @override
  String get breathExhale => 'PUST UT';

  @override
  String get breathDone => 'FERDIG';

  @override
  String get breathGreatJob => 'Bra jobbet!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count økter i dag',
      one: '$count økt i dag',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Avslutt øvelsen';

  @override
  String get done => 'Ferdig';

  @override
  String get noCopingTipsYet => 'Ingen mestringstips ennå';

  @override
  String get copingStrategiesWillAppear =>
      'Dine personlige mestringsstrategier vises her når bedringsplanen din er ferdig generert.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategier tilpasset utløsere dine';

  @override
  String get cravingsPeakAndPass => 'Sug topper seg\nog går over';

  @override
  String get rideTheWaveDescription =>
      'De fleste sug går over innen 15 minutter. Du trenger ikke handle på det — bare ri det av sammen med oss.';

  @override
  String get stayWithIt => 'hold ut';

  @override
  String get youMadeIt => 'du klarte det';

  @override
  String get readyWhenYouAre => 'når du er klar';

  @override
  String get rideItAgain => 'Ri av bølgen igjen';

  @override
  String get start15MinuteTimer => 'Start 15-minutters timer';

  @override
  String get rideTheWaveCompletedMessage =>
      'Du red av bølgen. Det er ekte styrke. 💪';

  @override
  String get myProgress => 'Min fremgang';

  @override
  String get weekLabel => 'Uke';

  @override
  String get monthLabel => 'Måned';

  @override
  String get allLabel => 'Alle';

  @override
  String get daysSoberStatLabel => 'Dager\nuten alkohol';

  @override
  String get savedStatLabel => 'Spart';

  @override
  String get avoidedStatLabel => 'Unngått';

  @override
  String get moodTrends => 'Humørtrender';

  @override
  String get cravingsPattern => 'Mønster for sug';

  @override
  String get unlockLabel => 'Lås opp';

  @override
  String get unlockFullStats => 'Lås opp full statistikk';

  @override
  String get premiumStatsMessage =>
      'Humørtrender og sugmønstre er Premium-funksjoner. Oppgrader for å se hele statistikken din.';

  @override
  String get healthMilestonesWillAppear => 'Helsemilepælene dine vises her.';

  @override
  String get healthMilestones => 'Helsemilepæler';

  @override
  String dayNumber(int day) {
    return 'Dag $day';
  }

  @override
  String get soberLabel => 'Alkoholfri';

  @override
  String get slipLabel => 'Tilbakefall';

  @override
  String get noDataLabel => 'Ingen data';

  @override
  String get milestone24Hours => '24 timer';

  @override
  String get milestoneOneWeek => 'Én uke';

  @override
  String get milestoneOneMonth => 'Én måned';

  @override
  String get milestoneThreeMonths => 'Tre måneder';

  @override
  String get milestoneSixMonths => 'Seks måneder';

  @override
  String get milestoneOneYear => 'Ett år';

  @override
  String milestoneDayCount(int day) {
    return 'Milepæl for dag $day';
  }

  @override
  String get maybeLaterLabel => 'Kanskje senere';

  @override
  String get cancelLabel => 'Avbryt';
}
