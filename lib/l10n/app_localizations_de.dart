// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get skip => 'Überspringen';

  @override
  String get continueButton => 'Weiter';

  @override
  String get getStarted => 'Jetzt starten';

  @override
  String get onboardingTitle1 => 'Übernehmen Sie die Kontrolle';

  @override
  String get onboardingSubtitle1 =>
      'Verfolgen Sie Ihren Weg, feiern Sie Erfolge und werden Sie jeden Tag gesünder.';

  @override
  String get onboardingTitle2 => 'Ihr KI-Genesungsbegleiter';

  @override
  String get onboardingSubtitle2 =>
      'Erhalten Sie personalisierte Ratschläge, gesunde Gewohnheiten und Fortschrittsberichte.';

  @override
  String get goodMorning => 'Guten Morgen';

  @override
  String get goodAfternoon => 'Guten Tag';

  @override
  String get goodEvening => 'Guten Abend';

  @override
  String get goodNight => 'Gute Nacht';

  @override
  String get embracingClarity => 'Klarheit annehmen, Tag für Tag.';

  @override
  String get streakLabel => 'SERIE';

  @override
  String get goalLabel => 'Ziel';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '$count Tag',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium-Plan';

  @override
  String get premiumPlanSubtitle => 'Schalten Sie das volle Erlebnis frei';

  @override
  String get accountAndSupport => 'KONTO & SUPPORT';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get privacyPolicySubtitle => 'Datenfreigabe und Sicherheit verwalten';

  @override
  String get termsOfService => 'Nutzungsbedingungen';

  @override
  String get termsOfServiceSubtitle => 'FAQs, Kontakt und Ressourcen';

  @override
  String get shareApp => 'App teilen';

  @override
  String get shareAppSubtitle => 'Teilen Sie die App mit Freunden';

  @override
  String get resetData => 'Daten zurücksetzen';

  @override
  String get resetDataSubtitle =>
      'Löschen Sie alle gespeicherten Daten auf diesem Gerät';

  @override
  String get resetAllDataTitle => 'Alle Daten zurücksetzen?';

  @override
  String get resetAllDataMessage =>
      'Dadurch wird alles auf diesem Gerät Gelöschte unwiderruflich entfernt.';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get chooseFromGallery => 'Aus Galerie auswählen';

  @override
  String get takePhoto => 'Foto aufnehmen';

  @override
  String get removePhoto => 'Foto entfernen';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Foto konnte nicht aktualisiert werden: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Foto konnte nicht entfernt werden: $error';
  }

  @override
  String get photoTooLarge =>
      'Das Foto ist auch nach der Komprimierung zu groß.';

  @override
  String get unableToLoadProfile => 'Profil konnte nicht geladen werden';

  @override
  String get pleaseTryAgain => 'Bitte versuchen Sie es erneut.';

  @override
  String get tryAgain => 'Erneut versuchen';

  @override
  String get profileNotFound => 'Profil nicht gefunden';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get noProfileDataFound =>
      'Noch keine Profildaten auf diesem Gerät vorhanden.';

  @override
  String couldNotResetData(String error) {
    return 'Daten konnten nicht zurückgesetzt werden: $error';
  }

  @override
  String get navHome => 'Start';

  @override
  String get navStats => 'Statistiken';

  @override
  String get navJournal => 'Tagebuch';

  @override
  String get navBadges => 'Erfolge';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature ist bald verfügbar.';
  }

  @override
  String get appWordmark => 'Wohlbefinden';

  @override
  String get appTitle => 'Hör auf zu trinken';

  @override
  String get splashSubtitle =>
      'Machen Sie den ersten Schritt in ein\nalkoholfreies Leben';

  @override
  String get preparingJourney => 'Ihre Reise wird\nvorbereitet';

  @override
  String get taskMorningMeditation => 'Morgenmeditation (10 Min.)';

  @override
  String get taskReadChapter => 'Kapitel 4 von \"The Sober Diaries\" lesen';

  @override
  String get taskEveningJournal => 'Abendliches Dankbarkeitstagebuch';

  @override
  String get close => 'Schließen';

  @override
  String get youAreDoingGreat => 'Sie machen das großartig!';

  @override
  String get shareMilestone => 'Meilenstein teilen';

  @override
  String shareMilestoneMessage(int days) {
    return 'Ich bin an Tag $days meiner Genesungsreise! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Mein Genesungsmeilenstein';

  @override
  String get weeklyReportReadyTitle => 'Ihr Wochenbericht ist fertig';

  @override
  String get weeklyReportReadySubtitle =>
      'Tippen Sie hier, um Ihre Woche zu sehen';

  @override
  String get howAreYouFeeling => 'Wie fühlen Sie sich?';

  @override
  String get moodTough => 'Schwer';

  @override
  String get moodOkay => 'O.K.';

  @override
  String get moodGood => 'Gut';

  @override
  String get moneySaved => 'Gespates Geld';

  @override
  String get caloriesSaved => 'Gespate Kalorien';

  @override
  String get healthScore => 'Gesundheitswert';

  @override
  String get drinksAvoided => 'Vermiedene Getränke';

  @override
  String get estimated => 'Geschätzt';

  @override
  String get aiGenerated => 'KI-generiert';

  @override
  String get daysCapsLabel => 'TAGE';

  @override
  String get todaysMotivation => 'Heutige Motivation';

  @override
  String get defaultMotivationQuote =>
      'Sie haben Ihre Verpflichtung erfolgreich gehalten. Reiten Sie weiter auf der Welle der Veränderung.';

  @override
  String get talkToCoach => 'Mit Coach sprechen';

  @override
  String get havingACraving => 'Ich habe ein Verlangen';

  @override
  String get unlockWeeklyReportsTitle => 'Wochenberichte freischalten';

  @override
  String get unlockWeeklyReportsMessage =>
      'Sehen Sie Ihre nüchternen Tage, Stimmungstrends und KI-Feedback jede Woche.';

  @override
  String get maybeLater => 'Vielleicht später';

  @override
  String get upgrade => 'Upgrade';

  @override
  String get weeklyReportTitle => 'Wochenbericht';

  @override
  String get weeklyReportsPremiumTitle =>
      'Wochenberichte sind ein Premium-Feature';

  @override
  String get weeklyReportsPremiumMessage =>
      'Verfolgen Sie Ihre Fortschritte und erhalten Sie wöchentlich personalisiertes KI-Feedback.';

  @override
  String get upgradeToPremium => 'Auf Premium upgraden';

  @override
  String get couldNotGenerateReport =>
      'Bericht konnte derzeit nicht erstellt werden.';

  @override
  String get tryAgainLower => 'Erneut versuchen';

  @override
  String get statSoberDays => 'Nüchterne Tage';

  @override
  String get statAvgMood => 'Ø Stimmung';

  @override
  String get statCravings => 'Verlangen';

  @override
  String get statMoneySaved => 'Gespartes Geld';

  @override
  String get coachFeedback => 'Coach-Feedback';

  @override
  String get journalInsights => 'Tagebuch-Einblicke';

  @override
  String get next => 'Weiter';

  @override
  String get question1Title => 'Was ist Ihr Ziel?';

  @override
  String get question1Subtitle =>
      'Wählen Sie das Ziel, das Ihnen am wichtigsten ist';

  @override
  String get goalQuitCompletely => 'Komplett aufhören';

  @override
  String get goalReduceDrinking => 'Konsum reduzieren';

  @override
  String get goalTakeABreak => 'Eine Pause einlegen';

  @override
  String get goalBuildHealthierHabits => 'Gesündere Gewohnheiten aufbauen';

  @override
  String get question3Title => 'Erzählen Sie uns von Ihrer\nRoutine';

  @override
  String get drinksPerWeek => 'Getränke pro Woche';

  @override
  String get moneySpentPerWeek => 'Ausgaben pro Woche';

  @override
  String get drinkingLevel => 'Trinkverhalten';

  @override
  String get triggersLabel => 'Auslöser';

  @override
  String get levelSocial => 'Gesellschaftlich';

  @override
  String get levelRegular => 'Regelmäßig';

  @override
  String get levelHeavy => 'Stark';

  @override
  String get levelDependent => 'Abhängig';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Einsamkeit';

  @override
  String get triggerHabit => 'Gewohnheit';

  @override
  String get triggerSadness => 'Traurigkeit';

  @override
  String get triggerAnger => 'Wut';

  @override
  String get triggerBoredom => 'Langeweile';

  @override
  String get triggerSocialPressure => 'Gruppenzwang';

  @override
  String get triggerCelebration => 'Feiern';

  @override
  String get triggerSleepProblems => 'Schlafprobleme';

  @override
  String get triggerWorkPressure => 'Arbeitsdruck';

  @override
  String get question4Title => 'Warum möchten Sie etwas ändern?';

  @override
  String get question4Subtitle =>
      'Ihr Grund wird Ihnen helfen, motiviert zu bleiben.';

  @override
  String get reasonImproveHealth => 'Gesundheit verbessern';

  @override
  String get reasonSaveMoney => 'Geld sparen';

  @override
  String get reasonFamily => 'Familie';

  @override
  String get reasonBetterSleep => 'Besser schlafen';

  @override
  String get reasonMentalClarity => 'Geistige Klarheit';

  @override
  String get reasonFitness => 'Fitness';

  @override
  String get reasonSelfRespect => 'Selbstachtung';

  @override
  String get reasonCareer => 'Karriere';

  @override
  String get milestoneUnlockedLabel => 'MEILENSTEIN FREIGESCHALTET';

  @override
  String incredibleNamePrefix(String name) {
    return 'Unglaublich, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount gespart';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count vermieden';
  }

  @override
  String get shareMyMilestone => 'Meinen Meilenstein teilen';

  @override
  String get milestoneImageShareError =>
      'Bild konnte nicht erstellt werden. Bitte versuchen Sie es erneut.';

  @override
  String get dailyCheckInTitle => 'Täglicher Check-in';

  @override
  String get howAreYouFeelingToday => 'Wie fühlen Sie sich heute?';

  @override
  String get honestAnswerHelp =>
      'Ihre ehrliche Antwort hilft uns, Sie besser zu unterstützen';

  @override
  String get didYouDrinkToday => 'Haben Sie heute Alkohol getrunken?';

  @override
  String get noLabel => 'Nein';

  @override
  String get yesLabel => 'Ja';

  @override
  String get cravingLevelNow => 'Wie stark ist das Verlangen gerade?';

  @override
  String get anythingOnMind => 'Möchten Sie etwas mitteilen?';

  @override
  String get optionalLabel => '(optional)';

  @override
  String get dailyNoteHint =>
      'Schreiben Sie über Ihren Tag, Auslöser oder Erfolge...';

  @override
  String get alreadyCheckedInToday => 'Heute bereits eingecheckt';

  @override
  String get saveCheckIn => 'Check-in speichern';

  @override
  String get checkInsHelpTrack =>
      'Check-ins helfen, Ihren Fortschritt im Laufe der Zeit zu verfolgen';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Sie haben den heutigen Check-in bereits abgeschlossen.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Bitte beantworten Sie zuerst beide obigen Fragen';

  @override
  String get checkInSaved => 'Check-in gespeichert';

  @override
  String get cravingNone => 'Keines';

  @override
  String get cravingLow => 'Schwach';

  @override
  String get cravingMedium => 'Mittel';

  @override
  String get cravingStrong => 'Stark';

  @override
  String get moodBad => 'Schlecht';

  @override
  String get moodLow => 'Gedrückt';

  @override
  String get moodGreat => 'Super';

  @override
  String get sosSupportTitle => 'SOS-Hilfe';

  @override
  String notAloneMessage(String name) {
    return 'Sie sind nicht allein, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Verlangen geht vorbei. Wählen Sie eine Option, die Ihnen jetzt hilft.';

  @override
  String get breathingExercise => 'Atemübung';

  @override
  String get breathingExerciseSubtitle => 'Geführte 4-7-8-Technik, 2 Minuten';

  @override
  String get rideTheWave => 'Welle reiten';

  @override
  String get rideTheWaveSubtitle => '15-Min-Timer — Verlangen vergeht immer';

  @override
  String get copingTips => 'Bewältigungstipps';

  @override
  String get copingTipsSubtitle => 'Strategien angepasst an Ihre Auslöser';

  @override
  String get talkToAiCoach => 'Mit KI-Coach sprechen';

  @override
  String get talkToAiCoachSubtitle => 'Chatten Sie mit Ihrem Begleiter';

  @override
  String get callSomeone => 'Jemanden anrufen';

  @override
  String get callSomeoneSubtitle => 'Rufen Sie eine Vertrauensperson an';

  @override
  String get contactsPermissionNeeded =>
      'Berechtigung für Kontakte wird benötigt.';

  @override
  String get beatenCravingsPrefix => 'Sie haben das Verlangen schon ';

  @override
  String beatenCravingsCount(int count) {
    return '$count-mal';
  }

  @override
  String get beatenCravingsSuffix => ' besiegt. Sie schaffen das wieder.';

  @override
  String get tellUsAboutYourself => 'Über Sie';

  @override
  String get detailsSubtitle =>
      'Diese Informationen helfen uns, Ihre Reise zu personalisieren.';

  @override
  String get nameLabel => 'Name';

  @override
  String get nameHint => 'z. B. Alex Rivers';

  @override
  String get ageLabel => 'Alter';

  @override
  String get ageHint => 'z. B. 32';

  @override
  String get sexAssignedAtBirth => 'Geburtsgeschlecht';

  @override
  String get sexFemale => 'Weiblich';

  @override
  String get sexMale => 'Männlich';

  @override
  String get heightLabel => 'Größe';

  @override
  String get weightLabel => 'Gewicht';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Tageslimit erreicht';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Sie haben alle $limit kostenlosen Nachrichten verbraucht. Upgraden Sie für unbegrenzten Chat.';
  }

  @override
  String get coachConnectError =>
      'Verbindung fehlgeschlagen. Bitte versuchen Sie es gleich erneut.';

  @override
  String get clearConversationTitle => 'Unterhaltung löschen?';

  @override
  String get clearConversationMessage =>
      'Dadurch wird Ihr Chat-Verlauf dauerhaft gelöscht.';

  @override
  String get clearLabel => 'Löschen';

  @override
  String get recoveryCoachTitle => 'Genesungs-Coach';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Unterhaltung löschen';

  @override
  String chatGreeting(String name) {
    return 'Hallo $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Sie sind an Tag $days. Ich bin hier, wenn Sie sprechen möchten.';
  }

  @override
  String get quickPromptsLabel => 'SCHNELLEINGABEN';

  @override
  String get promptCravingLabel => 'Ich habe Verlangen';

  @override
  String get promptCravingSubtitle => 'Schnell wieder erden';

  @override
  String get promptMotivationLabel => 'Brauche Motivation';

  @override
  String get promptMotivationSubtitle => 'Ein Schub für schwere Momente';

  @override
  String get promptSocialLabel => 'Soziale Situation';

  @override
  String get promptSocialSubtitle => 'Ein Treffen meistern';

  @override
  String get promptSlippedLabel => 'Rückfall erlitten';

  @override
  String get promptSlippedSubtitle => 'Keine Bewertung, nur Hilfe';

  @override
  String get typeMessageHint => 'Nachricht schreiben...';

  @override
  String get editProfileTitle => 'Profil bearbeiten';

  @override
  String couldNotSaveProfile(String error) {
    return 'Profil konnte nicht gespeichert werden: $error';
  }

  @override
  String get heightCmLabel => 'Größe (cm)';

  @override
  String get weightKgLabel => 'Gewicht (kg)';

  @override
  String get saveChangesLabel => 'Änderungen speichern';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Erweiterte Analysen';

  @override
  String get featureUnlimitedJournal => 'Unbegrenzte Tagebucheinträge';

  @override
  String get featureUnlimitedChat => 'Unbegrenzter Chat mit KI-Coach';

  @override
  String get featureCommunityGroups => 'Exklusive Community-Gruppen';

  @override
  String get featurePrioritySupport => 'Priorisierter Support';

  @override
  String get featureThemePacks => 'Eigene Design-Pakete';

  @override
  String get featureDataExport => 'Datenexport';

  @override
  String get featureAdFree => 'Werbefreie Erfahrung';

  @override
  String get premiumMemberTitle => 'Sie sind Premium-Mitglied';

  @override
  String get unlockFullRecoveryTitle =>
      'Schalten Sie Ihr volles\nErlebnis frei';

  @override
  String get premiumMemberSubtitle =>
      'Vielen Dank für Ihre Unterstützung — alle Premium-Funktionen sind freigeschaltet.';

  @override
  String get premiumJoinSubtitle =>
      'Schließen Sie sich Tausenden an, die ihre Genesung beschleunigen.';

  @override
  String get monthlyPlanLabel => 'Monatlich';

  @override
  String get perMonthSuffix => '/Monat';

  @override
  String get cancelAnytimeLabel => 'Jederzeit kündbar';

  @override
  String get yearlyPlanLabel => 'Jährlich';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Jährlich abgerechnet mit $amount';
  }

  @override
  String get bestValueLabel => 'Bester Wert';

  @override
  String get alreadyPremiumLabel => 'Sie sind Premium ✓';

  @override
  String get startPremiumLabel => 'Premium starten';

  @override
  String get manageSubscriptionLabel =>
      'Verwalten oder kündigen Sie in den Einstellungen Ihres Geräts.';

  @override
  String get noCommitmentLabel => 'Keine Bindung. Jederzeit kündbar.';

  @override
  String get continueFreePlanLabel => 'Mit kostenlosem Plan fortfahren';

  @override
  String get backToHomeLabel => 'Zurück zur Startseite';

  @override
  String get cancelPremiumLabel => 'Premium kündigen';

  @override
  String get cancelPremiumTitle => 'Premium kündigen?';

  @override
  String get cancelPremiumMessage =>
      'Sie verlieren den Zugriff auf unbegrenzte Einträge, Chat und Analysen.';

  @override
  String get keepPremiumLabel => 'Premium behalten';

  @override
  String get nowPremiumMessage =>
      'Sie sind jetzt Premium! Genießen Sie das volle Erlebnis.';

  @override
  String get premiumCancelledMessage =>
      'Premium gekündigt. Sie nutzen wieder den kostenlosen Plan.';

  @override
  String get termsOfUseLabel => 'Nutzungsbedingungen';

  @override
  String get navHomeLabel => 'Start';

  @override
  String get navStatsLabel => 'Statistiken';

  @override
  String get navJournalLabel => 'Tagebuch';

  @override
  String get navBadgesLabel => 'Erfolge';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Genesungsziele';

  @override
  String get drinksPerWeekLabel => 'Getränke pro Woche';

  @override
  String get quitReasonsLabel => 'Gründe fürs Aufhören';

  @override
  String get quitReasonsHelperText =>
      'Trennen Sie mehrere Gründe durch Kommas.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Ziele konnten nicht gespeichert werden: $error';
  }

  @override
  String get goalHint => 'z. B. Vollständige Abstinenz';

  @override
  String get drinksPerWeekHint => 'z. B. 12';

  @override
  String get quitReasonsHint => 'z. B. Gesundheit, Familie, Geld';

  @override
  String get todaysPrompt => 'Heutiger Impuls';

  @override
  String get defaultJournalPrompt => 'Was beschäftigt Sie heute?';

  @override
  String get aiJournalInsights => 'KI-Tagebuch-Einblicke';

  @override
  String get unlockJournalInsightsMessage =>
      'Schalten Sie wöchentliche Muster und Stimmungstrends frei.';

  @override
  String get notEnoughJournalData =>
      'Noch nicht genügend Daten vorhanden — schreiben Sie diese Woche ein paar Einträge.';

  @override
  String get openEntry => 'Öffnen';

  @override
  String get editEntry => 'Bearbeiten';

  @override
  String get deleteEntry => 'Löschen';

  @override
  String get searchJournalEntries => 'Einträge suchen...';

  @override
  String get writeNewEntry => 'Neuen Eintrag schreiben';

  @override
  String get recentEntries => 'Neueste Einträge';

  @override
  String get noJournalEntriesYet => 'Noch keine Einträge vorhanden.';

  @override
  String get noEntriesMatchFilters =>
      'Keine Einträge entsprechen Ihren Filtern.';

  @override
  String get weeklyJournalLimitReached => 'Wochenlimit erreicht';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Sie haben alle $limit kostenlosen Einträge diese Woche verbraucht.';
  }

  @override
  String get newEntry => 'Neuer Eintrag';

  @override
  String get writeYourThoughts => 'Schreiben Sie Ihre Gedanken auf';

  @override
  String get saveEntry => 'Eintrag speichern';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Noch $remaining von $limit kostenlosen Einträgen diese Woche';
  }

  @override
  String get deleteEntryQuestion => 'Eintrag löschen?';

  @override
  String get deleteEntryConfirmation =>
      'Dieser Eintrag wird dauerhaft gelöscht.';

  @override
  String get journalEntryNotFound => 'Eintrag nicht gefunden';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Dieser Eintrag wurde möglicherweise gelöscht.';

  @override
  String get goBack => 'Zurück';

  @override
  String get journalEntryTitle => 'Tagebucheintrag';

  @override
  String get moodStruggling => 'Schwer';

  @override
  String get moodUnwell => 'Unwohl';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => 'Was ist heute passiert?';

  @override
  String get trigger => 'Auslöser';

  @override
  String get whatHelped => 'Was hat geholfen';

  @override
  String get whatIllTryNextTime => 'Was ich das nächste Mal versuche';

  @override
  String get journalPrivacyMessage =>
      'Ihre Gedanken sind privat und sicher gespeichert.';

  @override
  String get unlocked => 'Freigeschaltet';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '$count Tag',
    );
    return 'Noch $_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count Tage';
  }

  @override
  String get firstReflection => 'Erste\nReflexion';

  @override
  String get oneJournalEntry => '1 Tagebucheintrag';

  @override
  String get openBook => 'Offenes Buch';

  @override
  String get tenJournalEntries => '10 Tagebucheinträge';

  @override
  String get dedicatedWriter => 'Fleißiger\nSchreiber';

  @override
  String get thirtyJournalEntries => '30 Tagebucheinträge';

  @override
  String get firstConversation => 'Erstes\nGespräch';

  @override
  String get oneAiCoachChat => '1 KI-Coach Chat';

  @override
  String get keepTalking => 'Weiter im Gespräch';

  @override
  String get fiveConversations => '5 Gespräche';

  @override
  String get coachCompanion => 'Coach-\nBegleiter';

  @override
  String get twentyConversations => '20 Gespräche';

  @override
  String get checkInHabit => 'Check-in-\nGewohnheit';

  @override
  String get sevenCheckIns => '7 Check-ins';

  @override
  String get consistencyPro => 'Konsistenz-\nProfi';

  @override
  String get thirtyCheckIns => '30 Check-ins';

  @override
  String get dedicatedJourney => 'Engagierte\nReise';

  @override
  String get hundredCheckIns => '100 Check-ins';

  @override
  String get goalGetter => 'Zielstrebig';

  @override
  String get threeGoalsCompleted => '3 Ziele erreicht';

  @override
  String get goalAchiever => 'Erfolgs-\ntyp';

  @override
  String get tenGoalsCompleted => '10 Ziele erreicht';

  @override
  String get firstSavings => 'Erste\nErsparnis';

  @override
  String get fiveHundredSaved => '500 \$ gespart';

  @override
  String get smartSaver => 'Kluger Sparer';

  @override
  String get oneThousandSaved => '1.000 \$ gespart';

  @override
  String get bigSaver => 'Großsparer';

  @override
  String get fiveThousandSaved => '5.000 \$ gespart';

  @override
  String currencyProgress(String current, String target) {
    return '$current \$ von $target \$';
  }

  @override
  String countProgress(int current, int target) {
    return '$current von $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Machen Sie weiter — Ihr erster Meilenstein wartet!';

  @override
  String get badgesAndMilestones => 'Erfolge & Meilensteine';

  @override
  String get yourMilestoneJourney => 'Ihre Meilenstein-Reise';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Meilensteine erreicht.',
      one: '$count Meilenstein erreicht.',
    );
    return '$_temp0\nTippen zum Ansehen';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Sie haben $unlocked von $total Meilensteinen freigeschaltet.';
  }

  @override
  String get remaining => 'Verbleibend';

  @override
  String get complete => 'Abgeschlossen';

  @override
  String get nextMilestone => 'Nächster Meilenstein';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% geschafft';
  }

  @override
  String get sobrietyMilestones => 'Nüchternheits-Meilensteine';

  @override
  String get journeyBadges => 'Reise-Erfolge';

  @override
  String get bronze => 'BRONZE';

  @override
  String get silver => 'SILBER';

  @override
  String get gold => 'GOLD';

  @override
  String get platinum => 'PLATIN';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Ihre Reise wird analysiert...';

  @override
  String get aiCreatingSanctuary =>
      'Unsere KI erstellt Ihren persönlichen Rückzugsort.';

  @override
  String get understandingHabits => 'Gewohnheiten verstehen...';

  @override
  String get calculatingBaseline => 'Basiswerte berechnen...';

  @override
  String get personalizingPlan => 'Plan personalisieren...';

  @override
  String get finalizingSanctuary => 'Rückzugsort fertigstellen...';

  @override
  String get creatingYourPlan => 'Plan wird erstellt...';

  @override
  String get personalizedPlanError =>
      'Ihr Plan konnte nicht erstellt werden. Bitte versuchen Sie es erneut.';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get breathInhale => 'EINATMEN';

  @override
  String get breathHold => 'HALTEN';

  @override
  String get breathExhale => 'AUSATMEN';

  @override
  String get breathDone => 'FERTIG';

  @override
  String get breathGreatJob => 'Gute Arbeit!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Sitzungen heute',
      one: '$count Sitzung heute',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Übung beenden';

  @override
  String get done => 'Fertig';

  @override
  String get noCopingTipsYet => 'Noch keine Tipps vorhanden';

  @override
  String get copingStrategiesWillAppear =>
      'Ihre Strategien werden hier angezeigt, sobald der Plan erstellt wurde.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategien angepasst an Ihre Auslöser';

  @override
  String get cravingsPeakAndPass => 'Verlangen steigt\nund vergeht';

  @override
  String get rideTheWaveDescription =>
      'Die meisten Verlangen vergehen innerhalb von 15 Minuten. Stehen Sie es mit uns durch.';

  @override
  String get stayWithIt => 'Bleiben Sie dran';

  @override
  String get youMadeIt => 'Sie haben es geschafft';

  @override
  String get readyWhenYouAre => 'Bereit, wenn Sie es sind';

  @override
  String get rideItAgain => 'Noch einmal';

  @override
  String get start15MinuteTimer => '15-Minuten-Timer starten';

  @override
  String get rideTheWaveCompletedMessage =>
      'Sie haben die Welle geritten. Das ist wahre Stärke. 💪';

  @override
  String get myProgress => 'Mein Fortschritt';

  @override
  String get weekLabel => 'Woche';

  @override
  String get monthLabel => 'Monat';

  @override
  String get allLabel => 'Alle';

  @override
  String get daysSoberStatLabel => 'Tage\nnüchtern';

  @override
  String get savedStatLabel => 'Gespart';

  @override
  String get avoidedStatLabel => 'Vermieden';

  @override
  String get moodTrends => 'Stimmungstrends';

  @override
  String get cravingsPattern => 'Muster des Verlangens';

  @override
  String get unlockLabel => 'Freischalten';

  @override
  String get unlockFullStats => 'Volle Statistik freischalten';

  @override
  String get premiumStatsMessage =>
      'Stimmungs- und Verlangenstrends sind Premium-Funktionen.';

  @override
  String get healthMilestonesWillAppear =>
      'Ihre Gesundheitsmeilensteine erscheinen hier.';

  @override
  String get healthMilestones => 'Gesundheitsmeilensteine';

  @override
  String dayNumber(int day) {
    return 'Tag $day';
  }

  @override
  String get soberLabel => 'Nüchtern';

  @override
  String get slipLabel => 'Rückfall';

  @override
  String get noDataLabel => 'Keine Daten';

  @override
  String get milestone24Hours => '24 Stunden';

  @override
  String get milestoneOneWeek => 'Eine Woche';

  @override
  String get milestoneOneMonth => 'Ein Monat';

  @override
  String get milestoneThreeMonths => 'Drei Monate';

  @override
  String get milestoneSixMonths => 'Sechs Monate';

  @override
  String get milestoneOneYear => 'Ein Jahr';

  @override
  String milestoneDayCount(int day) {
    return 'Tag $day Meilenstein';
  }

  @override
  String get maybeLaterLabel => 'Vielleicht später';

  @override
  String get cancelLabel => 'Abbrechen';
}
