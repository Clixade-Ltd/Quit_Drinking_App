// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get skip => 'Omet';

  @override
  String get continueButton => 'Continua';

  @override
  String get getStarted => 'Comença';

  @override
  String get onboardingTitle1 => 'Pren el control de la teva vida';

  @override
  String get onboardingSubtitle1 =>
      'Fes un seguiment del teu camí, celebra cada assoliment i millora la teva salut dia a dia.';

  @override
  String get onboardingTitle2 => 'El teu acompanyant de recuperació amb IA';

  @override
  String get onboardingSubtitle2 =>
      'Rep orientació personalitzada, hàbits saludables, recordatoris de motivació i informes de progrés dissenyats per al teu camí.';

  @override
  String get goodMorning => 'Bon dia';

  @override
  String get goodAfternoon => 'Bona tarda';

  @override
  String get goodEvening => 'Bona tarda';

  @override
  String get goodNight => 'Bona nit';

  @override
  String get embracingClarity => 'Abraçant la claredat, un dia a la vegada.';

  @override
  String get streakLabel => 'RATXA';

  @override
  String get goalLabel => 'Objectiu';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dies',
      one: '$count dia',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Pla Premium';

  @override
  String get premiumPlanSubtitle =>
      'Desbloqueja l\'experiència completa de recuperació';

  @override
  String get accountAndSupport => 'COMPTE I SUPORT';

  @override
  String get privacyPolicy => 'Política de privacitat';

  @override
  String get privacyPolicySubtitle =>
      'Gestiona la compartició de dades i la seguretat del compte';

  @override
  String get termsOfService => 'Condicions del servei';

  @override
  String get termsOfServiceSubtitle =>
      'Preguntes freqüents, contacte i recursos';

  @override
  String get shareApp => 'Comparteix l\'aplicació';

  @override
  String get shareAppSubtitle => 'Comparteix l\'aplicació amb els teus amics';

  @override
  String get resetData => 'Reinicia les dades';

  @override
  String get resetDataSubtitle =>
      'Esborra tot el que s\'ha desat en aquest dispositiu';

  @override
  String get resetAllDataTitle => 'Vols reiniciar totes les dades?';

  @override
  String get resetAllDataMessage =>
      'Això esborrarà tot el que s\'ha desat en aquest dispositiu (perfil, entrades del diari i progrés) i no es pot desfer.';

  @override
  String get cancel => 'Cancella';

  @override
  String get reset => 'Reinicia';

  @override
  String get chooseFromGallery => 'Tria de la galeria';

  @override
  String get takePhoto => 'Fes una foto';

  @override
  String get removePhoto => 'Elimina la foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'No s\'ha pogut actualitzar la foto: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'No s\'ha pogut eliminar la foto: $error';
  }

  @override
  String get photoTooLarge =>
      'La foto és massa gran fins i tot després de comprimir-la; prova amb una altra.';

  @override
  String get unableToLoadProfile => 'No s\'ha pogut carregar el teu perfil';

  @override
  String get pleaseTryAgain => 'Torna-ho a provar.';

  @override
  String get tryAgain => 'Torna-ho a provar';

  @override
  String get profileNotFound => 'No s\'ha trobat el perfil';

  @override
  String get refresh => 'Actualitza';

  @override
  String get noProfileDataFound =>
      'Encara no s\'han trobat dades de perfil en aquest dispositiu.';

  @override
  String couldNotResetData(String error) {
    return 'No s\'han pogut reiniciar les dades: $error';
  }

  @override
  String get navHome => 'Inici';

  @override
  String get navStats => 'Estadístiques';

  @override
  String get navJournal => 'Diari';

  @override
  String get navBadges => 'Insígnies';

  @override
  String get navProfile => 'Perfil';

  @override
  String featureComingSoon(String feature) {
    return '$feature estarà disponible aviat.';
  }

  @override
  String get appWordmark => 'BENESTAR';

  @override
  String get appTitle => 'Deixa de beure';

  @override
  String get splashSubtitle =>
      'Fes el primer pas cap a una\nvida lliure d\'alcohol';

  @override
  String get preparingJourney => 'S\'està preparant el\nteu camí';

  @override
  String get taskMorningMeditation => 'Meditació del matí (10 min)';

  @override
  String get taskReadChapter => 'Llegeix el capítol 4 de «The Sober Diaries»';

  @override
  String get taskEveningJournal => 'Diari de gratitud del vespre';

  @override
  String get close => 'Tanca';

  @override
  String get youAreDoingGreat => 'Ho estàs fent molt bé!';

  @override
  String get shareMilestone => 'Comparteix la fita';

  @override
  String shareMilestoneMessage(int days) {
    return 'Estic al dia $days del meu camí de recuperació! 💪';
  }

  @override
  String get shareMilestoneSubject => 'La meva fita de recuperació';

  @override
  String get weeklyReportReadyTitle => 'El teu informe setmanal està a punt';

  @override
  String get weeklyReportReadySubtitle =>
      'Toca per veure com ha anat la setmana';

  @override
  String get howAreYouFeeling => 'Com et sents?';

  @override
  String get moodTough => 'Difícil';

  @override
  String get moodOkay => 'Normal';

  @override
  String get moodGood => 'Bé';

  @override
  String get moneySaved => 'Diners estalviats';

  @override
  String get caloriesSaved => 'Calories estalviades';

  @override
  String get healthScore => 'Puntuació de salut';

  @override
  String get drinksAvoided => 'Begudes evitades';

  @override
  String get estimated => 'Estimat';

  @override
  String get aiGenerated => 'Generat per IA';

  @override
  String get daysCapsLabel => 'DIES';

  @override
  String get todaysMotivation => 'Motivació d\'avui';

  @override
  String get defaultMotivationQuote =>
      'Has mantingut el teu compromís amb èxit. Continua aprofitant la línia del canvi positiu.';

  @override
  String get talkToCoach => 'Parla amb el coach';

  @override
  String get havingACraving => 'Tinc un desig intens';

  @override
  String get unlockWeeklyReportsTitle => 'Desbloqueja els informes setmanals';

  @override
  String get unlockWeeklyReportsMessage =>
      'Consulta els teus dies de sobrietat, tendències d\'estat d\'ànim i recomanacions personalitzades de la IA cada setmana. Passa a Premium per desbloquejar-ho.';

  @override
  String get maybeLater => 'Potser més tard';

  @override
  String get upgrade => 'Millora';

  @override
  String get weeklyReportTitle => 'Informe setmanal';

  @override
  String get weeklyReportsPremiumTitle =>
      'Els informes setmanals són una funció Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Consulta els teus dies de sobrietat, tendències d\'estat d\'ànim, desitjos intensos i recomanacions personalitzades de la IA cada setmana.';

  @override
  String get upgradeToPremium => 'Passa a Premium';

  @override
  String get couldNotGenerateReport =>
      'No s\'ha pogut generar el teu informe ara mateix.';

  @override
  String get tryAgainLower => 'Torna-ho a provar';

  @override
  String get statSoberDays => 'Dies de sobrietat';

  @override
  String get statAvgMood => 'Estat d\'ànim mitjà';

  @override
  String get statCravings => 'Desitjos intensos';

  @override
  String get statMoneySaved => 'Diners estalviats';

  @override
  String get coachFeedback => 'Comentaris del coach';

  @override
  String get journalInsights => 'Anàlisi del diari';

  @override
  String get next => 'Següent';

  @override
  String get question1Title => 'Quin és el teu objectiu?';

  @override
  String get question1Subtitle => 'Tria l\'objectiu que més et\nimporti';

  @override
  String get goalQuitCompletely => 'Deixar-ho completament';

  @override
  String get goalReduceDrinking => 'Reduir el consum';

  @override
  String get goalTakeABreak => 'Fer una pausa';

  @override
  String get goalBuildHealthierHabits => 'Crear hàbits més saludables';

  @override
  String get question3Title => 'Explica\'ns la teva\nrutina';

  @override
  String get drinksPerWeek => 'Begudes per setmana';

  @override
  String get moneySpentPerWeek => 'Diners gastats per setmana';

  @override
  String get drinkingLevel => 'Nivell de consum';

  @override
  String get triggersLabel => 'Desencadenants';

  @override
  String get levelSocial => 'Social';

  @override
  String get levelRegular => 'Regular';

  @override
  String get levelHeavy => 'Elevat';

  @override
  String get levelDependent => 'Dependent';

  @override
  String get triggerStress => 'Estrès';

  @override
  String get triggerLoneliness => 'Solitud';

  @override
  String get triggerHabit => 'Hàbit';

  @override
  String get triggerSadness => 'Tristor';

  @override
  String get triggerAnger => 'Ràbia';

  @override
  String get triggerBoredom => 'Avorriment';

  @override
  String get triggerSocialPressure => 'Pressió social';

  @override
  String get triggerCelebration => 'Celebració';

  @override
  String get triggerSleepProblems => 'Problemes de son';

  @override
  String get triggerWorkPressure => 'Pressió laboral';

  @override
  String get question4Title => 'Per què vols canviar?';

  @override
  String get question4Subtitle =>
      'El teu motiu t\'ajudarà a mantenir la motivació.';

  @override
  String get reasonImproveHealth => 'Millorar la meva salut';

  @override
  String get reasonSaveMoney => 'Estalviar diners';

  @override
  String get reasonFamily => 'Família';

  @override
  String get reasonBetterSleep => 'Dormir millor';

  @override
  String get reasonMentalClarity => 'Claredat mental';

  @override
  String get reasonFitness => 'Forma física';

  @override
  String get reasonSelfRespect => 'Autorespecte';

  @override
  String get reasonCareer => 'Carrera professional';

  @override
  String get milestoneUnlockedLabel => 'FITA DESBLOQUEJADA';

  @override
  String incredibleNamePrefix(String name) {
    return 'Increïble, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount estalviats';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count evitades';
  }

  @override
  String get shareMyMilestone => 'Comparteix la meva fita';

  @override
  String get milestoneImageShareError =>
      'No s\'ha pogut crear la imatge de la fita. Torna-ho a provar.';

  @override
  String get dailyCheckInTitle => 'Registre diari';

  @override
  String get howAreYouFeelingToday => 'Com et sents avui?';

  @override
  String get honestAnswerHelp =>
      'La teva resposta sincera ens ajuda a donar-te un millor suport';

  @override
  String get didYouDrinkToday => 'Has begut avui?';

  @override
  String get noLabel => 'No';

  @override
  String get yesLabel => 'Sí';

  @override
  String get cravingLevelNow => 'Nivell de desig intens ara mateix?';

  @override
  String get anythingOnMind => 'Alguna cosa que vulguis compartir?';

  @override
  String get optionalLabel => '(opcional)';

  @override
  String get dailyNoteHint =>
      'Escriu sobre el teu dia, desencadenants, victòries...';

  @override
  String get alreadyCheckedInToday => 'Ja t\'has registrat avui';

  @override
  String get saveCheckIn => 'Desa el registre';

  @override
  String get checkInsHelpTrack =>
      'Els registres ajuden a veure el teu progrés al llarg del temps';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Ja has completat el registre d\'avui.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Respon primer a les dues preguntes anteriors';

  @override
  String get checkInSaved => 'Registre desat';

  @override
  String get cravingNone => 'Cap';

  @override
  String get cravingLow => 'Baix';

  @override
  String get cravingMedium => 'Mitjà';

  @override
  String get cravingStrong => 'Fort';

  @override
  String get moodBad => 'Malament';

  @override
  String get moodLow => 'Baix';

  @override
  String get moodGreat => 'Excel·lent';

  @override
  String get sosSupportTitle => 'Suport SOS';

  @override
  String notAloneMessage(String name) {
    return 'No estàs sol/a, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Els desitjos intensos passen. Tria una opció a continuació per superar aquest moment.';

  @override
  String get breathingExercise => 'Exercici de respiració';

  @override
  String get breathingExerciseSubtitle => 'Tècnica guiada 4-7-8, 2 minuts';

  @override
  String get rideTheWave => 'Surfeja l\'onada';

  @override
  String get rideTheWaveSubtitle =>
      'Temporitzador de 15 min: els desitjos sempre passen';

  @override
  String get copingTips => 'Consells de gestió';

  @override
  String get copingTipsSubtitle =>
      'Estratègies personalitzades per als teus desencadenants';

  @override
  String get talkToAiCoach => 'Parla amb el coach d\'IA';

  @override
  String get talkToAiCoachSubtitle =>
      'Xat amb el teu acompanyant de recuperació';

  @override
  String get callSomeone => 'Truca a algú';

  @override
  String get callSomeoneSubtitle => 'Contacta amb la teva persona de confiança';

  @override
  String get contactsPermissionNeeded =>
      'Es necessita permís d\'accés als contactes per trucar.';

  @override
  String get beatenCravingsPrefix => 'Ja has superat desitjos intensos ';

  @override
  String beatenCravingsCount(int count) {
    return '$count vegades';
  }

  @override
  String get beatenCravingsSuffix => ' anteriorment. Ho pots tornar a fer.';

  @override
  String get tellUsAboutYourself => 'Explica\'ns sobre tu';

  @override
  String get detailsSubtitle =>
      'Aquesta informació ens ajuda a personalitzar el teu camí de recuperació i oferir-te dades precises.';

  @override
  String get nameLabel => 'Nom';

  @override
  String get nameHint => 'ex. Àlex Rius';

  @override
  String get ageLabel => 'Edat';

  @override
  String get ageHint => 'ex. 32';

  @override
  String get sexAssignedAtBirth => 'Sexe assignat en nàixer';

  @override
  String get sexFemale => 'Dona';

  @override
  String get sexMale => 'Home';

  @override
  String get heightLabel => 'Alçada';

  @override
  String get weightLabel => 'Pes';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Límit diari assolit';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Has utilitzat els $limit missatges gratuïts d\'avui. Passa a Premium per tenir xat il·limitat amb el coach.';
  }

  @override
  String get coachConnectError =>
      'No m\'he pogut connectar ara mateix. Torna-ho a provar d\'aquí a un moment.';

  @override
  String get clearConversationTitle => 'Vols esborrar la conversa?';

  @override
  String get clearConversationMessage =>
      'Això eliminarà permanentment l\'historial del xat amb el coach.';

  @override
  String get clearLabel => 'Esborra';

  @override
  String get recoveryCoachTitle => 'Coach de recuperació';

  @override
  String get onlineLabel => 'En línia';

  @override
  String get clearConversationMenuItem => 'Esborra la conversa';

  @override
  String chatGreeting(String name) {
    return 'Hola, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Estàs al dia $days del teu camí. Sóc aquí quan vulguis parlar de les teves coses.';
  }

  @override
  String get quickPromptsLabel => 'SUGGERIMENTS RÀPIDS';

  @override
  String get promptCravingLabel => 'Tinc un desig intens';

  @override
  String get promptCravingSubtitle => 'Troba la calma ràpidament';

  @override
  String get promptMotivationLabel => 'Necessito motivació';

  @override
  String get promptMotivationSubtitle => 'Una empenyeta quan és difícil';

  @override
  String get promptSocialLabel => 'Situació social';

  @override
  String get promptSocialSubtitle => 'Com gestionar una trobada';

  @override
  String get promptSlippedLabel => 'He tingut una recaiguda';

  @override
  String get promptSlippedSubtitle => 'Sense judicis, només suport';

  @override
  String get typeMessageHint => 'Escriu un missatge...';

  @override
  String get editProfileTitle => 'Edita el perfil';

  @override
  String couldNotSaveProfile(String error) {
    return 'No s\'ha pogut desar el perfil: $error';
  }

  @override
  String get heightCmLabel => 'Alçada (cm)';

  @override
  String get weightKgLabel => 'Pes (kg)';

  @override
  String get saveChangesLabel => 'Desa els canvis';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Anàlisi i estadístiques avançades';

  @override
  String get featureUnlimitedJournal => 'Entrades del diari il·limitades';

  @override
  String get featureUnlimitedChat => 'Xat il·limitat amb el coach d\'IA';

  @override
  String get featureCommunityGroups => 'Grups de comunitat exclusius';

  @override
  String get featurePrioritySupport => 'Suport prioritari d\'experts';

  @override
  String get featureThemePacks => 'Paquets de temes personalitzats';

  @override
  String get featureDataExport => 'Exportació de dades';

  @override
  String get featureAdFree => 'Experiència sense anuncis';

  @override
  String get premiumMemberTitle => 'Ets membre Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Desbloqueja la teva experiència\ncompleta de recuperació';

  @override
  String get premiumMemberSubtitle =>
      'Gràcies per donar suport al teu procés de recuperació: totes les funcions premium següents estan desbloquejades.';

  @override
  String get premiumJoinSubtitle =>
      'Uneix-te a una comunitat de milers de persones que estan\naccelerant el seu procés de curació amb les nostres\neines premium i suport personalitzat.';

  @override
  String get monthlyPlanLabel => 'Mensual';

  @override
  String get perMonthSuffix => '/mes';

  @override
  String get cancelAnytimeLabel => 'Cancella quan vulguis';

  @override
  String get yearlyPlanLabel => 'Anual';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Facturat anualment a $amount';
  }

  @override
  String get bestValueLabel => 'Millor opció';

  @override
  String get alreadyPremiumLabel => 'Ets Premium ✓';

  @override
  String get startPremiumLabel => 'Inicia Premium';

  @override
  String get manageSubscriptionLabel =>
      'Gestiona o cancel·la des de la configuració de subscripcions del teu dispositiu.';

  @override
  String get noCommitmentLabel => 'Sense compromís. Cancella quan vulguis.';

  @override
  String get continueFreePlanLabel => 'Continua amb el pla gratuït';

  @override
  String get backToHomeLabel => 'Tornar a l\'inici';

  @override
  String get cancelPremiumLabel => 'Cancella Premium';

  @override
  String get cancelPremiumTitle => 'Vols cancellar Premium?';

  @override
  String get cancelPremiumMessage =>
      'Perdràs l\'accés a les entrades de diari il·limitades, xat il·limitat amb el coach, anàlisi d\'estadístiques i informes setmanals. Et pots tornar a subscriure quan vulguis.';

  @override
  String get keepPremiumLabel => 'Mantén Premium';

  @override
  String get nowPremiumMessage =>
      'Ara ets Premium! Gaudeix de la teva experiència completa de recuperació.';

  @override
  String get premiumCancelledMessage =>
      'S\'ha cancellat el pla Premium. Has tornat al pla gratuït.';

  @override
  String get termsOfUseLabel => 'Condicions d\'ús';

  @override
  String get navHomeLabel => 'Inici';

  @override
  String get navStatsLabel => 'Estadístiques';

  @override
  String get navJournalLabel => 'Diari';

  @override
  String get navBadgesLabel => 'Insígnies';

  @override
  String get navProfileLabel => 'Perfil';

  @override
  String get recoveryGoalsTitle => 'Objectius de recuperació';

  @override
  String get drinksPerWeekLabel => 'Begudes per setmana';

  @override
  String get quitReasonsLabel => 'Motius per deixar-ho';

  @override
  String get quitReasonsHelperText => 'Separa diversos motius amb una coma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'No s\'han pogut desar els objectius de recuperació: $error';
  }

  @override
  String get goalHint => 'ex. Abstinència completa';

  @override
  String get drinksPerWeekHint => 'ex. 12';

  @override
  String get quitReasonsHint => 'ex. Salut, Família, Diners';

  @override
  String get todaysPrompt => 'Proposta d\'avui';

  @override
  String get defaultJournalPrompt => 'Què tens al cap avui?';

  @override
  String get aiJournalInsights => 'Anàlisi del diari per IA';

  @override
  String get unlockJournalInsightsMessage =>
      'Desbloqueja patrons setmanals, tendències d\'estat d\'ànim i reflexions personalitzades a partir de les teves entrades de diari.';

  @override
  String get notEnoughJournalData =>
      'Encara no hi ha prou dades; escriu unes quantes entrades aquesta setmana i torna a comprovar-ho.';

  @override
  String get openEntry => 'Obre';

  @override
  String get editEntry => 'Edita';

  @override
  String get deleteEntry => 'Elimina';

  @override
  String get searchJournalEntries => 'Cerca entrades...';

  @override
  String get writeNewEntry => 'Escriu una nova entrada';

  @override
  String get recentEntries => 'Entrades recents';

  @override
  String get noJournalEntriesYet =>
      'Encara no hi ha entrades de diari; escriu la teva primera reflexió a dalt.';

  @override
  String get noEntriesMatchFilters => 'Cap entrada coincideix amb els filtres.';

  @override
  String get weeklyJournalLimitReached => 'Límit setmanal assolit';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Has utilitzat les $limit entrades de diari gratuïtes d\'aquesta setmana. Passa a Premium per tenir entrades il·limitades.';
  }

  @override
  String get newEntry => 'Nova entrada';

  @override
  String get writeYourThoughts => 'Escriu els teus pensaments';

  @override
  String get saveEntry => 'Desa l\'entrada';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Queden $remaining de $limit entrades gratuïtes aquesta setmana';
  }

  @override
  String get deleteEntryQuestion => 'Vols eliminar l\'entrada?';

  @override
  String get deleteEntryConfirmation =>
      'Aquesta entrada s\'eliminarà permanentment. Això no es pot desfer.';

  @override
  String get journalEntryNotFound => 'No s\'ha trobat l\'entrada';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'És possible que aquesta entrada de diari s\'hagi eliminat.';

  @override
  String get goBack => 'Torna enrere';

  @override
  String get journalEntryTitle => 'Entrada del diari';

  @override
  String get moodStruggling => 'Amb dificultats';

  @override
  String get moodUnwell => 'Indisposat/da';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => 'Què ha passat avui?';

  @override
  String get trigger => 'Desencadenant';

  @override
  String get whatHelped => 'Què ha ajudat';

  @override
  String get whatIllTryNextTime => 'Què provaré la pròxima vegada';

  @override
  String get journalPrivacyMessage =>
      'La teva reflexió és privada i es desa al teu diari.';

  @override
  String get unlocked => 'Desbloquejat';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dies',
      one: '$count dia',
    );
    return 'Queden $_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count dies';
  }

  @override
  String get firstReflection => 'Primera\nreflexió';

  @override
  String get oneJournalEntry => '1 entrada al diari';

  @override
  String get openBook => 'Llibre obert';

  @override
  String get tenJournalEntries => '10 entrades al diari';

  @override
  String get dedicatedWriter => 'Escriptor/a\ndedicat/da';

  @override
  String get thirtyJournalEntries => '30 entrades al diari';

  @override
  String get firstConversation => 'Primera\nconversa';

  @override
  String get oneAiCoachChat => '1 xat amb el coach IA';

  @override
  String get keepTalking => 'Continua parlant';

  @override
  String get fiveConversations => '5 converses';

  @override
  String get coachCompanion => 'Companys de\nrecuperació';

  @override
  String get twentyConversations => '20 converses';

  @override
  String get checkInHabit => 'Hàbit de\nregistre';

  @override
  String get sevenCheckIns => '7 registres';

  @override
  String get consistencyPro => 'Professional de la\nconstància';

  @override
  String get thirtyCheckIns => '30 registres';

  @override
  String get dedicatedJourney => 'Camí\ndedicat';

  @override
  String get hundredCheckIns => '100 registres';

  @override
  String get goalGetter => 'Assolidor/a d\'objectius';

  @override
  String get threeGoalsCompleted => '3 objectius completats';

  @override
  String get goalAchiever => 'Triomfador/a\nd\'objectius';

  @override
  String get tenGoalsCompleted => '10 objectius completats';

  @override
  String get firstSavings => 'Primers\nestalvis';

  @override
  String get fiveHundredSaved => '500 \$ estalviats';

  @override
  String get smartSaver => 'Estalviador/a intel·ligent';

  @override
  String get oneThousandSaved => '1.000 \$ estalviats';

  @override
  String get bigSaver => 'Gran estalviador/a';

  @override
  String get fiveThousandSaved => '5.000 \$ estalviats';

  @override
  String currencyProgress(String current, String target) {
    return '$current \$ de $target \$';
  }

  @override
  String countProgress(int current, int target) {
    return '$current de $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Continua endavant: la teva primera fita t\'espera!';

  @override
  String get badgesAndMilestones => 'Insígnies i fites';

  @override
  String get yourMilestoneJourney => 'El teu camí de fites';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fites aconseguidas.',
      one: '$count fita aconseguida.',
    );
    return '$_temp0\nToca per veure-les';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Has desbloquejat $unlocked de $total fites en el teu camí.';
  }

  @override
  String get remaining => 'Pendent';

  @override
  String get complete => 'Completat';

  @override
  String get nextMilestone => 'Següent fita';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% aconseguit';
  }

  @override
  String get sobrietyMilestones => 'Fites de sobrietat';

  @override
  String get journeyBadges => 'Insígnies del camí';

  @override
  String get bronze => 'BRONZE';

  @override
  String get silver => 'PLATA';

  @override
  String get gold => 'OR';

  @override
  String get platinum => 'PLATÍ';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'S\'està analitzant el teu camí...';

  @override
  String get aiCreatingSanctuary =>
      'La nostra IA està creant el teu espai personalitzat.';

  @override
  String get understandingHabits => 'S\'estan unint els hàbits...';

  @override
  String get calculatingBaseline =>
      'S\'està calculant la teva línia de base...';

  @override
  String get personalizingPlan => 'S\'està personalitzant el teu pla...';

  @override
  String get finalizingSanctuary => 'S\'està finalitzant el teu espai...';

  @override
  String get creatingYourPlan => 'S\'està creant el teu pla...';

  @override
  String get personalizedPlanError =>
      'No hem pogut crear el teu pla personalitzat. Torna-ho a provar.';

  @override
  String get retry => 'Reintenta';

  @override
  String get breathInhale => 'INHALA';

  @override
  String get breathHold => 'MANTÉN';

  @override
  String get breathExhale => 'EXHALA';

  @override
  String get breathDone => 'FET';

  @override
  String get breathGreatJob => 'Molt bona feina!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessions avui',
      one: '$count sessió avui',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Finalitza l\'exercici';

  @override
  String get done => 'Fet';

  @override
  String get noCopingTipsYet => 'Encara no hi ha consells de gestió';

  @override
  String get copingStrategiesWillAppear =>
      'Les teves estratègies de gestió personalitzades apareixeran aquí quan acabi de generar-se el teu pla de recuperació.';

  @override
  String get strategiesTailoredToTriggers =>
      'Estratègies adaptades als teus desencadenants';

  @override
  String get cravingsPeakAndPass => 'Els desitjos arriben al pic\ni passen';

  @override
  String get rideTheWaveDescription =>
      'La majoria de desitjos intensos passen en 15 minuts. No cal que hi actuïs en contra: només surfeja\'ls amb nosaltres.';

  @override
  String get stayWithIt => 'mantén-t\'hi';

  @override
  String get youMadeIt => 'ho has aconseguit';

  @override
  String get readyWhenYouAre => 'a punt quan ho desitgis';

  @override
  String get rideItAgain => 'Torna a surfejar';

  @override
  String get start15MinuteTimer => 'Inicia el temporitzador de 15 minuts';

  @override
  String get rideTheWaveCompletedMessage =>
      'Has surfejat l\'onada. Això és força real. 💪';

  @override
  String get myProgress => 'El meu progrés';

  @override
  String get weekLabel => 'Setmana';

  @override
  String get monthLabel => 'Mes';

  @override
  String get allLabel => 'Tot';

  @override
  String get daysSoberStatLabel => 'Dies de\nsobrietat';

  @override
  String get savedStatLabel => 'Estalviat';

  @override
  String get avoidedStatLabel => 'Evitat';

  @override
  String get moodTrends => 'Tendències d\'estat d\'ànim';

  @override
  String get cravingsPattern => 'Patró de desitjos intensos';

  @override
  String get unlockLabel => 'Desbloqueja';

  @override
  String get unlockFullStats => 'Desbloqueja totes les estadístiques';

  @override
  String get premiumStatsMessage =>
      'Les tendències d\'estat d\'ànim i els patrons de desitjos són funcions Premium. Actualitza per veure les teves estadístiques completes.';

  @override
  String get healthMilestonesWillAppear =>
      'Les teves fites de salut apareixeran aquí.';

  @override
  String get healthMilestones => 'Fites de salut';

  @override
  String dayNumber(int day) {
    return 'Dia $day';
  }

  @override
  String get soberLabel => 'Sober';

  @override
  String get slipLabel => 'Recaiguda';

  @override
  String get noDataLabel => 'Sense dades';

  @override
  String get milestone24Hours => '24 hores';

  @override
  String get milestoneOneWeek => 'Una setmana';

  @override
  String get milestoneOneMonth => 'Un mes';

  @override
  String get milestoneThreeMonths => 'Tres mesos';

  @override
  String get milestoneSixMonths => 'Sis mesos';

  @override
  String get milestoneOneYear => 'Un any';

  @override
  String milestoneDayCount(int day) {
    return 'Fita del dia $day';
  }

  @override
  String get maybeLaterLabel => 'Potser més tard';

  @override
  String get cancelLabel => 'Cancel·la';
}
