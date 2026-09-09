// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get skip => 'Preskoči';

  @override
  String get continueButton => 'Nastavi';

  @override
  String get getStarted => 'Započni';

  @override
  String get onboardingTitle1 => 'Preuzmite kontrolu nad svojim životom';

  @override
  String get onboardingSubtitle1 =>
      'Pratite svoje putovanje, proslavite svaki uspjeh i postanite zdraviji iz dana u dan.';

  @override
  String get onboardingTitle2 => 'Vaš AI suputnik u oporavku';

  @override
  String get onboardingSubtitle2 =>
      'Primajte personalizirane savjete, zdrave navike, podsjetnike za motivaciju i izvješća o napretku prilagođena vašem putu.';

  @override
  String get goodMorning => 'Dobro jutro';

  @override
  String get goodAfternoon => 'Dobar dan';

  @override
  String get goodEvening => 'Dobra večer';

  @override
  String get goodNight => 'Laku noć';

  @override
  String get embracingClarity => 'Prihvaćanje bistrine, dan po dan.';

  @override
  String get streakLabel => 'NIZ';

  @override
  String get goalLabel => 'Cilj';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dana',
      few: '$count dana',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium plan';

  @override
  String get premiumPlanSubtitle => 'Otključajte potpuno iskustvo oporavka';

  @override
  String get accountAndSupport => 'RAČUN I PODRŠKA';

  @override
  String get privacyPolicy => 'Pravila privatnosti';

  @override
  String get privacyPolicySubtitle =>
      'Upravljajte dijeljenjem podataka i sigurnošću računa';

  @override
  String get termsOfService => 'Uvjeti pružanja usluge';

  @override
  String get termsOfServiceSubtitle => 'Česta pitanja, kontakt i resursi';

  @override
  String get shareApp => 'Podijeli aplikaciju';

  @override
  String get shareAppSubtitle => 'Podijelite aplikaciju s prijateljima';

  @override
  String get resetData => 'Ponovno postavi podatke';

  @override
  String get resetDataSubtitle => 'Briše sve spremljeno na ovom uređaju';

  @override
  String get resetAllDataTitle => 'Ponovno postaviti sve podatke?';

  @override
  String get resetAllDataMessage =>
      'Ovo će izbrisati sve spremljeno na ovom uređaju — profil, zapise u dnevniku i napredak — te se ne može poništiti.';

  @override
  String get cancel => 'Odustani';

  @override
  String get reset => 'Ponovno postavi';

  @override
  String get chooseFromGallery => 'Odaberi iz galerije';

  @override
  String get takePhoto => 'Snimi fotografiju';

  @override
  String get removePhoto => 'Ukloni fotografiju';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Nije moguće ažurirati fotografiju: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Nije moguće ukloniti fotografiju: $error';
  }

  @override
  String get photoTooLarge =>
      'Ta je fotografija prevelika čak i nakon sažimanja — pokušajte s drugom.';

  @override
  String get unableToLoadProfile => 'Nije moguće učitati vaš profil';

  @override
  String get pleaseTryAgain => 'Pokušajte ponovno.';

  @override
  String get tryAgain => 'Pokušaj ponovno';

  @override
  String get profileNotFound => 'Profil nije pronađen';

  @override
  String get refresh => 'Osvježi';

  @override
  String get noProfileDataFound =>
      'Na ovom uređaju još nema podataka o profilu.';

  @override
  String couldNotResetData(String error) {
    return 'Nije moguće ponovno postaviti podatke: $error';
  }

  @override
  String get navHome => 'Početna';

  @override
  String get navStats => 'Statistika';

  @override
  String get navJournal => 'Dnevnik';

  @override
  String get navBadges => 'Značke';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return 'Značajka $feature bit će uskoro dostupna.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Prestanite piti';

  @override
  String get splashSubtitle =>
      'Napravite prvi korak prema\nživotu bez alkohola';

  @override
  String get preparingJourney => 'Priprema vašeg\nputovanja';

  @override
  String get taskMorningMeditation => 'Jutarnja meditacija (10 min)';

  @override
  String get taskReadChapter =>
      'Pročitaj 4. poglavlje \"Dnevnika trezvenosti\"';

  @override
  String get taskEveningJournal => 'Večernji dnevnik zahvalnosti';

  @override
  String get close => 'Zatvori';

  @override
  String get youAreDoingGreat => 'Ide vam odlično!';

  @override
  String get shareMilestone => 'Podijeli prekretnicu';

  @override
  String shareMilestoneMessage(int days) {
    return 'Na $days. danu sam svog putovanja oporavka! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Moja prekretnica u oporavku';

  @override
  String get weeklyReportReadyTitle => 'Vaše tjedno izvješće je spremno';

  @override
  String get weeklyReportReadySubtitle =>
      'Dodirnite kako biste vidjeli kako je prošao vaš tjedan';

  @override
  String get howAreYouFeeling => 'Kako se osjećate?';

  @override
  String get moodTough => 'Teško';

  @override
  String get moodOkay => 'U redu';

  @override
  String get moodGood => 'Dobro';

  @override
  String get moneySaved => 'Ušteđeni novac';

  @override
  String get caloriesSaved => 'Ušteđene kalorije';

  @override
  String get healthScore => 'Zdravstveni rezultat';

  @override
  String get drinksAvoided => 'Izbjegnuta pića';

  @override
  String get estimated => 'Procijenjeno';

  @override
  String get aiGenerated => 'Generirala umjetna inteligencija';

  @override
  String get daysCapsLabel => 'DANA';

  @override
  String get todaysMotivation => 'Današnja motivacija';

  @override
  String get defaultMotivationQuote =>
      'Uspješno ste održali svoju predanost. Nastavite jahati na valu pozitivnih promjena.';

  @override
  String get talkToCoach => 'Razgovaraj s trenerom';

  @override
  String get havingACraving => 'Imam jaku želju';

  @override
  String get unlockWeeklyReportsTitle => 'Otključajte tjedna izvješća';

  @override
  String get unlockWeeklyReportsMessage =>
      'Pogledajte svoje trezvene dane, trendove raspoloženja i personalizirane AI povratne informacije svaki tjedan. Nadogradite na Premium za otključavanje.';

  @override
  String get maybeLater => 'Možda kasnije';

  @override
  String get upgrade => 'Nadogradi';

  @override
  String get weeklyReportTitle => 'Tjedno izvješće';

  @override
  String get weeklyReportsPremiumTitle => 'Tjedna izvješća su Premium značajka';

  @override
  String get weeklyReportsPremiumMessage =>
      'Pogledajte svoje trezvene dane, trendove raspoloženja, želje i personalizirane AI povratne informacije svaki tjedan.';

  @override
  String get upgradeToPremium => 'Nadogradi na Premium';

  @override
  String get couldNotGenerateReport =>
      'Trenutačno nije moguće generirati vaše izvješće.';

  @override
  String get tryAgainLower => 'Pokušaj ponovno';

  @override
  String get statSoberDays => 'Trezveni dani';

  @override
  String get statAvgMood => 'Prosječno raspoloženje';

  @override
  String get statCravings => 'Želje za pićem';

  @override
  String get statMoneySaved => 'Ušteđeni novac';

  @override
  String get coachFeedback => 'Povratne informacije trenera';

  @override
  String get journalInsights => 'Uvidi iz dnevnika';

  @override
  String get next => 'Dalje';

  @override
  String get question1Title => 'Koji je vaši cilj?';

  @override
  String get question1Subtitle => 'Odaberite cilj koji vam je\nnajvažniji';

  @override
  String get goalQuitCompletely => 'Potpuno prestati';

  @override
  String get goalReduceDrinking => 'Smanjiti pijenje';

  @override
  String get goalTakeABreak => 'Napraviti pauzu';

  @override
  String get goalBuildHealthierHabits => 'Izgraditi zdravije navike';

  @override
  String get question3Title => 'Recite nam nešto o svojoj\nrutini';

  @override
  String get drinksPerWeek => 'Pića tjedno';

  @override
  String get moneySpentPerWeek => 'Potrošeni novac tjedno';

  @override
  String get drinkingLevel => 'Razina konzumacije';

  @override
  String get triggersLabel => 'Okidači';

  @override
  String get levelSocial => 'Društveno';

  @override
  String get levelRegular => 'Redovito';

  @override
  String get levelHeavy => 'Učestalo/Jako';

  @override
  String get levelDependent => 'Ovisničko';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Usamljenost';

  @override
  String get triggerHabit => 'Navika';

  @override
  String get triggerSadness => 'Tuga';

  @override
  String get triggerAnger => 'Ljutnja';

  @override
  String get triggerBoredom => 'Dosada';

  @override
  String get triggerSocialPressure => 'Pritisak okoline';

  @override
  String get triggerCelebration => 'Proslava';

  @override
  String get triggerSleepProblems => 'Problemi sa spavanjem';

  @override
  String get triggerWorkPressure => 'Pritisak na poslu';

  @override
  String get question4Title => 'Zašto želite promijeniti navike?';

  @override
  String get question4Subtitle =>
      'Vaš razlog pomoći će vam da ostanete motivirani.';

  @override
  String get reasonImproveHealth => 'Poboljšanje zdravlja';

  @override
  String get reasonSaveMoney => 'Ušteda novca';

  @override
  String get reasonFamily => 'Obitelj';

  @override
  String get reasonBetterSleep => 'Bolji san';

  @override
  String get reasonMentalClarity => 'Mentalna bistrina';

  @override
  String get reasonFitness => 'Fizička kondicija';

  @override
  String get reasonSelfRespect => 'Samopoštovanje';

  @override
  String get reasonCareer => 'Karijera';

  @override
  String get milestoneUnlockedLabel => 'PREKRETNICA OTKLJUČANA';

  @override
  String incredibleNamePrefix(String name) {
    return 'Nevjerojatno, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ušteđeno';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count izbjegnuto';
  }

  @override
  String get shareMyMilestone => 'Podijeli moju prekretnicu';

  @override
  String get milestoneImageShareError =>
      'Nije moguće izraditi sliku prekretnice. Pokušajte ponovno.';

  @override
  String get dailyCheckInTitle => 'Dnevna prijava';

  @override
  String get howAreYouFeelingToday => 'Kako se osjećate danas?';

  @override
  String get honestAnswerHelp =>
      'Vaš iskren odgovor pomaže nam da vam pružimo bolju podršku';

  @override
  String get didYouDrinkToday => 'Jeste li danas pili?';

  @override
  String get noLabel => 'Ne';

  @override
  String get yesLabel => 'Da';

  @override
  String get cravingLevelNow => 'Razina želje za pićem trenutačno?';

  @override
  String get anythingOnMind => 'Imate li što na umu?';

  @override
  String get optionalLabel => '(neobavezno)';

  @override
  String get dailyNoteHint =>
      'Napišite nešto o svom danu, okidačima, pobjedama...';

  @override
  String get alreadyCheckedInToday => 'Već ste se prijavili danas';

  @override
  String get saveCheckIn => 'Spremi prijavu';

  @override
  String get checkInsHelpTrack =>
      'Prijave pomažu u praćenju vašeg napretka tijekom vremena';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Već ste završili današnju prijavu.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Molimo vas da najprije odgovorite na oba gornja pitanja';

  @override
  String get checkInSaved => 'Prijava spremljena';

  @override
  String get cravingNone => 'Nema';

  @override
  String get cravingLow => 'Niska';

  @override
  String get cravingMedium => 'Srednja';

  @override
  String get cravingStrong => 'Jaka';

  @override
  String get moodBad => 'Loše';

  @override
  String get moodLow => 'Nisko';

  @override
  String get moodGreat => 'Odlično';

  @override
  String get sosSupportTitle => 'SOS podrška';

  @override
  String notAloneMessage(String name) {
    return 'Niste sami, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Želje prolaze. Odaberite nešto u nastavku što će vam pomoći da prebrodite ovaj trenutak.';

  @override
  String get breathingExercise => 'Vježba disanja';

  @override
  String get breathingExerciseSubtitle => 'Vođena tehnika 4-7-8, 2 minute';

  @override
  String get rideTheWave => 'Jahanje na valu';

  @override
  String get rideTheWaveSubtitle =>
      'Mjerač vremena od 15 min — želje uvijek prođu';

  @override
  String get copingTips => 'Savjeti za nošenje sa željom';

  @override
  String get copingTipsSubtitle => 'Personalizirane strategije za vaše okidače';

  @override
  String get talkToAiCoach => 'Razgovarajte s AI trenerom';

  @override
  String get talkToAiCoachSubtitle =>
      'Razgovarajte sa svojim suputnikom u oporavku';

  @override
  String get callSomeone => 'Nazovite nekoga';

  @override
  String get callSomeoneSubtitle => 'Kontaktirajte osobu od povjerenja';

  @override
  String get contactsPermissionNeeded =>
      'Potrebna je dozvola za kontakte kako biste uputili poziv.';

  @override
  String get beatenCravingsPrefix => 'Već ste pobijedili želju ';

  @override
  String beatenCravingsCount(int count) {
    return '$count puta';
  }

  @override
  String get beatenCravingsSuffix => ' ranije. Možete to učiniti opet.';

  @override
  String get tellUsAboutYourself => 'Recite nam nešto o sebi';

  @override
  String get detailsSubtitle =>
      'Ove nam informacije pomažu personalizirati vaše putovanje oporavka i pružiti točne uvide.';

  @override
  String get nameLabel => 'Ime';

  @override
  String get nameHint => 'npr. Marko Horvat';

  @override
  String get ageLabel => 'Dob';

  @override
  String get ageHint => 'npr. 32';

  @override
  String get sexAssignedAtBirth => 'Spol dodijeljen pri rođenju';

  @override
  String get sexFemale => 'Ženski';

  @override
  String get sexMale => 'Muški';

  @override
  String get heightLabel => 'Visina';

  @override
  String get weightLabel => 'Težina';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Dosegnuto dnevno ograničenje';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Iskoristili ste sve $limit besplatne poruke za danas. Nadogradite na Premium za neograničeni razgovor s trenerom.';
  }

  @override
  String get coachConnectError =>
      'Spajanje trenutačno nije moguće. Pokušajte ponovno za trenutak.';

  @override
  String get clearConversationTitle => 'Obrisati razgovor?';

  @override
  String get clearConversationMessage =>
      'Ovo će trajno ukloniti vašu povijest razgovora s trenerom.';

  @override
  String get clearLabel => 'Obriši';

  @override
  String get recoveryCoachTitle => 'Trener za oporavak';

  @override
  String get onlineLabel => 'Mrežno';

  @override
  String get clearConversationMenuItem => 'Obriši razgovor';

  @override
  String chatGreeting(String name) {
    return 'Bok $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Na $days. ste danu svog putovanja. Ovdje sam kad god želite razgovarati.';
  }

  @override
  String get quickPromptsLabel => 'BRZI UPITI';

  @override
  String get promptCravingLabel => 'Osjećam jaku želju';

  @override
  String get promptCravingSubtitle => 'Uiri se, brzo';

  @override
  String get promptMotivationLabel => 'Trebam motivaciju';

  @override
  String get promptMotivationSubtitle => 'Poticaj kada je teško';

  @override
  String get promptSocialLabel => 'Društvena situacija';

  @override
  String get promptSocialSubtitle => 'Snađi se na okupljanju';

  @override
  String get promptSlippedLabel => 'Pokleknuo/la sam';

  @override
  String get promptSlippedSubtitle => 'Bez osuđivanja, samo podrška';

  @override
  String get typeMessageHint => 'Napišite poruku...';

  @override
  String get editProfileTitle => 'Uredi profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Nije moguće spremiti profil: $error';
  }

  @override
  String get heightCmLabel => 'Visina (cm)';

  @override
  String get weightKgLabel => 'Težina (kg)';

  @override
  String get saveChangesLabel => 'Spremi promjene';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Napredni uvidi i analitika';

  @override
  String get featureUnlimitedJournal => 'Neograničeni zapisi u dnevniku';

  @override
  String get featureUnlimitedChat => 'Neograničen razgovor s AI trenerom';

  @override
  String get featureCommunityGroups => 'Ekskluzivne grupe zajednice';

  @override
  String get featurePrioritySupport => 'Prioritetna podrška stručnjaka';

  @override
  String get featureThemePacks => 'Prilagođeni paketi tema';

  @override
  String get featureDataExport => 'Izvoz podataka';

  @override
  String get featureAdFree => 'Iskustvo bez oglasa';

  @override
  String get premiumMemberTitle => 'Vi ste Premium član';

  @override
  String get unlockFullRecoveryTitle =>
      'Otključajte svoje potpuno\niskustvo oporavka';

  @override
  String get premiumMemberSubtitle =>
      'Hvala vam što podržavate svoj oporavak — sve Premium značajke u nastavku su otključane.';

  @override
  String get premiumJoinSubtitle =>
      'Pridružite se zajednici tisuća ljudi koji\nubrzavaju svoje iscjeljenje pomoću naših\npremium alata i personalizirane podrške.';

  @override
  String get monthlyPlanLabel => 'Mjesečno';

  @override
  String get perMonthSuffix => '/mj.';

  @override
  String get cancelAnytimeLabel => 'Otkažite bilo kada';

  @override
  String get yearlyPlanLabel => 'Godišnje';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Naplaćuje se godišnje po cijeni od $amount';
  }

  @override
  String get bestValueLabel => 'Najbolja vrijednost';

  @override
  String get alreadyPremiumLabel => 'Vi ste Premium ✓';

  @override
  String get startPremiumLabel => 'Započni Premium';

  @override
  String get manageSubscriptionLabel =>
      'Upravljajte ili otkažite u postavkama pretplate vašeg uređaja.';

  @override
  String get noCommitmentLabel => 'Bez obveze. Otkažite bilo kada.';

  @override
  String get continueFreePlanLabel => 'Nastavi s besplatnim planom';

  @override
  String get backToHomeLabel => 'Natrag na početnu';

  @override
  String get cancelPremiumLabel => 'Otkaži Premium';

  @override
  String get cancelPremiumTitle => 'Otkazati Premium?';

  @override
  String get cancelPremiumMessage =>
      'Izgubit ćete pristup neograničenim zapisima u dnevniku, neograničenom razgovoru s trenerom, uvidima u statistiku i tjednim izvješćima. Možete se ponovno pretplatiti bilo kada.';

  @override
  String get keepPremiumLabel => 'Zadrži Premium';

  @override
  String get nowPremiumMessage =>
      'Sada ste Premium član! Uživajte u potpunom iskustvu oporavka.';

  @override
  String get premiumCancelledMessage =>
      'Premium je otkazan. Vraćeni ste na besplatni plan.';

  @override
  String get termsOfUseLabel => 'Uvjeti korištenja';

  @override
  String get navHomeLabel => 'Početna';

  @override
  String get navStatsLabel => 'Statistika';

  @override
  String get navJournalLabel => 'Dnevnik';

  @override
  String get navBadgesLabel => 'Značke';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Ciljevi oporavka';

  @override
  String get drinksPerWeekLabel => 'Pića tjedno';

  @override
  String get quitReasonsLabel => 'Razlozi za prestanak';

  @override
  String get quitReasonsHelperText => 'Odvojite više razloga zarezom.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Nije moguće spremiti ciljeve oporavka: $error';
  }

  @override
  String get goalHint => 'npr. Potpuna apstinencija';

  @override
  String get drinksPerWeekHint => 'npr. 12';

  @override
  String get quitReasonsHint => 'npr. Zdravlje, Obitelj, Novac';

  @override
  String get todaysPrompt => 'Današnji poticaj';

  @override
  String get defaultJournalPrompt => 'Što vam je danas na umu?';

  @override
  String get aiJournalInsights => 'AI uvidi u dnevnik';

  @override
  String get unlockJournalInsightsMessage =>
      'Otključajte tjedne obrasce, trendove raspoloženja i personalizirane uvide iz vaših zapisa u dnevniku.';

  @override
  String get notEnoughJournalData =>
      'Još nema dovoljno podataka — napišite nekoliko zapisa ovaj tjedan i provjerite ponovno.';

  @override
  String get openEntry => 'Otvori';

  @override
  String get editEntry => 'Uredi';

  @override
  String get deleteEntry => 'Obriši';

  @override
  String get searchJournalEntries => 'Pretraži zapise...';

  @override
  String get writeNewEntry => 'Napiši novi zapis';

  @override
  String get recentEntries => 'Nedavni zapisi';

  @override
  String get noJournalEntriesYet =>
      'Još nema zapisa u dnevniku — napišite svoje prvo razmišljanje iznad.';

  @override
  String get noEntriesMatchFilters =>
      'Nijedan zapis ne odgovara vašim filterima.';

  @override
  String get weeklyJournalLimitReached => 'Dosegnuto tjedno ograničenje';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Iskoristili ste sve $limit besplatne zapise u dnevniku ovaj tjedan. Nadogradite na Premium za neograničeni unos.';
  }

  @override
  String get newEntry => 'Novi zapis';

  @override
  String get writeYourThoughts => 'Zapišite svoje misli';

  @override
  String get saveEntry => 'Spremi zapis';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Preostalo $remaining od $limit besplatnih zapisa ovaj tjedan';
  }

  @override
  String get deleteEntryQuestion => 'Izbrisati zapis?';

  @override
  String get deleteEntryConfirmation =>
      'Ovaj će zapis biti trajno izbrisan. Ova se radnja ne može poništiti.';

  @override
  String get journalEntryNotFound => 'Zapis nije pronađen';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Ovaj zapis u dnevniku možda je izbrisan.';

  @override
  String get goBack => 'Idi natrag';

  @override
  String get journalEntryTitle => 'Zapis u dnevniku';

  @override
  String get moodStruggling => 'Mučim se';

  @override
  String get moodUnwell => 'Loše';

  @override
  String get moodNeutral => 'Neutralno';

  @override
  String get whatHappenedToday => 'Što se dogodilo danas?';

  @override
  String get trigger => 'Okidač';

  @override
  String get whatHelped => 'Što je pomoglo';

  @override
  String get whatIllTryNextTime => 'Što ću pokušati sljedeći put';

  @override
  String get journalPrivacyMessage =>
      'Vaše je razmišljanje privatno i spremljeno u vašem dnevniku.';

  @override
  String get unlocked => 'Otključano';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dana',
      few: '$count dana',
      one: '$count dan',
    );
    return 'Preostalo $_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count dana';
  }

  @override
  String get firstReflection => 'Prvo\nrazmišljanje';

  @override
  String get oneJournalEntry => '1 zapis u dnevniku';

  @override
  String get openBook => 'Otvorena knjiga';

  @override
  String get tenJournalEntries => '10 zapisa u dnevniku';

  @override
  String get dedicatedWriter => 'Predani\npisac';

  @override
  String get thirtyJournalEntries => '30 zapisa u dnevniku';

  @override
  String get firstConversation => 'Prvi\nrazgovor';

  @override
  String get oneAiCoachChat => '1 razgovor s AI trenerom';

  @override
  String get keepTalking => 'Nastavi razgovor';

  @override
  String get fiveConversations => '5 razgovora';

  @override
  String get coachCompanion => 'Trener i\nsuputnik';

  @override
  String get twentyConversations => '20 razgovora';

  @override
  String get checkInHabit => 'Navika\nprijavljivanja';

  @override
  String get sevenCheckIns => '7 prijava';

  @override
  String get consistencyPro => 'Stručnjak za\ndosljednost';

  @override
  String get thirtyCheckIns => '30 prijava';

  @override
  String get dedicatedJourney => 'Predano\nputovanje';

  @override
  String get hundredCheckIns => '100 prijava';

  @override
  String get goalGetter => 'Osvajač ciljeva';

  @override
  String get threeGoalsCompleted => 'Dovršena 3 cilja';

  @override
  String get goalAchiever => 'Ostvaritelj\nciljeva';

  @override
  String get tenGoalsCompleted => 'Dovršeno 10 ciljeva';

  @override
  String get firstSavings => 'Prva\nušteda';

  @override
  String get fiveHundredSaved => 'Ušteđeno \$500';

  @override
  String get smartSaver => 'Pametni štediša';

  @override
  String get oneThousandSaved => 'Ušteđeno \$1.000';

  @override
  String get bigSaver => 'Veliki štediša';

  @override
  String get fiveThousandSaved => 'Ušteđeno \$5.000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current od \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current od $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Samo nastavite — vaša prva prekretnica vas čeka!';

  @override
  String get badgesAndMilestones => 'Značke i prekretnice';

  @override
  String get yourMilestoneJourney => 'Vaše putovanje s prekretnicama';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ostvareno $count prekretnica.',
      few: 'Ostvarene $count prekretnice.',
      one: 'Ostvarena $count prekretnica.',
    );
    return '$_temp0\nDodirnite za prikaz';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Otključali ste $unlocked od $total prekretnica na svom putu.';
  }

  @override
  String get remaining => 'Preostalo';

  @override
  String get complete => 'Dovršeno';

  @override
  String get nextMilestone => 'Sljedeća prekretnica';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% ostvareno';
  }

  @override
  String get sobrietyMilestones => 'Prekretnice u trezvenosti';

  @override
  String get journeyBadges => 'Značke putovanja';

  @override
  String get bronze => 'BRONCA';

  @override
  String get silver => 'SREBRO';

  @override
  String get gold => 'ZLATO';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'DIJAMANT';

  @override
  String get analyzingYourJourney => 'Analiziramo vaše putovanje...';

  @override
  String get aiCreatingSanctuary =>
      'Naš AI stvara vaše personalizirano utočište.';

  @override
  String get understandingHabits => 'Razumijevanje navika...';

  @override
  String get calculatingBaseline => 'Izračunavanje vaše početne točke...';

  @override
  String get personalizingPlan => 'Personalizacija vašeg plana...';

  @override
  String get finalizingSanctuary => 'Dovršavanje vašeg utočišta...';

  @override
  String get creatingYourPlan => 'Izrada vašeg plana...';

  @override
  String get personalizedPlanError =>
      'Nismo mogli izraditi vaš personalizirani plan. Pokušajte ponovno.';

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get breathInhale => 'UDAHNI';

  @override
  String get breathHold => 'ZADRŽI';

  @override
  String get breathExhale => 'IZDAHNI';

  @override
  String get breathDone => 'GOTOVO';

  @override
  String get breathGreatJob => 'Odličan posao!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesija danas',
      few: '$count sesije danas',
      one: '$count sesija danas',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Završi vježbu';

  @override
  String get done => 'Gotovo';

  @override
  String get noCopingTipsYet => 'Još nema savjeta za nošenje sa željom';

  @override
  String get copingStrategiesWillAppear =>
      'Vaše personalizirane strategije pojavit će se ovdje kada se izrada plana oporavka završi.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategije prilagođene vašim okidačima';

  @override
  String get cravingsPeakAndPass => 'Želje dosegnu vrhunac\ni prođu';

  @override
  String get rideTheWaveDescription =>
      'Većina želja prođe unutar 15 minuta. Ne morate pokleknuti — samo prebrodite to s nama.';

  @override
  String get stayWithIt => 'ostanite uz to';

  @override
  String get youMadeIt => 'uspjeli ste';

  @override
  String get readyWhenYouAre => 'spremni kad i vi';

  @override
  String get rideItAgain => 'Prebrodi ponovno';

  @override
  String get start15MinuteTimer => 'Pokreni mjerač vremena od 15 minuta';

  @override
  String get rideTheWaveCompletedMessage =>
      'Prebrodili ste val. To je prava snaga. 💪';

  @override
  String get myProgress => 'Moj napredak';

  @override
  String get weekLabel => 'Tjedan';

  @override
  String get monthLabel => 'Mjesec';

  @override
  String get allLabel => 'Sve';

  @override
  String get daysSoberStatLabel => 'Trezveni\ndani';

  @override
  String get savedStatLabel => 'Ušteđeno';

  @override
  String get avoidedStatLabel => 'Izbjegnuto';

  @override
  String get moodTrends => 'Trendovi raspoloženja';

  @override
  String get cravingsPattern => 'Obrasci želja';

  @override
  String get unlockLabel => 'Otključaj';

  @override
  String get unlockFullStats => 'Otključaj punu statistiku';

  @override
  String get premiumStatsMessage =>
      'Trendovi raspoloženja i obrasci želja su Premium značajke. Nadogradite kako biste vidjeli punu statistiku.';

  @override
  String get healthMilestonesWillAppear =>
      'Vaše zdravstvene prekretnice pojavit će se ovdje.';

  @override
  String get healthMilestones => 'Zdravstvene prekretnice';

  @override
  String dayNumber(int day) {
    return '$day. dan';
  }

  @override
  String get soberLabel => 'Trezven/a';

  @override
  String get slipLabel => 'Pokleknuće';

  @override
  String get noDataLabel => 'Nema podataka';

  @override
  String get milestone24Hours => '24 sata';

  @override
  String get milestoneOneWeek => 'Jedan tjedan';

  @override
  String get milestoneOneMonth => 'Jedan mjesec';

  @override
  String get milestoneThreeMonths => 'Tri mjeseca';

  @override
  String get milestoneSixMonths => 'Šest mjeseci';

  @override
  String get milestoneOneYear => 'Jedna godina';

  @override
  String milestoneDayCount(int day) {
    return 'Prekretnica za $day. dan';
  }

  @override
  String get maybeLaterLabel => 'Možda kasnije';

  @override
  String get cancelLabel => 'Odustani';
}
