// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romansh (`rm`).
class AppLocalizationsRm extends AppLocalizations {
  AppLocalizationsRm([String locale = 'rm']) : super(locale);

  @override
  String get skip => 'Sautar';

  @override
  String get continueButton => 'Cuntinuar';

  @override
  String get getStarted => 'Cumenzar';

  @override
  String get onboardingTitle1 => 'Prenda il controll da tia vita';

  @override
  String get onboardingSubtitle1 =>
      'Suonda tia via, festegia mintga success e daventa pli saun di di en di.';

  @override
  String get onboardingTitle2 => 'Tes cumpogn AI per la recuperaziun';

  @override
  String get onboardingSubtitle2 =>
      'Retschaiv cussegls persunalisads, isanzas saunas, promemoria motivants e rapports da progress concepids per tia via.';

  @override
  String get goodMorning => 'Bun di';

  @override
  String get goodAfternoon => 'Buna di';

  @override
  String get goodEvening => 'Buna saira';

  @override
  String get goodNight => 'Buna notg';

  @override
  String get embracingClarity =>
      'Abitescha la clerezza, in di suenter l\'auter.';

  @override
  String get streakLabel => 'SERIA';

  @override
  String get goalLabel => 'Finamira';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dis',
      one: '$count di',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Plan Premium';

  @override
  String get premiumPlanSubtitle =>
      'Sblatga tia experientscha cumpletta da recuperaziun';

  @override
  String get accountAndSupport => 'CONTO E SUSTEGN';

  @override
  String get privacyPolicy => 'Politica da protecziun da datas';

  @override
  String get privacyPolicySubtitle =>
      'Administres la repartiziun da datas e la segirezza dal conto';

  @override
  String get termsOfService => 'Cundiziuns d\'utilisaziun';

  @override
  String get termsOfServiceSubtitle => 'FAQ, contact e resursas';

  @override
  String get shareApp => 'Cundivider l\'app';

  @override
  String get shareAppSubtitle => 'Cundivida l\'app cun tes amis';

  @override
  String get resetData => 'Reinizialisar datas';

  @override
  String get resetDataSubtitle =>
      'Stizza tut quai ch\'è memorisà sin quest apparat';

  @override
  String get resetAllDataTitle => 'Reinizialisar tut las datas?';

  @override
  String get resetAllDataMessage =>
      'Quai stizza tut quai ch\'è memorisà sin quest apparat — profil, endataziuns dal diari e progress — e na po betg vegnir annullà.';

  @override
  String get cancel => 'Annullar';

  @override
  String get reset => 'Reinizialisar';

  @override
  String get chooseFromGallery => 'Tscherner da la gallaria';

  @override
  String get takePhoto => 'Far ina fotografia';

  @override
  String get removePhoto => 'Allontanar la fotografia';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'La fotografia na po betg vegnir actualisada: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'La fotografia na po betg vegnir allontanada: $error';
  }

  @override
  String get photoTooLarge =>
      'Quella fotografia è memia gronda er suenter la compressiun — emprova per plaschair ina autra.';

  @override
  String get unableToLoadProfile => 'Tes profil na po betg vegnir chargià';

  @override
  String get pleaseTryAgain => 'Emprova per plaschair anc ina giada.';

  @override
  String get tryAgain => 'Emprovar anc ina giada';

  @override
  String get profileNotFound => 'Profil betg chattà';

  @override
  String get refresh => 'Actualisar';

  @override
  String get noProfileDataFound =>
      'Anc naginas datas dal profil chattadas sin quest apparat.';

  @override
  String couldNotResetData(String error) {
    return 'Las datas na pon betg vegnir reinizialisadas: $error';
  }

  @override
  String get navHome => 'Home';

  @override
  String get navStats => 'Statisticas';

  @override
  String get navJournal => 'Diari';

  @override
  String get navBadges => 'Insignas';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature vegn a vegnir disponibel bainbaud.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Laschar da baiver';

  @override
  String get splashSubtitle => 'Fa il prim pass vers ina vita\nsenza alcohol';

  @override
  String get preparingJourney => 'Preparar tia\nvia';

  @override
  String get taskMorningMeditation => 'Meditaziun dal bunmatsch (10 min)';

  @override
  String get taskReadChapter => 'Legia il chapitel 4 da «The Sober Diaries»';

  @override
  String get taskEveningJournal => 'Diari da gratitud da la saira';

  @override
  String get close => 'Serrar';

  @override
  String get youAreDoingGreat => 'Ti fas quai excellent!';

  @override
  String get shareMilestone => 'Cundivider la marca';

  @override
  String shareMilestoneMessage(int days) {
    return 'Jau sun al di $days da mia via da recuperaziun! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Mia marca da recuperaziun';

  @override
  String get weeklyReportReadyTitle => 'Tes rapport emnil è pront';

  @override
  String get weeklyReportReadySubtitle =>
      'Tocca per vesair co che tia emna è stada';

  @override
  String get howAreYouFeeling => 'Co ta sentas?';

  @override
  String get moodTough => 'Difficil';

  @override
  String get moodOkay => 'En urden';

  @override
  String get moodGood => 'Bun';

  @override
  String get moneySaved => 'Daners spargnads';

  @override
  String get caloriesSaved => 'Calorias spargnadas';

  @override
  String get healthScore => 'Punct da sanadad';

  @override
  String get drinksAvoided => 'Bavrondas evitadas';

  @override
  String get estimated => 'Stimà';

  @override
  String get aiGenerated => 'Generà da AI';

  @override
  String get daysCapsLabel => 'DIS';

  @override
  String get todaysMotivation => 'Motivaziun dad oz';

  @override
  String get defaultMotivationQuote =>
      'Ti has mantegnì cun success tes engaschi. Cuntinuescha sin l\'unda dal midament positiv.';

  @override
  String get talkToCoach => 'Discurrer cun il coach';

  @override
  String get havingACraving => 'Jau hai in desideri';

  @override
  String get unlockWeeklyReportsTitle => 'Sblatgar rapports emnils';

  @override
  String get unlockWeeklyReportsMessage =>
      'Vesa mintga emna tes dis senza alcohol, las tendenzas dal stadi d\'animi e il feedback AI persunalisà. Fa upgrade a Premium per sblatgar.';

  @override
  String get maybeLater => 'Forsa pli tard';

  @override
  String get upgrade => 'Far upgrade';

  @override
  String get weeklyReportTitle => 'Rapport emnil';

  @override
  String get weeklyReportsPremiumTitle =>
      'Rapports emnils èn ina funcziun Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Vesa mintga emna tes dis senza alcohol, las tendenzas dal stadi d\'animi, ils desideris e il feedback AI persunalisà.';

  @override
  String get upgradeToPremium => 'Far upgrade a Premium';

  @override
  String get couldNotGenerateReport =>
      'Tes rapport na po betg vegnir generà ussa.';

  @override
  String get tryAgainLower => 'Emprovar anc ina giada';

  @override
  String get statSoberDays => 'Dis senza alcohol';

  @override
  String get statAvgMood => 'Stadi d\'animi med.';

  @override
  String get statCravings => 'Desideris';

  @override
  String get statMoneySaved => 'Daners spargnads';

  @override
  String get coachFeedback => 'Feedback dal coach';

  @override
  String get journalInsights => 'Insights dal diari';

  @override
  String get next => 'Proxim';

  @override
  String get question1Title => 'Tge è tia finamira';

  @override
  String get question1Subtitle =>
      'Tscherna la finamira che vala\nil pli bler per tai';

  @override
  String get goalQuitCompletely => 'Laschar dal tuttafatg';

  @override
  String get goalReduceDrinking => 'Reducir il baiver';

  @override
  String get goalTakeABreak => 'Far ina pausa';

  @override
  String get goalBuildHealthierHabits => 'Construir isanzas pli saunas';

  @override
  String get question3Title => 'Discurra cun nus davart tia\nrutina';

  @override
  String get drinksPerWeek => 'Bavrondas per emna';

  @override
  String get moneySpentPerWeek => 'Daners spendids per emna';

  @override
  String get drinkingLevel => 'Nivel da baiver';

  @override
  String get triggersLabel => 'Triggers';

  @override
  String get levelSocial => 'Social';

  @override
  String get levelRegular => 'Regular';

  @override
  String get levelHeavy => 'Greiv';

  @override
  String get levelDependent => 'Dependent';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Soledat';

  @override
  String get triggerHabit => 'Isanza';

  @override
  String get triggerSadness => 'Tristezza';

  @override
  String get triggerAnger => 'Furia';

  @override
  String get triggerBoredom => 'Malencletgna';

  @override
  String get triggerSocialPressure => 'Pressiun sociala';

  @override
  String get triggerCelebration => 'Festivitad';

  @override
  String get triggerSleepProblems => 'Problems da durmir';

  @override
  String get triggerWorkPressure => 'Pressiun da lavur';

  @override
  String get question4Title => 'Pertge vuls ti midar?';

  @override
  String get question4Subtitle => 'Tes motiv ta gida a restar motivà.';

  @override
  String get reasonImproveHealth => 'Meglierar mia sanadad';

  @override
  String get reasonSaveMoney => 'Spargnar daners';

  @override
  String get reasonFamily => 'Famiglia';

  @override
  String get reasonBetterSleep => 'Durmir meglier';

  @override
  String get reasonMentalClarity => 'Clerezza mentala';

  @override
  String get reasonFitness => 'Fitness';

  @override
  String get reasonSelfRespect => 'Respect da sai sez';

  @override
  String get reasonCareer => 'Carriera';

  @override
  String get milestoneUnlockedLabel => 'MARCA SBLATGADA';

  @override
  String incredibleNamePrefix(String name) {
    return 'Incredibel, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount spargnads';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count evitads';
  }

  @override
  String get shareMyMilestone => 'Cundivider mia marca';

  @override
  String get milestoneImageShareError =>
      'L\'immagine da la marca na po betg vegnir creada. Emprova per plaschair anc ina giada.';

  @override
  String get dailyCheckInTitle => 'Check-in dal di';

  @override
  String get howAreYouFeelingToday => 'Co ta sentas oz?';

  @override
  String get honestAnswerHelp =>
      'Tia resposta onesta ans gida a sustegnair tai meglier';

  @override
  String get didYouDrinkToday => 'Has ti baivì oz?';

  @override
  String get noLabel => 'Na';

  @override
  String get yesLabel => 'Gea';

  @override
  String get cravingLevelNow => 'Tge nivel ha tes desideri ussa?';

  @override
  String get anythingOnMind => 'Has ti insatge en il chau?';

  @override
  String get optionalLabel => '(facultativ)';

  @override
  String get dailyNoteHint => 'Scriva davart tes di, triggers, victorias...';

  @override
  String get alreadyCheckedInToday => 'Check-in dad oz gia fatg';

  @override
  String get saveCheckIn => 'Memorisar il check-in';

  @override
  String get checkInsHelpTrack =>
      'Ils check-ins gidan a suandar tes progress sur dal temp';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Ti has gia terminà il check-in dad oz.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Respunda per plaschair l\'emprim a las duas dumondas sura';

  @override
  String get checkInSaved => 'Check-in memorisà';

  @override
  String get cravingNone => 'Nagin';

  @override
  String get cravingLow => 'Bass';

  @override
  String get cravingMedium => 'Medi';

  @override
  String get cravingStrong => 'Furment';

  @override
  String get moodBad => 'Na bun';

  @override
  String get moodLow => 'Bass';

  @override
  String get moodGreat => 'Excellent';

  @override
  String get sosSupportTitle => 'Sustegn SOS';

  @override
  String notAloneMessage(String name) {
    return 'Ti n\'es betg sulet, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Ils desideris passan. Tscherna insatge sutvart che ta gida en quest mument.';

  @override
  String get breathingExercise => 'Exercizi da respiraziun';

  @override
  String get breathingExerciseSubtitle => 'Tecnica guidada 4-7-8, 2 minutas';

  @override
  String get rideTheWave => 'Laschar passar l\'unda';

  @override
  String get rideTheWaveSubtitle =>
      'Timer da 15 min — ils desideris passan adina';

  @override
  String get copingTips => 'Cussegls per far frunt';

  @override
  String get copingTipsSubtitle => 'Strategias persunalisadas per tes triggers';

  @override
  String get talkToAiCoach => 'Discurrer cun il coach AI';

  @override
  String get talkToAiCoachSubtitle => 'Chatta cun tes cumpogn da recuperaziun';

  @override
  String get callSomeone => 'Telefonar a qualqun';

  @override
  String get callSomeoneSubtitle => 'Contactes ina persuna da confidenza';

  @override
  String get contactsPermissionNeeded =>
      'La permissiun per ils contacts è necessaria per telefonar ad in contact.';

  @override
  String get beatenCravingsPrefix => 'Ti has battì ils desideris ';

  @override
  String beatenCravingsCount(int count) {
    return '$count giadas';
  }

  @override
  String get beatenCravingsSuffix => ' avant. Ti pos far quai anc ina giada.';

  @override
  String get tellUsAboutYourself => 'Discurra cun nus davart tai';

  @override
  String get detailsSubtitle =>
      'Questas infurmaziuns ans gidan a persunalisar tia via da recuperaziun e a dar insights precis.';

  @override
  String get nameLabel => 'Num';

  @override
  String get nameHint => 'p.ex., Alex Rivers';

  @override
  String get ageLabel => 'Vegliadetgna';

  @override
  String get ageHint => 'p.ex., 32';

  @override
  String get sexAssignedAtBirth => 'Sex attribuì a la naschientscha';

  @override
  String get sexFemale => 'Feminin';

  @override
  String get sexMale => 'Masculin';

  @override
  String get heightLabel => 'Autezza';

  @override
  String get weightLabel => 'Pais';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Limit quotidian cuntanschì';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Ti has utilisà tut ils $limit messadis gratuits dad oz. Fa upgrade a Premium per chat illimità cun il coach.';
  }

  @override
  String get coachConnectError =>
      'Jau na poss betg connectar ussa. Emprova per plaschair anc ina giada en in mument.';

  @override
  String get clearConversationTitle => 'Stizzar la conversaziun?';

  @override
  String get clearConversationMessage =>
      'Quai vegn a stizzar definitivamain l\'istorgia dal chat cun il coach.';

  @override
  String get clearLabel => 'Stizzar';

  @override
  String get recoveryCoachTitle => 'Coach da recuperaziun';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Stizzar la conversaziun';

  @override
  String chatGreeting(String name) {
    return 'Allegra $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Ti es al di $days da tia via. Jau sun qua mintga giada che ti vuls discurrer.';
  }

  @override
  String get quickPromptsLabel => 'PROPOSTAS RAPIDAS';

  @override
  String get promptCravingLabel => 'Hai in desideri';

  @override
  String get promptCravingSubtitle => 'Revegna svelt al terren';

  @override
  String get promptMotivationLabel => 'Dovra motivaziun';

  @override
  String get promptMotivationSubtitle => 'In impuls cura ch\'i è greiv';

  @override
  String get promptSocialLabel => 'Situaziun sociala';

  @override
  String get promptSocialSubtitle => 'Navigar ina reuniun';

  @override
  String get promptSlippedLabel => 'Jau hai fatg in pass enavos';

  @override
  String get promptSlippedSubtitle => 'Nagina critica, mo sustegn';

  @override
  String get typeMessageHint => 'Scriva in messadi...';

  @override
  String get editProfileTitle => 'Modifitgar il profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Il profil na po betg vegnir memorisà: $error';
  }

  @override
  String get heightCmLabel => 'Autezza (cm)';

  @override
  String get weightKgLabel => 'Pais (kg)';

  @override
  String get saveChangesLabel => 'Memorisar las midadas';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Insights e analisas avanzadas';

  @override
  String get featureUnlimitedJournal => 'Endataziuns illimitadas en il diari';

  @override
  String get featureUnlimitedChat => 'Chat illimità cun il coach AI';

  @override
  String get featureCommunityGroups => 'Gruppas exclusivs da la communitad';

  @override
  String get featurePrioritySupport => 'Sustegn prioritari d\'experts';

  @override
  String get featureThemePacks => 'Pachets da temas persunalisads';

  @override
  String get featureDataExport => 'Export da datas';

  @override
  String get featureAdFree => 'Experientscha senza reclamas';

  @override
  String get premiumMemberTitle => 'Ti es in commember Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Sblatga tia experientscha\ncumpletta da recuperaziun';

  @override
  String get premiumMemberSubtitle =>
      'Grazia per sustegnair tia via da recuperaziun — mintga funcziun Premium sutvart è sblatgada.';

  @override
  String get premiumJoinSubtitle =>
      'Entra en ina communitad da millis persunas che accelereschan\nlur via da guariziun cun noss utensils Premium\ne cun sustegn persunalisà.';

  @override
  String get monthlyPlanLabel => 'Mensil';

  @override
  String get perMonthSuffix => '/mais';

  @override
  String get cancelAnytimeLabel => 'Annullar mintga mument';

  @override
  String get yearlyPlanLabel => 'Annual';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Facturà annualmain a $amount';
  }

  @override
  String get bestValueLabel => 'Meglier valur';

  @override
  String get alreadyPremiumLabel => 'Ti es Premium ✓';

  @override
  String get startPremiumLabel => 'Cumenzar Premium';

  @override
  String get manageSubscriptionLabel =>
      'Administres u annulles en las configuraziuns da l\'abunament da tes apparat.';

  @override
  String get noCommitmentLabel => 'Nagina obligaziun. Annulla mintga mument.';

  @override
  String get continueFreePlanLabel => 'Cuntinuar cun il plan gratuit';

  @override
  String get backToHomeLabel => 'Enavos a Home';

  @override
  String get cancelPremiumLabel => 'Annullar Premium';

  @override
  String get cancelPremiumTitle => 'Annullar Premium?';

  @override
  String get cancelPremiumMessage =>
      'Ti perdas l\'access a las endataziuns illimitadas dal diari, il chat illimità cun il coach, ils insights da statisticas e ils rapports emnils. Ti pos abonnar danovamain mintga mument.';

  @override
  String get keepPremiumLabel => 'Mantegna Premium';

  @override
  String get nowPremiumMessage =>
      'Ti es ussa Premium! Gida tia experientscha cumpletta da recuperaziun.';

  @override
  String get premiumCancelledMessage =>
      'Premium è vegnì annullà. Ti es turnà al plan gratuit.';

  @override
  String get termsOfUseLabel => 'Cundiziuns d\'utilisaziun';

  @override
  String get navHomeLabel => 'Home';

  @override
  String get navStatsLabel => 'Statisticas';

  @override
  String get navJournalLabel => 'Diari';

  @override
  String get navBadgesLabel => 'Insignas';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Finamiras da recuperaziun';

  @override
  String get drinksPerWeekLabel => 'Bavrondas per emna';

  @override
  String get quitReasonsLabel => 'Motivs per laschar';

  @override
  String get quitReasonsHelperText => 'Separa plirs motivs cun ina comma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Las finamiras da recuperaziun na pon betg vegnir memorisadas: $error';
  }

  @override
  String get goalHint => 'p.ex., Abstinenza cumpletta';

  @override
  String get drinksPerWeekHint => 'p.ex., 12';

  @override
  String get quitReasonsHint => 'p.ex., Sanadad, Famiglia, Daners';

  @override
  String get todaysPrompt => 'Proposta dad oz';

  @override
  String get defaultJournalPrompt => 'Tge occupa tes patratg oz?';

  @override
  String get aiJournalInsights => 'Insights AI dal diari';

  @override
  String get unlockJournalInsightsMessage =>
      'Sblatga patterns emnils, tendenzas dal stadi d\'animi e insights persunalisads da tes endataziuns dal diari.';

  @override
  String get notEnoughJournalData =>
      'Anc betg avunda datas — scriva intginas endataziuns questa emna e turna.';

  @override
  String get openEntry => 'Avrir';

  @override
  String get editEntry => 'Modifitgar';

  @override
  String get deleteEntry => 'Stizzar';

  @override
  String get searchJournalEntries => 'Tschertgar endataziuns...';

  @override
  String get writeNewEntry => 'Scriver ina nova endataziun';

  @override
  String get recentEntries => 'Endataziuns recentas';

  @override
  String get noJournalEntriesYet =>
      'Anc naginas endataziuns dal diari — scriva tia emprima reflexiun sura.';

  @override
  String get noEntriesMatchFilters =>
      'Naginas endataziuns na correspundan a tes filters.';

  @override
  String get weeklyJournalLimitReached => 'Limit emnil cuntanschì';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Ti has utilisà tut las $limit endataziuns gratuitas dal diari per questa emna. Fa upgrade a Premium per endataziuns illimitadas.';
  }

  @override
  String get newEntry => 'Nova endataziun';

  @override
  String get writeYourThoughts => 'Scriva tes patratgs';

  @override
  String get saveEntry => 'Memorisar l\'endataziun';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining da $limit endataziuns gratuitas restan questa emna';
  }

  @override
  String get deleteEntryQuestion => 'Stizzar l\'endataziun?';

  @override
  String get deleteEntryConfirmation =>
      'Questa endataziun vegn stizzada definitivamain. Quai na po betg vegnir annullà.';

  @override
  String get journalEntryNotFound => 'Endataziun betg chattada';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Questa endataziun dal diari po esser vegnida stizzada.';

  @override
  String get goBack => 'Turnar enavos';

  @override
  String get journalEntryTitle => 'Endataziun dal diari';

  @override
  String get moodStruggling => 'Fadia';

  @override
  String get moodUnwell => 'Na bain';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => 'Tge è capità oz?';

  @override
  String get trigger => 'Trigger';

  @override
  String get whatHelped => 'Tge ha gidà';

  @override
  String get whatIllTryNextTime => 'Tge ch\'jau emprovel la proxima giada';

  @override
  String get journalPrivacyMessage =>
      'Tia reflexiun è privata e memorisada en tes diari.';

  @override
  String get unlocked => 'Sblatgà';

  @override
  String daysLeft(int count) {
    return 'Anc $count di';
  }

  @override
  String daysCount(int count) {
    return '$count dis';
  }

  @override
  String get firstReflection => 'Emprima\nreflexiun';

  @override
  String get oneJournalEntry => '1 endataziun dal diari';

  @override
  String get openBook => 'Avrir il cudesch';

  @override
  String get tenJournalEntries => '10 endataziuns dal diari';

  @override
  String get dedicatedWriter => 'Scrivent\nengaschà';

  @override
  String get thirtyJournalEntries => '30 endataziuns dal diari';

  @override
  String get firstConversation => 'Emprima\nconversaziun';

  @override
  String get oneAiCoachChat => '1 chat cun il coach AI';

  @override
  String get keepTalking => 'Cuntinuescha a discurrer';

  @override
  String get fiveConversations => '5 conversaziuns';

  @override
  String get coachCompanion => 'Cumpogn dal\ncoach';

  @override
  String get twentyConversations => '20 conversaziuns';

  @override
  String get checkInHabit => 'Abit da\ncheck-in';

  @override
  String get sevenCheckIns => '7 check-ins';

  @override
  String get consistencyPro => 'Pro da la\nconstanza';

  @override
  String get thirtyCheckIns => '30 check-ins';

  @override
  String get dedicatedJourney => 'Via\nengaschada';

  @override
  String get hundredCheckIns => '100 check-ins';

  @override
  String get goalGetter => 'Cuntanschader da finamiras';

  @override
  String get threeGoalsCompleted => '3 finamiras terminadas';

  @override
  String get goalAchiever => 'Cuntanschader da\nfinamiras';

  @override
  String get tenGoalsCompleted => '10 finamiras terminadas';

  @override
  String get firstSavings => 'Emprim\nspargn';

  @override
  String get fiveHundredSaved => '\$500 spargnads';

  @override
  String get smartSaver => 'Spargnader intelligent';

  @override
  String get oneThousandSaved => '\$1,000 spargnads';

  @override
  String get bigSaver => 'Grond spargnader';

  @override
  String get fiveThousandSaved => '\$5,000 Saved';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current da \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current da $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Cuntinuescha — tia emprima marca ta spetga!';

  @override
  String get badgesAndMilestones => 'Insignas e marcas';

  @override
  String get yourMilestoneJourney => 'Tia via da marcas';

  @override
  String milestonesAchieved(int count) {
    return '$count marcas cuntanschidas.\nTocca per vesair';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Ti has sblatgà $unlocked da $total marcas sin tia via.';
  }

  @override
  String get remaining => 'Restant';

  @override
  String get complete => 'Cumpletà';

  @override
  String get nextMilestone => 'Proxima marca';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% cuntanschì';
  }

  @override
  String get sobrietyMilestones => 'Marcas senza alcohol';

  @override
  String get journeyBadges => 'Insignas da la via';

  @override
  String get bronze => 'BRONZ';

  @override
  String get silver => 'ARGIENT';

  @override
  String get gold => 'Aur';

  @override
  String get platinum => 'PLATIN';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Analisa da tia via...';

  @override
  String get aiCreatingSanctuary =>
      'Noss AI creescha in spazi persunalisà per tia recuperaziun.';

  @override
  String get understandingHabits => 'Emprender a chapir las isanzas...';

  @override
  String get calculatingBaseline => 'Calculaziun da tia basa...';

  @override
  String get personalizingPlan => 'Persunalisar tes plan...';

  @override
  String get finalizingSanctuary => 'Finalisar tes spazi da recuperaziun...';

  @override
  String get creatingYourPlan => 'Crear tes plan...';

  @override
  String get personalizedPlanError =>
      'Nus n\'avain betg pudì crear tes plan persunalisà. Emprova per plaschair anc ina giada.';

  @override
  String get retry => 'Emprovar danovamain';

  @override
  String get breathInhale => 'INSPIRA';

  @override
  String get breathHold => 'TGNIR';

  @override
  String get breathExhale => 'EXPIRA';

  @override
  String get breathDone => 'FATG';

  @override
  String get breathGreatJob => 'Excellent!';

  @override
  String breathSessionsToday(int count) {
    return '$count sessiuns oz';
  }

  @override
  String get endExercise => 'Finir l\'exercizi';

  @override
  String get done => 'Fatg';

  @override
  String get noCopingTipsYet => 'Anc nagins cussegls';

  @override
  String get copingStrategiesWillAppear =>
      'Tes strategies persunalisadas per far frunt cumparan qua cura che tes plan da recuperaziun è generà.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategias adattadas a tes triggers';

  @override
  String get cravingsPeakAndPass => 'Ils desideris culminan\ne passan';

  @override
  String get rideTheWaveDescription =>
      'La gronda part dals desideris passan entaifer 15 minutas. Ti n\'has betg da reagir — lascha simplamain l\'unda passar cun nus.';

  @override
  String get stayWithIt => 'resta cun quai';

  @override
  String get youMadeIt => 'ti has fatg quai';

  @override
  String get readyWhenYouAre => 'cura che ti es pront';

  @override
  String get rideItAgain => 'Lascha l\'unda passar danovamain';

  @override
  String get start15MinuteTimer => 'Cumenzar timer da 15 minutas';

  @override
  String get rideTheWaveCompletedMessage =>
      'Ti has laschà passar l\'unda. Quai è vera forza. 💪';

  @override
  String get myProgress => 'Mes progress';

  @override
  String get weekLabel => 'Emna';

  @override
  String get monthLabel => 'Mais';

  @override
  String get allLabel => 'Tuts';

  @override
  String get daysSoberStatLabel => 'Dis\nsenza alcohol';

  @override
  String get savedStatLabel => 'Spargnà';

  @override
  String get avoidedStatLabel => 'Evitads';

  @override
  String get moodTrends => 'Tendenzas dal stadi d\'animi';

  @override
  String get cravingsPattern => 'Pattern dals desideris';

  @override
  String get unlockLabel => 'Sblatgar';

  @override
  String get unlockFullStats => 'Sblatgar tut las statisticas';

  @override
  String get premiumStatsMessage =>
      'Las tendenzas dal stadi d\'animi e ils patterns dals desideris èn funcziuns Premium. Fa upgrade per vesair tut las statisticas.';

  @override
  String get healthMilestonesWillAppear =>
      'Tias marcas da sanadad cumparan qua.';

  @override
  String get healthMilestones => 'Marcas da sanadad';

  @override
  String dayNumber(int day) {
    return 'Di $day';
  }

  @override
  String get soberLabel => 'Senza alcohol';

  @override
  String get slipLabel => 'Pass enavos';

  @override
  String get noDataLabel => 'Naginas datas';

  @override
  String get milestone24Hours => '24 uras';

  @override
  String get milestoneOneWeek => 'Ina emna';

  @override
  String get milestoneOneMonth => 'In mais';

  @override
  String get milestoneThreeMonths => 'Trais mais';

  @override
  String get milestoneSixMonths => 'Sis mais';

  @override
  String get milestoneOneYear => 'In onn';

  @override
  String milestoneDayCount(int day) {
    return 'Marca dal di $day';
  }

  @override
  String get maybeLaterLabel => 'Forsa pli tard';

  @override
  String get cancelLabel => 'Interrumper';
}
