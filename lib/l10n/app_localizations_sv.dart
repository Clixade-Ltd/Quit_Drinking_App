// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get skip => 'Hoppa över';

  @override
  String get continueButton => 'Fortsätt';

  @override
  String get getStarted => 'Kom igång';

  @override
  String get onboardingTitle1 => 'Ta kontroll över ditt liv';

  @override
  String get onboardingSubtitle1 =>
      'Följ din resa, fira varje framsteg och bli friskare en dag i taget.';

  @override
  String get onboardingTitle2 =>
      'Din AI-följeslagare på vägen mot återhämtning';

  @override
  String get onboardingSubtitle2 =>
      'Få personlig vägledning, hälsosamma vanor, motivationspåminnelser och framstegsrapporter anpassade efter din resa.';

  @override
  String get goodMorning => 'God morgon';

  @override
  String get goodAfternoon => 'God eftermiddag';

  @override
  String get goodEvening => 'God kväll';

  @override
  String get goodNight => 'God natt';

  @override
  String get embracingClarity => 'Omfamna klarheten, en dag i taget.';

  @override
  String get streakLabel => 'SVIT';

  @override
  String get goalLabel => 'Mål';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premiumplan';

  @override
  String get premiumPlanSubtitle => 'Lås upp hela din återhämtningsupplevelse';

  @override
  String get accountAndSupport => 'KONTO OCH SUPPORT';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get privacyPolicySubtitle => 'Hantera datadelning och kontosäkerhet';

  @override
  String get termsOfService => 'Användarvillkor';

  @override
  String get termsOfServiceSubtitle =>
      'Vanliga frågor, kontakta oss och resurser';

  @override
  String get shareApp => 'Dela appen';

  @override
  String get shareAppSubtitle => 'Dela appen med dina vänner';

  @override
  String get resetData => 'Återställ data';

  @override
  String get resetDataSubtitle => 'Radera allt som sparats på den här enheten';

  @override
  String get resetAllDataTitle => 'Återställa all data?';

  @override
  String get resetAllDataMessage =>
      'Detta raderar allt som sparats på den här enheten — profil, journalanteckningar och framsteg — och kan inte ångras.';

  @override
  String get cancel => 'Avbryt';

  @override
  String get reset => 'Återställ';

  @override
  String get chooseFromGallery => 'Välj från galleriet';

  @override
  String get takePhoto => 'Ta foto';

  @override
  String get removePhoto => 'Ta bort foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Kunde inte uppdatera fotot: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Kunde inte ta bort fotot: $error';
  }

  @override
  String get photoTooLarge =>
      'Fotot är för stort även efter komprimering — försök med ett annat.';

  @override
  String get unableToLoadProfile => 'Kunde inte läsa in din profil';

  @override
  String get pleaseTryAgain => 'Försök igen.';

  @override
  String get tryAgain => 'Försök igen';

  @override
  String get profileNotFound => 'Profilen hittades inte';

  @override
  String get refresh => 'Uppdatera';

  @override
  String get noProfileDataFound =>
      'Ingen profildata har hittats på den här enheten ännu.';

  @override
  String couldNotResetData(String error) {
    return 'Kunde inte återställa data: $error';
  }

  @override
  String get navHome => 'Hem';

  @override
  String get navStats => 'Statistik';

  @override
  String get navJournal => 'Journal';

  @override
  String get navBadges => 'Märken';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature blir tillgänglig snart.';
  }

  @override
  String get appWordmark => 'VÄLMÅENDE';

  @override
  String get appTitle => 'Sluta dricka';

  @override
  String get splashSubtitle => 'Ta det första steget mot ett\nliv utan alkohol';

  @override
  String get preparingJourney => 'Förbereder din\nresa';

  @override
  String get taskMorningMeditation => 'Morgonmeditation (10 min)';

  @override
  String get taskReadChapter => 'Läs kapitel 4 av \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Kvällsjournal med tacksamhet';

  @override
  String get close => 'Stäng';

  @override
  String get youAreDoingGreat => 'Du gör ett fantastiskt jobb!';

  @override
  String get shareMilestone => 'Dela milstolpe';

  @override
  String shareMilestoneMessage(int days) {
    return 'Jag är på dag $days av min återhämtningsresa! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Min återhämtningsmilstolpe';

  @override
  String get weeklyReportReadyTitle => 'Din veckorapport är klar';

  @override
  String get weeklyReportReadySubtitle => 'Tryck för att se hur din vecka gick';

  @override
  String get howAreYouFeeling => 'Hur mår du?';

  @override
  String get moodTough => 'Tufft';

  @override
  String get moodOkay => 'Okej';

  @override
  String get moodGood => 'Bra';

  @override
  String get moneySaved => 'Sparade pengar';

  @override
  String get caloriesSaved => 'Sparade kalorier';

  @override
  String get healthScore => 'Hälsopoäng';

  @override
  String get drinksAvoided => 'Undvikna drycker';

  @override
  String get estimated => 'Beräknat';

  @override
  String get aiGenerated => 'AI-genererat';

  @override
  String get daysCapsLabel => 'DAGAR';

  @override
  String get todaysMotivation => 'Dagens motivation';

  @override
  String get defaultMotivationQuote =>
      'Du har hållit fast vid ditt åtagande. Fortsätt rida på vågen av positiv förändring.';

  @override
  String get talkToCoach => 'Prata med coachen';

  @override
  String get havingACraving => 'Jag har ett sug';

  @override
  String get unlockWeeklyReportsTitle => 'Lås upp veckorapporter';

  @override
  String get unlockWeeklyReportsMessage =>
      'Se dina dagar utan alkohol, humörtrender och personlig AI-feedback varje vecka. Uppgradera till Premium för att låsa upp.';

  @override
  String get maybeLater => 'Kanske senare';

  @override
  String get upgrade => 'Uppgradera';

  @override
  String get weeklyReportTitle => 'Veckorapport';

  @override
  String get weeklyReportsPremiumTitle =>
      'Veckorapporter är en Premium-funktion';

  @override
  String get weeklyReportsPremiumMessage =>
      'Se dina dagar utan alkohol, humörtrender, sug och personlig AI-feedback varje vecka.';

  @override
  String get upgradeToPremium => 'Uppgradera till Premium';

  @override
  String get couldNotGenerateReport => 'Kunde inte skapa din rapport just nu.';

  @override
  String get tryAgainLower => 'Försök igen';

  @override
  String get statSoberDays => 'Dagar utan alkohol';

  @override
  String get statAvgMood => 'Genomsnittligt humör';

  @override
  String get statCravings => 'Sug';

  @override
  String get statMoneySaved => 'Sparade pengar';

  @override
  String get coachFeedback => 'Feedback från coachen';

  @override
  String get journalInsights => 'Journalinsikter';

  @override
  String get next => 'Nästa';

  @override
  String get question1Title => 'Vad är ditt mål';

  @override
  String get question1Subtitle => 'Välj det mål som betyder\nmest för dig';

  @override
  String get goalQuitCompletely => 'Sluta helt';

  @override
  String get goalReduceDrinking => 'Minska drickandet';

  @override
  String get goalTakeABreak => 'Ta en paus';

  @override
  String get goalBuildHealthierHabits => 'Skapa hälsosammare vanor';

  @override
  String get question3Title => 'Berätta om din\nrutin';

  @override
  String get drinksPerWeek => 'Drycker per vecka';

  @override
  String get moneySpentPerWeek => 'Pengar spenderade per vecka';

  @override
  String get drinkingLevel => 'Drickandenivå';

  @override
  String get triggersLabel => 'Utlösare';

  @override
  String get levelSocial => 'Socialt';

  @override
  String get levelRegular => 'Regelbundet';

  @override
  String get levelHeavy => 'Mycket';

  @override
  String get levelDependent => 'Beroende';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Ensamhet';

  @override
  String get triggerHabit => 'Vana';

  @override
  String get triggerSadness => 'Sorg';

  @override
  String get triggerAnger => 'Ilska';

  @override
  String get triggerBoredom => 'Uttråkning';

  @override
  String get triggerSocialPressure => 'Social press';

  @override
  String get triggerCelebration => 'Firande';

  @override
  String get triggerSleepProblems => 'Sömnproblem';

  @override
  String get triggerWorkPressure => 'Arbetspress';

  @override
  String get question4Title => 'Varför vill du förändras?';

  @override
  String get question4Subtitle =>
      'Din anledning hjälper dig att hålla motivationen uppe.';

  @override
  String get reasonImproveHealth => 'Förbättra min hälsa';

  @override
  String get reasonSaveMoney => 'Spara pengar';

  @override
  String get reasonFamily => 'Familj';

  @override
  String get reasonBetterSleep => 'Bättre sömn';

  @override
  String get reasonMentalClarity => 'Mental klarhet';

  @override
  String get reasonFitness => 'Kondition';

  @override
  String get reasonSelfRespect => 'Självrespekt';

  @override
  String get reasonCareer => 'Karriär';

  @override
  String get milestoneUnlockedLabel => 'MILSTOLPE UPPLÅST';

  @override
  String incredibleNamePrefix(String name) {
    return 'Fantastiskt, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount sparat';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count undvikna';
  }

  @override
  String get shareMyMilestone => 'Dela min milstolpe';

  @override
  String get milestoneImageShareError =>
      'Kunde inte skapa milstolpebilden. Försök igen.';

  @override
  String get dailyCheckInTitle => 'Daglig avstämning';

  @override
  String get howAreYouFeelingToday => 'Hur mår du idag?';

  @override
  String get honestAnswerHelp =>
      'Ditt ärliga svar hjälper oss att stötta dig bättre';

  @override
  String get didYouDrinkToday => 'Drack du idag?';

  @override
  String get noLabel => 'Nej';

  @override
  String get yesLabel => 'Ja';

  @override
  String get cravingLevelNow => 'Hur starkt är suget just nu?';

  @override
  String get anythingOnMind => 'Är det något du tänker på?';

  @override
  String get optionalLabel => '(valfritt)';

  @override
  String get dailyNoteHint => 'Skriv om din dag, utlösare, framgångar...';

  @override
  String get alreadyCheckedInToday => 'Du har redan gjort dagens avstämning';

  @override
  String get saveCheckIn => 'Spara avstämning';

  @override
  String get checkInsHelpTrack =>
      'Avstämningar hjälper dig att följa dina framsteg över tid';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Du har redan genomfört dagens avstämning.';

  @override
  String get pleaseAnswerBothQuestions => 'Besvara båda frågorna ovan först';

  @override
  String get checkInSaved => 'Avstämning sparad';

  @override
  String get cravingNone => 'Inget';

  @override
  String get cravingLow => 'Lågt';

  @override
  String get cravingMedium => 'Medel';

  @override
  String get cravingStrong => 'Starkt';

  @override
  String get moodBad => 'Dåligt';

  @override
  String get moodLow => 'Lågt';

  @override
  String get moodGreat => 'Fantastiskt';

  @override
  String get sosSupportTitle => 'SOS-support';

  @override
  String notAloneMessage(String name) {
    return 'Du är inte ensam, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Sug går över. Välj något nedan som kan hjälpa dig genom den här stunden.';

  @override
  String get breathingExercise => 'Andningsövning';

  @override
  String get breathingExerciseSubtitle => 'Guidad 4-7-8-teknik, 2 minuter';

  @override
  String get rideTheWave => 'Rid ut vågen';

  @override
  String get rideTheWaveSubtitle => '15 minuters timer — sug går alltid över';

  @override
  String get copingTips => 'Hanteringstips';

  @override
  String get copingTipsSubtitle => 'Personliga strategier för dina utlösare';

  @override
  String get talkToAiCoach => 'Prata med AI-coachen';

  @override
  String get talkToAiCoachSubtitle =>
      'Chatta med din återhämtningsföljeslagare';

  @override
  String get callSomeone => 'Ring någon';

  @override
  String get callSomeoneSubtitle => 'Kontakta din betrodda kontakt';

  @override
  String get contactsPermissionNeeded =>
      'Kontaktbehörighet krävs för att ringa en kontakt.';

  @override
  String get beatenCravingsPrefix => 'Du har stått emot sug ';

  @override
  String beatenCravingsCount(int count) {
    return '$count gånger';
  }

  @override
  String get beatenCravingsSuffix => ' tidigare. Du kan göra det igen.';

  @override
  String get tellUsAboutYourself => 'Berätta om dig själv';

  @override
  String get detailsSubtitle =>
      'Den här informationen hjälper oss att anpassa din återhämtningsresa och ge korrekta insikter.';

  @override
  String get nameLabel => 'Namn';

  @override
  String get nameHint => 't.ex. Alex Rivers';

  @override
  String get ageLabel => 'Ålder';

  @override
  String get ageHint => 't.ex. 32';

  @override
  String get sexAssignedAtBirth => 'Kön vid födseln';

  @override
  String get sexFemale => 'Kvinna';

  @override
  String get sexMale => 'Man';

  @override
  String get heightLabel => 'Längd';

  @override
  String get weightLabel => 'Vikt';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Daglig gräns nådd';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Du har använt alla $limit kostnadsfria meddelanden idag. Uppgradera till Premium för obegränsad coachchatt.';
  }

  @override
  String get coachConnectError =>
      'Jag kunde inte ansluta just nu. Försök igen om en stund.';

  @override
  String get clearConversationTitle => 'Rensa konversation?';

  @override
  String get clearConversationMessage =>
      'Detta tar permanent bort din chatthistorik med coachen.';

  @override
  String get clearLabel => 'Rensa';

  @override
  String get recoveryCoachTitle => 'Återhämtningscoach';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Rensa konversation';

  @override
  String chatGreeting(String name) {
    return 'Hej $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Du är på dag $days av din resa. Jag finns här när du vill prata igenom saker.';
  }

  @override
  String get quickPromptsLabel => 'SNABBVAL';

  @override
  String get promptCravingLabel => 'Har ett sug';

  @override
  String get promptCravingSubtitle => 'Hitta lugnet, snabbt';

  @override
  String get promptMotivationLabel => 'Behöver motivation';

  @override
  String get promptMotivationSubtitle => 'En boost när det känns tufft';

  @override
  String get promptSocialLabel => 'Social situation';

  @override
  String get promptSocialSubtitle => 'Hantera en sammankomst';

  @override
  String get promptSlippedLabel => 'Jag föll dit';

  @override
  String get promptSlippedSubtitle => 'Ingen dömer dig, bara stöd';

  @override
  String get typeMessageHint => 'Skriv ett meddelande...';

  @override
  String get editProfileTitle => 'Redigera profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Kunde inte spara profilen: $error';
  }

  @override
  String get heightCmLabel => 'Längd (cm)';

  @override
  String get weightKgLabel => 'Vikt (kg)';

  @override
  String get saveChangesLabel => 'Spara ändringar';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Avancerade insikter och analyser';

  @override
  String get featureUnlimitedJournal => 'Obegränsade journalanteckningar';

  @override
  String get featureUnlimitedChat => 'Obegränsad chatt med AI-coach';

  @override
  String get featureCommunityGroups => 'Exklusiva communitygrupper';

  @override
  String get featurePrioritySupport => 'Prioriterad expertsupport';

  @override
  String get featureThemePacks => 'Anpassade temapaket';

  @override
  String get featureDataExport => 'Dataexport';

  @override
  String get featureAdFree => 'Reklamfri upplevelse';

  @override
  String get premiumMemberTitle => 'Du är Premium-medlem';

  @override
  String get unlockFullRecoveryTitle =>
      'Lås upp hela din\nåterhämtningsupplevelse';

  @override
  String get premiumMemberSubtitle =>
      'Tack för att du stödjer din återhämtningsresa — alla premiumfunktioner nedan är upplåsta.';

  @override
  String get premiumJoinSubtitle =>
      'Gå med i en gemenskap av tusentals som\npåskyndar sin återhämtningsresa med våra\npremiumverktyg och personliga stöd.';

  @override
  String get monthlyPlanLabel => 'Månadsvis';

  @override
  String get perMonthSuffix => '/mån';

  @override
  String get cancelAnytimeLabel => 'Avsluta när som helst';

  @override
  String get yearlyPlanLabel => 'Årsvis';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Debiteras årligen med $amount';
  }

  @override
  String get bestValueLabel => 'Bäst värde';

  @override
  String get alreadyPremiumLabel => 'Du är Premium ✓';

  @override
  String get startPremiumLabel => 'Starta Premium';

  @override
  String get manageSubscriptionLabel =>
      'Hantera eller avsluta från enhetens prenumerationsinställningar.';

  @override
  String get noCommitmentLabel => 'Ingen bindningstid. Avsluta när som helst.';

  @override
  String get continueFreePlanLabel => 'Fortsätt med gratisplanen';

  @override
  String get backToHomeLabel => 'Tillbaka till hem';

  @override
  String get cancelPremiumLabel => 'Avsluta Premium';

  @override
  String get cancelPremiumTitle => 'Avsluta Premium?';

  @override
  String get cancelPremiumMessage =>
      'Du förlorar tillgång till obegränsade journalanteckningar, obegränsad coachchatt, statistikinsikter och veckorapporter. Du kan prenumerera igen när som helst.';

  @override
  String get keepPremiumLabel => 'Behåll Premium';

  @override
  String get nowPremiumMessage =>
      'Du är nu Premium! Njut av hela din återhämtningsupplevelse.';

  @override
  String get premiumCancelledMessage =>
      'Premium avslutat. Du är tillbaka på gratisplanen.';

  @override
  String get termsOfUseLabel => 'Användarvillkor';

  @override
  String get navHomeLabel => 'Hem';

  @override
  String get navStatsLabel => 'Statistik';

  @override
  String get navJournalLabel => 'Journal';

  @override
  String get navBadgesLabel => 'Märken';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Återhämtningsmål';

  @override
  String get drinksPerWeekLabel => 'Drycker per vecka';

  @override
  String get quitReasonsLabel => 'Anledningar till att sluta';

  @override
  String get quitReasonsHelperText =>
      'Separera flera anledningar med ett kommatecken.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Kunde inte spara återhämtningsmål: $error';
  }

  @override
  String get goalHint => 't.ex. Fullständig avhållsamhet';

  @override
  String get drinksPerWeekHint => 't.ex. 12';

  @override
  String get quitReasonsHint => 't.ex. Hälsa, Familj, Pengar';

  @override
  String get todaysPrompt => 'Dagens fråga';

  @override
  String get defaultJournalPrompt => 'Vad tänker du på idag?';

  @override
  String get aiJournalInsights => 'AI-insikter från journalen';

  @override
  String get unlockJournalInsightsMessage =>
      'Lås upp veckomönster, humörtrender och personliga insikter från dina journalanteckningar.';

  @override
  String get notEnoughJournalData =>
      'Inte tillräckligt med data ännu — skriv några anteckningar den här veckan och kom tillbaka.';

  @override
  String get openEntry => 'Öppna';

  @override
  String get editEntry => 'Redigera';

  @override
  String get deleteEntry => 'Ta bort';

  @override
  String get searchJournalEntries => 'Sök bland anteckningar...';

  @override
  String get writeNewEntry => 'Skriv en ny anteckning';

  @override
  String get recentEntries => 'Senaste anteckningar';

  @override
  String get noJournalEntriesYet =>
      'Inga journalanteckningar ännu — skriv din första reflektion ovan.';

  @override
  String get noEntriesMatchFilters => 'Inga anteckningar matchar dina filter.';

  @override
  String get weeklyJournalLimitReached => 'Veckogränsen nådd';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Du har använt alla $limit kostnadsfria journalanteckningar den här veckan. Uppgradera till Premium för obegränsade anteckningar.';
  }

  @override
  String get newEntry => 'Ny anteckning';

  @override
  String get writeYourThoughts => 'Skriv dina tankar';

  @override
  String get saveEntry => 'Spara anteckning';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining av $limit kostnadsfria anteckningar kvar den här veckan';
  }

  @override
  String get deleteEntryQuestion => 'Ta bort anteckning?';

  @override
  String get deleteEntryConfirmation =>
      'Den här anteckningen kommer att raderas permanent. Detta kan inte ångras.';

  @override
  String get journalEntryNotFound => 'Anteckningen hittades inte';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Den här journalanteckningen kan ha tagits bort.';

  @override
  String get goBack => 'Gå tillbaka';

  @override
  String get journalEntryTitle => 'Journalanteckning';

  @override
  String get moodStruggling => 'Kämpar';

  @override
  String get moodUnwell => 'Mår dåligt';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => 'Vad hände idag?';

  @override
  String get trigger => 'Utlösare';

  @override
  String get whatHelped => 'Vad hjälpte';

  @override
  String get whatIllTryNextTime => 'Vad jag ska försöka nästa gång';

  @override
  String get journalPrivacyMessage =>
      'Din reflektion är privat och sparas i din journal.';

  @override
  String get unlocked => 'Upplåst';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ar',
      one: '',
    );
    return '$count dag$_temp0 kvar';
  }

  @override
  String daysCount(int count) {
    return '$count dagar';
  }

  @override
  String get firstReflection => 'Första\nreflektionen';

  @override
  String get oneJournalEntry => '1 journalanteckning';

  @override
  String get openBook => 'Öppna boken';

  @override
  String get tenJournalEntries => '10 journalanteckningar';

  @override
  String get dedicatedWriter => 'Engagerad\nskribent';

  @override
  String get thirtyJournalEntries => '30 journalanteckningar';

  @override
  String get firstConversation => 'Första\nkonversationen';

  @override
  String get oneAiCoachChat => '1 AI-coachchatt';

  @override
  String get keepTalking => 'Fortsätt prata';

  @override
  String get fiveConversations => '5 konversationer';

  @override
  String get coachCompanion => 'Coach-\nföljeslagare';

  @override
  String get twentyConversations => '20 konversationer';

  @override
  String get checkInHabit => 'Avstämnings-\nvana';

  @override
  String get sevenCheckIns => '7 avstämningar';

  @override
  String get consistencyPro => 'Konsekvens-\nproffs';

  @override
  String get thirtyCheckIns => '30 avstämningar';

  @override
  String get dedicatedJourney => 'Engagerad\nresa';

  @override
  String get hundredCheckIns => '100 avstämningar';

  @override
  String get goalGetter => 'Måldrivare';

  @override
  String get threeGoalsCompleted => '3 mål slutförda';

  @override
  String get goalAchiever => 'Mål-\nuppnåare';

  @override
  String get tenGoalsCompleted => '10 mål slutförda';

  @override
  String get firstSavings => 'Första\nbesparingen';

  @override
  String get fiveHundredSaved => '\$500 sparat';

  @override
  String get smartSaver => 'Smart sparare';

  @override
  String get oneThousandSaved => '\$1 000 sparat';

  @override
  String get bigSaver => 'Stor sparare';

  @override
  String get fiveThousandSaved => '\$5 000 sparat';

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
      'Fortsätt — din första milstolpe väntar på dig!';

  @override
  String get badgesAndMilestones => 'Märken och milstolpar';

  @override
  String get yourMilestoneJourney => 'Din milstolpsresa';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'r',
      one: '',
    );
    return '$count milstolpe$_temp0 uppnådd.\nTryck för att visa';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Du har låst upp $unlocked av $total milstolpar på din resa.';
  }

  @override
  String get remaining => 'Återstår';

  @override
  String get complete => 'Slutför';

  @override
  String get nextMilestone => 'Nästa milstolpe';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% klart';
  }

  @override
  String get sobrietyMilestones => 'Milstolpar utan alkohol';

  @override
  String get journeyBadges => 'Resemärken';

  @override
  String get bronze => 'BRONS';

  @override
  String get silver => 'SILVER';

  @override
  String get gold => 'GULD';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Analyserar din resa...';

  @override
  String get aiCreatingSanctuary => 'Vår AI skapar din personliga fristad.';

  @override
  String get understandingHabits => 'Förstår vanor...';

  @override
  String get calculatingBaseline => 'Beräknar din baslinje...';

  @override
  String get personalizingPlan => 'Anpassar din plan...';

  @override
  String get finalizingSanctuary => 'Slutför din fristad...';

  @override
  String get creatingYourPlan => 'Skapar din plan...';

  @override
  String get personalizedPlanError =>
      'Vi kunde inte skapa din personliga plan. Försök igen.';

  @override
  String get retry => 'Försök igen';

  @override
  String get breathInhale => 'ANDAS IN';

  @override
  String get breathHold => 'HÅLL';

  @override
  String get breathExhale => 'ANDAS UT';

  @override
  String get breathDone => 'KLAR';

  @override
  String get breathGreatJob => 'Bra jobbat!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessioner idag',
      one: '$count session idag',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Avsluta övningen';

  @override
  String get done => 'Klar';

  @override
  String get noCopingTipsYet => 'Inga hanteringstips ännu';

  @override
  String get copingStrategiesWillAppear =>
      'Dina personliga hanteringsstrategier visas här när din återhämtningsplan har skapats.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategier anpassade efter dina utlösare';

  @override
  String get cravingsPeakAndPass => 'Sug når sin topp\noch går över';

  @override
  String get rideTheWaveDescription =>
      'De flesta sug går över inom 15 minuter. Du behöver inte agera på det — rid bara ut det tillsammans med oss.';

  @override
  String get stayWithIt => 'håll ut';

  @override
  String get youMadeIt => 'du klarade det';

  @override
  String get readyWhenYouAre => 'redo när du är';

  @override
  String get rideItAgain => 'Rid ut den igen';

  @override
  String get start15MinuteTimer => 'Starta 15-minuterstimer';

  @override
  String get rideTheWaveCompletedMessage =>
      'Du red ut vågen. Det är verklig styrka. 💪';

  @override
  String get myProgress => 'Mina framsteg';

  @override
  String get weekLabel => 'Vecka';

  @override
  String get monthLabel => 'Månad';

  @override
  String get allLabel => 'Alla';

  @override
  String get daysSoberStatLabel => 'Dagar\nutan alkohol';

  @override
  String get savedStatLabel => 'Sparat';

  @override
  String get avoidedStatLabel => 'Undvikna';

  @override
  String get moodTrends => 'Humörtrender';

  @override
  String get cravingsPattern => 'Sugmönster';

  @override
  String get unlockLabel => 'Lås upp';

  @override
  String get unlockFullStats => 'Lås upp full statistik';

  @override
  String get premiumStatsMessage =>
      'Humörtrender och sugmönster är Premium-funktioner. Uppgradera för att se fullständig statistik.';

  @override
  String get healthMilestonesWillAppear => 'Dina hälsomilstolpar visas här.';

  @override
  String get healthMilestones => 'Hälsomilstolpar';

  @override
  String dayNumber(int day) {
    return 'Dag $day';
  }

  @override
  String get soberLabel => 'Utan alkohol';

  @override
  String get slipLabel => 'Återfall';

  @override
  String get noDataLabel => 'Ingen data';

  @override
  String get milestone24Hours => '24 timmar';

  @override
  String get milestoneOneWeek => 'En vecka';

  @override
  String get milestoneOneMonth => 'En månad';

  @override
  String get milestoneThreeMonths => 'Tre månader';

  @override
  String get milestoneSixMonths => 'Sex månader';

  @override
  String get milestoneOneYear => 'Ett år';

  @override
  String milestoneDayCount(int day) {
    return 'Dag $day-milstolpe';
  }

  @override
  String get maybeLaterLabel => 'Kanske senare';

  @override
  String get cancelLabel => 'Avbryt';
}
