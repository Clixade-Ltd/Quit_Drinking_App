// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get skip => 'Slaan oor';

  @override
  String get continueButton => 'Gaan voort';

  @override
  String get getStarted => 'Begin';

  @override
  String get onboardingTitle1 => 'Neem Beheer van Jou Lewe';

  @override
  String get onboardingSubtitle1 =>
      'Joon jou reis, vier elke prestasie en word gesonder, een dag op \'n slag.';

  @override
  String get onboardingTitle2 => 'Jou KI-Herstelmetgesel';

  @override
  String get onboardingSubtitle2 =>
      'Ontvang gepersonaliseerde leiding, gesonde gewoontes, motiveringsherinneringe en vorderingsverslae wat om jou reis ontwerp is.';

  @override
  String get goodMorning => 'Goeiemôre';

  @override
  String get goodAfternoon => 'Goeiemiddag';

  @override
  String get goodEvening => 'Goeienaand';

  @override
  String get goodNight => 'Goeienag';

  @override
  String get embracingClarity => 'Omhels helderheid, een dag op \'n slag.';

  @override
  String get streakLabel => 'REEKS';

  @override
  String get goalLabel => 'Doel';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Dae',
      one: '$count Dag',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium-plan';

  @override
  String get premiumPlanSubtitle => 'Ontsluit jou volle herstelervaring';

  @override
  String get accountAndSupport => 'REKENING EN ONDERSTEUNING';

  @override
  String get privacyPolicy => 'Privaatheidsbeleid';

  @override
  String get privacyPolicySubtitle =>
      'Bestuur datadeling en rekeningsekuriteit';

  @override
  String get termsOfService => 'Diensvoorwaardes';

  @override
  String get termsOfServiceSubtitle =>
      'Gereelde vrae, kontak ons en hulpbronne';

  @override
  String get shareApp => 'Deel toep';

  @override
  String get shareAppSubtitle => 'Deel toep met jou vriende';

  @override
  String get resetData => 'Herstel data';

  @override
  String get resetDataSubtitle =>
      'Vee alles uit wat op hierdie toestel gestoor is';

  @override
  String get resetAllDataTitle => 'Herstel alle data?';

  @override
  String get resetAllDataMessage =>
      'Dit vee alles uit wat op hierdie toestel gestoor is — profiel, joernaalinskrywings en vordering — en kan nie ongedoen gemaak word nie.';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get reset => 'Herstel';

  @override
  String get chooseFromGallery => 'Kies uit gallery';

  @override
  String get takePhoto => 'Neem foto';

  @override
  String get removePhoto => 'Verwyder foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Kon nie foto opdateer nie: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Kon nie foto verwyder nie: $error';
  }

  @override
  String get photoTooLarge =>
      'Daardie foto is selfs ná kompressie te groot — probeer asseblief \'n ander een.';

  @override
  String get unableToLoadProfile => 'Kan nie jou profiel laai nie';

  @override
  String get pleaseTryAgain => 'Probeer asseblief weer.';

  @override
  String get tryAgain => 'Probeer weer';

  @override
  String get profileNotFound => 'Profiel nie gevind nie';

  @override
  String get refresh => 'Verfris';

  @override
  String get noProfileDataFound =>
      'Nog geen profieldata op hierdie toestel gevind nie.';

  @override
  String couldNotResetData(String error) {
    return 'Kon nie data herstel nie: $error';
  }

  @override
  String get navHome => 'Tuis';

  @override
  String get navStats => 'Statistiek';

  @override
  String get navJournal => 'Joernaal';

  @override
  String get navBadges => 'Kentekens';

  @override
  String get navProfile => 'Profiel';

  @override
  String featureComingSoon(String feature) {
    return '$feature sal binnekort beskikbaar wees.';
  }

  @override
  String get appWordmark => 'WELSYN';

  @override
  String get appTitle => 'Hou op drink';

  @override
  String get splashSubtitle => 'Neem die eerste stap na \'n\nalkoholvrye lewe';

  @override
  String get preparingJourney => 'Berei jou\nreis voor';

  @override
  String get taskMorningMeditation => 'Oggendmeditasie (10m)';

  @override
  String get taskReadChapter => 'Lees Hoofstuk 4 van \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Aanddankbaarheidsjoernaal';

  @override
  String get close => 'Sluit';

  @override
  String get youAreDoingGreat => 'Jy vaar uitstekend!';

  @override
  String get shareMilestone => 'Deel mylpaal';

  @override
  String shareMilestoneMessage(int days) {
    return 'Ek is op dag $days van my herstelreis! 💪';
  }

  @override
  String get shareMilestoneSubject => 'My herstelmylpaal';

  @override
  String get weeklyReportReadyTitle => 'Jou weeklikse verslag is gereed';

  @override
  String get weeklyReportReadySubtitle =>
      'Tik om te sien hoe jou week verloop het';

  @override
  String get howAreYouFeeling => 'Hoe voel jy?';

  @override
  String get moodTough => 'Moeilik';

  @override
  String get moodOkay => 'Oraait';

  @override
  String get moodGood => 'Goed';

  @override
  String get moneySaved => 'Geld gespaar';

  @override
  String get caloriesSaved => 'Kalorieë gespaar';

  @override
  String get healthScore => 'Gesondheidstelling';

  @override
  String get drinksAvoided => 'Drankies vermy';

  @override
  String get estimated => 'Beraamd';

  @override
  String get aiGenerated => 'KI-gegenereer';

  @override
  String get daysCapsLabel => 'DAE';

  @override
  String get todaysMotivation => 'Vandag se motivering';

  @override
  String get defaultMotivationQuote =>
      'Jy het jou verbintenis suksesvol gehandhaaf. Hou aan om die golwe van positiewe verandering te ry.';

  @override
  String get talkToCoach => 'Praat met afrigter';

  @override
  String get havingACraving => 'Ek het \'n drang';

  @override
  String get unlockWeeklyReportsTitle => 'Ontsluit weeklikse verslae';

  @override
  String get unlockWeeklyReportsMessage =>
      'Sien jou sober dae, neigings in bui en gepersonaliseerde KI-terugvoer elke week. Gradeer op na Premium om te ontsluit.';

  @override
  String get maybeLater => 'Miskien later';

  @override
  String get upgrade => 'Gradeer op';

  @override
  String get weeklyReportTitle => 'Weeklikse verslag';

  @override
  String get weeklyReportsPremiumTitle =>
      'Weeklikse verslae is \'n Premium-funksie';

  @override
  String get weeklyReportsPremiumMessage =>
      'Sien jou sober dae, neigings in bui, drange en gepersonaliseerde KI-terugvoer elke week.';

  @override
  String get upgradeToPremium => 'Gradeer op na Premium';

  @override
  String get couldNotGenerateReport => 'Kon nie jou verslag nou genereer nie.';

  @override
  String get tryAgainLower => 'Probeer weer';

  @override
  String get statSoberDays => 'Sober dae';

  @override
  String get statAvgMood => 'Gem. bui';

  @override
  String get statCravings => 'Drange';

  @override
  String get statMoneySaved => 'Geld gespaar';

  @override
  String get coachFeedback => 'Afrigterterugvoer';

  @override
  String get journalInsights => 'Joernaalinsigte';

  @override
  String get next => 'Volgende';

  @override
  String get question1Title => 'Wat is jou doel';

  @override
  String get question1Subtitle =>
      'Kies die doel wat vir jou\ndie belangrikste is';

  @override
  String get goalQuitCompletely => 'Hou heeltemal op';

  @override
  String get goalReduceDrinking => 'Verminder drinkgewoontes';

  @override
  String get goalTakeABreak => 'Neem \'n breek';

  @override
  String get goalBuildHealthierHabits => 'Bou gesonder gewoontes';

  @override
  String get question3Title => 'Vertel ons van jou\nrutine';

  @override
  String get drinksPerWeek => 'Drankies per week';

  @override
  String get moneySpentPerWeek => 'Geld bestee per week';

  @override
  String get drinkingLevel => 'Drinkvlak';

  @override
  String get triggersLabel => 'Snellers';

  @override
  String get levelSocial => 'Sosiaal';

  @override
  String get levelRegular => 'Gereeld';

  @override
  String get levelHeavy => 'Swaar';

  @override
  String get levelDependent => 'Afhanklik';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Eensaamheid';

  @override
  String get triggerHabit => 'Gewoonte';

  @override
  String get triggerSadness => 'Hartseer';

  @override
  String get triggerAnger => 'Woede';

  @override
  String get triggerBoredom => 'Sinteloosheid';

  @override
  String get triggerSocialPressure => 'Sosiale druk';

  @override
  String get triggerCelebration => 'Viering';

  @override
  String get triggerSleepProblems => 'Slaapprobleme';

  @override
  String get triggerWorkPressure => 'Werkdruk';

  @override
  String get question4Title => 'Hoekom wil jy verander?';

  @override
  String get question4Subtitle => 'Jou rede sal help om jou te motiveer.';

  @override
  String get reasonImproveHealth => 'Verbeter my gesondheid';

  @override
  String get reasonSaveMoney => 'Spaar geld';

  @override
  String get reasonFamily => 'Familie';

  @override
  String get reasonBetterSleep => 'Beter slaap';

  @override
  String get reasonMentalClarity => 'Geestelike helderheid';

  @override
  String get reasonFitness => 'Fiksheid';

  @override
  String get reasonSelfRespect => 'Selfrespek';

  @override
  String get reasonCareer => 'Loopbaan';

  @override
  String get milestoneUnlockedLabel => 'MYLPAAL ONTSLUIT';

  @override
  String incredibleNamePrefix(String name) {
    return 'Ongelooflik, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount gespaar';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count vermy';
  }

  @override
  String get shareMyMilestone => 'Deel my mylpaal';

  @override
  String get milestoneImageShareError =>
      'Kon nie die mylpaalbeeld skep nie. Probeer asseblief weer.';

  @override
  String get dailyCheckInTitle => 'Daaglikse Inklok';

  @override
  String get howAreYouFeelingToday => 'Hoe voel jy vandag?';

  @override
  String get honestAnswerHelp =>
      'Jou eerlike antwoord help ons om jou beter te ondersteun';

  @override
  String get didYouDrinkToday => 'Het jy vandag gedrink?';

  @override
  String get noLabel => 'Nee';

  @override
  String get yesLabel => 'Ja';

  @override
  String get cravingLevelNow => 'Drangvlak op die oomblik?';

  @override
  String get anythingOnMind => 'Enigiets op jou hart?';

  @override
  String get optionalLabel => '(opsioneel)';

  @override
  String get dailyNoteHint => 'Skryf oor jou dag, snellers, oorwinnings...';

  @override
  String get alreadyCheckedInToday => 'Reeds vandag ingeklok';

  @override
  String get saveCheckIn => 'Stoor inklok';

  @override
  String get checkInsHelpTrack =>
      'Inklokkings help om jou vordering oor tyd te volg';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Jy het reeds vandag se inklok voltooi.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Beantwoord asseblief eers albei bostaande vrae';

  @override
  String get checkInSaved => 'Inklok gestoor';

  @override
  String get cravingNone => 'Geen';

  @override
  String get cravingLow => 'Laag';

  @override
  String get cravingMedium => 'Gemiddeld';

  @override
  String get cravingStrong => 'Sterk';

  @override
  String get moodBad => 'Sleg';

  @override
  String get moodLow => 'Laag';

  @override
  String get moodGreat => 'Uitstekend';

  @override
  String get sosSupportTitle => 'SOS-ondersteuning';

  @override
  String notAloneMessage(String name) {
    return 'Jy is nie alleen nie, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Drange gaan verby. Kies iets hieronder om jou deur hierdie oomblik te help.';

  @override
  String get breathingExercise => 'Aemhalingsoefening';

  @override
  String get breathingExerciseSubtitle => 'Begeleide 4-7-8 tegniek, 2 minute';

  @override
  String get rideTheWave => 'Ry die golf';

  @override
  String get rideTheWaveSubtitle => '15 min teller — drange gaan altyd verby';

  @override
  String get copingTips => 'Hanteerwenke';

  @override
  String get copingTipsSubtitle =>
      'Gepersonaliseerde strategieë vir jou snellers';

  @override
  String get talkToAiCoach => 'Praat met KI-afrigter';

  @override
  String get talkToAiCoachSubtitle => 'Gesels met jou herstelmetgesel';

  @override
  String get callSomeone => 'Bel iemand';

  @override
  String get callSomeoneSubtitle => 'Reik na jou vertroude kontak';

  @override
  String get contactsPermissionNeeded =>
      'Kontaktekstetoestemming is nodig om \'n kontak te bel.';

  @override
  String get beatenCravingsPrefix => 'Jy het drange al ';

  @override
  String beatenCravingsCount(int count) {
    return '$count keer';
  }

  @override
  String get beatenCravingsSuffix => ' vantevore oorwin. Jy kan dit weer doen.';

  @override
  String get tellUsAboutYourself => 'Vertel ons van jouself';

  @override
  String get detailsSubtitle =>
      'Hierdie inligting help ons om jou herstelreis te verpersoonlik en akkurate insigte te verskaf.';

  @override
  String get nameLabel => 'Naam';

  @override
  String get nameHint => 'bv. Alex Rivers';

  @override
  String get ageLabel => 'Ouderdom';

  @override
  String get ageHint => 'bv. 32';

  @override
  String get sexAssignedAtBirth => 'Geslag toegewys met geboorte';

  @override
  String get sexFemale => 'Vroulik';

  @override
  String get sexMale => 'Marlik';

  @override
  String get heightLabel => 'Hoogte';

  @override
  String get weightLabel => 'Gewig';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Daaglikse limiet bereik';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Jy het al jou $limit gratis boodskappe vandag gebruik. Gradeer op na Premium vir onbeperkte klets.';
  }

  @override
  String get coachConnectError =>
      'Ek kon nie nou konnekteer nie. Probeer asseblief oor \'n oomblik weer.';

  @override
  String get clearConversationTitle => 'Vee gesprek uit?';

  @override
  String get clearConversationMessage =>
      'Dit sal jou afrigter-kletshistorie permanent verwyder.';

  @override
  String get clearLabel => 'Vee uit';

  @override
  String get recoveryCoachTitle => 'Herstelafrigter';

  @override
  String get onlineLabel => 'Aanlyn';

  @override
  String get clearConversationMenuItem => 'Vee gesprek uit';

  @override
  String chatGreeting(String name) {
    return 'Hallo $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Jy is op dag $days van jou reis. Ek is hier wanneer jy ook al wil gesels.';
  }

  @override
  String get quickPromptsLabel => 'VINNIGE AANWYSINGS';

  @override
  String get promptCravingLabel => 'Het \'n drang';

  @override
  String get promptCravingSubtitle => 'Kry vinnig fokus';

  @override
  String get promptMotivationLabel => 'Het motivering nodig';

  @override
  String get promptMotivationSubtitle => '\'n Hupstoot wanneer dit moeilik is';

  @override
  String get promptSocialLabel => 'Sosiale situasie';

  @override
  String get promptSocialSubtitle => 'Stuur \'n bijeenoms';

  @override
  String get promptSlippedLabel => 'Ek het gegly';

  @override
  String get promptSlippedSubtitle => 'Geen oordeel nie, net ondersteuning';

  @override
  String get typeMessageHint => 'Tik \'n boodskap...';

  @override
  String get editProfileTitle => 'Wysig profiel';

  @override
  String couldNotSaveProfile(String error) {
    return 'Kon nie profiel stoor nie: $error';
  }

  @override
  String get heightCmLabel => 'Hoogte (cm)';

  @override
  String get weightKgLabel => 'Gewig (kg)';

  @override
  String get saveChangesLabel => 'Stoor veranderinge';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Gevorderde insigte en analise';

  @override
  String get featureUnlimitedJournal => 'Onbeperkte joernaalinskrywings';

  @override
  String get featureUnlimitedChat => 'Onbeperkte klets met KI-afrigter';

  @override
  String get featureCommunityGroups => 'Eksklusiewe gemeenskapsgroepe';

  @override
  String get featurePrioritySupport => 'Prioriteitskundige ondersteuning';

  @override
  String get featureThemePacks => 'Pasgemaakte temapakke';

  @override
  String get featureDataExport => 'Data-uitvoer';

  @override
  String get featureAdFree => 'Advertensievrye ervaring';

  @override
  String get premiumMemberTitle => 'Jy is \'n Premium-lid';

  @override
  String get unlockFullRecoveryTitle => 'Ontsluit jou volle herstel-\nervaring';

  @override
  String get premiumMemberSubtitle =>
      'Dankie dat jy jou herstelreis ondersteun — elke premium-funksie hieronder is ontsluit.';

  @override
  String get premiumJoinSubtitle =>
      'Sluit aan by \'n gemeenskap van duisende wat hul\ngenesingsreis versnel met ons\npremium-gereedskap en gepersonaliseerde ondersteuning.';

  @override
  String get monthlyPlanLabel => 'Mandeliks';

  @override
  String get perMonthSuffix => '/mnd';

  @override
  String get cancelAnytimeLabel => 'Kanselleer enige tyd';

  @override
  String get yearlyPlanLabel => 'Jaarliks';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Jaarliks gefaktureer teen $amount';
  }

  @override
  String get bestValueLabel => 'Beste waarde';

  @override
  String get alreadyPremiumLabel => 'Jy is Premium ✓';

  @override
  String get startPremiumLabel => 'Begin Premium';

  @override
  String get manageSubscriptionLabel =>
      'Bestuur of kanselleer vanuit jou toestel se intekeninstellings.';

  @override
  String get noCommitmentLabel => 'Geen verbintenis nie. Kanselleer enige tyd.';

  @override
  String get continueFreePlanLabel => 'Gaan voort met gratis plan';

  @override
  String get backToHomeLabel => 'Terug na Tuis';

  @override
  String get cancelPremiumLabel => 'Kanselleer Premium';

  @override
  String get cancelPremiumTitle => 'Kanselleer Premium?';

  @override
  String get cancelPremiumMessage =>
      'Jy sal toegang verloor tot onbeperkte joernaalinskrywings, onbeperkte afrigterklets, statistiek-insigte en weeklikse verslae. Jy kan enige tyd weer inteken.';

  @override
  String get keepPremiumLabel => 'Hou Premium';

  @override
  String get nowPremiumMessage =>
      'Jy is nou Premium! Geniet jou volle herstelervaring.';

  @override
  String get premiumCancelledMessage =>
      'Premium gekanselleer. Jy is terug op die gratis plan.';

  @override
  String get termsOfUseLabel => 'Gebruiksvoorwaardes';

  @override
  String get navHomeLabel => 'Tuis';

  @override
  String get navStatsLabel => 'Statistiek';

  @override
  String get navJournalLabel => 'Joernaal';

  @override
  String get navBadgesLabel => 'Kentekens';

  @override
  String get navProfileLabel => 'Profiel';

  @override
  String get recoveryGoalsTitle => 'Hersteldoelwitte';

  @override
  String get drinksPerWeekLabel => 'Drankies per week';

  @override
  String get quitReasonsLabel => 'Oorsake om op te hou';

  @override
  String get quitReasonsHelperText => 'Skei verskeie redes met \'n komma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Kon nie hersteldoelwitte stoor nie: $error';
  }

  @override
  String get goalHint => 'bv., Volledige onthouding';

  @override
  String get drinksPerWeekHint => 'bv., 12';

  @override
  String get quitReasonsHint => 'bv., Gesondheid, Familie, Geld';

  @override
  String get todaysPrompt => 'Vandag se tema';

  @override
  String get defaultJournalPrompt => 'Wat is vandag op jou hart?';

  @override
  String get aiJournalInsights => 'KI-joernaalinsigte';

  @override
  String get unlockJournalInsightsMessage =>
      'Ontsluit weeklikse patrone, neigings in bui en gepersonaliseerde insigte uit jou joernaalinskrywings.';

  @override
  String get notEnoughJournalData =>
      'Nog nie genoeg data nie — skryf hierdie week \'n paar inskrywings en kyk weer.';

  @override
  String get openEntry => 'Oopmaak';

  @override
  String get editEntry => 'Wysig';

  @override
  String get deleteEntry => 'Schrap';

  @override
  String get searchJournalEntries => 'Soek inskrywings...';

  @override
  String get writeNewEntry => 'Skryf nuwe inskrywing';

  @override
  String get recentEntries => 'Onlangse inskrywings';

  @override
  String get noJournalEntriesYet =>
      'Nog geen joernaalinskrywings nie — skryf jou eerste refleksie hierbo.';

  @override
  String get noEntriesMatchFilters =>
      'Geen inskrywings stem ooreen met jou filters nie.';

  @override
  String get weeklyJournalLimitReached => 'Weeklikse limiet bereik';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Jy het al jou $limit gratis joernaalinskrywings hierdie week gebruik. Gradeer op na Premium vir onbeperkte inskrywings.';
  }

  @override
  String get newEntry => 'Nuwe inskrywing';

  @override
  String get writeYourThoughts => 'Skryf jou gedagtes';

  @override
  String get saveEntry => 'Stoor inskrywing';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining van $limit gratis inskrywings oor hierdie week';
  }

  @override
  String get deleteEntryQuestion => 'Vee inskrywing uit?';

  @override
  String get deleteEntryConfirmation =>
      'Hierdie inskrywing sal permanent verwyder word. Dit kan nie ongedoen gemaak word nie.';

  @override
  String get journalEntryNotFound => 'Inskrywing nie gevind nie';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Hierdie joernaalinskrywing is moontlik verwyder.';

  @override
  String get goBack => 'Gaan terug';

  @override
  String get journalEntryTitle => 'Joernaalinskrywing';

  @override
  String get moodStruggling => 'Moeite ondervind';

  @override
  String get moodUnwell => 'Ongesteld';

  @override
  String get moodNeutral => 'Neutraal';

  @override
  String get whatHappenedToday => 'Wat het vandag gebeur?';

  @override
  String get trigger => 'Sneller';

  @override
  String get whatHelped => 'Wat het gehelp';

  @override
  String get whatIllTryNextTime => 'Wat ek volgende keer sal probeer';

  @override
  String get journalPrivacyMessage =>
      'Jou refleksie is privaat en in jou joernaal gestoor.';

  @override
  String get unlocked => 'Ontsluit';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e',
      one: '',
    );
    return '$count dag$_temp0 oor';
  }

  @override
  String daysCount(int count) {
    return '$count Dae';
  }

  @override
  String get firstReflection => 'Eerste\nRefleksie';

  @override
  String get oneJournalEntry => '1 Joernaalinskrywing';

  @override
  String get openBook => 'Oop Boek';

  @override
  String get tenJournalEntries => '10 Joernaalinskrywings';

  @override
  String get dedicatedWriter => 'Toegewyde\nSkrywer';

  @override
  String get thirtyJournalEntries => '30 Joernaalinskrywings';

  @override
  String get firstConversation => 'Eerste\nGesprek';

  @override
  String get oneAiCoachChat => '1 KI-afrigterklets';

  @override
  String get keepTalking => 'Hou Aan Praat';

  @override
  String get fiveConversations => '5 Gesprekke';

  @override
  String get coachCompanion => 'Afrigter-\nmetgesel';

  @override
  String get twentyConversations => '20 Gesprekke';

  @override
  String get checkInHabit => 'Inklok-\ngewoonte';

  @override
  String get sevenCheckIns => '7 Inklokkings';

  @override
  String get consistencyPro => 'Konstantheids-\nkenner';

  @override
  String get thirtyCheckIns => '30 Inklokkings';

  @override
  String get dedicatedJourney => 'Toegewyde\nReis';

  @override
  String get hundredCheckIns => '100 Inklokkings';

  @override
  String get goalGetter => 'Doelwitbereiker';

  @override
  String get threeGoalsCompleted => '3 Doelwitte voltooi';

  @override
  String get goalAchiever => 'Doelwit-\nbehaaler';

  @override
  String get tenGoalsCompleted => '10 Doelwitte voltooi';

  @override
  String get firstSavings => 'Eerste\nSpaarbedrag';

  @override
  String get fiveHundredSaved => '\$500 gespaar';

  @override
  String get smartSaver => 'Slim Spaarder';

  @override
  String get oneThousandSaved => '\$1,000 gespaar';

  @override
  String get bigSaver => 'Groot Spaarder';

  @override
  String get fiveThousandSaved => '\$5,000 gespaar';

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
      'Hou aan — jou eerste mylpaal wag vir jou!';

  @override
  String get badgesAndMilestones => 'Kentekens en mylpale';

  @override
  String get yourMilestoneJourney => 'Jou Mylpaalreis';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e',
      one: '',
    );
    return '$count mylpaal$_temp0 behaal.\nTik om te sien';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Jy het $unlocked van $total mylpale op jou reis ontsluit.';
  }

  @override
  String get remaining => 'Oorblywend';

  @override
  String get complete => 'Voltooi';

  @override
  String get nextMilestone => 'Volgende Mylpaal';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% daar';
  }

  @override
  String get sobrietyMilestones => 'Soberheid-mylpale';

  @override
  String get journeyBadges => 'Reiskentekens';

  @override
  String get bronze => 'BRONS';

  @override
  String get silver => 'SILWER';

  @override
  String get gold => 'GOUD';

  @override
  String get platinum => 'PLATINUM';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Ontleed jou reis...';

  @override
  String get aiCreatingSanctuary =>
      'Ons KI skep jou gepersonaliseerde heiligdom.';

  @override
  String get understandingHabits => 'Verstaan gewoontes...';

  @override
  String get calculatingBaseline => 'Bereken jou basislyn...';

  @override
  String get personalizingPlan => 'Verpersoonlik jou plan...';

  @override
  String get finalizingSanctuary => 'Finaliseer jou heiligdom...';

  @override
  String get creatingYourPlan => 'Skep jou plan...';

  @override
  String get personalizedPlanError =>
      'Ons kon nie jou gepersonaliseerde plan skep nie. Probeer asseblief weer.';

  @override
  String get retry => 'Probeer weer';

  @override
  String get breathInhale => 'ASEM IN';

  @override
  String get breathHold => 'HOUP VASTE';

  @override
  String get breathExhale => 'ASEM UIT';

  @override
  String get breathDone => 'KLAAR';

  @override
  String get breathGreatJob => 'Uitstekende werk!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessies vandag',
      one: '$count sessie vandag',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Eindig Oefening';

  @override
  String get done => 'Klaar';

  @override
  String get noCopingTipsYet => 'Nog geen hanteerwenke nie';

  @override
  String get copingStrategiesWillAppear =>
      'Jou gepersonaliseerde hanteerstrategieë sal hier verskyn sodat jou herstelplan klaar gegenerate is.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategieë aangepas vir jou snellers';

  @override
  String get cravingsPeakAndPass =>
      'Drange bereik \'n hoogtepunt\nen gaan verby';

  @override
  String get rideTheWaveDescription =>
      'Die meeste drange gaan binne 15 minute verby. Jy hoef nie daarvolgens te handel nie — ry dit net saam met ons uit.';

  @override
  String get stayWithIt => 'bly daarby';

  @override
  String get youMadeIt => 'jy het dit gemaak';

  @override
  String get readyWhenYouAre => 'gereed wanneer jy is';

  @override
  String get rideItAgain => 'Ry dit weer';

  @override
  String get start15MinuteTimer => 'Begin 15-Minute Teller';

  @override
  String get rideTheWaveCompletedMessage =>
      'Jy het die golf gery. Dit is werklike krag. 💪';

  @override
  String get myProgress => 'My Vordering';

  @override
  String get weekLabel => 'Week';

  @override
  String get monthLabel => 'Maand';

  @override
  String get allLabel => 'Alles';

  @override
  String get daysSoberStatLabel => 'Dae\nsober';

  @override
  String get savedStatLabel => 'Gespaar';

  @override
  String get avoidedStatLabel => 'Vermy';

  @override
  String get moodTrends => 'Buineigings';

  @override
  String get cravingsPattern => 'Drangpatroon';

  @override
  String get unlockLabel => 'Ontsluit';

  @override
  String get unlockFullStats => 'Ontsluit volle statistiek';

  @override
  String get premiumStatsMessage =>
      'Buineigings en drangpatrone is Premium-funksies. Gradeer op om jou volle statistieke te sien.';

  @override
  String get healthMilestonesWillAppear =>
      'Jou gesondheidsmylpale sal hier verskyn.';

  @override
  String get healthMilestones => 'Gesondheidsmylpale';

  @override
  String dayNumber(int day) {
    return 'Dag $day';
  }

  @override
  String get soberLabel => 'Sober';

  @override
  String get slipLabel => 'Glibbering';

  @override
  String get noDataLabel => 'Geen data';

  @override
  String get milestone24Hours => '24 Uur';

  @override
  String get milestoneOneWeek => 'Een Week';

  @override
  String get milestoneOneMonth => 'Een Maand';

  @override
  String get milestoneThreeMonths => 'Drie Maande';

  @override
  String get milestoneSixMonths => 'Ses Maande';

  @override
  String get milestoneOneYear => 'Een Jaar';

  @override
  String milestoneDayCount(int day) {
    return 'Dag $day Mylpaal';
  }

  @override
  String get maybeLaterLabel => 'Miskien later';

  @override
  String get cancelLabel => 'Kanselleer';
}
