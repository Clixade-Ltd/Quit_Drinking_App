// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get skip => 'Passer';

  @override
  String get continueButton => 'Continuer';

  @override
  String get getStarted => 'Commencer';

  @override
  String get onboardingTitle1 => 'Prenez le contrôle de votre vie';

  @override
  String get onboardingSubtitle1 =>
      'Suivez votre parcours, célébrez chaque victoire et devenez plus sain jour après jour.';

  @override
  String get onboardingTitle2 => 'Votre compagnon de rétablissement IA';

  @override
  String get onboardingSubtitle2 =>
      'Recevez des conseils personnalisés, des habitudes saines, des rappels de motivation et des rapports de progrès adaptés à votre parcours.';

  @override
  String get goodMorning => 'Bonjour';

  @override
  String get goodAfternoon => 'Bon après-midi';

  @override
  String get goodEvening => 'Bonsoir';

  @override
  String get goodNight => 'Bonne nuit';

  @override
  String get embracingClarity => 'Accueillir la clarté, un jour à la fois.';

  @override
  String get streakLabel => 'SÉRIE';

  @override
  String get goalLabel => 'OBJECTIF';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '$count jour',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Offre Premium';

  @override
  String get premiumPlanSubtitle =>
      'Débloquez l\'intégralité de votre expérience de rétablissement';

  @override
  String get accountAndSupport => 'COMPTE ET ASSISTANCE';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get privacyPolicySubtitle =>
      'Gérer le partage des données et la sécurité du compte';

  @override
  String get termsOfService => 'Conditions d\'utilisation';

  @override
  String get termsOfServiceSubtitle => 'FAQ, contactez-nous et ressources';

  @override
  String get shareApp => 'Partager l\'application';

  @override
  String get shareAppSubtitle => 'Partagez l\'application avec vos amis';

  @override
  String get resetData => 'Réinitialiser les données';

  @override
  String get resetDataSubtitle =>
      'Effacer tout ce qui est enregistré sur cet appareil';

  @override
  String get resetAllDataTitle => 'Réinitialiser toutes les données ?';

  @override
  String get resetAllDataMessage =>
      'Cela effacera tout ce qui est enregistré sur cet appareil — profil, entrées de journal et progrès — et ne pourra pas être annulé.';

  @override
  String get cancel => 'Annuler';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get chooseFromGallery => 'Choisir dans la galerie';

  @override
  String get takePhoto => 'Prendre une photo';

  @override
  String get removePhoto => 'Supprimer la photo';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Impossible de mettre à jour la photo : $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Impossible de supprimer la photo : $error';
  }

  @override
  String get photoTooLarge =>
      'Cette photo est trop volumineuse même après compression — veuillez en essayer une autre.';

  @override
  String get unableToLoadProfile => 'Impossible de charger votre profil';

  @override
  String get pleaseTryAgain => 'Veuillez réessayer.';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get profileNotFound => 'Profil introuvable';

  @override
  String get refresh => 'Actualiser';

  @override
  String get noProfileDataFound =>
      'Aucune donnée de profil trouvée sur cet appareil pour le moment.';

  @override
  String couldNotResetData(String error) {
    return 'Impossible de réinitialiser les données : $error';
  }

  @override
  String get navHome => 'Accueil';

  @override
  String get navStats => 'Stats';

  @override
  String get navJournal => 'Journal';

  @override
  String get navBadges => 'Badges';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return 'La fonctionnalité $feature sera bientôt disponible.';
  }

  @override
  String get appWordmark => 'Bien-être';

  @override
  String get appTitle => 'Arrêtez de boire';

  @override
  String get splashSubtitle =>
      'Faites le premier pas vers une\nvie sans alcool';

  @override
  String get preparingJourney => 'Préparation de votre\nparcours';

  @override
  String get taskMorningMeditation => 'Méditation matinale (10 min)';

  @override
  String get taskReadChapter => 'Lire le chapitre 4 de « The Sober Diaries »';

  @override
  String get taskEveningJournal => 'Journal de gratitude du soir';

  @override
  String get close => 'Fermer';

  @override
  String get youAreDoingGreat => 'Vous faites du super travail !';

  @override
  String get shareMilestone => 'Partager l\'étape';

  @override
  String shareMilestoneMessage(int days) {
    return 'J\'en suis au ${days}e jour de mon parcours de rétablissement ! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Mon étape de rétablissement';

  @override
  String get weeklyReportReadyTitle => 'Votre rapport hebdomadaire est prêt';

  @override
  String get weeklyReportReadySubtitle =>
      'Appuyez pour voir comment s\'est passée votre semaine';

  @override
  String get howAreYouFeeling => 'Comment vous sentez-vous ?';

  @override
  String get moodTough => 'Difficile';

  @override
  String get moodOkay => 'Correcte';

  @override
  String get moodGood => 'Bonne';

  @override
  String get moneySaved => 'Argent économisé';

  @override
  String get caloriesSaved => 'Calories économisées';

  @override
  String get healthScore => 'Score de santé';

  @override
  String get drinksAvoided => 'Verres évités';

  @override
  String get estimated => 'Estimé';

  @override
  String get aiGenerated => 'Généré par IA';

  @override
  String get daysCapsLabel => 'JOURS';

  @override
  String get todaysMotivation => 'Motivation du jour';

  @override
  String get defaultMotivationQuote =>
      'Vous avez respecté votre engagement avec succès. Continuez à surfer sur la vague du changement positif.';

  @override
  String get talkToCoach => 'Parler au coach';

  @override
  String get havingACraving => 'J\'ai une envie';

  @override
  String get unlockWeeklyReportsTitle => 'Débloquez les rapports hebdomadaires';

  @override
  String get unlockWeeklyReportsMessage =>
      'Consultez chaque semaine vos jours d\'abstinence, les tendances de votre humeur et un retour personnalisé par IA. Passez à la version Premium pour débloquer.';

  @override
  String get maybeLater => 'Plus tard';

  @override
  String get upgrade => 'Mettre à niveau';

  @override
  String get weeklyReportTitle => 'Rapport hebdomadaire';

  @override
  String get weeklyReportsPremiumTitle =>
      'Les rapports hebdomadaires sont une fonctionnalité Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Consultez chaque semaine vos jours d\'abstinence, vos tendances d\'humeur, vos envies et des conseils IA personnalisés.';

  @override
  String get upgradeToPremium => 'Passer à la version Premium';

  @override
  String get couldNotGenerateReport =>
      'Impossible de générer votre rapport pour le moment.';

  @override
  String get tryAgainLower => 'Réessayer';

  @override
  String get statSoberDays => 'Jours d\'abstinence';

  @override
  String get statAvgMood => 'Humeur moyenne';

  @override
  String get statCravings => 'Envies';

  @override
  String get statMoneySaved => 'Argent économisé';

  @override
  String get coachFeedback => 'Retour du coach';

  @override
  String get journalInsights => 'Analyses du journal';

  @override
  String get next => 'Suivant';

  @override
  String get question1Title => 'Quel est votre objectif';

  @override
  String get question1Subtitle =>
      'Choisissez l\'objectif qui compte\nle plus pour vous';

  @override
  String get goalQuitCompletely => 'Arrêter complètement';

  @override
  String get goalReduceDrinking => 'Réduire la consommation';

  @override
  String get goalTakeABreak => 'Faire une pause';

  @override
  String get goalBuildHealthierHabits => 'Prendre de meilleures habitudes';

  @override
  String get question3Title => 'Parlez-nous de votre\nroutine';

  @override
  String get drinksPerWeek => 'Verres par semaine';

  @override
  String get moneySpentPerWeek => 'Argent dépensé par semaine';

  @override
  String get drinkingLevel => 'Niveau de consommation';

  @override
  String get triggersLabel => 'Déclencheurs';

  @override
  String get levelSocial => 'Occasionnel';

  @override
  String get levelRegular => 'Régulier';

  @override
  String get levelHeavy => 'Élevé';

  @override
  String get levelDependent => 'Dépendant';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Solitude';

  @override
  String get triggerHabit => 'Habitude';

  @override
  String get triggerSadness => 'Tristesse';

  @override
  String get triggerAnger => 'Colère';

  @override
  String get triggerBoredom => 'Ennui';

  @override
  String get triggerSocialPressure => 'Pression sociale';

  @override
  String get triggerCelebration => 'Fête';

  @override
  String get triggerSleepProblems => 'Troubles du sommeil';

  @override
  String get triggerWorkPressure => 'Pression au travail';

  @override
  String get question4Title => 'Pourquoi voulez-vous changer ?';

  @override
  String get question4Subtitle => 'Votre raison vous aidera à rester motivé.';

  @override
  String get reasonImproveHealth => 'Améliorer ma santé';

  @override
  String get reasonSaveMoney => 'Économiser de l\'argent';

  @override
  String get reasonFamily => 'Famille';

  @override
  String get reasonBetterSleep => 'Mieux dormir';

  @override
  String get reasonMentalClarity => 'Clarté mentale';

  @override
  String get reasonFitness => 'Forme physique';

  @override
  String get reasonSelfRespect => 'Respect de soi';

  @override
  String get reasonCareer => 'Carrière';

  @override
  String get milestoneUnlockedLabel => 'ÉTAPE FRANCHIE';

  @override
  String incredibleNamePrefix(String name) {
    return 'Incroyable, $name !';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount économisés';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count évités';
  }

  @override
  String get shareMyMilestone => 'Partager mon étape';

  @override
  String get milestoneImageShareError =>
      'Impossible de créer l\'image de l\'étape. Veuillez réessayer.';

  @override
  String get dailyCheckInTitle => 'Bilan quotidien';

  @override
  String get howAreYouFeelingToday => 'Comment vous sentez-vous aujourd\'hui ?';

  @override
  String get honestAnswerHelp =>
      'Votre réponse honnête nous aide à mieux vous accompagner';

  @override
  String get didYouDrinkToday => 'Avez-vous bu aujourd\'hui ?';

  @override
  String get noLabel => 'Non';

  @override
  String get yesLabel => 'Oui';

  @override
  String get cravingLevelNow => 'Niveau d\'envie actuel ?';

  @override
  String get anythingOnMind => 'Quelque chose à exprimer ?';

  @override
  String get optionalLabel => '(optionnel)';

  @override
  String get dailyNoteHint =>
      'Écrivez sur votre journée, vos déclencheurs, vos victoires...';

  @override
  String get alreadyCheckedInToday => 'Bilan déjà effectué aujourd\'hui';

  @override
  String get saveCheckIn => 'Enregistrer le bilan';

  @override
  String get checkInsHelpTrack =>
      'Les bilans permettent de suivre vos progrès au fil du temps';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Vous avez déjà rempli le bilan d\'aujourd\'hui.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Veuillez d\'abord répondre aux deux questions ci-dessus';

  @override
  String get checkInSaved => 'Bilan enregistré';

  @override
  String get cravingNone => 'Aucune';

  @override
  String get cravingLow => 'Faible';

  @override
  String get cravingMedium => 'Moyenne';

  @override
  String get cravingStrong => 'Forte';

  @override
  String get moodBad => 'Mauvaise';

  @override
  String get moodLow => 'Moyenne';

  @override
  String get moodGreat => 'Excellente';

  @override
  String get sosSupportTitle => 'Soutien SOS';

  @override
  String notAloneMessage(String name) {
    return 'Vous n\'êtes pas seul(e), $name';
  }

  @override
  String get cravingsPassMessage =>
      'L\'envie finit par passer. Choisissez une option ci-dessous pour surmonter ce moment.';

  @override
  String get breathingExercise => 'Exercice de respiration';

  @override
  String get breathingExerciseSubtitle => 'Technique guidée 4-7-8, 2 minutes';

  @override
  String get rideTheWave => 'Surfer sur la vague';

  @override
  String get rideTheWaveSubtitle =>
      'Minuteur de 15 min — l\'envie finit toujours par passer';

  @override
  String get copingTips => 'Conseils de gestion';

  @override
  String get copingTipsSubtitle =>
      'Stratégies personnalisées selon vos déclencheurs';

  @override
  String get talkToAiCoach => 'Parler au coach IA';

  @override
  String get talkToAiCoachSubtitle =>
      'Discutez avec votre compagnon de rétablissement';

  @override
  String get callSomeone => 'Appeler un proche';

  @override
  String get callSomeoneSubtitle => 'Joindre votre contact de confiance';

  @override
  String get contactsPermissionNeeded =>
      'L\'autorisation d\'accéder aux contacts est requise pour passer un appel.';

  @override
  String get beatenCravingsPrefix => 'Vous avez déjà surmonté une envie ';

  @override
  String beatenCravingsCount(int count) {
    return '$count fois';
  }

  @override
  String get beatenCravingsSuffix => ' par le passé. Vous pouvez le refaire.';

  @override
  String get tellUsAboutYourself => 'Parlez-nous de vous';

  @override
  String get detailsSubtitle =>
      'Ces informations nous aident à personnaliser votre parcours et à vous fournir des données précises.';

  @override
  String get nameLabel => 'Prénom';

  @override
  String get nameHint => 'ex. Alex Rivers';

  @override
  String get ageLabel => 'Âge';

  @override
  String get ageHint => 'ex. 32';

  @override
  String get sexAssignedAtBirth => 'Sexe assigné à la naissance';

  @override
  String get sexFemale => 'Femme';

  @override
  String get sexMale => 'Homme';

  @override
  String get heightLabel => 'Taille';

  @override
  String get weightLabel => 'Poids';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Limite quotidienne atteinte';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Vous avez utilisé l\'ensemble de vos $limit messages gratuits aujourd\'hui. Passez à la version Premium pour discuter sans limite.';
  }

  @override
  String get coachConnectError =>
      'Impossible de se connecter pour le moment. Veuillez réessayer dans un instant.';

  @override
  String get clearConversationTitle => 'Effacer la conversation ?';

  @override
  String get clearConversationMessage =>
      'Cela supprimera définitivement votre historique de discussion avec le coach.';

  @override
  String get clearLabel => 'Effacer';

  @override
  String get recoveryCoachTitle => 'Coach de rétablissement';

  @override
  String get onlineLabel => 'En ligne';

  @override
  String get clearConversationMenuItem => 'Effacer la conversation';

  @override
  String chatGreeting(String name) {
    return 'Bonjour $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Vous en êtes au ${days}e jour de votre parcours. Je suis là si vous avez besoin de discuter.';
  }

  @override
  String get quickPromptsLabel => 'SUGGESTIONS RAPIDES';

  @override
  String get promptCravingLabel => 'J\'ai une envie soudaine';

  @override
  String get promptCravingSubtitle => 'Retrouver son calme, rapidement';

  @override
  String get promptMotivationLabel => 'Besoin de motivation';

  @override
  String get promptMotivationSubtitle =>
      'Un coup de pouce dans les moments durs';

  @override
  String get promptSocialLabel => 'Situation sociale';

  @override
  String get promptSocialSubtitle => 'Gérer une soirée ou un événement';

  @override
  String get promptSlippedLabel => 'J\'ai craqué';

  @override
  String get promptSlippedSubtitle => 'Sans jugement, juste du soutien';

  @override
  String get typeMessageHint => 'Écrivez un message...';

  @override
  String get editProfileTitle => 'Modifier le profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Impossible d\'enregistrer le profil : $error';
  }

  @override
  String get heightCmLabel => 'Taille (cm)';

  @override
  String get weightKgLabel => 'Poids (kg)';

  @override
  String get saveChangesLabel => 'Enregistrer les modifications';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Analyses et statistiques avancées';

  @override
  String get featureUnlimitedJournal => 'Entrées de journal illimitées';

  @override
  String get featureUnlimitedChat => 'Discussion illimitée avec le coach IA';

  @override
  String get featureCommunityGroups => 'Groupes communautaires exclusifs';

  @override
  String get featurePrioritySupport => 'Support d\'experts prioritaire';

  @override
  String get featureThemePacks => 'Packs de thèmes personnalisés';

  @override
  String get featureDataExport => 'Exportation des données';

  @override
  String get featureAdFree => 'Expérience sans publicité';

  @override
  String get premiumMemberTitle => 'Vous êtes membre Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Débloquez l\'intégralité de\nvotre expérience';

  @override
  String get premiumMemberSubtitle =>
      'Merci de soutenir votre parcours de rétablissement — toutes les fonctionnalités premium ci-dessous sont débloquées.';

  @override
  String get premiumJoinSubtitle =>
      'Rejoignez des milliers de personnes qui accélèrent leur guérison grâce à nos outils premium et à un accompagnement personnalisé.';

  @override
  String get monthlyPlanLabel => 'Mensuel';

  @override
  String get perMonthSuffix => '/mois';

  @override
  String get cancelAnytimeLabel => 'Annulable à tout moment';

  @override
  String get yearlyPlanLabel => 'Annuel';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Facturé annuellement à $amount';
  }

  @override
  String get bestValueLabel => 'Meilleure offre';

  @override
  String get alreadyPremiumLabel => 'Vous êtes Premium ✓';

  @override
  String get startPremiumLabel => 'Démarrer l\'expérience Premium';

  @override
  String get manageSubscriptionLabel =>
      'Gérez ou annulez depuis les paramètres d\'abonnement de votre appareil.';

  @override
  String get noCommitmentLabel => 'Sans engagement. Annulable à tout moment.';

  @override
  String get continueFreePlanLabel => 'Continuer avec la version gratuite';

  @override
  String get backToHomeLabel => 'Retour à l\'accueil';

  @override
  String get cancelPremiumLabel => 'Annuler Premium';

  @override
  String get cancelPremiumTitle => 'Annuler l\'abonnement Premium ?';

  @override
  String get cancelPremiumMessage =>
      'Vous perdrez l\'accès au journal illimité, à la discussion illimitée avec le coach, aux statistiques détaillées et aux rapports hebdomadaires. Vous pourrez vous réabonner à tout moment.';

  @override
  String get keepPremiumLabel => 'Conserver Premium';

  @override
  String get nowPremiumMessage =>
      'Vous êtes désormais Premium ! Profitez pleinement de votre expérience.';

  @override
  String get premiumCancelledMessage =>
      'Abonnement Premium annulé. Vous êtes repassé(e) à l\'offre gratuite.';

  @override
  String get termsOfUseLabel => 'Conditions d\'utilisation';

  @override
  String get navHomeLabel => 'Accueil';

  @override
  String get navStatsLabel => 'Stats';

  @override
  String get navJournalLabel => 'Journal';

  @override
  String get navBadgesLabel => 'Badges';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Objectifs de rétablissement';

  @override
  String get drinksPerWeekLabel => 'Drinks per week';

  @override
  String get quitReasonsLabel => 'Raisons d\'arrêter';

  @override
  String get quitReasonsHelperText =>
      'Séparez les différentes raisons par une virgule.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Impossible d\'enregistrer les objectifs : $error';
  }

  @override
  String get goalHint => 'ex. Abstinence totale';

  @override
  String get drinksPerWeekHint => 'ex. 12';

  @override
  String get quitReasonsHint => 'ex. Santé, Famille, Argent';

  @override
  String get todaysPrompt => 'Sujet du jour';

  @override
  String get defaultJournalPrompt => 'À quoi pensez-vous aujourd\'hui ?';

  @override
  String get aiJournalInsights => 'Analyses du journal par l\'IA';

  @override
  String get unlockJournalInsightsMessage =>
      'Débloquez les tendances hebdomadaires, l\'évolution de votre humeur et des conseils personnalisés tirés de votre journal.';

  @override
  String get notEnoughJournalData =>
      'Pas encore assez de données — rédigez quelques notes cette semaine puis revenez ici.';

  @override
  String get openEntry => 'Ouvrir';

  @override
  String get editEntry => 'Modifier';

  @override
  String get deleteEntry => 'Supprimer';

  @override
  String get searchJournalEntries => 'Rechercher des notes...';

  @override
  String get writeNewEntry => 'Rédiger une nouvelle note';

  @override
  String get recentEntries => 'Notes récentes';

  @override
  String get noJournalEntriesYet =>
      'Aucune note pour l\'instant — rédigez votre première réflexion ci-dessus.';

  @override
  String get noEntriesMatchFilters =>
      'Aucune note ne correspond à vos filtres.';

  @override
  String get weeklyJournalLimitReached => 'Limite hebdomadaire atteinte';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Vous avez utilisé vos $limit notes de journal gratuites cette semaine. Passez à la version Premium pour un accès illimité.';
  }

  @override
  String get newEntry => 'Nouvelle note';

  @override
  String get writeYourThoughts => 'Écrivez vos pensées';

  @override
  String get saveEntry => 'Enregistrer la note';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining note(s) gratuite(s) restante(s) sur $limit cette semaine';
  }

  @override
  String get deleteEntryQuestion => 'Supprimer la note ?';

  @override
  String get deleteEntryConfirmation =>
      'Cette note sera définitivement supprimée. Cette action est irréversible.';

  @override
  String get journalEntryNotFound => 'Note introuvable';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Cette note du journal a peut-être été supprimée.';

  @override
  String get goBack => 'Retour';

  @override
  String get journalEntryTitle => 'Note du journal';

  @override
  String get moodStruggling => 'En difficulté';

  @override
  String get moodUnwell => 'Pas bien';

  @override
  String get moodNeutral => 'Neutre';

  @override
  String get whatHappenedToday => 'Que s\'est-il passé aujourd\'hui ?';

  @override
  String get trigger => 'Déclencheur';

  @override
  String get whatHelped => 'Ce qui a aidé';

  @override
  String get whatIllTryNextTime => 'Ce que j\'essayerai la prochaine fois';

  @override
  String get journalPrivacyMessage =>
      'Votre réflexion est privée et conservée dans votre journal.';

  @override
  String get unlocked => 'Débloqué';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours restants',
      one: '$count jour restant',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count Jours';
  }

  @override
  String get firstReflection => 'Première\nréflexion';

  @override
  String get oneJournalEntry => '1 note dans le journal';

  @override
  String get openBook => 'Livre ouvert';

  @override
  String get tenJournalEntries => '10 notes dans le journal';

  @override
  String get dedicatedWriter => 'Rédacteur\npassionné';

  @override
  String get thirtyJournalEntries => '30 notes dans le journal';

  @override
  String get firstConversation => 'Première\ndiscussion';

  @override
  String get oneAiCoachChat => '1 discussion avec le coach IA';

  @override
  String get keepTalking => 'Poursuivre la discussion';

  @override
  String get fiveConversations => '5 discussions';

  @override
  String get coachCompanion => 'Fidèle au\ncoach';

  @override
  String get twentyConversations => '20 discussions';

  @override
  String get checkInHabit => 'Habitude du\nbilan';

  @override
  String get sevenCheckIns => '7 bilans';

  @override
  String get consistencyPro => 'Modèle de\nrégularité';

  @override
  String get thirtyCheckIns => '30 bilans';

  @override
  String get dedicatedJourney => 'Parcours\nexemplaire';

  @override
  String get hundredCheckIns => '100 bilans';

  @override
  String get goalGetter => 'Déterminé';

  @override
  String get threeGoalsCompleted => '3 objectifs atteints';

  @override
  String get goalAchiever => 'Accomplisseur\nd\'objectifs';

  @override
  String get tenGoalsCompleted => '10 objectifs atteints';

  @override
  String get firstSavings => 'Premières\néconomies';

  @override
  String get fiveHundredSaved => '500 \$ économisés';

  @override
  String get smartSaver => 'Économe avisé';

  @override
  String get oneThousandSaved => '1 000 \$ économisés';

  @override
  String get bigSaver => 'Grand économe';

  @override
  String get fiveThousandSaved => '5 000 \$ économisés';

  @override
  String currencyProgress(String current, String target) {
    return '$current \$ sur $target \$';
  }

  @override
  String countProgress(int current, int target) {
    return '$current sur $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Poursuivez ainsi — votre première étape importante vous attend !';

  @override
  String get badgesAndMilestones => 'Badges et étapes';

  @override
  String get yourMilestoneJourney => 'Votre parcours par étapes';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count étapes franchies.\nAppuyez pour voir',
      one: '$count étape franchie.\nAppuyez pour voir',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Vous avez franchi $unlocked sur $total étapes au cours de votre parcours.';
  }

  @override
  String get remaining => 'Restant';

  @override
  String get complete => 'Terminé';

  @override
  String get nextMilestone => 'Prochaine étape';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% accomplis';
  }

  @override
  String get sobrietyMilestones => 'Étapes de sobriété';

  @override
  String get journeyBadges => 'Badges du parcours';

  @override
  String get bronze => 'BRONZE';

  @override
  String get silver => 'ARGENT';

  @override
  String get gold => 'OR';

  @override
  String get platinum => 'PLATINE';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Analyse de votre parcours...';

  @override
  String get aiCreatingSanctuary => 'Notre IA crée votre espace personnalisé.';

  @override
  String get understandingHabits => 'Analyse de vos habitudes...';

  @override
  String get calculatingBaseline => 'Calcul de vos données de base...';

  @override
  String get personalizingPlan => 'Personnalisation de votre programme...';

  @override
  String get finalizingSanctuary => 'Finalisation de votre espace...';

  @override
  String get creatingYourPlan => 'Création de votre programme...';

  @override
  String get personalizedPlanError =>
      'Impossible de créer votre programme personnalisé. Veuillez réessayer.';

  @override
  String get retry => 'Réessayer';

  @override
  String get breathInhale => 'INSPIREZ';

  @override
  String get breathHold => 'MAINTENEZ';

  @override
  String get breathExhale => 'EXPIREZ';

  @override
  String get breathDone => 'TERMINÉ';

  @override
  String get breathGreatJob => 'Beau travail !';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessions aujourd\'hui',
      one: '$count session aujourd\'hui',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Terminer l\'exercice';

  @override
  String get done => 'Terminé';

  @override
  String get noCopingTipsYet => 'Pas encore de conseils de gestion';

  @override
  String get copingStrategiesWillAppear =>
      'Vos stratégies personnalisées s\'afficheront ici une fois votre programme de rétablissement généré.';

  @override
  String get strategiesTailoredToTriggers =>
      'Stratégies adaptées à vos déclencheurs';

  @override
  String get cravingsPeakAndPass => 'L\'envie atteint un pic\npuis s\'estompe';

  @override
  String get rideTheWaveDescription =>
      'La plupart des envies disparaissent en moins de 15 minutes. Vous n\'avez pas besoin de céder — surfez simplement sur la vague avec nous.';

  @override
  String get stayWithIt => 'tenez bon';

  @override
  String get youMadeIt => 'vous y êtes arrivé';

  @override
  String get readyWhenYouAre => 'prêt quand vous l\'êtes';

  @override
  String get rideItAgain => 'Surfer à nouveau';

  @override
  String get start15MinuteTimer => 'Lancer le minuteur de 15 minutes';

  @override
  String get rideTheWaveCompletedMessage =>
      'Vous avez surmonté la vague. C\'est une vraie preuve de force. 💪';

  @override
  String get myProgress => 'Mes progrès';

  @override
  String get weekLabel => 'Semaine';

  @override
  String get monthLabel => 'Mois';

  @override
  String get allLabel => 'Tout';

  @override
  String get daysSoberStatLabel => 'Jours\nsans alcool';

  @override
  String get savedStatLabel => 'Économisés';

  @override
  String get avoidedStatLabel => 'Évités';

  @override
  String get moodTrends => 'Tendances d\'humeur';

  @override
  String get cravingsPattern => 'Fréquence des envies';

  @override
  String get unlockLabel => 'Débloquer';

  @override
  String get unlockFullStats => 'Débloquer toutes les stats';

  @override
  String get premiumStatsMessage =>
      'Les tendances d\'humeur et la fréquence des envies sont des fonctionnalités Premium. Passez à la version supérieure pour voir l\'ensemble de vos statistiques.';

  @override
  String get healthMilestonesWillAppear =>
      'Vos étapes de santé s\'afficheront ici.';

  @override
  String get healthMilestones => 'Étapes de santé';

  @override
  String dayNumber(int day) {
    return 'Jour $day';
  }

  @override
  String get soberLabel => 'Sobre';

  @override
  String get slipLabel => 'Écart';

  @override
  String get noDataLabel => 'Pas de données';

  @override
  String get milestone24Hours => '24 heures';

  @override
  String get milestoneOneWeek => 'Une semaine';

  @override
  String get milestoneOneMonth => 'Un mois';

  @override
  String get milestoneThreeMonths => 'Trois mois';

  @override
  String get milestoneSixMonths => 'Six mois';

  @override
  String get milestoneOneYear => 'Un an';

  @override
  String milestoneDayCount(int day) {
    return 'Étape du ${day}e jour';
  }

  @override
  String get maybeLaterLabel => 'Plus tard';

  @override
  String get cancelLabel => 'Annuler';
}
