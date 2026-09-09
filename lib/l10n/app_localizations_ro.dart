// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get skip => 'Omite';

  @override
  String get continueButton => 'Continuă';

  @override
  String get getStarted => 'Începe';

  @override
  String get onboardingTitle1 => 'Preia controlul asupra vieții tale';

  @override
  String get onboardingSubtitle1 =>
      'Urmărește-ți parcursul, sărbătorește fiecare reușită și devino mai sănătos în fiecare zi.';

  @override
  String get onboardingTitle2 => 'Companionul tău AI pentru recuperare';

  @override
  String get onboardingSubtitle2 =>
      'Primește îndrumare personalizată, obiceiuri sănătoase, mementouri motivaționale și rapoarte de progres create pentru parcursul tău.';

  @override
  String get goodMorning => 'Bună dimineața';

  @override
  String get goodAfternoon => 'Bună ziua';

  @override
  String get goodEvening => 'Bună seara';

  @override
  String get goodNight => 'Noapte bună';

  @override
  String get embracingClarity => 'Îmbrățișează claritatea, câte o zi pe rând.';

  @override
  String get streakLabel => 'SERIE';

  @override
  String get goalLabel => 'Obiectiv';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zile',
      one: '$count zi',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Plan Premium';

  @override
  String get premiumPlanSubtitle =>
      'Deblochează experiența completă de recuperare';

  @override
  String get accountAndSupport => 'CONT ȘI ASISTENȚĂ';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get privacyPolicySubtitle =>
      'Gestionează partajarea datelor și securitatea contului';

  @override
  String get termsOfService => 'Termeni și condiții';

  @override
  String get termsOfServiceSubtitle =>
      'Întrebări frecvente, contact și resurse';

  @override
  String get shareApp => 'Distribuie aplicația';

  @override
  String get shareAppSubtitle => 'Distribuie aplicația prietenilor';

  @override
  String get resetData => 'Resetează datele';

  @override
  String get resetDataSubtitle =>
      'Șterge tot ce este salvat pe acest dispozitiv';

  @override
  String get resetAllDataTitle => 'Resetezi toate datele?';

  @override
  String get resetAllDataMessage =>
      'Aceasta șterge tot ce este salvat pe acest dispozitiv — profilul, înregistrările din jurnal și progresul — și nu poate fi anulată.';

  @override
  String get cancel => 'Anulează';

  @override
  String get reset => 'Resetează';

  @override
  String get chooseFromGallery => 'Alege din galerie';

  @override
  String get takePhoto => 'Fă o fotografie';

  @override
  String get removePhoto => 'Elimină fotografia';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Fotografia nu a putut fi actualizată: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Fotografia nu a putut fi eliminată: $error';
  }

  @override
  String get photoTooLarge =>
      'Fotografia este prea mare chiar și după comprimare — încearcă una diferită.';

  @override
  String get unableToLoadProfile => 'Profilul tău nu poate fi încărcat';

  @override
  String get pleaseTryAgain => 'Te rugăm să încerci din nou.';

  @override
  String get tryAgain => 'Încearcă din nou';

  @override
  String get profileNotFound => 'Profilul nu a fost găsit';

  @override
  String get refresh => 'Reîmprospătează';

  @override
  String get noProfileDataFound =>
      'Nu există încă date de profil pe acest dispozitiv.';

  @override
  String couldNotResetData(String error) {
    return 'Datele nu au putut fi resetate: $error';
  }

  @override
  String get navHome => 'Acasă';

  @override
  String get navStats => 'Statistici';

  @override
  String get navJournal => 'Jurnal';

  @override
  String get navBadges => 'Insigne';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature va fi disponibil în curând.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Renunță la alcool';

  @override
  String get splashSubtitle => 'Fă primul pas către o viață\nfără alcool';

  @override
  String get preparingJourney => 'Îți pregătim\nparcursul';

  @override
  String get taskMorningMeditation => 'Meditație de dimineață (10 min)';

  @override
  String get taskReadChapter => 'Citește capitolul 4 din „The Sober Diaries”';

  @override
  String get taskEveningJournal => 'Jurnal de recunoștință de seară';

  @override
  String get close => 'Închide';

  @override
  String get youAreDoingGreat => 'Te descurci minunat!';

  @override
  String get shareMilestone => 'Distribuie etapa';

  @override
  String shareMilestoneMessage(int days) {
    return 'Sunt în ziua $days a parcursului meu de recuperare! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Etapa mea de recuperare';

  @override
  String get weeklyReportReadyTitle => 'Raportul tău săptămânal este gata';

  @override
  String get weeklyReportReadySubtitle =>
      'Atinge pentru a vedea cum a fost săptămâna ta';

  @override
  String get howAreYouFeeling => 'Cum te simți?';

  @override
  String get moodTough => 'Greu';

  @override
  String get moodOkay => 'În regulă';

  @override
  String get moodGood => 'Bine';

  @override
  String get moneySaved => 'Bani economisiți';

  @override
  String get caloriesSaved => 'Calorii economisite';

  @override
  String get healthScore => 'Scor de sănătate';

  @override
  String get drinksAvoided => 'Băuturi evitate';

  @override
  String get estimated => 'Estimat';

  @override
  String get aiGenerated => 'Generat de AI';

  @override
  String get daysCapsLabel => 'ZILE';

  @override
  String get todaysMotivation => 'Motivația de azi';

  @override
  String get defaultMotivationQuote =>
      'Ți-ai respectat cu succes angajamentul. Continuă pe valul schimbării pozitive.';

  @override
  String get talkToCoach => 'Vorbește cu antrenorul';

  @override
  String get havingACraving => 'Am poftă';

  @override
  String get unlockWeeklyReportsTitle => 'Deblochează rapoartele săptămânale';

  @override
  String get unlockWeeklyReportsMessage =>
      'Vezi în fiecare săptămână zilele fără alcool, tendințele stării de spirit și feedbackul AI personalizat. Treci la Premium pentru a debloca.';

  @override
  String get maybeLater => 'Poate mai târziu';

  @override
  String get upgrade => 'Fă upgrade';

  @override
  String get weeklyReportTitle => 'Raport săptămânal';

  @override
  String get weeklyReportsPremiumTitle =>
      'Rapoartele săptămânale sunt o funcție Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Vezi în fiecare săptămână zilele fără alcool, tendințele stării de spirit, poftele și feedbackul AI personalizat.';

  @override
  String get upgradeToPremium => 'Treci la Premium';

  @override
  String get couldNotGenerateReport => 'Raportul nu a putut fi generat acum.';

  @override
  String get tryAgainLower => 'Încearcă din nou';

  @override
  String get statSoberDays => 'Zile fără alcool';

  @override
  String get statAvgMood => 'Stare medie';

  @override
  String get statCravings => 'Pofte';

  @override
  String get statMoneySaved => 'Bani economisiți';

  @override
  String get coachFeedback => 'Feedback de la antrenor';

  @override
  String get journalInsights => 'Perspective din jurnal';

  @override
  String get next => 'Următorul';

  @override
  String get question1Title => 'Care este obiectivul tău';

  @override
  String get question1Subtitle =>
      'Alege obiectivul care contează\ncel mai mult pentru tine';

  @override
  String get goalQuitCompletely => 'Renunță complet';

  @override
  String get goalReduceDrinking => 'Redu consumul de alcool';

  @override
  String get goalTakeABreak => 'Ia o pauză';

  @override
  String get goalBuildHealthierHabits => 'Construiește obiceiuri mai sănătoase';

  @override
  String get question3Title => 'Spune-ne despre\nrutina ta';

  @override
  String get drinksPerWeek => 'Băuturi pe săptămână';

  @override
  String get moneySpentPerWeek => 'Bani cheltuiți pe săptămână';

  @override
  String get drinkingLevel => 'Nivelul consumului';

  @override
  String get triggersLabel => 'Factori declanșatori';

  @override
  String get levelSocial => 'Social';

  @override
  String get levelRegular => 'Regulat';

  @override
  String get levelHeavy => 'Ridicat';

  @override
  String get levelDependent => 'Dependent';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Singurătate';

  @override
  String get triggerHabit => 'Obicei';

  @override
  String get triggerSadness => 'Tristețe';

  @override
  String get triggerAnger => 'Furie';

  @override
  String get triggerBoredom => 'Plictiseală';

  @override
  String get triggerSocialPressure => 'Presiune socială';

  @override
  String get triggerCelebration => 'Sărbătoare';

  @override
  String get triggerSleepProblems => 'Probleme de somn';

  @override
  String get triggerWorkPressure => 'Presiune la serviciu';

  @override
  String get question4Title => 'De ce vrei să faci o schimbare?';

  @override
  String get question4Subtitle => 'Motivul tău te va ajuta să rămâi motivat.';

  @override
  String get reasonImproveHealth => 'Îmbunătățește-ți sănătatea';

  @override
  String get reasonSaveMoney => 'Economisește bani';

  @override
  String get reasonFamily => 'Familie';

  @override
  String get reasonBetterSleep => 'Somn mai bun';

  @override
  String get reasonMentalClarity => 'Claritate mentală';

  @override
  String get reasonFitness => 'Fitness';

  @override
  String get reasonSelfRespect => 'Respect de sine';

  @override
  String get reasonCareer => 'Carieră';

  @override
  String get milestoneUnlockedLabel => 'ETAPĂ DEBLOCATĂ';

  @override
  String incredibleNamePrefix(String name) {
    return 'Extraordinar, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount economisiți';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count evitate';
  }

  @override
  String get shareMyMilestone => 'Distribuie etapa mea';

  @override
  String get milestoneImageShareError =>
      'Imaginea etapei nu a putut fi creată. Încearcă din nou.';

  @override
  String get dailyCheckInTitle => 'Check-in zilnic';

  @override
  String get howAreYouFeelingToday => 'Cum te simți astăzi?';

  @override
  String get honestAnswerHelp =>
      'Răspunsul tău sincer ne ajută să te sprijinim mai bine';

  @override
  String get didYouDrinkToday => 'Ai consumat alcool astăzi?';

  @override
  String get noLabel => 'Nu';

  @override
  String get yesLabel => 'Da';

  @override
  String get cravingLevelNow => 'Cât de puternică este pofta acum?';

  @override
  String get anythingOnMind => 'Ai ceva pe suflet?';

  @override
  String get optionalLabel => '(opțional)';

  @override
  String get dailyNoteHint =>
      'Scrie despre ziua ta, factori declanșatori, reușite...';

  @override
  String get alreadyCheckedInToday => 'Ai făcut deja check-in-ul de azi';

  @override
  String get saveCheckIn => 'Salvează check-in-ul';

  @override
  String get checkInsHelpTrack =>
      'Check-in-urile ajută la urmărirea progresului în timp';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Ai finalizat deja check-in-ul de astăzi.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Te rugăm să răspunzi mai întâi la ambele întrebări de mai sus';

  @override
  String get checkInSaved => 'Check-in salvat';

  @override
  String get cravingNone => 'Niciuna';

  @override
  String get cravingLow => 'Scăzută';

  @override
  String get cravingMedium => 'Medie';

  @override
  String get cravingStrong => 'Puternică';

  @override
  String get moodBad => 'Rău';

  @override
  String get moodLow => 'Scăzut';

  @override
  String get moodGreat => 'Excelent';

  @override
  String get sosSupportTitle => 'Asistență SOS';

  @override
  String notAloneMessage(String name) {
    return 'Nu ești singur, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Poftele trec. Alege ceva de mai jos care să te ajute în acest moment.';

  @override
  String get breathingExercise => 'Exercițiu de respirație';

  @override
  String get breathingExerciseSubtitle => 'Tehnica ghidată 4-7-8, 2 minute';

  @override
  String get rideTheWave => 'Lasă valul să treacă';

  @override
  String get rideTheWaveSubtitle =>
      'Cronometru de 15 min — poftele trec întotdeauna';

  @override
  String get copingTips => 'Sfaturi pentru gestionare';

  @override
  String get copingTipsSubtitle =>
      'Strategii personalizate pentru factorii tăi declanșatori';

  @override
  String get talkToAiCoach => 'Vorbește cu antrenorul AI';

  @override
  String get talkToAiCoachSubtitle =>
      'Discută cu companionul tău pentru recuperare';

  @override
  String get callSomeone => 'Sună pe cineva';

  @override
  String get callSomeoneSubtitle => 'Contactează persoana ta de încredere';

  @override
  String get contactsPermissionNeeded =>
      'Este necesar accesul la contacte pentru a apela un contact.';

  @override
  String get beatenCravingsPrefix => 'Ai învins poftele de ';

  @override
  String beatenCravingsCount(int count) {
    return '$count ori';
  }

  @override
  String get beatenCravingsSuffix => ' înainte. Poți face asta din nou.';

  @override
  String get tellUsAboutYourself => 'Spune-ne despre tine';

  @override
  String get detailsSubtitle =>
      'Aceste informații ne ajută să-ți personalizăm parcursul de recuperare și să oferim perspective precise.';

  @override
  String get nameLabel => 'Nume';

  @override
  String get nameHint => 'ex., Alex Rivers';

  @override
  String get ageLabel => 'Vârstă';

  @override
  String get ageHint => 'ex., 32';

  @override
  String get sexAssignedAtBirth => 'Sex atribuit la naștere';

  @override
  String get sexFemale => 'Femeie';

  @override
  String get sexMale => 'Bărbat';

  @override
  String get heightLabel => 'Înălțime';

  @override
  String get weightLabel => 'Greutate';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Limita zilnică a fost atinsă';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Ai folosit toate cele $limit mesaje gratuite de astăzi. Treci la Premium pentru chat nelimitat cu antrenorul.';
  }

  @override
  String get coachConnectError =>
      'Nu m-am putut conecta acum. Te rugăm să încerci din nou peste câteva momente.';

  @override
  String get clearConversationTitle => 'Ștergi conversația?';

  @override
  String get clearConversationMessage =>
      'Aceasta va elimina definitiv istoricul chatului cu antrenorul.';

  @override
  String get clearLabel => 'Șterge';

  @override
  String get recoveryCoachTitle => 'Antrenor de recuperare';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Șterge conversația';

  @override
  String chatGreeting(String name) {
    return 'Bună, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Ești în ziua $days a parcursului tău. Sunt aici ori de câte ori vrei să vorbim.';
  }

  @override
  String get quickPromptsLabel => 'SUGESTII RAPIDE';

  @override
  String get promptCravingLabel => 'Am o poftă';

  @override
  String get promptCravingSubtitle => 'Revino rapid cu picioarele pe pământ';

  @override
  String get promptMotivationLabel => 'Am nevoie de motivație';

  @override
  String get promptMotivationSubtitle => 'Un impuls când e greu';

  @override
  String get promptSocialLabel => 'Situație socială';

  @override
  String get promptSocialSubtitle => 'Gestionează o întâlnire';

  @override
  String get promptSlippedLabel => 'Am avut o scăpare';

  @override
  String get promptSlippedSubtitle => 'Fără judecată, doar sprijin';

  @override
  String get typeMessageHint => 'Scrie un mesaj...';

  @override
  String get editProfileTitle => 'Editează profilul';

  @override
  String couldNotSaveProfile(String error) {
    return 'Profilul nu a putut fi salvat: $error';
  }

  @override
  String get heightCmLabel => 'Înălțime (cm)';

  @override
  String get weightKgLabel => 'Greutate (kg)';

  @override
  String get saveChangesLabel => 'Salvează modificările';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Perspective și analize avansate';

  @override
  String get featureUnlimitedJournal => 'Înregistrări nelimitate în jurnal';

  @override
  String get featureUnlimitedChat => 'Chat nelimitat cu antrenorul AI';

  @override
  String get featureCommunityGroups => 'Grupuri exclusive ale comunității';

  @override
  String get featurePrioritySupport => 'Asistență prioritară de la experți';

  @override
  String get featureThemePacks => 'Pachete de teme personalizate';

  @override
  String get featureDataExport => 'Export de date';

  @override
  String get featureAdFree => 'Experiență fără reclame';

  @override
  String get premiumMemberTitle => 'Ești membru Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Deblochează experiența\ncompletă de recuperare';

  @override
  String get premiumMemberSubtitle =>
      'Îți mulțumim că susții parcursul tău de recuperare — toate funcțiile Premium de mai jos sunt deblocate.';

  @override
  String get premiumJoinSubtitle =>
      'Alătură-te unei comunități de mii de persoane care își accelerează\nparcursul spre vindecare cu instrumentele noastre Premium\nși sprijin personalizat.';

  @override
  String get monthlyPlanLabel => 'Lunar';

  @override
  String get perMonthSuffix => '/lună';

  @override
  String get cancelAnytimeLabel => 'Anulează oricând';

  @override
  String get yearlyPlanLabel => 'Anual';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Facturat anual la $amount';
  }

  @override
  String get bestValueLabel => 'Cea mai bună valoare';

  @override
  String get alreadyPremiumLabel => 'Ești Premium ✓';

  @override
  String get startPremiumLabel => 'Începe Premium';

  @override
  String get manageSubscriptionLabel =>
      'Gestionează sau anulează din setările de abonament ale dispozitivului.';

  @override
  String get noCommitmentLabel => 'Fără obligații. Anulează oricând.';

  @override
  String get continueFreePlanLabel => 'Continuă cu planul gratuit';

  @override
  String get backToHomeLabel => 'Înapoi la Acasă';

  @override
  String get cancelPremiumLabel => 'Anulează Premium';

  @override
  String get cancelPremiumTitle => 'Anulezi Premium?';

  @override
  String get cancelPremiumMessage =>
      'Vei pierde accesul la înregistrări nelimitate în jurnal, chat nelimitat cu antrenorul, statistici și rapoarte săptămânale. Te poți abona din nou oricând.';

  @override
  String get keepPremiumLabel => 'Păstrează Premium';

  @override
  String get nowPremiumMessage =>
      'Acum ești Premium! Bucură-te de experiența completă de recuperare.';

  @override
  String get premiumCancelledMessage =>
      'Premium a fost anulat. Ai revenit la planul gratuit.';

  @override
  String get termsOfUseLabel => 'Termeni de utilizare';

  @override
  String get navHomeLabel => 'Acasă';

  @override
  String get navStatsLabel => 'Statistici';

  @override
  String get navJournalLabel => 'Jurnal';

  @override
  String get navBadgesLabel => 'Insigne';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Obiective de recuperare';

  @override
  String get drinksPerWeekLabel => 'Băuturi pe săptămână';

  @override
  String get quitReasonsLabel => 'Motive pentru renunțare';

  @override
  String get quitReasonsHelperText => 'Separă mai multe motive prin virgulă.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Obiectivele de recuperare nu au putut fi salvate: $error';
  }

  @override
  String get goalHint => 'ex., Abstinență completă';

  @override
  String get drinksPerWeekHint => 'ex., 12';

  @override
  String get quitReasonsHint => 'ex., Sănătate, Familie, Bani';

  @override
  String get todaysPrompt => 'Întrebarea de azi';

  @override
  String get defaultJournalPrompt => 'La ce te gândești astăzi?';

  @override
  String get aiJournalInsights => 'Perspective AI din jurnal';

  @override
  String get unlockJournalInsightsMessage =>
      'Deblochează tiparele săptămânale, tendințele stării de spirit și perspective personalizate din înregistrările tale.';

  @override
  String get notEnoughJournalData =>
      'Nu există încă suficiente date — scrie câteva înregistrări săptămâna aceasta și revino.';

  @override
  String get openEntry => 'Deschide';

  @override
  String get editEntry => 'Editează';

  @override
  String get deleteEntry => 'Șterge';

  @override
  String get searchJournalEntries => 'Caută înregistrări...';

  @override
  String get writeNewEntry => 'Scrie o înregistrare nouă';

  @override
  String get recentEntries => 'Înregistrări recente';

  @override
  String get noJournalEntriesYet =>
      'Nu există încă înregistrări în jurnal — scrie prima ta reflecție mai sus.';

  @override
  String get noEntriesMatchFilters =>
      'Nicio înregistrare nu corespunde filtrelor tale.';

  @override
  String get weeklyJournalLimitReached => 'Limita săptămânală a fost atinsă';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Ai folosit toate cele $limit înregistrări gratuite din jurnal pentru această săptămână. Treci la Premium pentru înregistrări nelimitate.';
  }

  @override
  String get newEntry => 'Înregistrare nouă';

  @override
  String get writeYourThoughts => 'Scrie-ți gândurile';

  @override
  String get saveEntry => 'Salvează înregistrarea';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Mai ai $remaining din $limit înregistrări gratuite în această săptămână';
  }

  @override
  String get deleteEntryQuestion => 'Ștergi înregistrarea?';

  @override
  String get deleteEntryConfirmation =>
      'Această înregistrare va fi ștearsă definitiv. Acțiunea nu poate fi anulată.';

  @override
  String get journalEntryNotFound => 'Înregistrarea nu a fost găsită';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Este posibil ca această înregistrare din jurnal să fi fost ștearsă.';

  @override
  String get goBack => 'Înapoi';

  @override
  String get journalEntryTitle => 'Înregistrare din jurnal';

  @override
  String get moodStruggling => 'Mă lupt';

  @override
  String get moodUnwell => 'Nu mă simt bine';

  @override
  String get moodNeutral => 'Neutru';

  @override
  String get whatHappenedToday => 'Ce s-a întâmplat astăzi?';

  @override
  String get trigger => 'Declanșator';

  @override
  String get whatHelped => 'Ce m-a ajutat';

  @override
  String get whatIllTryNextTime => 'Ce voi încerca data viitoare';

  @override
  String get journalPrivacyMessage =>
      'Reflecția ta este privată și salvată în jurnal.';

  @override
  String get unlocked => 'Deblocat';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'le',
      one: '',
    );
    return 'Mai este $count zi$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count zile';
  }

  @override
  String get firstReflection => 'Prima\nreflecție';

  @override
  String get oneJournalEntry => '1 înregistrare în jurnal';

  @override
  String get openBook => 'Deschide cartea';

  @override
  String get tenJournalEntries => '10 înregistrări în jurnal';

  @override
  String get dedicatedWriter => 'Scriitor\nDedicat';

  @override
  String get thirtyJournalEntries => '30 de înregistrări în jurnal';

  @override
  String get firstConversation => 'Prima\nconversație';

  @override
  String get oneAiCoachChat => '1 chat cu antrenorul AI';

  @override
  String get keepTalking => 'Continuă să vorbești';

  @override
  String get fiveConversations => '5 conversații';

  @override
  String get coachCompanion => 'Companionul\nantrenorului';

  @override
  String get twentyConversations => '20 de conversații';

  @override
  String get checkInHabit => 'Obiceiul de\ncheck-in';

  @override
  String get sevenCheckIns => '7 check-in-uri';

  @override
  String get consistencyPro => 'Expert în\nconsecvență';

  @override
  String get thirtyCheckIns => '30 de check-in-uri';

  @override
  String get dedicatedJourney => 'Parcurs\nDedicat';

  @override
  String get hundredCheckIns => '100 de check-in-uri';

  @override
  String get goalGetter => 'Cuceritor de obiective';

  @override
  String get threeGoalsCompleted => '3 obiective finalizate';

  @override
  String get goalAchiever => 'Realizator de\nobiective';

  @override
  String get tenGoalsCompleted => '10 obiective finalizate';

  @override
  String get firstSavings => 'Prima\neconomie';

  @override
  String get fiveHundredSaved => '500 \$ economisiți';

  @override
  String get smartSaver => 'Economisitor inteligent';

  @override
  String get oneThousandSaved => '1.000 \$ economisiți';

  @override
  String get bigSaver => 'Mare economisitor';

  @override
  String get fiveThousandSaved => '\$5,000 Saved';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current din \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current din $target';
  }

  @override
  String get firstMilestoneWaiting => 'Continuă — prima ta etapă te așteaptă!';

  @override
  String get badgesAndMilestones => 'Insigne și etape';

  @override
  String get yourMilestoneJourney => 'Parcursul tău prin etape';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e',
      one: 'ă',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'e',
      one: 'ă',
    );
    return '$count etap$_temp0 atins$_temp1.\nAtinge pentru a vedea';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Ai deblocat $unlocked din $total etape în parcursul tău.';
  }

  @override
  String get remaining => 'Rămase';

  @override
  String get complete => 'Finalizat';

  @override
  String get nextMilestone => 'Următoarea etapă';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% parcurs';
  }

  @override
  String get sobrietyMilestones => 'Etape fără alcool';

  @override
  String get journeyBadges => 'Insigne de parcurs';

  @override
  String get bronze => 'BRONZ';

  @override
  String get silver => 'ARGINT';

  @override
  String get gold => 'AUR';

  @override
  String get platinum => 'PLATINĂ';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Îți analizăm parcursul...';

  @override
  String get aiCreatingSanctuary =>
      'AI-ul nostru îți creează un spațiu personalizat de recuperare.';

  @override
  String get understandingHabits => 'Înțelegem obiceiurile...';

  @override
  String get calculatingBaseline => 'Calculăm nivelul tău de bază...';

  @override
  String get personalizingPlan => 'Îți personalizăm planul...';

  @override
  String get finalizingSanctuary => 'Finalizăm spațiul tău de recuperare...';

  @override
  String get creatingYourPlan => 'Îți creăm planul...';

  @override
  String get personalizedPlanError =>
      'Nu am putut crea planul tău personalizat. Te rugăm să încerci din nou.';

  @override
  String get retry => 'Reîncearcă';

  @override
  String get breathInhale => 'INSPIRĂ';

  @override
  String get breathHold => 'ȚINE';

  @override
  String get breathExhale => 'EXPIRĂ';

  @override
  String get breathDone => 'GATA';

  @override
  String get breathGreatJob => 'Foarte bine!';

  @override
  String breathSessionsToday(int count) {
    return '$count sesiuni astăzi';
  }

  @override
  String get endExercise => 'Încheie exercițiul';

  @override
  String get done => 'Gata';

  @override
  String get noCopingTipsYet => 'Nu există încă sfaturi de gestionare';

  @override
  String get copingStrategiesWillAppear =>
      'Strategiile tale personalizate de gestionare vor apărea aici după ce planul tău de recuperare este generat.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategii adaptate factorilor tăi declanșatori';

  @override
  String get cravingsPeakAndPass => 'Poftele ating apogeul\nși trec';

  @override
  String get rideTheWaveDescription =>
      'Majoritatea poftelor trec în 15 minute. Nu trebuie să acționezi — lasă valul să treacă împreună cu noi.';

  @override
  String get stayWithIt => 'rămâi cu ea';

  @override
  String get youMadeIt => 'ai reușit';

  @override
  String get readyWhenYouAre => 'când ești pregătit';

  @override
  String get rideItAgain => 'Lasă-l să treacă din nou';

  @override
  String get start15MinuteTimer => 'Pornește cronometrul de 15 minute';

  @override
  String get rideTheWaveCompletedMessage =>
      'Ai lăsat valul să treacă. Asta înseamnă putere reală. 💪';

  @override
  String get myProgress => 'Progresul meu';

  @override
  String get weekLabel => 'Săptămână';

  @override
  String get monthLabel => 'Lună';

  @override
  String get allLabel => 'Toate';

  @override
  String get daysSoberStatLabel => 'Zile\nfără alcool';

  @override
  String get savedStatLabel => 'Economisit';

  @override
  String get avoidedStatLabel => 'Evităt';

  @override
  String get moodTrends => 'Tendințele stării de spirit';

  @override
  String get cravingsPattern => 'Tiparul poftelor';

  @override
  String get unlockLabel => 'Deblochează';

  @override
  String get unlockFullStats => 'Deblochează toate statisticile';

  @override
  String get premiumStatsMessage =>
      'Tendințele stării de spirit și tiparele poftelor sunt funcții Premium. Fă upgrade pentru a vedea toate statisticile.';

  @override
  String get healthMilestonesWillAppear =>
      'Etapele tale de sănătate vor apărea aici.';

  @override
  String get healthMilestones => 'Etape de sănătate';

  @override
  String dayNumber(int day) {
    return 'Ziua $day';
  }

  @override
  String get soberLabel => 'Fără alcool';

  @override
  String get slipLabel => 'Abatere';

  @override
  String get noDataLabel => 'Nu există date';

  @override
  String get milestone24Hours => '24 de ore';

  @override
  String get milestoneOneWeek => 'O săptămână';

  @override
  String get milestoneOneMonth => 'O lună';

  @override
  String get milestoneThreeMonths => 'Trei luni';

  @override
  String get milestoneSixMonths => 'Șase luni';

  @override
  String get milestoneOneYear => 'Un an';

  @override
  String milestoneDayCount(int day) {
    return 'Etapa zilei $day';
  }

  @override
  String get maybeLaterLabel => 'Poate mai târziu';

  @override
  String get cancelLabel => 'Anulează';
}
