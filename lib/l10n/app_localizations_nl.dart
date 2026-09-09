// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get skip => 'Overslaan';

  @override
  String get continueButton => 'Doorgaan';

  @override
  String get getStarted => 'Aan de slag';

  @override
  String get onboardingTitle1 => 'Neem de regie over je leven';

  @override
  String get onboardingSubtitle1 =>
      'Volg je reis, vier elke mijlpaal en word elke dag een stukje gezonder.';

  @override
  String get onboardingTitle2 => 'Je AI-herstelcoach';

  @override
  String get onboardingSubtitle2 =>
      'Ontvang gepersonaliseerde begeleiding, gezonde gewoonten, motivatieherinneringen en voortgangsrapporten op maat.';

  @override
  String get goodMorning => 'Goedemorgen';

  @override
  String get goodAfternoon => 'Goedemiddag';

  @override
  String get goodEvening => 'Goedenavond';

  @override
  String get goodNight => 'Goedenacht';

  @override
  String get embracingClarity => 'Helderheid omarmen, één dag tegelijk.';

  @override
  String get streakLabel => 'STREAK';

  @override
  String get goalLabel => 'DOEL';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium-abonnement';

  @override
  String get premiumPlanSubtitle => 'Ontgrendel je volledige herstelervaring';

  @override
  String get accountAndSupport => 'ACCOUNT & ONDERSTEUNING';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get privacyPolicySubtitle =>
      'Beheer het delen van gegevens en accountbeveiliging';

  @override
  String get termsOfService => 'Servicevoorwaarden';

  @override
  String get termsOfServiceSubtitle =>
      'Veelgestelde vragen, contact en hulpmiddelen';

  @override
  String get shareApp => 'App delen';

  @override
  String get shareAppSubtitle => 'Deel de app met je vrienden';

  @override
  String get resetData => 'Gegevens resetten';

  @override
  String get resetDataSubtitle => 'Wis alles wat op dit apparaat is opgeslagen';

  @override
  String get resetAllDataTitle => 'Alle gegevens resetten?';

  @override
  String get resetAllDataMessage =>
      'Dit wist alles wat op dit apparaat is opgeslagen — profiel, dagboekaantekeningen en voortgang — en kan niet ongedaan worden gemaakt.';

  @override
  String get cancel => 'Annuleren';

  @override
  String get reset => 'Resetten';

  @override
  String get chooseFromGallery => 'Kiezen uit galerij';

  @override
  String get takePhoto => 'Foto maken';

  @override
  String get removePhoto => 'Foto verwijderen';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Foto kon niet worden bijgewerkt: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Foto kon niet worden verwijderd: $error';
  }

  @override
  String get photoTooLarge =>
      'Die foto is zelfs na compressie te groot — probeer een andere.';

  @override
  String get unableToLoadProfile => 'Kan je profiel niet laden';

  @override
  String get pleaseTryAgain => 'Probeer het opnieuw.';

  @override
  String get tryAgain => 'Probeer opnieuw';

  @override
  String get profileNotFound => 'Profiel niet gevonden';

  @override
  String get refresh => 'Vernieuwen';

  @override
  String get noProfileDataFound =>
      'Nog geen profielgegevens gevonden op dit apparaat.';

  @override
  String couldNotResetData(String error) {
    return 'Kon gegevens niet resetten: $error';
  }

  @override
  String get navHome => 'Home';

  @override
  String get navStats => 'Statistieken';

  @override
  String get navJournal => 'Dagboek';

  @override
  String get navBadges => 'Badges';

  @override
  String get navProfile => 'Profiel';

  @override
  String featureComingSoon(String feature) {
    return '$feature is binnenkort beschikbaar.';
  }

  @override
  String get appWordmark => 'WELZIJN';

  @override
  String get appTitle => 'Stop met drinken';

  @override
  String get splashSubtitle => 'Zet de eerste stap naar een\nalcoholvrij leven';

  @override
  String get preparingJourney => 'Je reis wordt\nvoorbereid';

  @override
  String get taskMorningMeditation => 'Ochtendmeditatie (10m)';

  @override
  String get taskReadChapter => 'Lees hoofdstuk 4 van \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Avonddankbaarheidsdagboek';

  @override
  String get close => 'Sluiten';

  @override
  String get youAreDoingGreat => 'Je doet het geweldig!';

  @override
  String get shareMilestone => 'Mijlpaal delen';

  @override
  String shareMilestoneMessage(int days) {
    return 'Ik zit op dag $days van mijn herstelreis! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Mijn herstelmijlpaal';

  @override
  String get weeklyReportReadyTitle => 'Je weekrapport staat klaar';

  @override
  String get weeklyReportReadySubtitle =>
      'Tik om te zien hoe je week is gegaan';

  @override
  String get howAreYouFeeling => 'Hoe voel je je?';

  @override
  String get moodTough => 'Zwaar';

  @override
  String get moodOkay => 'Okee';

  @override
  String get moodGood => 'Goed';

  @override
  String get moneySaved => 'Geld bespaard';

  @override
  String get caloriesSaved => 'Calorieën bespaard';

  @override
  String get healthScore => 'Gezondheidsscore';

  @override
  String get drinksAvoided => 'Drankjes vermeden';

  @override
  String get estimated => 'Geschat';

  @override
  String get aiGenerated => 'AI-genereerd';

  @override
  String get daysCapsLabel => 'DAGEN';

  @override
  String get todaysMotivation => 'Motivatie van vandaag';

  @override
  String get defaultMotivationQuote =>
      'Je hebt je toezegging met succes nagekomen. Blijf meesurfen op de golf van positieve verandering.';

  @override
  String get talkToCoach => 'Praat met coach';

  @override
  String get havingACraving => 'Ik heb trek';

  @override
  String get unlockWeeklyReportsTitle => 'Ontgrendel wekelijkse rapporten';

  @override
  String get unlockWeeklyReportsMessage =>
      'Bekijk elke week je nuchtere dagen, stemmingstrends en gepersonaliseerde AI-feedback. Upgrade naar Premium om te ontgrendelen.';

  @override
  String get maybeLater => 'Misschien later';

  @override
  String get upgrade => 'Upgraden';

  @override
  String get weeklyReportTitle => 'Weekrapport';

  @override
  String get weeklyReportsPremiumTitle =>
      'Wekelijkse rapporten zijn een Premium-functie';

  @override
  String get weeklyReportsPremiumMessage =>
      'Bekijk elke week je nuchtere dagen, stemmingstrends, trek en gepersonaliseerde AI-feedback.';

  @override
  String get upgradeToPremium => 'Upgraden naar Premium';

  @override
  String get couldNotGenerateReport =>
      'Kon je rapport op dit moment niet genereren.';

  @override
  String get tryAgainLower => 'Probeer opnieuw';

  @override
  String get statSoberDays => 'Nuchtere dagen';

  @override
  String get statAvgMood => 'Gem. stemming';

  @override
  String get statCravings => 'Trek';

  @override
  String get statMoneySaved => 'Geld bespaard';

  @override
  String get coachFeedback => 'Coach-feedback';

  @override
  String get journalInsights => 'Dagboekinzichten';

  @override
  String get next => 'Volgende';

  @override
  String get question1Title => 'Wat is je doel';

  @override
  String get question1Subtitle =>
      'Kies het doel dat voor jou\nhet belangrijkst is';

  @override
  String get goalQuitCompletely => 'Volledig stoppen';

  @override
  String get goalReduceDrinking => 'Minder drinken';

  @override
  String get goalTakeABreak => 'Pauze nemen';

  @override
  String get goalBuildHealthierHabits => 'Gezondere gewoonten opbouwen';

  @override
  String get question3Title => 'Vertel ons over je\nroutine';

  @override
  String get drinksPerWeek => 'Glazen per week';

  @override
  String get moneySpentPerWeek => 'Uitgegeven geld per week';

  @override
  String get drinkingLevel => 'Drinkniveau';

  @override
  String get triggersLabel => 'Prikkels';

  @override
  String get levelSocial => 'Sociaal';

  @override
  String get levelRegular => 'Regelmatig';

  @override
  String get levelHeavy => 'Zwaar';

  @override
  String get levelDependent => 'Afhankelijk';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Eenzaamheid';

  @override
  String get triggerHabit => 'Gewoonte';

  @override
  String get triggerSadness => 'Verdriet';

  @override
  String get triggerAnger => 'Boosheid';

  @override
  String get triggerBoredom => 'Verveling';

  @override
  String get triggerSocialPressure => 'Groepsdruk';

  @override
  String get triggerCelebration => 'Feestje';

  @override
  String get triggerSleepProblems => 'Slaapproblemen';

  @override
  String get triggerWorkPressure => 'Werkdruk';

  @override
  String get question4Title => 'Waarom wil je veranderen?';

  @override
  String get question4Subtitle =>
      'Je reden zal je helpen om gemotiveerd te blijven.';

  @override
  String get reasonImproveHealth => 'Mijn gezondheid verbeteren';

  @override
  String get reasonSaveMoney => 'Geld besparen';

  @override
  String get reasonFamily => 'Familie';

  @override
  String get reasonBetterSleep => 'Beter slapen';

  @override
  String get reasonMentalClarity => 'Mentale helderheid';

  @override
  String get reasonFitness => 'Fitheid';

  @override
  String get reasonSelfRespect => 'Zelfrespect';

  @override
  String get reasonCareer => 'Carrière';

  @override
  String get milestoneUnlockedLabel => 'MIJLPAAL ONTGRENDELD';

  @override
  String incredibleNamePrefix(String name) {
    return 'Ongelooflijk, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount bespaard';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count vermeden';
  }

  @override
  String get shareMyMilestone => 'Mijn mijlpaal delen';

  @override
  String get milestoneImageShareError =>
      'Kon de afbeelding van de mijlpaal niet maken. Probeer het opnieuw.';

  @override
  String get dailyCheckInTitle => 'Dagelijkse check-in';

  @override
  String get howAreYouFeelingToday => 'Hoe voel je je vandaag?';

  @override
  String get honestAnswerHelp =>
      'Je eerlijke antwoord helpt ons om je beter te ondersteunen';

  @override
  String get didYouDrinkToday => 'Heb je vandaag gedronken?';

  @override
  String get noLabel => 'Nee';

  @override
  String get yesLabel => 'Ja';

  @override
  String get cravingLevelNow => 'Mate van trek op dit moment?';

  @override
  String get anythingOnMind => 'Iets wat je bezighoudt?';

  @override
  String get optionalLabel => '(optioneel)';

  @override
  String get dailyNoteHint =>
      'Schrijf over je dag, prikkels, succesmomenten...';

  @override
  String get alreadyCheckedInToday => 'Vandaag al ingecheckt';

  @override
  String get saveCheckIn => 'Check-in opslaan';

  @override
  String get checkInsHelpTrack =>
      'Check-ins helpen je voortgang in de loop van de tijd te volgen';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Je hebt de check-in van vandaag al afgerond.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Beantwoord eerst beide bovenstaande vragen';

  @override
  String get checkInSaved => 'Check-in opgeslagen';

  @override
  String get cravingNone => 'Geen';

  @override
  String get cravingLow => 'Laag';

  @override
  String get cravingMedium => 'Gemiddeld';

  @override
  String get cravingStrong => 'Sterk';

  @override
  String get moodBad => 'Slecht';

  @override
  String get moodLow => 'Minder goed';

  @override
  String get moodGreat => 'Geweldig';

  @override
  String get sosSupportTitle => 'SOS-ondersteuning';

  @override
  String notAloneMessage(String name) {
    return 'Je staat er niet alleen voor, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Trek waait over. Kies hieronder iets om je door dit moment heen te helpen.';

  @override
  String get breathingExercise => 'Ademhalingsoefening';

  @override
  String get breathingExerciseSubtitle => 'Begeleide 4-7-8 techniek, 2 minuten';

  @override
  String get rideTheWave => 'Surf op de golf';

  @override
  String get rideTheWaveSubtitle =>
      'Timer van 15 min — trek gaat altijd voorbij';

  @override
  String get copingTips => 'Omgangstips';

  @override
  String get copingTipsSubtitle =>
      'Gepersonaliseerde strategieën voor jouw prikkels';

  @override
  String get talkToAiCoach => 'Praat met AI-coach';

  @override
  String get talkToAiCoachSubtitle => 'Chat met je herstelpartner';

  @override
  String get callSomeone => 'Belf iemand';

  @override
  String get callSomeoneSubtitle => 'Bereik je vertrouwde contactpersoon';

  @override
  String get contactsPermissionNeeded =>
      'Toestemming voor contacten is nodig om een contactpersoon te bellen.';

  @override
  String get beatenCravingsPrefix => 'Je hebt al ';

  @override
  String beatenCravingsCount(int count) {
    return '$count keer';
  }

  @override
  String get beatenCravingsSuffix =>
      ' trek weerstaan. Je kunt het nog een keer.';

  @override
  String get tellUsAboutYourself => 'Vertel ons over jezelf';

  @override
  String get detailsSubtitle =>
      'Deze informatie helpt ons om je herstelreis te personaliseren en nauwkeurige inzichten te bieden.';

  @override
  String get nameLabel => 'Naam';

  @override
  String get nameHint => 'bijv. Alex Rivers';

  @override
  String get ageLabel => 'Leeftijd';

  @override
  String get ageHint => 'bijv. 32';

  @override
  String get sexAssignedAtBirth => 'Geslacht toegewezen bij geboorte';

  @override
  String get sexFemale => 'Vrouw';

  @override
  String get sexMale => 'Man';

  @override
  String get heightLabel => 'Lengte';

  @override
  String get weightLabel => 'Gewicht';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Dagelijkse limiet bereikt';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Je hebt vandaag alle $limit gratis berichten gebruikt. Upgrade naar Premium voor onbeperkt chatten met je coach.';
  }

  @override
  String get coachConnectError =>
      'Ik kon op dit moment geen verbinding maken. Probeer het zo opnieuw.';

  @override
  String get clearConversationTitle => 'Gesprek wisssen?';

  @override
  String get clearConversationMessage =>
      'Dit verwijdert je chatgeschiedenis met de coach definitief.';

  @override
  String get clearLabel => 'Wissen';

  @override
  String get recoveryCoachTitle => 'Herstelcoach';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Gesprek wissen';

  @override
  String chatGreeting(String name) {
    return 'Hoi $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Je zit op dag $days van je reis. Ik ben er voor je als je ergens over wilt praten.';
  }

  @override
  String get quickPromptsLabel => 'SNELLE VRAGEN';

  @override
  String get promptCravingLabel => 'Ik heb trek';

  @override
  String get promptCravingSubtitle => 'Kom snel weer tot rust';

  @override
  String get promptMotivationLabel => 'Motivatie nodig';

  @override
  String get promptMotivationSubtitle =>
      'Een steuntje in de rug als het zwaar is';

  @override
  String get promptSocialLabel => 'Sociale situatie';

  @override
  String get promptSocialSubtitle => 'Navigeer door een bijeenkomst';

  @override
  String get promptSlippedLabel => 'Ik ben uitgegleden';

  @override
  String get promptSlippedSubtitle => 'Geen oordeel, alleen steun';

  @override
  String get typeMessageHint => 'Typ een bericht...';

  @override
  String get editProfileTitle => 'Profiel bewerken';

  @override
  String couldNotSaveProfile(String error) {
    return 'Kon profiel niet opslaan: $error';
  }

  @override
  String get heightCmLabel => 'Lengte (cm)';

  @override
  String get weightKgLabel => 'Gewicht (kg)';

  @override
  String get saveChangesLabel => 'Wijzigingen opslaan';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Geavanceerde inzichten & analyses';

  @override
  String get featureUnlimitedJournal => 'Onbeperkt aantal dagboekaantekeningen';

  @override
  String get featureUnlimitedChat => 'Onbeperkt chatten met AI-coach';

  @override
  String get featureCommunityGroups => 'Exclusieve communitygroepen';

  @override
  String get featurePrioritySupport => 'Prioritaire deskundige ondersteuning';

  @override
  String get featureThemePacks => 'Aangepaste themapakketten';

  @override
  String get featureDataExport => 'Gegevens exporteren';

  @override
  String get featureAdFree => 'Reclamevrije ervaring';

  @override
  String get premiumMemberTitle => 'Je bent Premium-lid';

  @override
  String get unlockFullRecoveryTitle =>
      'Ontgrendel je volledige\nherstelervaring';

  @override
  String get premiumMemberSubtitle =>
      'Bedankt voor het ondersteunen van je herstelreis — alle onderstaande premium-functies zijn ontgrendeld.';

  @override
  String get premiumJoinSubtitle =>
      'Sluit je aan bij duizenden anderen die hun herstelproces versnellen met onze premium tools en persoonlijke ondersteuning.';

  @override
  String get monthlyPlanLabel => 'Maandelijks';

  @override
  String get perMonthSuffix => '/pm';

  @override
  String get cancelAnytimeLabel => 'Annuleer wanneer je wilt';

  @override
  String get yearlyPlanLabel => 'Jaarlijks';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Jaarlijks gefactureerd voor $amount';
  }

  @override
  String get bestValueLabel => 'Beste waarde';

  @override
  String get alreadyPremiumLabel => 'Je bent Premium ✓';

  @override
  String get startPremiumLabel => 'Start Premium';

  @override
  String get manageSubscriptionLabel =>
      'Beheer of annuleer via de abonnementsinstellingen van je apparaat.';

  @override
  String get noCommitmentLabel => 'Nergens aan vast. Annuleer wanneer je wilt.';

  @override
  String get continueFreePlanLabel => 'Doorgaan met gratis abonnement';

  @override
  String get backToHomeLabel => 'Terug naar Home';

  @override
  String get cancelPremiumLabel => 'Premium annuleren';

  @override
  String get cancelPremiumTitle => 'Premium annuleren?';

  @override
  String get cancelPremiumMessage =>
      'Je verliest toegang tot onbeperkte dagboekaantekeningen, onbeperkt chatten met de coach, statistiekinzichten en wekelijkse rapporten. Je kunt je op elk moment opnieuw abonneren.';

  @override
  String get keepPremiumLabel => 'Premium behouden';

  @override
  String get nowPremiumMessage =>
      'Je bent nu Premium! Geniet van je volledige herstelervaring.';

  @override
  String get premiumCancelledMessage =>
      'Premium geannuleerd. Je bent terug op het gratis abonnement.';

  @override
  String get termsOfUseLabel => 'Gebruiksvoorwaarden';

  @override
  String get navHomeLabel => 'Home';

  @override
  String get navStatsLabel => 'Statistieken';

  @override
  String get navJournalLabel => 'Dagboek';

  @override
  String get navBadgesLabel => 'Badges';

  @override
  String get navProfileLabel => 'Profiel';

  @override
  String get recoveryGoalsTitle => 'Hersteldoelen';

  @override
  String get drinksPerWeekLabel => 'Drinks per week';

  @override
  String get quitReasonsLabel => 'Redenen om te stoppen';

  @override
  String get quitReasonsHelperText => 'Scheid meerdere redenen met een komma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Kon hersteldoelen niet opslaan: $error';
  }

  @override
  String get goalHint => 'bijv. Volledige onthouding';

  @override
  String get drinksPerWeekHint => 'bijv. 12';

  @override
  String get quitReasonsHint => 'bijv. Gezondheid, Familie, Geld';

  @override
  String get todaysPrompt => 'Vraag van vandaag';

  @override
  String get defaultJournalPrompt => 'Wat houdt je vandaag bezig?';

  @override
  String get aiJournalInsights => 'AI-dagboekinzichten';

  @override
  String get unlockJournalInsightsMessage =>
      'Ontgrendel wekelijkse patronen, stemmingstrends en gepersonaliseerde inzichten uit je dagboekaantekeningen.';

  @override
  String get notEnoughJournalData =>
      'Nog niet genoeg gegevens — schrijf deze week een paar aantekeningen en kom terug.';

  @override
  String get openEntry => 'Openen';

  @override
  String get editEntry => 'Bewerken';

  @override
  String get deleteEntry => 'Verwijderen';

  @override
  String get searchJournalEntries => 'Aantekeningen zoeken...';

  @override
  String get writeNewEntry => 'Nieuwe aantekening schrijven';

  @override
  String get recentEntries => 'Recente aantekeningen';

  @override
  String get noJournalEntriesYet =>
      'Nog geen dagboekaantekeningen — schrijf hierboven je eerste reflectie.';

  @override
  String get noEntriesMatchFilters =>
      'Geen aantekeningen die voldoen aan je filters.';

  @override
  String get weeklyJournalLimitReached => 'Wekelijkse limiet bereikt';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Je hebt deze week alle $limit gratis dagboekaantekeningen gebruikt. Upgrade naar Premium voor onbeperkte aantekeningen.';
  }

  @override
  String get newEntry => 'Nieuwe aantekening';

  @override
  String get writeYourThoughts => 'Schrijf je gedachten op';

  @override
  String get saveEntry => 'Aantekening opslaan';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Nog $remaining van $limit gratis aantekeningen over deze week';
  }

  @override
  String get deleteEntryQuestion => 'Aantekening verwijderen?';

  @override
  String get deleteEntryConfirmation =>
      'Deze aantekening wordt definitief verwijderd. Dit kan niet ongedaan worden gemaakt.';

  @override
  String get journalEntryNotFound => 'Aantekening niet gevonden';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Deze dagboekaantekening is mogelijk verwijderd.';

  @override
  String get goBack => 'Ga terug';

  @override
  String get journalEntryTitle => 'Dagboekaantekening';

  @override
  String get moodStruggling => 'Moeizaam';

  @override
  String get moodUnwell => 'Niet goed';

  @override
  String get moodNeutral => 'Neutraal';

  @override
  String get whatHappenedToday => 'Wat is er vandaag gebeurd?';

  @override
  String get trigger => 'Prikkel';

  @override
  String get whatHelped => 'Wat hielp';

  @override
  String get whatIllTryNextTime => 'Wat ik de volgende keer ga proberen';

  @override
  String get journalPrivacyMessage =>
      'Je reflectie is privé en opgeslagen in je dagboek.';

  @override
  String get unlocked => 'Ontgrendeld';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen',
      one: '$count dag',
    );
    return 'Nog $_temp0 over';
  }

  @override
  String daysCount(int count) {
    return '$count Dagen';
  }

  @override
  String get firstReflection => 'Eerste\nreflectie';

  @override
  String get oneJournalEntry => '1 dagboekaantekening';

  @override
  String get openBook => 'Open boek';

  @override
  String get tenJournalEntries => '10 dagboekaantekeningen';

  @override
  String get dedicatedWriter => 'Toegewijde\nschrijver';

  @override
  String get thirtyJournalEntries => '30 dagboekaantekeningen';

  @override
  String get firstConversation => 'Eerste\ngesprek';

  @override
  String get oneAiCoachChat => '1 AI-coachgesprek';

  @override
  String get keepTalking => 'Blijf praten';

  @override
  String get fiveConversations => '5 gesprekken';

  @override
  String get coachCompanion => 'Coach-\npartner';

  @override
  String get twentyConversations => '20 gesprekken';

  @override
  String get checkInHabit => 'Check-in-\ngewoonte';

  @override
  String get sevenCheckIns => '7 check-ins';

  @override
  String get consistencyPro => 'Consistentie-\nexpert';

  @override
  String get thirtyCheckIns => '30 check-ins';

  @override
  String get dedicatedJourney => 'Toegewijde\nreis';

  @override
  String get hundredCheckIns => '100 check-ins';

  @override
  String get goalGetter => 'Doelzoeker';

  @override
  String get threeGoalsCompleted => '3 doelen behaald';

  @override
  String get goalAchiever => 'Doel-\nbereiker';

  @override
  String get tenGoalsCompleted => '10 doelen behaald';

  @override
  String get firstSavings => 'Eerste\nbesparing';

  @override
  String get fiveHundredSaved => '\$500 bespaard';

  @override
  String get smartSaver => 'Slimme spaarder';

  @override
  String get oneThousandSaved => '\$1.000 bespaard';

  @override
  String get bigSaver => 'Grote spaarder';

  @override
  String get fiveThousandSaved => '\$5.000 bespaard';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current van \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current van $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Ga zo door — je eerste mijlpaal staat op je te wachten!';

  @override
  String get badgesAndMilestones => 'Badges & Mijlpalen';

  @override
  String get yourMilestoneJourney => 'Jouw mijlpalenreis';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mijlpalen behaald.\nTik om te bekijken',
      one: '$count mijlpaal behaald.\nTik om te bekijken',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Je hebt $unlocked van de $total mijlpalen op je reis ontgrendeld.';
  }

  @override
  String get remaining => 'Resterend';

  @override
  String get complete => 'Voltooid';

  @override
  String get nextMilestone => 'Volgende mijlpaal';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% op weg';
  }

  @override
  String get sobrietyMilestones => 'Nuchterheidsmijlpalen';

  @override
  String get journeyBadges => 'Reisbadges';

  @override
  String get bronze => 'BRONS';

  @override
  String get silver => 'ZILVER';

  @override
  String get gold => 'GOUD';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Je reis analyseren...';

  @override
  String get aiCreatingSanctuary =>
      'Onze AI bouwt aan jouw persoonlijke rustplek.';

  @override
  String get understandingHabits => 'Gewoonten begrijpen...';

  @override
  String get calculatingBaseline => 'Je uitgangspunt berekenen...';

  @override
  String get personalizingPlan => 'Je plan personaliseren...';

  @override
  String get finalizingSanctuary => 'Je rustplek afronden...';

  @override
  String get creatingYourPlan => 'Je plan maken...';

  @override
  String get personalizedPlanError =>
      'We konden je gepersonaliseerde plan niet maken. Probeer het opnieuw.';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get breathInhale => 'INADEMEN';

  @override
  String get breathHold => 'VASTHOUDEN';

  @override
  String get breathExhale => 'UITADEMEN';

  @override
  String get breathDone => 'KLAAR';

  @override
  String get breathGreatJob => 'Goed gedaan!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessies vandaag',
      one: '$count sessie vandaag',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Oefening beëindigen';

  @override
  String get done => 'Klaar';

  @override
  String get noCopingTipsYet => 'Nog geen omgangstips';

  @override
  String get copingStrategiesWillAppear =>
      'Je gepersonaliseerde omgangsstrategieën verschijnen hier zodra je herstelplan is gegenereerd.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategieën afgestemd op jouw prikkels';

  @override
  String get cravingsPeakAndPass => 'Trek piekt\nen gaat voorbij';

  @override
  String get rideTheWaveDescription =>
      'De meeste trek gaat binnen 15 minuten voorbij. Je hoeft er niks mee te doen — surf er gewoon samen met ons doorheen.';

  @override
  String get stayWithIt => 'blijf erbij';

  @override
  String get youMadeIt => 'het is je gelukt';

  @override
  String get readyWhenYouAre => 'klaar wanneer jij dat bent';

  @override
  String get rideItAgain => 'Nog eens surfen';

  @override
  String get start15MinuteTimer => 'Start timer van 15 minuten';

  @override
  String get rideTheWaveCompletedMessage =>
      'Je hebt de golf uitgezeten. Dat is echte kracht. 💪';

  @override
  String get myProgress => 'Mijn voortgang';

  @override
  String get weekLabel => 'Week';

  @override
  String get monthLabel => 'Maand';

  @override
  String get allLabel => 'Alles';

  @override
  String get daysSoberStatLabel => 'Dagen\nnuchter';

  @override
  String get savedStatLabel => 'Bespaard';

  @override
  String get avoidedStatLabel => 'Vermeden';

  @override
  String get moodTrends => 'Stemmingstrends';

  @override
  String get cravingsPattern => 'Patroon van trek';

  @override
  String get unlockLabel => 'Ontgrendel';

  @override
  String get unlockFullStats => 'Volledige statistieken ontgrendelen';

  @override
  String get premiumStatsMessage =>
      'Stemmingstrends en trekpatronen zijn Premium-functies. Upgrade om je volledige statistieken te zien.';

  @override
  String get healthMilestonesWillAppear =>
      'Je gezondheidsmijlpalen verschijnen hier.';

  @override
  String get healthMilestones => 'Gezondheidsmijlpalen';

  @override
  String dayNumber(int day) {
    return 'Dag $day';
  }

  @override
  String get soberLabel => 'Nuchter';

  @override
  String get slipLabel => 'Atempause';

  @override
  String get noDataLabel => 'Geen gegevens';

  @override
  String get milestone24Hours => '24 uur';

  @override
  String get milestoneOneWeek => 'Eén week';

  @override
  String get milestoneOneMonth => 'Eén maand';

  @override
  String get milestoneThreeMonths => 'Drie maanden';

  @override
  String get milestoneSixMonths => 'Zes maanden';

  @override
  String get milestoneOneYear => 'Eén jaar';

  @override
  String milestoneDayCount(int day) {
    return 'Mijlpaal Dag $day';
  }

  @override
  String get maybeLaterLabel => 'Misschien later';

  @override
  String get cancelLabel => 'Annuleren';
}
