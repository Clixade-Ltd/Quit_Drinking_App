// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get skip => 'Spring over';

  @override
  String get continueButton => 'Fortsæt';

  @override
  String get getStarted => 'Kom i gang';

  @override
  String get onboardingTitle1 => 'Tag styringen over dit liv';

  @override
  String get onboardingSubtitle1 =>
      'Følg din rejse, fejr enhver succes, og bliv sundere dag for dag.';

  @override
  String get onboardingTitle2 => 'Din AI-restitutionsledsager';

  @override
  String get onboardingSubtitle2 =>
      'Få personlig vejledning, sunde vaner, motiverende påmindelser og fremskridtsrapporter skræddersyet til din rejse.';

  @override
  String get goodMorning => 'Godmorgen';

  @override
  String get goodAfternoon => 'Goddag';

  @override
  String get goodEvening => 'Godaften';

  @override
  String get goodNight => 'Godnat';

  @override
  String get embracingClarity => 'Omfavn klarheden, én dag ad gangen.';

  @override
  String get streakLabel => 'STREAK';

  @override
  String get goalLabel => 'MÅL';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium-abonnement';

  @override
  String get premiumPlanSubtitle => 'Lås op for din fulde restitutionoplevelse';

  @override
  String get accountAndSupport => 'KONTO OG SUPPORT';

  @override
  String get privacyPolicy => 'Privatlivspolitik';

  @override
  String get privacyPolicySubtitle =>
      'Administrer deling af data og kontosikkerhed';

  @override
  String get termsOfService => 'Servicevilkår';

  @override
  String get termsOfServiceSubtitle =>
      'Ofte stillede spørgsmål, kontakt os og ressourcer';

  @override
  String get shareApp => 'Del appen';

  @override
  String get shareAppSubtitle => 'Del appen med dine venner';

  @override
  String get resetData => 'Nulstil data';

  @override
  String get resetDataSubtitle => 'Slet alt gemt på denne enhed';

  @override
  String get resetAllDataTitle => 'Nulstil alle data?';

  @override
  String get resetAllDataMessage =>
      'Dette sletter alt gemt på denne enhed — profil, journalnotater og fremskridt — og kan ikke fortrydes.';

  @override
  String get cancel => 'Annuller';

  @override
  String get reset => 'Nulstil';

  @override
  String get chooseFromGallery => 'Vælg fra galleri';

  @override
  String get takePhoto => 'Tag foto';

  @override
  String get removePhoto => 'Fjern foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Kunne ikke opdatere foto: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Kunne ikke fjerne foto: $error';
  }

  @override
  String get photoTooLarge =>
      'Billedet er for stort selv efter komprimering — prøv venligst et andet.';

  @override
  String get unableToLoadProfile => 'Kunne ikke indlæse din profil';

  @override
  String get pleaseTryAgain => 'Prøv venligst igen.';

  @override
  String get tryAgain => 'Prøv igen';

  @override
  String get profileNotFound => 'Profil ikke fundet';

  @override
  String get refresh => 'Opdater';

  @override
  String get noProfileDataFound =>
      'Ingen profildata fundet på denne enhed endnu.';

  @override
  String couldNotResetData(String error) {
    return 'Kunne ikke nulstille data: $error';
  }

  @override
  String get navHome => 'Hjem';

  @override
  String get navStats => 'Statistik';

  @override
  String get navJournal => 'Journal';

  @override
  String get navBadges => 'Emblemer';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature vil snart være tilgængelig.';
  }

  @override
  String get appWordmark => 'VELVÆRE';

  @override
  String get appTitle => 'Stop med at drikke';

  @override
  String get splashSubtitle => 'Tag det første skridt mod et\nalkoholfrit liv';

  @override
  String get preparingJourney => 'Forbereder din\nrejse';

  @override
  String get taskMorningMeditation => 'Morgenmeditation (10 m)';

  @override
  String get taskReadChapter => 'Læs kapitel 4 i \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Aftenjournal over taknemmelighed';

  @override
  String get close => 'Luk';

  @override
  String get youAreDoingGreat => 'Du klarer det fantastisk!';

  @override
  String get shareMilestone => 'Del milepæl';

  @override
  String shareMilestoneMessage(int days) {
    return 'Jeg er på dag $days af min restitutionsrejse! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Min restitutionsmilepæl';

  @override
  String get weeklyReportReadyTitle => 'Din ugentlige rapport er klar';

  @override
  String get weeklyReportReadySubtitle => 'Tryk for at se, hvordan din uge gik';

  @override
  String get howAreYouFeeling => 'Hvordan har du det?';

  @override
  String get moodTough => 'Svært';

  @override
  String get moodOkay => 'Okey';

  @override
  String get moodGood => 'Godt';

  @override
  String get moneySaved => 'Penge sparret';

  @override
  String get caloriesSaved => 'Kalorier sparet';

  @override
  String get healthScore => 'Helbredsscore';

  @override
  String get drinksAvoided => 'Undgåede genstande';

  @override
  String get estimated => 'Estimeret';

  @override
  String get aiGenerated => 'AI-genereret';

  @override
  String get daysCapsLabel => 'DAGE';

  @override
  String get todaysMotivation => 'Dagens motivation';

  @override
  String get defaultMotivationQuote =>
      'Du har succesfuldt overholdt dit løfte. Bliv ved med at ride på bølgen af positiv forandring.';

  @override
  String get talkToCoach => 'Tal med coach';

  @override
  String get havingACraving => 'Jeg har en trang';

  @override
  String get unlockWeeklyReportsTitle => 'Lås op for ugentlige rapporter';

  @override
  String get unlockWeeklyReportsMessage =>
      'Se dine ædru dage, humørtrends og personlig AI-feedback hver uge. Opgrader til Premium for at låse op.';

  @override
  String get maybeLater => 'Måske senere';

  @override
  String get upgrade => 'Opgrader';

  @override
  String get weeklyReportTitle => 'Ugentlig rapport';

  @override
  String get weeklyReportsPremiumTitle =>
      'Ugentlige rapporter er en Premium-funktion';

  @override
  String get weeklyReportsPremiumMessage =>
      'Se dine ædru dage, humørtrends, trang og personlig AI-feedback hver uge.';

  @override
  String get upgradeToPremium => 'Opgrader til Premium';

  @override
  String get couldNotGenerateReport =>
      'Kunne ikke generere din rapport lige nu.';

  @override
  String get tryAgainLower => 'Prøv igen';

  @override
  String get statSoberDays => 'Ædru dage';

  @override
  String get statAvgMood => 'Gnsn. humør';

  @override
  String get statCravings => 'Trang';

  @override
  String get statMoneySaved => 'Penge sparret';

  @override
  String get coachFeedback => 'Coach-feedback';

  @override
  String get journalInsights => 'Journalindsigt';

  @override
  String get next => 'Næste';

  @override
  String get question1Title => 'Hvad er dit mål';

  @override
  String get question1Subtitle => 'Vælg det mål, der betyder\nmest for dig';

  @override
  String get goalQuitCompletely => 'Stop helt';

  @override
  String get goalReduceDrinking => 'Reducer forbrug';

  @override
  String get goalTakeABreak => 'Tag en pause';

  @override
  String get goalBuildHealthierHabits => 'Opbyg sundere vaner';

  @override
  String get question3Title => 'Fortæl os om din\nrutine';

  @override
  String get drinksPerWeek => 'Genstande om ugen';

  @override
  String get moneySpentPerWeek => 'Penge brugt om ugen';

  @override
  String get drinkingLevel => 'Alkoholniveau';

  @override
  String get triggersLabel => 'Udløsere';

  @override
  String get levelSocial => 'Socialt';

  @override
  String get levelRegular => 'Regelmæssigt';

  @override
  String get levelHeavy => 'Tungt';

  @override
  String get levelDependent => 'Afhængigt';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Ensomhed';

  @override
  String get triggerHabit => 'Vane';

  @override
  String get triggerSadness => 'Sorg';

  @override
  String get triggerAnger => 'Vrede';

  @override
  String get triggerBoredom => 'Kedsomhed';

  @override
  String get triggerSocialPressure => 'Socialt pres';

  @override
  String get triggerCelebration => 'Fejring';

  @override
  String get triggerSleepProblems => 'Søvnproblemer';

  @override
  String get triggerWorkPressure => 'Arbejdspres';

  @override
  String get question4Title => 'Hvorfor vil du ændre dig?';

  @override
  String get question4Subtitle => 'Din grund vil hjælpe med at motivere dig.';

  @override
  String get reasonImproveHealth => 'Forbedre mit helbred';

  @override
  String get reasonSaveMoney => 'Spare penge';

  @override
  String get reasonFamily => 'Familie';

  @override
  String get reasonBetterSleep => 'Bedre søvn';

  @override
  String get reasonMentalClarity => 'Mental klarhed';

  @override
  String get reasonFitness => 'Fitness';

  @override
  String get reasonSelfRespect => 'Selvrespekt';

  @override
  String get reasonCareer => 'Karriere';

  @override
  String get milestoneUnlockedLabel => 'MILEPÆL LÅST OP';

  @override
  String incredibleNamePrefix(String name) {
    return 'Fantastisk, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount sparret';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count undgået';
  }

  @override
  String get shareMyMilestone => 'Del min milepæl';

  @override
  String get milestoneImageShareError =>
      'Kunne ikke oprette milepælsbilledet. Prøv venligst igen.';

  @override
  String get dailyCheckInTitle => 'Daglig tjek-ind';

  @override
  String get howAreYouFeelingToday => 'Hvordan har du det i dag?';

  @override
  String get honestAnswerHelp =>
      'Dit ærlige svar hjælper os med at støtte dig bedre';

  @override
  String get didYouDrinkToday => 'Drak du i dag?';

  @override
  String get noLabel => 'Nej';

  @override
  String get yesLabel => 'Ja';

  @override
  String get cravingLevelNow => 'Trangniveau lige nu?';

  @override
  String get anythingOnMind => 'Har du noget på hjerte?';

  @override
  String get optionalLabel => '(valgfrit)';

  @override
  String get dailyNoteHint => 'Skriv om din dag, udløsere, sejre...';

  @override
  String get alreadyCheckedInToday => 'Allerede tjekket ind i dag';

  @override
  String get saveCheckIn => 'Gem tjek-ind';

  @override
  String get checkInsHelpTrack =>
      'Tjek-ind hjælper med at spore dine fremskridt over tid';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Du har allerede fuldført dagens tjek-ind.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Besvar venligst begge spørgsmål ovenfor først';

  @override
  String get checkInSaved => 'Tjek-ind gemt';

  @override
  String get cravingNone => 'Ingen';

  @override
  String get cravingLow => 'Lav';

  @override
  String get cravingMedium => 'Mellem';

  @override
  String get cravingStrong => 'Stærk';

  @override
  String get moodBad => 'Dårligt';

  @override
  String get moodLow => 'Lavt';

  @override
  String get moodGreat => 'Fremragende';

  @override
  String get sosSupportTitle => 'SOS-support';

  @override
  String notAloneMessage(String name) {
    return 'Du er ikke alene, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Trang går over. Vælg noget nedenfor til at hjælpe dig igennem dette øjeblik.';

  @override
  String get breathingExercise => 'Andedrætsøvelse';

  @override
  String get breathingExerciseSubtitle => 'Guidet 4-7-8 teknik, 2 minutter';

  @override
  String get rideTheWave => 'Rid på bølgen';

  @override
  String get rideTheWaveSubtitle => '15 min nedtælling — trang går altid over';

  @override
  String get copingTips => 'Mestringstips';

  @override
  String get copingTipsSubtitle => 'Personlige strategier til dine udløsere';

  @override
  String get talkToAiCoach => 'Tal med AI-coach';

  @override
  String get talkToAiCoachSubtitle => 'Chat med din restitutionsledsager';

  @override
  String get callSomeone => 'Ring til nogen';

  @override
  String get callSomeoneSubtitle => 'Kontakt din betroede kontaktperson';

  @override
  String get contactsPermissionNeeded =>
      'Der kræves kontakttilladelse for at ringe til en kontakt.';

  @override
  String get beatenCravingsPrefix => 'Du har overvundet trang ';

  @override
  String beatenCravingsCount(int count) {
    return '$count gange';
  }

  @override
  String get beatenCravingsSuffix => ' før. Du kan gøre det igen.';

  @override
  String get tellUsAboutYourself => 'Fortæl os om dig selv';

  @override
  String get detailsSubtitle =>
      'Disse oplysninger hjælper os med at tilpasse din restitutionsrejse og give præcise indsigter.';

  @override
  String get nameLabel => 'Navn';

  @override
  String get nameHint => 'f.eks. Alex Rivers';

  @override
  String get ageLabel => 'Alder';

  @override
  String get ageHint => 'f.eks. 32';

  @override
  String get sexAssignedAtBirth => 'Tildelt køn ved fødslen';

  @override
  String get sexFemale => 'Kvinde';

  @override
  String get sexMale => 'Mand';

  @override
  String get heightLabel => 'Højde';

  @override
  String get weightLabel => 'Vægt';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Daglig grænse nået';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Du har brugt alle $limit gratis beskeder i dag. Opgrader til Premium for ubegrænset coach-chat.';
  }

  @override
  String get coachConnectError =>
      'Jeg kunne ikke oprette forbindelse lige nu. Prøv venligst igen om et øjeblik.';

  @override
  String get clearConversationTitle => 'Ryd samtale?';

  @override
  String get clearConversationMessage =>
      'Dette vil permanent fjerne din chat-historik med coachen.';

  @override
  String get clearLabel => 'Ryd';

  @override
  String get recoveryCoachTitle => 'Restitutionscoach';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Ryd samtale';

  @override
  String chatGreeting(String name) {
    return 'Hej $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Du er på dag $days af din rejse. Jeg er her, når du har brug for at tale om tingene.';
  }

  @override
  String get quickPromptsLabel => 'HURTIGE EMNER';

  @override
  String get promptCravingLabel => 'Har en trang';

  @override
  String get promptCravingSubtitle => 'Få jordforbindelse, hurtigt';

  @override
  String get promptMotivationLabel => 'Brug for motivation';

  @override
  String get promptMotivationSubtitle => 'Et skub når det er svært';

  @override
  String get promptSocialLabel => 'Social situation';

  @override
  String get promptSocialSubtitle => 'Naviger i et selskab';

  @override
  String get promptSlippedLabel => 'Jeg faldt i';

  @override
  String get promptSlippedSubtitle => 'Ingen fordømmelse, kun støtte';

  @override
  String get typeMessageHint => 'Skriv en besked...';

  @override
  String get editProfileTitle => 'Rediger profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Kunne ikke gemme profil: $error';
  }

  @override
  String get heightCmLabel => 'Højde (cm)';

  @override
  String get weightKgLabel => 'Vægt (kg)';

  @override
  String get saveChangesLabel => 'Gem ændringer';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Avancerede indsigter og analyser';

  @override
  String get featureUnlimitedJournal => 'Ubegrænsede journalnotater';

  @override
  String get featureUnlimitedChat => 'Ubegrænset chat med AI-coach';

  @override
  String get featureCommunityGroups => 'Eksklusive fællesskabsgrupper';

  @override
  String get featurePrioritySupport => 'Prioriteret ekspertsupport';

  @override
  String get featureThemePacks => 'Anderledes temapakker';

  @override
  String get featureDataExport => 'Dataeksport';

  @override
  String get featureAdFree => 'Reklamefri oplevelse';

  @override
  String get premiumMemberTitle => 'Du er Premium-medlem';

  @override
  String get unlockFullRecoveryTitle =>
      'Lås op for din fulde\nrestitutionsoplevelse';

  @override
  String get premiumMemberSubtitle =>
      'Tak fordi du støtter din restitutionsrejse — alle premium-funktioner nedenfor er låst op.';

  @override
  String get premiumJoinSubtitle =>
      'Slut dig til tusindvis af andre, der fremskynder deres restitutionsrejse med vores premium-værktøjer og personlige støtte.';

  @override
  String get monthlyPlanLabel => 'Månedlig';

  @override
  String get perMonthSuffix => '/md.';

  @override
  String get cancelAnytimeLabel => 'Opsig når som helst';

  @override
  String get yearlyPlanLabel => 'Årlig';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Faktureres årligt med $amount';
  }

  @override
  String get bestValueLabel => 'Bedste værdi';

  @override
  String get alreadyPremiumLabel => 'Du er Premium ✓';

  @override
  String get startPremiumLabel => 'Start Premium';

  @override
  String get manageSubscriptionLabel =>
      'Administrer eller annuller via din enheds abonnementsindstillinger.';

  @override
  String get noCommitmentLabel => 'Ingen binding. Opsig når som helst.';

  @override
  String get continueFreePlanLabel => 'Fortsæt med gratis abonnement';

  @override
  String get backToHomeLabel => 'Tilbage til start';

  @override
  String get cancelPremiumLabel => 'Annuller Premium';

  @override
  String get cancelPremiumTitle => 'Annuller Premium?';

  @override
  String get cancelPremiumMessage =>
      'Du mister adgangen til ubegrænsede journalnotater, ubegrænset coach-chat, statistikindsigt og ugentlige rapporter. Du kan til enhver tid tilmelde dig igen.';

  @override
  String get keepPremiumLabel => 'Behold Premium';

  @override
  String get nowPremiumMessage =>
      'Du er nu Premium! Nyd din fulde restitutionsoplevelse.';

  @override
  String get premiumCancelledMessage =>
      'Premium annulleret. Du er tilbage på den gratis plan.';

  @override
  String get termsOfUseLabel => 'Vilkår for anvendelse';

  @override
  String get navHomeLabel => 'Hjem';

  @override
  String get navStatsLabel => 'Statistik';

  @override
  String get navJournalLabel => 'Journal';

  @override
  String get navBadgesLabel => 'Emblemer';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Restitutionsmål';

  @override
  String get drinksPerWeekLabel => 'Drinks per week';

  @override
  String get quitReasonsLabel => 'Grunde til at stoppe';

  @override
  String get quitReasonsHelperText => 'Adskil flere grunde med komma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Kunne ikke gemme restitutionsmål: $error';
  }

  @override
  String get goalHint => 'f.eks. Fuldstændig afholdenhed';

  @override
  String get drinksPerWeekHint => 'f.eks. 12';

  @override
  String get quitReasonsHint => 'f.eks. Helbred, Familie, Penge';

  @override
  String get todaysPrompt => 'Dagens opfordring';

  @override
  String get defaultJournalPrompt => 'Hvad tænker du på i dag?';

  @override
  String get aiJournalInsights => 'AI-journalindsigter';

  @override
  String get unlockJournalInsightsMessage =>
      'Lås op for ugentlige mønstre, humørtrends og personlige indsigter fra dine journalnotater.';

  @override
  String get notEnoughJournalData =>
      'Ikke nok data endnu — skriv et par notater i denne uge og vend tilbage.';

  @override
  String get openEntry => 'Åbn';

  @override
  String get editEntry => 'Rediger';

  @override
  String get deleteEntry => 'Slet';

  @override
  String get searchJournalEntries => 'Søg i notater...';

  @override
  String get writeNewEntry => 'Skriv nyt notat';

  @override
  String get recentEntries => 'Seneste notater';

  @override
  String get noJournalEntriesYet =>
      'Ingen journalnotater endnu — skriv din første refleksion ovenfor.';

  @override
  String get noEntriesMatchFilters => 'Ingen notater matcher dine filtre.';

  @override
  String get weeklyJournalLimitReached => 'Ugentlig grænse nået';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Du har brugt alle $limit gratis journalnotater i denne uge. Opgrader til Premium for ubegrænsede notater.';
  }

  @override
  String get newEntry => 'Nyt notat';

  @override
  String get writeYourThoughts => 'Skriv dine tanker';

  @override
  String get saveEntry => 'Gem notat';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining af $limit gratis notater tilbage i denne uge';
  }

  @override
  String get deleteEntryQuestion => 'Slet notat?';

  @override
  String get deleteEntryConfirmation =>
      'Dette notat vil blive slettet permanent. Dette kan ikke fortrydes.';

  @override
  String get journalEntryNotFound => 'Notat ikke fundet';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Dette journalnotat kan være blevet slettet.';

  @override
  String get goBack => 'Gå tilbage';

  @override
  String get journalEntryTitle => 'Journalnotat';

  @override
  String get moodStruggling => 'Kæmper';

  @override
  String get moodUnwell => 'Skidt';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => 'Hvad skete der i dag?';

  @override
  String get trigger => 'Udløser';

  @override
  String get whatHelped => 'Hvad hjalp';

  @override
  String get whatIllTryNextTime => 'Hvad jeg vil prøve næste gang';

  @override
  String get journalPrivacyMessage =>
      'Din refleksion er privat og gemmes i din journal.';

  @override
  String get unlocked => 'Låst op';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage tilbage',
      one: '$count dag tilbage',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count Dage';
  }

  @override
  String get firstReflection => 'Første\nrefleksion';

  @override
  String get oneJournalEntry => '1 journalnotat';

  @override
  String get openBook => 'Åben bog';

  @override
  String get tenJournalEntries => '10 journalnotater';

  @override
  String get dedicatedWriter => 'Dedikeret\nskribent';

  @override
  String get thirtyJournalEntries => '30 journalnotater';

  @override
  String get firstConversation => 'Første\nsamtale';

  @override
  String get oneAiCoachChat => '1 AI-coach-chat';

  @override
  String get keepTalking => 'Bliv ved med at tale';

  @override
  String get fiveConversations => '5 samtaler';

  @override
  String get coachCompanion => 'Coach-\nledsager';

  @override
  String get twentyConversations => '20 samtaler';

  @override
  String get checkInHabit => 'Tjek-ind-\nvane';

  @override
  String get sevenCheckIns => '7 tjek-ind';

  @override
  String get consistencyPro => 'Konsistens-\nekspert';

  @override
  String get thirtyCheckIns => '30 tjek-ind';

  @override
  String get dedicatedJourney => 'Dedikeret\nrejse';

  @override
  String get hundredCheckIns => '100 tjek-ind';

  @override
  String get goalGetter => 'Målsøger';

  @override
  String get threeGoalsCompleted => '3 mål fuldført';

  @override
  String get goalAchiever => 'Mål-\nopnåer';

  @override
  String get tenGoalsCompleted => '10 mål fuldført';

  @override
  String get firstSavings => 'Første\nsparepenge';

  @override
  String get fiveHundredSaved => '\$500 sparret';

  @override
  String get smartSaver => 'Klog sparer';

  @override
  String get oneThousandSaved => '\$1.000 sparret';

  @override
  String get bigSaver => 'Stor sparer';

  @override
  String get fiveThousandSaved => '\$5.000 sparret';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current af \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current af $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Bliv ved — din første milepæl venter på dig!';

  @override
  String get badgesAndMilestones => 'Emblemer og milepæle';

  @override
  String get yourMilestoneJourney => 'Din milepælsrejse';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count milepæle opnået.\nTryk for at se',
      one: '$count milepæl opnået.\nTryk for at se',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Du har låst op for $unlocked af $total milepæle på din rejse.';
  }

  @override
  String get remaining => 'Resterende';

  @override
  String get complete => 'Fuldført';

  @override
  String get nextMilestone => 'Næste milepæl';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% derhenne';
  }

  @override
  String get sobrietyMilestones => 'Ædruelighedsmilepæle';

  @override
  String get journeyBadges => 'Rejseemblemer';

  @override
  String get bronze => 'BRONZE';

  @override
  String get silver => 'SØLV';

  @override
  String get gold => 'GULD';

  @override
  String get platinum => 'PLATIN';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Analyserer din rejse...';

  @override
  String get aiCreatingSanctuary => 'Vores AI opretter dit personlige fristed.';

  @override
  String get understandingHabits => 'Forstår vaner...';

  @override
  String get calculatingBaseline => 'Beregner dit udgangspunkt...';

  @override
  String get personalizingPlan => 'Tilpasser din plan...';

  @override
  String get finalizingSanctuary => 'Færdiggør dit fristed...';

  @override
  String get creatingYourPlan => 'Opretter din plan...';

  @override
  String get personalizedPlanError =>
      'Vi kunne ikke oprette din personlige plan. Prøv venligst igen.';

  @override
  String get retry => 'Prøv igen';

  @override
  String get breathInhale => 'INDÅND';

  @override
  String get breathHold => 'HOLD BOLDEN';

  @override
  String get breathExhale => 'UDÅND';

  @override
  String get breathDone => 'FÆRDIG';

  @override
  String get breathGreatJob => 'Godt gået!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessioner i dag',
      one: '$count session i dag',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Afslut øvelse';

  @override
  String get done => 'Færdig';

  @override
  String get noCopingTipsYet => 'Ingen mestringstips endnu';

  @override
  String get copingStrategiesWillAppear =>
      'Dine personlige mestringsstrategier vises her, når din restitutionsplan er færdiggenereret.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategier skræddersyet til dine udløsere';

  @override
  String get cravingsPeakAndPass => 'Trang topper\nog går over';

  @override
  String get rideTheWaveDescription =>
      'De fleste trangsfaser går over inden for 15 minutter. Du behøver ikke reagere på den — rid blot stormen af sammen med os.';

  @override
  String get stayWithIt => 'bliv ved';

  @override
  String get youMadeIt => 'du klarede det';

  @override
  String get readyWhenYouAre => 'klar når du er';

  @override
  String get rideItAgain => 'Prøv igen';

  @override
  String get start15MinuteTimer => 'Start 15-minutters timer';

  @override
  String get rideTheWaveCompletedMessage =>
      'Du red bølgen af. Det er sand styrke. 💪';

  @override
  String get myProgress => 'Mine fremskridt';

  @override
  String get weekLabel => 'Uge';

  @override
  String get monthLabel => 'Måned';

  @override
  String get allLabel => 'Alt';

  @override
  String get daysSoberStatLabel => 'Dage\nædru';

  @override
  String get savedStatLabel => 'Sparret';

  @override
  String get avoidedStatLabel => 'Undgået';

  @override
  String get moodTrends => 'Humørtrends';

  @override
  String get cravingsPattern => 'Trangmønster';

  @override
  String get unlockLabel => 'Lås op';

  @override
  String get unlockFullStats => 'Lås op for fuld statistik';

  @override
  String get premiumStatsMessage =>
      'Humørtrends og trangmønstre er Premium-funktioner. Opgrader for at se din fulde statistik.';

  @override
  String get healthMilestonesWillAppear => 'Dine sundhedsmilepæle vises her.';

  @override
  String get healthMilestones => 'Sundhedsmilepæle';

  @override
  String dayNumber(int day) {
    return 'Dag $day';
  }

  @override
  String get soberLabel => 'Ædru';

  @override
  String get slipLabel => 'Smutter';

  @override
  String get noDataLabel => 'Ingen data';

  @override
  String get milestone24Hours => '24 timer';

  @override
  String get milestoneOneWeek => 'Én uge';

  @override
  String get milestoneOneMonth => 'Én måned';

  @override
  String get milestoneThreeMonths => 'Tre måneder';

  @override
  String get milestoneSixMonths => 'Seks måneder';

  @override
  String get milestoneOneYear => 'Et år';

  @override
  String milestoneDayCount(int day) {
    return 'Dag $day milepæl';
  }

  @override
  String get maybeLaterLabel => 'Måske senere';

  @override
  String get cancelLabel => 'Annuller';
}
