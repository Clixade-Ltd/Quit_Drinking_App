// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get skip => 'Preskočiť';

  @override
  String get continueButton => 'Pokračovať';

  @override
  String get getStarted => 'Začať';

  @override
  String get onboardingTitle1 => 'Prevezmite kontrolu nad svojím životom';

  @override
  String get onboardingSubtitle1 =>
      'Sledujte svoju cestu, oslavujte každý úspech a buďte zdravší deň za dňom.';

  @override
  String get onboardingTitle2 => 'Váš AI spoločník na ceste k zotaveniu';

  @override
  String get onboardingSubtitle2 =>
      'Získajte personalizované rady, zdravé návyky, motivačné pripomienky a prehľady pokroku prispôsobené vašej ceste.';

  @override
  String get goodMorning => 'Dobré ráno';

  @override
  String get goodAfternoon => 'Dobré popoludnie';

  @override
  String get goodEvening => 'Dobrý večer';

  @override
  String get goodNight => 'Dobrú noc';

  @override
  String get embracingClarity => 'S jasnejšou mysľou, jeden deň za druhým.';

  @override
  String get streakLabel => 'SÉRIA';

  @override
  String get goalLabel => 'Cieľ';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dní',
      many: '$count dní',
      few: '$count dni',
      one: '$count deň',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Prémiový plán';

  @override
  String get premiumPlanSubtitle =>
      'Odomknite kompletný zážitok z vášho zotavenia';

  @override
  String get accountAndSupport => 'ÚČET A PODPORA';

  @override
  String get privacyPolicy => 'Zásady ochrany súkromia';

  @override
  String get privacyPolicySubtitle =>
      'Spravujte zdieľanie údajov a zabezpečenie účtu';

  @override
  String get termsOfService => 'Podmienky používania';

  @override
  String get termsOfServiceSubtitle => 'Časté otázky, kontaktujte nás a zdroje';

  @override
  String get shareApp => 'Zdieľať aplikáciu';

  @override
  String get shareAppSubtitle => 'Zdieľajte aplikáciu so svojimi priateľmi';

  @override
  String get resetData => 'Obnoviť údaje';

  @override
  String get resetDataSubtitle => 'Vymazať všetko uložené v tomto zariadení';

  @override
  String get resetAllDataTitle => 'Obnoviť všetky údaje?';

  @override
  String get resetAllDataMessage =>
      'Týmto sa vymaže všetko uložené v tomto zariadení — profil, záznamy v denníku a pokrok — a túto akciu nemožno vrátiť späť.';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get reset => 'Obnoviť';

  @override
  String get chooseFromGallery => 'Vybrať z galérie';

  @override
  String get takePhoto => 'Odfotiť';

  @override
  String get removePhoto => 'Odstrániť fotografiu';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Fotografiu sa nepodarilo aktualizovať: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Fotografiu sa nepodarilo odstrániť: $error';
  }

  @override
  String get photoTooLarge =>
      'Táto fotografia je príliš veľká aj po kompresii — skúste inú.';

  @override
  String get unableToLoadProfile => 'Profil sa nepodarilo načítať';

  @override
  String get pleaseTryAgain => 'Skúste to znova.';

  @override
  String get tryAgain => 'Skúsiť znova';

  @override
  String get profileNotFound => 'Profil sa nenašiel';

  @override
  String get refresh => 'Obnoviť';

  @override
  String get noProfileDataFound =>
      'V tomto zariadení zatiaľ neboli nájdené žiadne údaje profilu.';

  @override
  String couldNotResetData(String error) {
    return 'Údaje sa nepodarilo obnoviť: $error';
  }

  @override
  String get navHome => 'Domov';

  @override
  String get navStats => 'Štatistiky';

  @override
  String get navJournal => 'Denník';

  @override
  String get navBadges => 'Odznaky';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature bude čoskoro k dispozícii.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Prestať piť';

  @override
  String get splashSubtitle => 'Urobte prvý krok k\nživotu bez alkoholu';

  @override
  String get preparingJourney => 'Pripravujeme vašu\ncestu';

  @override
  String get taskMorningMeditation => 'Ranná meditácia (10 min)';

  @override
  String get taskReadChapter =>
      'Prečítajte si 4. kapitolu knihy „The Sober Diaries“';

  @override
  String get taskEveningJournal => 'Večerný denník vďačnosti';

  @override
  String get close => 'Zavrieť';

  @override
  String get youAreDoingGreat => 'Darí sa vám skvele!';

  @override
  String get shareMilestone => 'Zdieľať míľnik';

  @override
  String shareMilestoneMessage(int days) {
    return 'Som na $days. dni svojej cesty k zotaveniu! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Môj míľnik na ceste k zotaveniu';

  @override
  String get weeklyReportReadyTitle => 'Vaša týždenná správa je pripravená';

  @override
  String get weeklyReportReadySubtitle =>
      'Klepnutím zobrazíte, ako prebehol váš týždeň';

  @override
  String get howAreYouFeeling => 'Ako sa cítite?';

  @override
  String get moodTough => 'Ťažko';

  @override
  String get moodOkay => 'V poriadku';

  @override
  String get moodGood => 'Dobre';

  @override
  String get moneySaved => 'Ušetrené peniaze';

  @override
  String get caloriesSaved => 'Ušetrené kalórie';

  @override
  String get healthScore => 'Skóre zdravia';

  @override
  String get drinksAvoided => 'Vynechané nápoje';

  @override
  String get estimated => 'Odhadované';

  @override
  String get aiGenerated => 'Vygenerované AI';

  @override
  String get daysCapsLabel => 'DNÍ';

  @override
  String get todaysMotivation => 'Dnešná motivácia';

  @override
  String get defaultMotivationQuote =>
      'Úspešne ste si udržali svoje odhodlanie. Pokračujte na vlne pozitívnej zmeny.';

  @override
  String get talkToCoach => 'Porozprávať sa s koučom';

  @override
  String get havingACraving => 'Mám chuť na alkohol';

  @override
  String get unlockWeeklyReportsTitle => 'Odomknúť týždenné správy';

  @override
  String get unlockWeeklyReportsMessage =>
      'Každý týždeň si pozrite svoje dni bez alkoholu, trendy nálady a personalizovanú spätnú väzbu AI. Pre odomknutie prejdite na Premium.';

  @override
  String get maybeLater => 'Možno neskôr';

  @override
  String get upgrade => 'Vylepšiť';

  @override
  String get weeklyReportTitle => 'Týždenná správa';

  @override
  String get weeklyReportsPremiumTitle => 'Týždenné správy sú prémiová funkcia';

  @override
  String get weeklyReportsPremiumMessage =>
      'Každý týždeň si pozrite svoje dni bez alkoholu, trendy nálady, chute na alkohol a personalizovanú spätnú väzbu AI.';

  @override
  String get upgradeToPremium => 'Prejsť na Premium';

  @override
  String get couldNotGenerateReport =>
      'Správu sa teraz nepodarilo vygenerovať.';

  @override
  String get tryAgainLower => 'Skúsiť znova';

  @override
  String get statSoberDays => 'Dni bez alkoholu';

  @override
  String get statAvgMood => 'Priem. nálada';

  @override
  String get statCravings => 'Chute';

  @override
  String get statMoneySaved => 'Ušetrené peniaze';

  @override
  String get coachFeedback => 'Spätná väzba kouča';

  @override
  String get journalInsights => 'Postrehy z denníka';

  @override
  String get next => 'Ďalej';

  @override
  String get question1Title => 'Aký je váš cieľ';

  @override
  String get question1Subtitle =>
      'Vyberte si cieľ, ktorý je pre vás\nnajdôležitejší';

  @override
  String get goalQuitCompletely => 'Úplne prestať';

  @override
  String get goalReduceDrinking => 'Obmedziť pitie';

  @override
  String get goalTakeABreak => 'Dať si prestávku';

  @override
  String get goalBuildHealthierHabits => 'Vytvoriť si zdravšie návyky';

  @override
  String get question3Title => 'Povedzte nám o svojej\nrutine';

  @override
  String get drinksPerWeek => 'Nápojov za týždeň';

  @override
  String get moneySpentPerWeek => 'Minuté peniaze za týždeň';

  @override
  String get drinkingLevel => 'Úroveň pitia';

  @override
  String get triggersLabel => 'Spúšťače';

  @override
  String get levelSocial => 'Spoločenské';

  @override
  String get levelRegular => 'Pravidelné';

  @override
  String get levelHeavy => 'Nadmerné';

  @override
  String get levelDependent => 'Závislé';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Osamelosť';

  @override
  String get triggerHabit => 'Zvyk';

  @override
  String get triggerSadness => 'Smutok';

  @override
  String get triggerAnger => 'Hnev';

  @override
  String get triggerBoredom => 'Nuda';

  @override
  String get triggerSocialPressure => 'Spoločenský tlak';

  @override
  String get triggerCelebration => 'Oslavy';

  @override
  String get triggerSleepProblems => 'Problémy so spánkom';

  @override
  String get triggerWorkPressure => 'Pracovný tlak';

  @override
  String get question4Title => 'Prečo sa chcete zmeniť?';

  @override
  String get question4Subtitle => 'Váš dôvod vám pomôže zostať motivovaní.';

  @override
  String get reasonImproveHealth => 'Zlepšiť svoje zdravie';

  @override
  String get reasonSaveMoney => 'Ušetriť peniaze';

  @override
  String get reasonFamily => 'Rodina';

  @override
  String get reasonBetterSleep => 'Lepší spánok';

  @override
  String get reasonMentalClarity => 'Jasnejšia myseľ';

  @override
  String get reasonFitness => 'Kondícia';

  @override
  String get reasonSelfRespect => 'Sebaúcta';

  @override
  String get reasonCareer => 'Kariéra';

  @override
  String get milestoneUnlockedLabel => 'MÍĽNIK ODOMKNUTÝ';

  @override
  String incredibleNamePrefix(String name) {
    return 'Úžasné, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ušetrené';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count vynechaných';
  }

  @override
  String get shareMyMilestone => 'Zdieľať môj míľnik';

  @override
  String get milestoneImageShareError =>
      'Obrázok míľnika sa nepodarilo vytvoriť. Skúste to znova.';

  @override
  String get dailyCheckInTitle => 'Denný Check-in';

  @override
  String get howAreYouFeelingToday => 'Ako sa dnes cítite?';

  @override
  String get honestAnswerHelp =>
      'Vaša úprimná odpoveď nám pomáha lepšie vás podporovať';

  @override
  String get didYouDrinkToday => 'Pili ste dnes alkohol?';

  @override
  String get noLabel => 'Nie';

  @override
  String get yesLabel => 'Áno';

  @override
  String get cravingLevelNow => 'Aká silná je teraz vaša chuť na alkohol?';

  @override
  String get anythingOnMind => 'Máte niečo na mysli?';

  @override
  String get optionalLabel => '(voliteľné)';

  @override
  String get dailyNoteHint => 'Napíšte o svojom dni, spúšťačoch, úspechoch...';

  @override
  String get alreadyCheckedInToday => 'Dnešný Check-in už bol vyplnený';

  @override
  String get saveCheckIn => 'Uložiť Check-in';

  @override
  String get checkInsHelpTrack =>
      'Check-iny pomáhajú sledovať váš pokrok v priebehu času';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Dnešný Check-in ste už dokončili.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Najprv odpovedzte na obe otázky vyššie';

  @override
  String get checkInSaved => 'Check-in uložený';

  @override
  String get cravingNone => 'Žiadna';

  @override
  String get cravingLow => 'Nízka';

  @override
  String get cravingMedium => 'Stredná';

  @override
  String get cravingStrong => 'Silná';

  @override
  String get moodBad => 'Zle';

  @override
  String get moodLow => 'Nízka';

  @override
  String get moodGreat => 'Skvele';

  @override
  String get sosSupportTitle => 'SOS podpora';

  @override
  String notAloneMessage(String name) {
    return 'Nie ste na to sami, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Chute na alkohol pominú. Vyberte si niečo nižšie, čo vám pomôže zvládnuť túto chvíľu.';

  @override
  String get breathingExercise => 'Dychové cvičenie';

  @override
  String get breathingExerciseSubtitle => 'Vedená technika 4-7-8, 2 minúty';

  @override
  String get rideTheWave => 'Prečkajte vlnu';

  @override
  String get rideTheWaveSubtitle => '15-minútový časovač — chute vždy pominú';

  @override
  String get copingTips => 'Tipy na zvládanie';

  @override
  String get copingTipsSubtitle =>
      'Personalizované stratégie pre vaše spúšťače';

  @override
  String get talkToAiCoach => 'Porozprávať sa s AI koučom';

  @override
  String get talkToAiCoachSubtitle =>
      'Chatujte so svojím spoločníkom na ceste k zotaveniu';

  @override
  String get callSomeone => 'Niekomu zavolať';

  @override
  String get callSomeoneSubtitle => 'Kontaktujte dôveryhodnú osobu';

  @override
  String get contactsPermissionNeeded =>
      'Na zavolanie kontaktu je potrebné povolenie pre kontakty.';

  @override
  String get beatenCravingsPrefix => 'Chute na alkohol ste prekonali ';

  @override
  String beatenCravingsCount(int count) {
    return '$count-krát';
  }

  @override
  String get beatenCravingsSuffix => ' už predtým. Dokážete to znova.';

  @override
  String get tellUsAboutYourself => 'Povedzte nám o sebe';

  @override
  String get detailsSubtitle =>
      'Tieto informácie nám pomôžu personalizovať vašu cestu k zotaveniu a poskytovať presné prehľady.';

  @override
  String get nameLabel => 'Meno';

  @override
  String get nameHint => 'napr. Alex Rivers';

  @override
  String get ageLabel => 'Vek';

  @override
  String get ageHint => 'napr. 32';

  @override
  String get sexAssignedAtBirth => 'Pohlavie pridelené pri narodení';

  @override
  String get sexFemale => 'Žena';

  @override
  String get sexMale => 'Muž';

  @override
  String get heightLabel => 'Výška';

  @override
  String get weightLabel => 'Hmotnosť';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Dosiahnutý denný limit';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Dnes ste využili všetkých $limit bezplatných správ. Pre neobmedzený chat s koučom prejdite na Premium.';
  }

  @override
  String get coachConnectError =>
      'Momentálne sa mi nepodarilo pripojiť. Skúste to znova o chvíľu.';

  @override
  String get clearConversationTitle => 'Vymazať konverzáciu?';

  @override
  String get clearConversationMessage =>
      'Týmto natrvalo odstránite históriu chatu s koučom.';

  @override
  String get clearLabel => 'Vymazať';

  @override
  String get recoveryCoachTitle => 'Kouč zotavenia';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Vymazať konverzáciu';

  @override
  String chatGreeting(String name) {
    return 'Ahoj $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Ste na $days. dni svojej cesty. Som tu vždy, keď sa chcete porozprávať.';
  }

  @override
  String get quickPromptsLabel => 'RÝCHLE TÉMY';

  @override
  String get promptCravingLabel => 'Mám chuť na alkohol';

  @override
  String get promptCravingSubtitle => 'Rýchlo sa upokojte';

  @override
  String get promptMotivationLabel => 'Potrebujem motiváciu';

  @override
  String get promptMotivationSubtitle => 'Povzbudenie, keď je to ťažké';

  @override
  String get promptSocialLabel => 'Spoločenská situácia';

  @override
  String get promptSocialSubtitle => 'Ako zvládnuť spoločenské stretnutie';

  @override
  String get promptSlippedLabel => 'Pošmykol/a som sa';

  @override
  String get promptSlippedSubtitle => 'Bez odsudzovania, len podpora';

  @override
  String get typeMessageHint => 'Napíšte správu...';

  @override
  String get editProfileTitle => 'Upraviť profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Profil sa nepodarilo uložiť: $error';
  }

  @override
  String get heightCmLabel => 'Výška (cm)';

  @override
  String get weightKgLabel => 'Hmotnosť (kg)';

  @override
  String get saveChangesLabel => 'Uložiť zmeny';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Pokročilé prehľady a analýzy';

  @override
  String get featureUnlimitedJournal => 'Neobmedzené záznamy v denníku';

  @override
  String get featureUnlimitedChat => 'Neobmedzený chat s AI koučom';

  @override
  String get featureCommunityGroups => 'Exkluzívne komunitné skupiny';

  @override
  String get featurePrioritySupport => 'Prioritná odborná podpora';

  @override
  String get featureThemePacks => 'Vlastné balíčky tém';

  @override
  String get featureDataExport => 'Export údajov';

  @override
  String get featureAdFree => 'Zážitok bez reklám';

  @override
  String get premiumMemberTitle => 'Ste Premium člen';

  @override
  String get unlockFullRecoveryTitle =>
      'Odomknite kompletný zážitok\nz vášho zotavenia';

  @override
  String get premiumMemberSubtitle =>
      'Ďakujeme, že podporujete svoju cestu k zotaveniu — všetky nižšie uvedené prémiové funkcie sú odomknuté.';

  @override
  String get premiumJoinSubtitle =>
      'Pridajte sa ku komunite tisícov ľudí, ktorí\nurýchľujú svoju cestu k uzdraveniu pomocou\nnašich prémiových nástrojov a personalizovanej podpory.';

  @override
  String get monthlyPlanLabel => 'Mesačne';

  @override
  String get perMonthSuffix => '/mes.';

  @override
  String get cancelAnytimeLabel => 'Zrušiť kedykoľvek';

  @override
  String get yearlyPlanLabel => 'Ročne';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Účtované ročne vo výške $amount';
  }

  @override
  String get bestValueLabel => 'Najlepšia hodnota';

  @override
  String get alreadyPremiumLabel => 'Ste Premium ✓';

  @override
  String get startPremiumLabel => 'Začať Premium';

  @override
  String get manageSubscriptionLabel =>
      'Spravujte alebo zrušte predplatné v nastaveniach predplatného svojho zariadenia.';

  @override
  String get noCommitmentLabel => 'Bez záväzkov. Zrušte kedykoľvek.';

  @override
  String get continueFreePlanLabel => 'Pokračovať s bezplatným plánom';

  @override
  String get backToHomeLabel => 'Späť na domov';

  @override
  String get cancelPremiumLabel => 'Zrušiť Premium';

  @override
  String get cancelPremiumTitle => 'Zrušiť Premium?';

  @override
  String get cancelPremiumMessage =>
      'Stratíte prístup k neobmedzeným záznamom v denníku, neobmedzenému chatu s koučom, štatistickým prehľadom a týždenným správam. Kedykoľvek sa môžete znova prihlásiť na odber.';

  @override
  String get keepPremiumLabel => 'Ponechať Premium';

  @override
  String get nowPremiumMessage =>
      'Teraz máte Premium! Užite si kompletný zážitok z vášho zotavenia.';

  @override
  String get premiumCancelledMessage =>
      'Premium bolo zrušené. Vrátili ste sa na bezplatný plán.';

  @override
  String get termsOfUseLabel => 'Podmienky používania';

  @override
  String get navHomeLabel => 'Domov';

  @override
  String get navStatsLabel => 'Štatistiky';

  @override
  String get navJournalLabel => 'Denník';

  @override
  String get navBadgesLabel => 'Odznaky';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Ciele zotavenia';

  @override
  String get drinksPerWeekLabel => 'Nápojov za týždeň';

  @override
  String get quitReasonsLabel => 'Dôvody na ukončenie';

  @override
  String get quitReasonsHelperText => 'Viacero dôvodov oddeľte čiarkou.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Ciele zotavenia sa nepodarilo uložiť: $error';
  }

  @override
  String get goalHint => 'napr. úplná abstinencia';

  @override
  String get drinksPerWeekHint => 'napr. 12';

  @override
  String get quitReasonsHint => 'napr. zdravie, rodina, peniaze';

  @override
  String get todaysPrompt => 'Dnešná otázka';

  @override
  String get defaultJournalPrompt => 'Na čo dnes myslíte?';

  @override
  String get aiJournalInsights => 'AI prehľady z denníka';

  @override
  String get unlockJournalInsightsMessage =>
      'Odomknite týždenné vzorce, trendy nálady a personalizované prehľady z vašich záznamov v denníku.';

  @override
  String get notEnoughJournalData =>
      'Zatiaľ nie je dostatok údajov — tento týždeň napíšte niekoľko záznamov a skúste to znova.';

  @override
  String get openEntry => 'Otvoriť';

  @override
  String get editEntry => 'Upraviť';

  @override
  String get deleteEntry => 'Vymazať';

  @override
  String get searchJournalEntries => 'Hľadať v záznamoch...';

  @override
  String get writeNewEntry => 'Napísať nový záznam';

  @override
  String get recentEntries => 'Nedávne záznamy';

  @override
  String get noJournalEntriesYet =>
      'Zatiaľ žiadne záznamy v denníku — napíšte svoju prvú reflexiu vyššie.';

  @override
  String get noEntriesMatchFilters =>
      'Žiadne záznamy nezodpovedajú vašim filtrom.';

  @override
  String get weeklyJournalLimitReached => 'Dosiahnutý týždenný limit';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Tento týždeň ste využili všetkých $limit bezplatných záznamov v denníku. Pre neobmedzené záznamy prejdite na Premium.';
  }

  @override
  String get newEntry => 'Nový záznam';

  @override
  String get writeYourThoughts => 'Napíšte svoje myšlienky';

  @override
  String get saveEntry => 'Uložiť záznam';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Tento týždeň vám zostáva $remaining z $limit bezplatných záznamov';
  }

  @override
  String get deleteEntryQuestion => 'Vymazať záznam?';

  @override
  String get deleteEntryConfirmation =>
      'Tento záznam bude natrvalo vymazaný. Túto akciu nemožno vrátiť späť.';

  @override
  String get journalEntryNotFound => 'Záznam sa nenašiel';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Tento záznam v denníku mohol byť vymazaný.';

  @override
  String get goBack => 'Späť';

  @override
  String get journalEntryTitle => 'Záznam v denníku';

  @override
  String get moodStruggling => 'Ťažkosti';

  @override
  String get moodUnwell => 'Necítim sa dobre';

  @override
  String get moodNeutral => 'Neutrálna';

  @override
  String get whatHappenedToday => 'Čo sa dnes stalo?';

  @override
  String get trigger => 'Spúšťač';

  @override
  String get whatHelped => 'Čo pomohlo';

  @override
  String get whatIllTryNextTime => 'Čo skúsim nabudúce';

  @override
  String get journalPrivacyMessage =>
      'Vaša reflexia je súkromná a uložená vo vašom denníku.';

  @override
  String get unlocked => 'Odomknuté';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dní',
      many: 'dní',
      few: 'dni',
      one: '',
    );
    return 'Zostáva $count deň$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count dní';
  }

  @override
  String get firstReflection => 'Prvá\nreflexia';

  @override
  String get oneJournalEntry => '1 záznam v denníku';

  @override
  String get openBook => 'Otvoriť knihu';

  @override
  String get tenJournalEntries => '10 záznamov v denníku';

  @override
  String get dedicatedWriter => 'Oddaný\npisateľ';

  @override
  String get thirtyJournalEntries => '30 záznamov v denníku';

  @override
  String get firstConversation => 'Prvá\nkonverzácia';

  @override
  String get oneAiCoachChat => '1 chat s AI koučom';

  @override
  String get keepTalking => 'Pokračovať v rozhovore';

  @override
  String get fiveConversations => '5 konverzácií';

  @override
  String get coachCompanion => 'Spoločník\nkouča';

  @override
  String get twentyConversations => '20 konverzácií';

  @override
  String get checkInHabit => 'Návyk\nCheck-in';

  @override
  String get sevenCheckIns => '7 Check-inov';

  @override
  String get consistencyPro => 'Majster\nvytrvalosti';

  @override
  String get thirtyCheckIns => '30 Check-inov';

  @override
  String get dedicatedJourney => 'Oddaná\ncesta';

  @override
  String get hundredCheckIns => '100 Check-inov';

  @override
  String get goalGetter => 'Dosahovateľ cieľov';

  @override
  String get threeGoalsCompleted => '3 splnené ciele';

  @override
  String get goalAchiever => 'Dosiahnutý\ncieľ';

  @override
  String get tenGoalsCompleted => '10 splnených cieľov';

  @override
  String get firstSavings => 'Prvé\núspory';

  @override
  String get fiveHundredSaved => 'Ušetrených \$500';

  @override
  String get smartSaver => 'Múdry sporiteľ';

  @override
  String get oneThousandSaved => 'Ušetrených \$1 000';

  @override
  String get bigSaver => 'Veľký sporiteľ';

  @override
  String get fiveThousandSaved => 'Ušetrených \$5 000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current z \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current z $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Pokračujte — váš prvý míľnik na vás čaká!';

  @override
  String get badgesAndMilestones => 'Odznaky a míľniky';

  @override
  String get yourMilestoneJourney => 'Vaša cesta míľnikmi';

  @override
  String milestonesAchieved(int count) {
    return 'Dosiahnuté míľniky: $count.\nKlepnutím zobrazíte';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Na svojej ceste ste odomkli $unlocked z $total míľnikov.';
  }

  @override
  String get remaining => 'Zostáva';

  @override
  String get complete => 'Dokončené';

  @override
  String get nextMilestone => 'Ďalší míľnik';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% hotovo';
  }

  @override
  String get sobrietyMilestones => 'Míľniky abstinencie';

  @override
  String get journeyBadges => 'Odznaky na ceste';

  @override
  String get bronze => 'BRONZ';

  @override
  String get silver => 'STRIEBRO';

  @override
  String get gold => 'ZLATO';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Analyzujeme vašu cestu...';

  @override
  String get aiCreatingSanctuary =>
      'Naša AI vytvára vaše personalizované bezpečné miesto.';

  @override
  String get understandingHabits => 'Analyzujeme návyky...';

  @override
  String get calculatingBaseline => 'Vypočítavame vašu základnú hodnotu...';

  @override
  String get personalizingPlan => 'Personalizujeme váš plán...';

  @override
  String get finalizingSanctuary => 'Dokončujeme vaše bezpečné miesto...';

  @override
  String get creatingYourPlan => 'Vytvárame váš plán...';

  @override
  String get personalizedPlanError =>
      'Váš personalizovaný plán sa nepodarilo vytvoriť. Skúste to znova.';

  @override
  String get retry => 'Skúsiť znova';

  @override
  String get breathInhale => 'NÁDYCH';

  @override
  String get breathHold => 'ZADRŽAŤ';

  @override
  String get breathExhale => 'VÝDYCH';

  @override
  String get breathDone => 'HOTOVO';

  @override
  String get breathGreatJob => 'Skvelá práca!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dnešných $count relácií',
      many: 'Dnešných $count relácií',
      few: 'Dnešné $count relácie',
      one: 'Dnešná 1 relácia',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Ukončiť cvičenie';

  @override
  String get done => 'Hotovo';

  @override
  String get noCopingTipsYet => 'Zatiaľ žiadne tipy na zvládanie';

  @override
  String get copingStrategiesWillAppear =>
      'Vaše personalizované stratégie zvládania sa zobrazia tu, keď sa dokončí vytváranie vášho plánu zotavenia.';

  @override
  String get strategiesTailoredToTriggers =>
      'Stratégie prispôsobené vašim spúšťačom';

  @override
  String get cravingsPeakAndPass => 'Chute dosiahnu vrchol\na potom pominú';

  @override
  String get rideTheWaveDescription =>
      'Väčšina chutí na alkohol pominie do 15 minút. Nemusíte podľa nich konať — jednoducho ich s nami prečkajte.';

  @override
  String get stayWithIt => 'vydržte';

  @override
  String get youMadeIt => 'zvládli ste to';

  @override
  String get readyWhenYouAre => 'keď budete pripravení';

  @override
  String get rideItAgain => 'Prečkať znova';

  @override
  String get start15MinuteTimer => 'Spustiť 15-minútový časovač';

  @override
  String get rideTheWaveCompletedMessage =>
      'Prečkali ste túto vlnu. To je skutočná sila. 💪';

  @override
  String get myProgress => 'Môj pokrok';

  @override
  String get weekLabel => 'Týždeň';

  @override
  String get monthLabel => 'Mesiac';

  @override
  String get allLabel => 'Všetko';

  @override
  String get daysSoberStatLabel => 'Dni bez\nalkoholu';

  @override
  String get savedStatLabel => 'Ušetrené';

  @override
  String get avoidedStatLabel => 'Vynechané';

  @override
  String get moodTrends => 'Trendy nálady';

  @override
  String get cravingsPattern => 'Vzorec chutí';

  @override
  String get unlockLabel => 'Odomknúť';

  @override
  String get unlockFullStats => 'Odomknúť úplné štatistiky';

  @override
  String get premiumStatsMessage =>
      'Trendy nálady a vzorce chutí sú prémiové funkcie. Prejdite na Premium a zobrazte si úplné štatistiky.';

  @override
  String get healthMilestonesWillAppear =>
      'Vaše zdravotné míľniky sa zobrazia tu.';

  @override
  String get healthMilestones => 'Zdravotné míľniky';

  @override
  String dayNumber(int day) {
    return 'Deň $day';
  }

  @override
  String get soberLabel => 'Bez alkoholu';

  @override
  String get slipLabel => 'Pošmyknutie';

  @override
  String get noDataLabel => 'Žiadne údaje';

  @override
  String get milestone24Hours => '24 hodín';

  @override
  String get milestoneOneWeek => 'Jeden týždeň';

  @override
  String get milestoneOneMonth => 'Jeden mesiac';

  @override
  String get milestoneThreeMonths => 'Tri mesiace';

  @override
  String get milestoneSixMonths => 'Šesť mesiacov';

  @override
  String get milestoneOneYear => 'Jeden rok';

  @override
  String milestoneDayCount(int day) {
    return 'Míľnik dňa $day';
  }

  @override
  String get maybeLaterLabel => 'Možno neskôr';

  @override
  String get cancelLabel => 'Zrušiť';
}
