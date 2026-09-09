// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get skip => 'Salta';

  @override
  String get continueButton => 'Continua';

  @override
  String get getStarted => 'Inizia';

  @override
  String get onboardingTitle1 => 'Prendi il controllo della tua vita';

  @override
  String get onboardingSubtitle1 =>
      'Traccia il tuo percorso, celebra ogni traguardo e diventa più sano giorno dopo giorno.';

  @override
  String get onboardingTitle2 => 'Il tuo compagno di recupero IA';

  @override
  String get onboardingSubtitle2 =>
      'Ricevi consigli personalizzati, abitudini sane, promemoria motivazionali e report sui progressi.';

  @override
  String get goodMorning => 'Buongiorno';

  @override
  String get goodAfternoon => 'Buon pomeriggio';

  @override
  String get goodEvening => 'Buonasera';

  @override
  String get goodNight => 'Buonanotte';

  @override
  String get embracingClarity =>
      'Accogliere la chiarezza, un giorno alla volta.';

  @override
  String get streakLabel => 'SERIE';

  @override
  String get goalLabel => 'Obiettivo';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '$count giorno',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Piano Premium';

  @override
  String get premiumPlanSubtitle =>
      'Sblocca l\'esperienza di recupero completa';

  @override
  String get accountAndSupport => 'ACCOUNT E SUPPORTO';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get privacyPolicySubtitle =>
      'Gestisci la condivisione dei dati e la sicurezza';

  @override
  String get termsOfService => 'Termini di servizio';

  @override
  String get termsOfServiceSubtitle => 'FAQ, contatti e risorse';

  @override
  String get shareApp => 'Condividi app';

  @override
  String get shareAppSubtitle => 'Condividi l\'app con i tuoi amici';

  @override
  String get resetData => 'Ripristina dati';

  @override
  String get resetDataSubtitle =>
      'Cancella tutto ciò che è salvato su questo dispositivo';

  @override
  String get resetAllDataTitle => 'Ripristinare tutti i dati?';

  @override
  String get resetAllDataMessage =>
      'Questo cancellerà definitivamente tutto ciò che è salvato su questo dispositivo (profilo, diario e progressi).';

  @override
  String get cancel => 'Annulla';

  @override
  String get reset => 'Ripristina';

  @override
  String get chooseFromGallery => 'Scegli dalla galleria';

  @override
  String get takePhoto => 'Scatta foto';

  @override
  String get removePhoto => 'Rimuovi foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Impossibile aggiornare la foto: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Impossibile rimuovere la foto: $error';
  }

  @override
  String get photoTooLarge =>
      'La foto è troppo grande anche dopo la compressione — provane un\'altra.';

  @override
  String get unableToLoadProfile => 'Impossibile caricare il tuo profilo';

  @override
  String get pleaseTryAgain => 'Per favore riprova.';

  @override
  String get tryAgain => 'Riprova';

  @override
  String get profileNotFound => 'Profilo non trovato';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get noProfileDataFound =>
      'Nessun dato di profilo trovato su questo dispositivo.';

  @override
  String couldNotResetData(String error) {
    return 'Impossibile ripristinare i dati: $error';
  }

  @override
  String get navHome => 'Home';

  @override
  String get navStats => 'Statistiche';

  @override
  String get navJournal => 'Diario';

  @override
  String get navBadges => 'Distintivi';

  @override
  String get navProfile => 'Profilo';

  @override
  String featureComingSoon(String feature) {
    return '$feature sarà presto disponibile.';
  }

  @override
  String get appWordmark => 'Benessere';

  @override
  String get appTitle => 'Smetti di bere';

  @override
  String get splashSubtitle =>
      'Fai il primo passo verso una\nvita libera dall\'alcol';

  @override
  String get preparingJourney => 'Preparazione del tuo\npercorso';

  @override
  String get taskMorningMeditation => 'Meditazione mattutina (10m)';

  @override
  String get taskReadChapter => 'Leggi il capitolo 4 di \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Diario della gratitudine serale';

  @override
  String get close => 'Chiudi';

  @override
  String get youAreDoingGreat => 'Stai andando alla grande!';

  @override
  String get shareMilestone => 'Condividi traguardo';

  @override
  String shareMilestoneMessage(int days) {
    return 'Sono al giorno $days del mio percorso di recupero! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Il mio traguardo di recupero';

  @override
  String get weeklyReportReadyTitle => 'Il tuo report settimanale è pronto';

  @override
  String get weeklyReportReadySubtitle =>
      'Tocca per vedere com\'è andata la settimana';

  @override
  String get howAreYouFeeling => 'Come ti senti?';

  @override
  String get moodTough => 'Difficile';

  @override
  String get moodOkay => 'Così così';

  @override
  String get moodGood => 'Bene';

  @override
  String get moneySaved => 'Denaro risparmiato';

  @override
  String get caloriesSaved => 'Calorie risparmiate';

  @override
  String get healthScore => 'Punteggio salute';

  @override
  String get drinksAvoided => 'Bevande evitate';

  @override
  String get estimated => 'Stimato';

  @override
  String get aiGenerated => 'Generato da IA';

  @override
  String get daysCapsLabel => 'GIORNI';

  @override
  String get todaysMotivation => 'Motivazione di oggi';

  @override
  String get defaultMotivationQuote =>
      'Hai mantenuto il tuo impegno con successo. Continua a cavalcare l\'onda del cambiamento positivo.';

  @override
  String get talkToCoach => 'Parla con il coach';

  @override
  String get havingACraving => 'Ho un forte desiderio (Craving)';

  @override
  String get unlockWeeklyReportsTitle => 'Sblocca i report settimanali';

  @override
  String get unlockWeeklyReportsMessage =>
      'Vedi i tuoi giorni sobri, i trend dell\'umore e i feedback dell\'IA ogni settimana. Passa a Premium.';

  @override
  String get maybeLater => 'Forse più tardi';

  @override
  String get upgrade => 'Aggiorna';

  @override
  String get weeklyReportTitle => 'Report Settimanale';

  @override
  String get weeklyReportsPremiumTitle =>
      'I report settimanali sono una funzione Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Monitora i tuoi giorni sobri, l\'umore e ricevi analisi personalizzate.';

  @override
  String get upgradeToPremium => 'Passa a Premium';

  @override
  String get couldNotGenerateReport =>
      'Impossibile generare il report in questo momento.';

  @override
  String get tryAgainLower => 'Riprova';

  @override
  String get statSoberDays => 'Giorni sobri';

  @override
  String get statAvgMood => 'Umore medio';

  @override
  String get statCravings => 'Desideri forti';

  @override
  String get statMoneySaved => 'Denaro risparmiato';

  @override
  String get coachFeedback => 'Feedback del coach';

  @override
  String get journalInsights => 'Analisi del diario';

  @override
  String get next => 'Avanti';

  @override
  String get question1Title => 'Qual è il tuo obiettivo?';

  @override
  String get question1Subtitle => 'Scegli l\'obiettivo più importante per te';

  @override
  String get goalQuitCompletely => 'Smettere completamente';

  @override
  String get goalReduceDrinking => 'Ridurre il consumo';

  @override
  String get goalTakeABreak => 'Fare una pausa';

  @override
  String get goalBuildHealthierHabits => 'Costruire abitudini più sane';

  @override
  String get question3Title => 'Raccontaci della tua\nroutine';

  @override
  String get drinksPerWeek => 'Bevande a settimana';

  @override
  String get moneySpentPerWeek => 'Denaro speso a settimana';

  @override
  String get drinkingLevel => 'Livello di consumo';

  @override
  String get triggersLabel => 'Fattori scatenanti (Triggers)';

  @override
  String get levelSocial => 'Sociale';

  @override
  String get levelRegular => 'Regolare';

  @override
  String get levelHeavy => 'Elevato';

  @override
  String get levelDependent => 'Dipendente';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Solitudine';

  @override
  String get triggerHabit => 'Abitudine';

  @override
  String get triggerSadness => 'Tristezza';

  @override
  String get triggerAnger => 'Rabbia';

  @override
  String get triggerBoredom => 'Noia';

  @override
  String get triggerSocialPressure => 'Pressione sociale';

  @override
  String get triggerCelebration => 'Festeggiamenti';

  @override
  String get triggerSleepProblems => 'Problemi di sonno';

  @override
  String get triggerWorkPressure => 'Pressione lavorativa';

  @override
  String get question4Title => 'Perché vuoi cambiare?';

  @override
  String get question4Subtitle =>
      'La tua motivazione ti aiuterà a rimanere concentrato.';

  @override
  String get reasonImproveHealth => 'Migliorare la salute';

  @override
  String get reasonSaveMoney => 'Risparmiare denaro';

  @override
  String get reasonFamily => 'Famiglia';

  @override
  String get reasonBetterSleep => 'Dormire meglio';

  @override
  String get reasonMentalClarity => 'Chiarezza mentale';

  @override
  String get reasonFitness => 'Forma fisica';

  @override
  String get reasonSelfRespect => 'Autostima';

  @override
  String get reasonCareer => 'Carriera';

  @override
  String get milestoneUnlockedLabel => 'TRAGUARDO SBLOCCATO';

  @override
  String incredibleNamePrefix(String name) {
    return 'Incredibile, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount risparmiati';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count evitate';
  }

  @override
  String get shareMyMilestone => 'Condividi il mio traguardo';

  @override
  String get milestoneImageShareError =>
      'Impossibile creare l\'immagine. Riprova.';

  @override
  String get dailyCheckInTitle => 'Check-in giornaliero';

  @override
  String get howAreYouFeelingToday => 'Come ti senti oggi?';

  @override
  String get honestAnswerHelp =>
      'La tua risposta sincera ci aiuta a supportarti meglio';

  @override
  String get didYouDrinkToday => 'Hai bevuto alcolici oggi?';

  @override
  String get noLabel => 'No';

  @override
  String get yesLabel => 'Sì';

  @override
  String get cravingLevelNow => 'Livello di desiderio (craving) adesso?';

  @override
  String get anythingOnMind => 'Qualcosa che vuoi condividere?';

  @override
  String get optionalLabel => '(opzionale)';

  @override
  String get dailyNoteHint =>
      'Scrivi della tua giornata, dei fattori scatenanti, dei successi...';

  @override
  String get alreadyCheckedInToday => 'Check-in già effettuato oggi';

  @override
  String get saveCheckIn => 'Salva check-in';

  @override
  String get checkInsHelpTrack =>
      'I check-in aiutano a monitorare i tuoi progressi nel tempo';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Hai già completato il check-in di oggi.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Per favore rispondi prima a entrambe le domande sopra';

  @override
  String get checkInSaved => 'Check-in salvato';

  @override
  String get cravingNone => 'Nessuno';

  @override
  String get cravingLow => 'Basso';

  @override
  String get cravingMedium => 'Medio';

  @override
  String get cravingStrong => 'Forte';

  @override
  String get moodBad => 'Male';

  @override
  String get moodLow => 'Giù';

  @override
  String get moodGreat => 'Ottimo';

  @override
  String get sosSupportTitle => 'Supporto SOS';

  @override
  String notAloneMessage(String name) {
    return 'Non sei solo/a, $name';
  }

  @override
  String get cravingsPassMessage =>
      'I desideri forti passano. Scegli un\'opzione qui sotto per superare questo momento.';

  @override
  String get breathingExercise => 'Esercizio di respirazione';

  @override
  String get breathingExerciseSubtitle => 'Tecnica guidata 4-7-8, 2 minuti';

  @override
  String get rideTheWave => 'Cavalca l\'onda';

  @override
  String get rideTheWaveSubtitle =>
      'Timer di 15 min — il desiderio passa sempre';

  @override
  String get copingTips => 'Consigli di gestione';

  @override
  String get copingTipsSubtitle =>
      'Strategie personalizzate per i tuoi fattori scatenanti';

  @override
  String get talkToAiCoach => 'Parla con il coach IA';

  @override
  String get talkToAiCoachSubtitle => 'Chatta con il tuo compagno di percorso';

  @override
  String get callSomeone => 'Chiama qualcuno';

  @override
  String get callSomeoneSubtitle => 'Contatta una persona di fiducia';

  @override
  String get contactsPermissionNeeded =>
      'È necessaria l\'autorizzazione ai contatti per chiamare.';

  @override
  String get beatenCravingsPrefix => 'Hai già superato i desideri forti ';

  @override
  String beatenCravingsCount(int count) {
    return '$count volte';
  }

  @override
  String get beatenCravingsSuffix => ' in passato. Puoi farlo di nuovo.';

  @override
  String get tellUsAboutYourself => 'Parlaci di te';

  @override
  String get detailsSubtitle =>
      'Queste informazioni ci aiutano a personalizzare il tuo percorso.';

  @override
  String get nameLabel => 'Nome';

  @override
  String get nameHint => 'es. Alex Rivers';

  @override
  String get ageLabel => 'Età';

  @override
  String get ageHint => 'es. 32';

  @override
  String get sexAssignedAtBirth => 'Sesso assegnato alla nascita';

  @override
  String get sexFemale => 'Femmina';

  @override
  String get sexMale => 'Maschio';

  @override
  String get heightLabel => 'Altezza';

  @override
  String get weightLabel => 'Peso';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Limite giornaliero raggiunto';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Hai utilizzato tutti i $limit messaggi gratuiti di oggi. Passa a Premium per messaggi illimitati.';
  }

  @override
  String get coachConnectError =>
      'Impossibile connettersi ora. Riprova tra un momento.';

  @override
  String get clearConversationTitle => 'Cancellare la conversazione?';

  @override
  String get clearConversationMessage =>
      'Questo rimuoverà permanentemente la cronologia della chat con il coach.';

  @override
  String get clearLabel => 'Cancella';

  @override
  String get recoveryCoachTitle => 'Coach di Recupero';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Cancella conversazione';

  @override
  String chatGreeting(String name) {
    return 'Ciao $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Sei al giorno $days del tuo percorso. Sono qui se vuoi parlare.';
  }

  @override
  String get quickPromptsLabel => 'SUGGERIMENTI RAPIDI';

  @override
  String get promptCravingLabel => 'Ho un forte desiderio';

  @override
  String get promptCravingSubtitle => 'Ritrova la calma, velocemente';

  @override
  String get promptMotivationLabel => 'Ho bisogno di motivazione';

  @override
  String get promptMotivationSubtitle => 'Una spinta nei momenti difficili';

  @override
  String get promptSocialLabel => 'Situazione sociale';

  @override
  String get promptSocialSubtitle => 'Gestire una festa o incontro';

  @override
  String get promptSlippedLabel => 'Ho avuto una ricaduta';

  @override
  String get promptSlippedSubtitle => 'Nessun giudizio, solo supporto';

  @override
  String get typeMessageHint => 'Scrivi un messaggio...';

  @override
  String get editProfileTitle => 'Modifica Profilo';

  @override
  String couldNotSaveProfile(String error) {
    return 'Impossibile salvare il profilo: $error';
  }

  @override
  String get heightCmLabel => 'Altezza (cm)';

  @override
  String get weightKgLabel => 'Peso (kg)';

  @override
  String get saveChangesLabel => 'Salva Modifiche';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Analisi e statistiche avanzate';

  @override
  String get featureUnlimitedJournal => 'Voce di diario illimitate';

  @override
  String get featureUnlimitedChat => 'Chat illimitata con il Coach IA';

  @override
  String get featureCommunityGroups => 'Gruppi community esclusivi';

  @override
  String get featurePrioritySupport => 'Supporto prioritario';

  @override
  String get featureThemePacks => 'Pacchetti di temi personalizzati';

  @override
  String get featureDataExport => 'Esportazione dati';

  @override
  String get featureAdFree => 'Esperienza senza pubblicità';

  @override
  String get premiumMemberTitle => 'Sei un membro Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Sblocca l\'esperienza di\nrecupero completa';

  @override
  String get premiumMemberSubtitle =>
      'Grazie per il supporto — tutte le funzioni premium sono sbloccate.';

  @override
  String get premiumJoinSubtitle =>
      'Unisciti a migliaia di persone che stanno accelerando il loro percorso.';

  @override
  String get monthlyPlanLabel => 'Mensile';

  @override
  String get perMonthSuffix => '/mese';

  @override
  String get cancelAnytimeLabel => 'Annulla in qualsiasi momento';

  @override
  String get yearlyPlanLabel => 'Annuale';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Fatturato annualmente a $amount';
  }

  @override
  String get bestValueLabel => 'Miglior valore';

  @override
  String get alreadyPremiumLabel => 'Sei Premium ✓';

  @override
  String get startPremiumLabel => 'Inizia Premium';

  @override
  String get manageSubscriptionLabel =>
      'Gestisci o annulla dalle impostazioni del tuo dispositivo.';

  @override
  String get noCommitmentLabel => 'Nessun vincolo. Annulla quando vuoi.';

  @override
  String get continueFreePlanLabel => 'Continua con il piano gratuito';

  @override
  String get backToHomeLabel => 'Torna alla Home';

  @override
  String get cancelPremiumLabel => 'Annulla Premium';

  @override
  String get cancelPremiumTitle => 'Annullare Premium?';

  @override
  String get cancelPremiumMessage =>
      'Perderai l\'accesso a diario e chat illimitati e ai report settimanali.';

  @override
  String get keepPremiumLabel => 'Mantieni Premium';

  @override
  String get nowPremiumMessage =>
      'Ora sei Premium! Goditi l\'esperienza completa.';

  @override
  String get premiumCancelledMessage =>
      'Premium annullato. Sei tornato al piano gratuito.';

  @override
  String get termsOfUseLabel => 'Termini di Utilizzo';

  @override
  String get navHomeLabel => 'Home';

  @override
  String get navStatsLabel => 'Statistiche';

  @override
  String get navJournalLabel => 'Diario';

  @override
  String get navBadgesLabel => 'Distintivi';

  @override
  String get navProfileLabel => 'Profilo';

  @override
  String get recoveryGoalsTitle => 'Obiettivi di Recupero';

  @override
  String get drinksPerWeekLabel => 'Bevande a settimana';

  @override
  String get quitReasonsLabel => 'Motivi per smettere';

  @override
  String get quitReasonsHelperText => 'Separa più motivi con una virgola.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Impossibile salvare gli obiettivi: $error';
  }

  @override
  String get goalHint => 'es. Astinenza Totale';

  @override
  String get drinksPerWeekHint => 'es. 12';

  @override
  String get quitReasonsHint => 'es. Salute, Famiglia, Denaro';

  @override
  String get todaysPrompt => 'Spunto di oggi';

  @override
  String get defaultJournalPrompt => 'A cosa stai pensando oggi?';

  @override
  String get aiJournalInsights => 'Analisi diario IA';

  @override
  String get unlockJournalInsightsMessage =>
      'Sblocca i trend dell\'umore e le analisi settimanali dalle tue voci.';

  @override
  String get notEnoughJournalData =>
      'Non ci sono ancora abbastanza dati — scrivi qualche voce questa settimana.';

  @override
  String get openEntry => 'Apri';

  @override
  String get editEntry => 'Modifica';

  @override
  String get deleteEntry => 'Elimina';

  @override
  String get searchJournalEntries => 'Cerca voci...';

  @override
  String get writeNewEntry => 'Scrivi nuova voce';

  @override
  String get recentEntries => 'Voci recenti';

  @override
  String get noJournalEntriesYet => 'Nessuna voce di diario presente.';

  @override
  String get noEntriesMatchFilters => 'Nessuna voce corrisponde ai filtri.';

  @override
  String get weeklyJournalLimitReached => 'Limite settimanale raggiunto';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Hai utilizzato tutte le $limit voci gratuite questa settimana.';
  }

  @override
  String get newEntry => 'Nuova voce';

  @override
  String get writeYourThoughts => 'Scrivi i tuoi pensieri';

  @override
  String get saveEntry => 'Salva Voce';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining di $limit voci gratuite rimaste questa settimana';
  }

  @override
  String get deleteEntryQuestion => 'Eliminare la voce?';

  @override
  String get deleteEntryConfirmation =>
      'Questa voce verrà eliminata permanentemente.';

  @override
  String get journalEntryNotFound => 'Voce non trovata';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Questa voce di diario potrebbe essere stata eliminata.';

  @override
  String get goBack => 'Torna indietro';

  @override
  String get journalEntryTitle => 'Voce di Diario';

  @override
  String get moodStruggling => 'In difficoltà';

  @override
  String get moodUnwell => 'Non bene';

  @override
  String get moodNeutral => 'Neutrale';

  @override
  String get whatHappenedToday => 'Cos\'è successo oggi?';

  @override
  String get trigger => 'Fattore scatenante';

  @override
  String get whatHelped => 'Cosa ha aiutato';

  @override
  String get whatIllTryNextTime => 'Cosa proverò la prossima volta';

  @override
  String get journalPrivacyMessage =>
      'I tuoi pensieri sono privati e salvati in modo sicuro.';

  @override
  String get unlocked => 'Sbloccato';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni rimasti',
      one: '$count giorno rimasto',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count Giorni';
  }

  @override
  String get firstReflection => 'Prima\nRiflessione';

  @override
  String get oneJournalEntry => '1 Voce di Diario';

  @override
  String get openBook => 'Libro Aperto';

  @override
  String get tenJournalEntries => '10 Voci di Diario';

  @override
  String get dedicatedWriter => 'Scrittore\nDedito';

  @override
  String get thirtyJournalEntries => '30 Voci di Diario';

  @override
  String get firstConversation => 'Prima\nConversazione';

  @override
  String get oneAiCoachChat => '1 Chat con Coach IA';

  @override
  String get keepTalking => 'Continua a Parlare';

  @override
  String get fiveConversations => '5 Conversazioni';

  @override
  String get coachCompanion => 'Compagno\nCoach';

  @override
  String get twentyConversations => '20 Conversazioni';

  @override
  String get checkInHabit => 'Abitudine di\nCheck-In';

  @override
  String get sevenCheckIns => '7 Check-In';

  @override
  String get consistencyPro => 'Professionista della\nCostanza';

  @override
  String get thirtyCheckIns => '30 Check-In';

  @override
  String get dedicatedJourney => 'Percorso\nDedito';

  @override
  String get hundredCheckIns => '100 Check-In';

  @override
  String get goalGetter => 'Determinato';

  @override
  String get threeGoalsCompleted => '3 Obiettivi Completati';

  @override
  String get goalAchiever => 'Conquistatore';

  @override
  String get tenGoalsCompleted => '10 Goals Completed';

  @override
  String get firstSavings => 'First\nSavings';

  @override
  String get fiveHundredSaved => '\$500 Saved';

  @override
  String get smartSaver => 'Smart Saver';

  @override
  String get oneThousandSaved => '\$1,000 Saved';

  @override
  String get bigSaver => 'Big Saver';

  @override
  String get fiveThousandSaved => '\$5,000 Saved';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current of \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current of $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Keep going — your first milestone is waiting for you!';

  @override
  String get badgesAndMilestones => 'Badges & Milestones';

  @override
  String get yourMilestoneJourney => 'Your Milestone Journey';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's',
      one: '',
    );
    return '$count milestone$_temp0 achieved.\nTap to view';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'You\'ve unlocked $unlocked of $total milestones on your journey.';
  }

  @override
  String get remaining => 'Remaining';

  @override
  String get complete => 'Complete';

  @override
  String get nextMilestone => 'Next Milestone';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% there';
  }

  @override
  String get sobrietyMilestones => 'Sobriety Milestones';

  @override
  String get journeyBadges => 'Journey Badges';

  @override
  String get bronze => 'BRONZE';

  @override
  String get silver => 'SILVER';

  @override
  String get gold => 'GOLD';

  @override
  String get platinum => 'PLATINUM';

  @override
  String get diamond => 'DIAMOND';

  @override
  String get analyzingYourJourney => 'Analyzing Your Journey...';

  @override
  String get aiCreatingSanctuary =>
      'Our AI is creating your personalized sanctuary.';

  @override
  String get understandingHabits => 'Understanding habits...';

  @override
  String get calculatingBaseline => 'Calculating your baseline...';

  @override
  String get personalizingPlan => 'Personalizing your plan...';

  @override
  String get finalizingSanctuary => 'Finalizing your sanctuary...';

  @override
  String get creatingYourPlan => 'Creating your plan...';

  @override
  String get personalizedPlanError =>
      'We could not create your personalized plan. Please try again.';

  @override
  String get retry => 'Retry';

  @override
  String get breathInhale => 'INHALE';

  @override
  String get breathHold => 'HOLD';

  @override
  String get breathExhale => 'EXHALE';

  @override
  String get breathDone => 'DONE';

  @override
  String get breathGreatJob => 'Great job!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessions today',
      one: '$count session today',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'End Exercise';

  @override
  String get done => 'Done';

  @override
  String get noCopingTipsYet => 'No coping tips yet';

  @override
  String get copingStrategiesWillAppear =>
      'Your personalized coping strategies will show up here once your recovery plan finishes generating.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategies tailored to your triggers';

  @override
  String get cravingsPeakAndPass => 'Cravings peak\nand pass';

  @override
  String get rideTheWaveDescription =>
      'Most cravings pass within 15 minutes. You don\'t have to act on it — just ride it out with us.';

  @override
  String get stayWithIt => 'stay with it';

  @override
  String get youMadeIt => 'you made it';

  @override
  String get readyWhenYouAre => 'ready when you are';

  @override
  String get rideItAgain => 'Ride it again';

  @override
  String get start15MinuteTimer => 'Start 15-Minute Timer';

  @override
  String get rideTheWaveCompletedMessage =>
      'You rode the wave. That\'s real strength. 💪';

  @override
  String get myProgress => 'My Progress';

  @override
  String get weekLabel => 'Week';

  @override
  String get monthLabel => 'Month';

  @override
  String get allLabel => 'All';

  @override
  String get daysSoberStatLabel => 'Days\nsober';

  @override
  String get savedStatLabel => 'Saved';

  @override
  String get avoidedStatLabel => 'Avoided';

  @override
  String get moodTrends => 'Mood trends';

  @override
  String get cravingsPattern => 'Cravings pattern';

  @override
  String get unlockLabel => 'Unlock';

  @override
  String get unlockFullStats => 'Unlock full stats';

  @override
  String get premiumStatsMessage =>
      'Mood trends and craving patterns are Premium features. Upgrade to see your full stats.';

  @override
  String get healthMilestonesWillAppear =>
      'Your health milestones will appear here.';

  @override
  String get healthMilestones => 'Health milestones';

  @override
  String dayNumber(int day) {
    return 'Day $day';
  }

  @override
  String get soberLabel => 'Sober';

  @override
  String get slipLabel => 'Slip';

  @override
  String get noDataLabel => 'No data';

  @override
  String get milestone24Hours => '24 Hours';

  @override
  String get milestoneOneWeek => 'One Week';

  @override
  String get milestoneOneMonth => 'One Month';

  @override
  String get milestoneThreeMonths => 'Three Months';

  @override
  String get milestoneSixMonths => 'Six Months';

  @override
  String get milestoneOneYear => 'One Year';

  @override
  String milestoneDayCount(int day) {
    return 'Day $day Milestone';
  }

  @override
  String get maybeLaterLabel => 'Forse più tardi';

  @override
  String get cancelLabel => 'Annulla';
}
