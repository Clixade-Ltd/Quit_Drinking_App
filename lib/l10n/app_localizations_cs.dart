// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get skip => 'Přeskočit';

  @override
  String get continueButton => 'Pokračovat';

  @override
  String get getStarted => 'Začít';

  @override
  String get onboardingTitle1 => 'Vezměte život do svých rukou';

  @override
  String get onboardingSubtitle1 =>
      'Sledujte svou cestu, oslavujte každý úspěch a buďte den za dnem zdravější.';

  @override
  String get onboardingTitle2 => 'Váš AI průvodce na cestě k zotavení';

  @override
  String get onboardingSubtitle2 =>
      'Získejte osobní doporučení, zdravé návyky, motivační připomínky a přehledy pokroku navržené přímo pro vás.';

  @override
  String get goodMorning => 'Dobré ráno';

  @override
  String get goodAfternoon => 'Dobré odpoledne';

  @override
  String get goodEvening => 'Dobrý večer';

  @override
  String get goodNight => 'Dobrou noc';

  @override
  String get embracingClarity => 'S čistou hlavou, krok za krokem.';

  @override
  String get streakLabel => 'SÉRIE';

  @override
  String get goalLabel => 'Cíl';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dní',
      few: '$count dny',
      one: '$count den',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Plán Premium';

  @override
  String get premiumPlanSubtitle => 'Odemkněte plný zážitek z vaší cesty';

  @override
  String get accountAndSupport => 'ÚČET A PODPORA';

  @override
  String get privacyPolicy => 'Zásady ochrany osobních údajů';

  @override
  String get privacyPolicySubtitle => 'Správa sdílení dat a zabezpečení účtu';

  @override
  String get termsOfService => 'Podmínky služby';

  @override
  String get termsOfServiceSubtitle => 'Časté dotazy, kontakt a zdroje';

  @override
  String get shareApp => 'Sdílet aplikaci';

  @override
  String get shareAppSubtitle => 'Sdílejte aplikaci se svými přáteli';

  @override
  String get resetData => 'Obnovit data';

  @override
  String get resetDataSubtitle => 'Vymazat vše uložené v tomto zařízení';

  @override
  String get resetAllDataTitle => 'Obnovit všechna data?';

  @override
  String get resetAllDataMessage =>
      'Tímto krokem vymažete vše uložené v tomto zařízení – profil, záznamy v deníku i pokrok. Tuto akci nelze vrátit zpět.';

  @override
  String get cancel => 'Zrušit';

  @override
  String get reset => 'Obnovit';

  @override
  String get chooseFromGallery => 'Vybrat z galerie';

  @override
  String get takePhoto => 'Pořídit fotku';

  @override
  String get removePhoto => 'Odebrat fotku';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Fotku nelze aktualizovat: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Fotku nelze odebrat: $error';
  }

  @override
  String get photoTooLarge =>
      'Tato fotka je i po kompresi příliš velká – zkuste prosím jinou.';

  @override
  String get unableToLoadProfile => 'Váš profil nelze načíst';

  @override
  String get pleaseTryAgain => 'Zkuste to prosím znovu.';

  @override
  String get tryAgain => 'Zkusiť znovu';

  @override
  String get profileNotFound => 'Profil nenalezen';

  @override
  String get refresh => 'Obnovit';

  @override
  String get noProfileDataFound =>
      'V tomto zařízení zatím nebyly nalezeny žádné údaje o profilu.';

  @override
  String couldNotResetData(String error) {
    return 'Data nelze obnovit: $error';
  }

  @override
  String get navHome => 'Domů';

  @override
  String get navStats => 'Statistiky';

  @override
  String get navJournal => 'Deník';

  @override
  String get navBadges => 'Odznaky';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return 'Funkce $feature bude již brzy k dispozici.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Přestaňte pít';

  @override
  String get splashSubtitle => 'Udělejte první krok k\nživotu bez alkoholu';

  @override
  String get preparingJourney => 'Příprava vaší\ncesty';

  @override
  String get taskMorningMeditation => 'Ranní meditace (10 min)';

  @override
  String get taskReadChapter =>
      'Přečíst 4. kapitolu knihy \"Deník abstinence\"';

  @override
  String get taskEveningJournal => 'Večerní deník vděčnosti';

  @override
  String get close => 'Zavřít';

  @override
  String get youAreDoingGreat => 'Vedete si skvěle!';

  @override
  String get shareMilestone => 'Sdílet milník';

  @override
  String shareMilestoneMessage(int days) {
    return 'Jsem na $days. dni své cesty za abstinencí! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Můj milník v abstinenci';

  @override
  String get weeklyReportReadyTitle => 'Váš týdenní přehled je připraven';

  @override
  String get weeklyReportReadySubtitle =>
      'Klepnutím zobrazíte, jak probíhal váš týden';

  @override
  String get howAreYouFeeling => 'Jak se cítíte?';

  @override
  String get moodTough => 'Těžko';

  @override
  String get moodOkay => 'Ujde to';

  @override
  String get moodGood => 'Dobře';

  @override
  String get moneySaved => 'Ušetřené peníze';

  @override
  String get caloriesSaved => 'Ušetřené kalorie';

  @override
  String get healthScore => 'Skóre zdraví';

  @override
  String get drinksAvoided => 'Odepřené nápoje';

  @override
  String get estimated => 'Odhadováno';

  @override
  String get aiGenerated => 'Vygenerováno AI';

  @override
  String get daysCapsLabel => 'DNÍ';

  @override
  String get todaysMotivation => 'Dnešní motivace';

  @override
  String get defaultMotivationQuote =>
      'Úspěšně držíte svůj závazek. Pokračujte na vlně pozitivní změny.';

  @override
  String get talkToCoach => 'Popsat poradci';

  @override
  String get havingACraving => 'Mám chuť na alkohol';

  @override
  String get unlockWeeklyReportsTitle => 'Odemkněte týdenní přehledy';

  @override
  String get unlockWeeklyReportsMessage =>
      'Sledujte své dny bez alkoholu, trendy nálady a osobní AI zpětnou vazbu každý týden. Pro odemčení přejděte na Premium.';

  @override
  String get maybeLater => 'Možná později';

  @override
  String get upgrade => 'Vylepšit';

  @override
  String get weeklyReportTitle => 'Týdenní přehled';

  @override
  String get weeklyReportsPremiumTitle =>
      'Týdenní přehledy jsou funkcí Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Prohlížejte si svoje dny bez alkoholu, trendy nálady, chutě na alkohol i osobní AI doporučení každý týden.';

  @override
  String get upgradeToPremium => 'Přejít na Premium';

  @override
  String get couldNotGenerateReport => 'Váš přehled se nepodařilo vygenerovat.';

  @override
  String get tryAgainLower => 'Zkuste to znovu';

  @override
  String get statSoberDays => 'Dny bez alkoholu';

  @override
  String get statAvgMood => 'Průměrná nálada';

  @override
  String get statCravings => 'Chutě na alkohol';

  @override
  String get statMoneySaved => 'Ušetřené peníze';

  @override
  String get coachFeedback => 'Zpětná vazba poradce';

  @override
  String get journalInsights => 'Postřehy z deníku';

  @override
  String get next => 'Dále';

  @override
  String get question1Title => 'Jaký je váš cíl?';

  @override
  String get question1Subtitle =>
      'Vyberte cíl, který je pro vás\nnejdůležitější';

  @override
  String get goalQuitCompletely => 'Zcela přestat';

  @override
  String get goalReduceDrinking => 'Omezit pití';

  @override
  String get goalTakeABreak => 'Dát si pauzu';

  @override
  String get goalBuildHealthierHabits => 'Vybudovat zdravější návyky';

  @override
  String get question3Title => 'Řekněte nám o svých\nnávycích';

  @override
  String get drinksPerWeek => 'Počet nápojů týdně';

  @override
  String get moneySpentPerWeek => 'Utracené peníze týdně';

  @override
  String get drinkingLevel => 'Míra konzumace';

  @override
  String get triggersLabel => 'Spouštěče';

  @override
  String get levelSocial => 'Společenská';

  @override
  String get levelRegular => 'Pravidelná';

  @override
  String get levelHeavy => 'Vysoká';

  @override
  String get levelDependent => 'Závislost';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Osamělost';

  @override
  String get triggerHabit => 'Zvyk';

  @override
  String get triggerSadness => 'Smutek';

  @override
  String get triggerAnger => 'Vztek';

  @override
  String get triggerBoredom => 'Nuda';

  @override
  String get triggerSocialPressure => 'Tlak okolí';

  @override
  String get triggerCelebration => 'Oslava';

  @override
  String get triggerSleepProblems => 'Problémy se spánkem';

  @override
  String get triggerWorkPressure => 'Tlak v práci';

  @override
  String get question4Title => 'Proč chcete změnit své návyky?';

  @override
  String get question4Subtitle => 'Váš důvod vám pomůže udržet si motivaci.';

  @override
  String get reasonImproveHealth => 'Zlepšit zdraví';

  @override
  String get reasonSaveMoney => 'Ušetřit peníze';

  @override
  String get reasonFamily => 'Rodina';

  @override
  String get reasonBetterSleep => 'Lepší spánek';

  @override
  String get reasonMentalClarity => 'Jasná mysl';

  @override
  String get reasonFitness => 'Fyzická kondice';

  @override
  String get reasonSelfRespect => 'Sebeúcta';

  @override
  String get reasonCareer => 'Kariéra';

  @override
  String get milestoneUnlockedLabel => 'MILNÍK ODEMKNUT';

  @override
  String incredibleNamePrefix(String name) {
    return 'Úžasné, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ušetřeno';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count odepřeno';
  }

  @override
  String get shareMyMilestone => 'Sdílet můj milník';

  @override
  String get milestoneImageShareError =>
      'Obrázek milníku nelze vytvořit. Zkuste to prosím znovu.';

  @override
  String get dailyCheckInTitle => 'Denní záznam';

  @override
  String get howAreYouFeelingToday => 'Jak se dnes cítíte?';

  @override
  String get honestAnswerHelp =>
      'Vaše upřímná odpověď nám pomůže lépe vás podpořit';

  @override
  String get didYouDrinkToday => 'Pili jste dnes?';

  @override
  String get noLabel => 'Ne';

  @override
  String get yesLabel => 'Ano';

  @override
  String get cravingLevelNow => 'Míra chuti na alkohol právě teď?';

  @override
  String get anythingOnMind => 'Máte něco na srdci?';

  @override
  String get optionalLabel => '(volitelné)';

  @override
  String get dailyNoteHint => 'Napište o svém dni, spouštěčích, úspěších...';

  @override
  String get alreadyCheckedInToday => 'Dnes už máte zaznamenáno';

  @override
  String get saveCheckIn => 'Uložit záznam';

  @override
  String get checkInsHelpTrack =>
      'Záznamy pomáhají sledovat váš pokrok v průběhu času';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Dnešní záznam jste již dokončili.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Odpovězte prosím nejprve na obě výše uvedené otázky';

  @override
  String get checkInSaved => 'Záznam uložen';

  @override
  String get cravingNone => 'Žádná';

  @override
  String get cravingLow => 'Nízká';

  @override
  String get cravingMedium => 'Střední';

  @override
  String get cravingStrong => 'Silná';

  @override
  String get moodBad => 'Špatně';

  @override
  String get moodLow => 'Mizerně';

  @override
  String get moodGreat => 'Skvěle';

  @override
  String get sosSupportTitle => 'Podpora SOS';

  @override
  String notAloneMessage(String name) {
    return 'Nejste v tom sami, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Chutě odezní. Vyberte si z možností níže, co vám pomůže tento moment překonat.';

  @override
  String get breathingExercise => 'Dychové cvičení';

  @override
  String get breathingExerciseSubtitle => 'Vedená technika 4-7-8, 2 minuty';

  @override
  String get rideTheWave => 'Překonat vlnu';

  @override
  String get rideTheWaveSubtitle => '15minutový časovač – chutě vždy odezní';

  @override
  String get copingTips => 'Tipy na zvládání';

  @override
  String get copingTipsSubtitle =>
      'Personalizované strategie pro vaše spouštěče';

  @override
  String get talkToAiCoach => 'Promluvit si s AI poradcem';

  @override
  String get talkToAiCoachSubtitle => 'Chatujte se svým AI průvodcem';

  @override
  String get callSomeone => 'Zavolat někomu';

  @override
  String get callSomeoneSubtitle => 'Spojte se se svou blízkou osobou';

  @override
  String get contactsPermissionNeeded =>
      'Pro volání kontaktům je vyžadován přístup ke kontaktům.';

  @override
  String get beatenCravingsPrefix => 'Chutím jste úspěšně odolali už ';

  @override
  String beatenCravingsCount(int count) {
    return '${count}krát';
  }

  @override
  String get beatenCravingsSuffix => '. Zvládnete to i tentokrát.';

  @override
  String get tellUsAboutYourself => 'Řekněte nám o sobě';

  @override
  String get detailsSubtitle =>
      'Tyto informace nám pomohou přizpůsobit vaši cestu k zotavení a poskytnout přesné postřehy.';

  @override
  String get nameLabel => 'Jméno';

  @override
  String get nameHint => 'např. Jan Novák';

  @override
  String get ageLabel => 'Věk';

  @override
  String get ageHint => 'např. 32';

  @override
  String get sexAssignedAtBirth => 'Pohlaví při narození';

  @override
  String get sexFemale => 'Žena';

  @override
  String get sexMale => 'Muž';

  @override
  String get heightLabel => 'Výška';

  @override
  String get weightLabel => 'Hmotnost';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Dosažen denní limit';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Vyčerpali jste všech $limit bezplatných zpráv pro dnešní den. Přejděte na Premium pro neomezený chat s AI poradcem.';
  }

  @override
  String get coachConnectError =>
      'Nyní se nelze připojit. Zkuste to prosím za chvíli znovu.';

  @override
  String get clearConversationTitle => 'Vymazat konverzaci?';

  @override
  String get clearConversationMessage =>
      'Tímto trvale smažete historii chatu s AI poradcem.';

  @override
  String get clearLabel => 'Vymazat';

  @override
  String get recoveryCoachTitle => 'Poradce pro abstinenci';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Vymazat konverzaci';

  @override
  String chatGreeting(String name) {
    return 'Ahoj $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Jste na $days. dni své cesty. Jsem tu, kdykoliv si budete chtít promluvit.';
  }

  @override
  String get quickPromptsLabel => 'RYCHLÉ TÉMATA';

  @override
  String get promptCravingLabel => 'Mám chuť na alkohol';

  @override
  String get promptCravingSubtitle => 'Zklidnit se, rychle';

  @override
  String get promptMotivationLabel => 'Potřebuji motivaci';

  @override
  String get promptMotivationSubtitle => 'Povzbuzení v těžké chvíli';

  @override
  String get promptSocialLabel => 'Společenská událost';

  @override
  String get promptSocialSubtitle => 'Jak zvládnout akci';

  @override
  String get promptSlippedLabel => 'Uklouzl/a jsem';

  @override
  String get promptSlippedSubtitle => 'Bez odsuzování, čistá podpora';

  @override
  String get typeMessageHint => 'Napište zprávu...';

  @override
  String get editProfileTitle => 'Upravit profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Profil nelze uložit: $error';
  }

  @override
  String get heightCmLabel => 'Výška (cm)';

  @override
  String get weightKgLabel => 'Hmotnost (kg)';

  @override
  String get saveChangesLabel => 'Uložit změny';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Pokročilé analýzy a přehledy';

  @override
  String get featureUnlimitedJournal => 'Neomezené záznamy v deníku';

  @override
  String get featureUnlimitedChat => 'Neomezený chat s AI poradcem';

  @override
  String get featureCommunityGroups => 'Exkluzivní komunitní skupiny';

  @override
  String get featurePrioritySupport => 'Prioritní expertní podpora';

  @override
  String get featureThemePacks => 'Vlastní balíčky motivů';

  @override
  String get featureDataExport => 'Export dat';

  @override
  String get featureAdFree => 'Zážitek zcela bez reklam';

  @override
  String get premiumMemberTitle => 'Jste členem Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Odemkněte plný zážitek z vaší\ncesty za abstinencí';

  @override
  String get premiumMemberSubtitle =>
      'Děkujeme, že podporujete svou cestu – všechny níže uvedené funkce Premium máte odemčené.';

  @override
  String get premiumJoinSubtitle =>
      'Připojte se k tisícům lidí, kteří\nurychlují své zotavení pomocí našich\npremium nástrojů a osobní podpory.';

  @override
  String get monthlyPlanLabel => 'Měsíčně';

  @override
  String get perMonthSuffix => '/měsíc';

  @override
  String get cancelAnytimeLabel => 'Zrušení kdykoliv';

  @override
  String get yearlyPlanLabel => 'Ročně';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Účtováno ročně ve výši $amount';
  }

  @override
  String get bestValueLabel => 'Nejvýhodnější';

  @override
  String get alreadyPremiumLabel => 'Máte Premium ✓';

  @override
  String get startPremiumLabel => 'Aktivovat Premium';

  @override
  String get manageSubscriptionLabel =>
      'Správa nebo zrušení je možné v nastavení předplatného ve vašem zařízení.';

  @override
  String get noCommitmentLabel => 'Bez závazků. Zrušte kdykoliv.';

  @override
  String get continueFreePlanLabel => 'Pokračovat s bezplatným plánem';

  @override
  String get backToHomeLabel => 'Zpět na hlavní stránku';

  @override
  String get cancelPremiumLabel => 'Zrušit Premium';

  @override
  String get cancelPremiumTitle => 'Zrušit Premium?';

  @override
  String get cancelPremiumMessage =>
      'Ztratíte přístup k neomezeným záznamům v deníku, neomezenému chatu s poradcem, statistikám i týdenním přehledům. Předplatné můžete kdykoliv obnovit.';

  @override
  String get keepPremiumLabel => 'Ponechat Premium';

  @override
  String get nowPremiumMessage =>
      'Nyní jste člene Premium! Užijte si plný zážitek z vaší cesty.';

  @override
  String get premiumCancelledMessage =>
      'Premium bylo zrušeno. Nyní jste zpět na bezplatném plánu.';

  @override
  String get termsOfUseLabel => 'Podmínky použití';

  @override
  String get navHomeLabel => 'Domů';

  @override
  String get navStatsLabel => 'Statistiky';

  @override
  String get navJournalLabel => 'Deník';

  @override
  String get navBadgesLabel => 'Odznaky';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Cíle v abstinenci';

  @override
  String get drinksPerWeekLabel => 'Počet nápojů týdně';

  @override
  String get quitReasonsLabel => 'Důvody pro abstinenci';

  @override
  String get quitReasonsHelperText => 'Více důvodů oddělte čárkou.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Cíle nelze uložit: $error';
  }

  @override
  String get goalHint => 'např. Úplná abstinence';

  @override
  String get drinksPerWeekHint => 'např. 12';

  @override
  String get quitReasonsHint => 'např. Zdraví, Rodina, Peníze';

  @override
  String get todaysPrompt => 'Dnešní téma k zamyšlení';

  @override
  String get defaultJournalPrompt => 'Co máte dnes na mysli?';

  @override
  String get aiJournalInsights => 'AI analýza deníku';

  @override
  String get unlockJournalInsightsMessage =>
      'Odemkněte týdenní vzorce, trendy nálady a osobní postřehy ze svých záznamů v deníku.';

  @override
  String get notEnoughJournalData =>
      'Zatím nedostatek dat – napište tento týden několik záznamů a vraťte se sem.';

  @override
  String get openEntry => 'Otevřít';

  @override
  String get editEntry => 'Upravit';

  @override
  String get deleteEntry => 'Smazat';

  @override
  String get searchJournalEntries => 'Hledat v deníku...';

  @override
  String get writeNewEntry => 'Napsat nový záznam';

  @override
  String get recentEntries => 'Nedávné záznamy';

  @override
  String get noJournalEntriesYet =>
      'Zatím žádné záznamy v deníku – napište své první zamyšlení výše.';

  @override
  String get noEntriesMatchFilters =>
      'Zadaným filtrům neodpovídají žádné záznamy.';

  @override
  String get weeklyJournalLimitReached => 'Dosažen týdenní limit';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Vyčerpali jste všech $limit bezplatných záznamů v deníku pro tento týden. Přejděte na Premium pro neomezené zapisování.';
  }

  @override
  String get newEntry => 'Nový záznam';

  @override
  String get writeYourThoughts => 'Napište své myšlenky';

  @override
  String get saveEntry => 'Uložit záznam';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Zbývá $remaining z $limit bezplatných záznamů tento týden';
  }

  @override
  String get deleteEntryQuestion => 'Smazat záznam?';

  @override
  String get deleteEntryConfirmation =>
      'Tento záznam bude trvale smazán. Tuto akci nelze vrátit zpět.';

  @override
  String get journalEntryNotFound => 'Záznam nenalezen';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Tento záznam v deníku mohl být smazán.';

  @override
  String get goBack => 'Zpět';

  @override
  String get journalEntryTitle => 'Záznam v deníku';

  @override
  String get moodStruggling => 'Bojuji';

  @override
  String get moodUnwell => 'Mizerně';

  @override
  String get moodNeutral => 'Neutralně';

  @override
  String get whatHappenedToday => 'Co se dnes stalo?';

  @override
  String get trigger => 'Spouštěč';

  @override
  String get whatHelped => 'Co pomohlo';

  @override
  String get whatIllTryNextTime => 'Co zkusím příště';

  @override
  String get journalPrivacyMessage =>
      'Vaše zamyšlení je soukromé a bezpečně uložené ve vašem deníku.';

  @override
  String get unlocked => 'Odemknuto';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dní',
      few: '$count dny',
      one: '$count den',
    );
    return 'Zbývá $_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count dní';
  }

  @override
  String get firstReflection => 'První\nzamyšlení';

  @override
  String get oneJournalEntry => '1 záznam v deníku';

  @override
  String get openBook => 'Otevřená kniha';

  @override
  String get tenJournalEntries => '10 záznamů v deníku';

  @override
  String get dedicatedWriter => 'Pravidelný\npísař';

  @override
  String get thirtyJournalEntries => '30 záznamů v deníku';

  @override
  String get firstConversation => 'První\nkonverzace';

  @override
  String get oneAiCoachChat => '1 chat s AI poradcem';

  @override
  String get keepTalking => 'Mluvme dál';

  @override
  String get fiveConversations => '5 konverzací';

  @override
  String get coachCompanion => 'Věrný\nprůvodce';

  @override
  String get twentyConversations => '20 konverzací';

  @override
  String get checkInHabit => 'Návyk\nzáznamů';

  @override
  String get sevenCheckIns => '7 záznamů';

  @override
  String get consistencyPro => 'Mistr\nvytrvalosti';

  @override
  String get thirtyCheckIns => '30 záznamů';

  @override
  String get dedicatedJourney => 'Oddaná\ncesta';

  @override
  String get hundredCheckIns => '100 záznamů';

  @override
  String get goalGetter => 'Jde si za svým';

  @override
  String get threeGoalsCompleted => '3 splněné cíle';

  @override
  String get goalAchiever => 'Sběratel\ncílů';

  @override
  String get tenGoalsCompleted => '10 splněných cílů';

  @override
  String get firstSavings => 'První\núspory';

  @override
  String get fiveHundredSaved => 'Ušetřeno \$500';

  @override
  String get smartSaver => 'Chytrý šetřílek';

  @override
  String get oneThousandSaved => 'Ušetřeno \$1 000';

  @override
  String get bigSaver => 'Velký šetřílek';

  @override
  String get fiveThousandSaved => 'Ušetřeno \$5 000';

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
      'Jen pokračujte – váš první milník na vás čeká!';

  @override
  String get badgesAndMilestones => 'Odznaky a milníky';

  @override
  String get yourMilestoneJourney => 'Vaše cesta milníků';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dosaženo $count milníků.',
      few: 'Dosaženy $count milníky.',
      one: 'Dosažen $count milník.',
    );
    return '$_temp0\nKlepnutím zobrazíte detail';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Na své cestě jste odemkli $unlocked z $total milníků.';
  }

  @override
  String get remaining => 'Zbývá';

  @override
  String get complete => 'Dokončeno';

  @override
  String get nextMilestone => 'Další milník';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent % hotovo';
  }

  @override
  String get sobrietyMilestones => 'Milníky abstinence';

  @override
  String get journeyBadges => 'Odznaky cesty';

  @override
  String get bronze => 'BRONZOVÁ';

  @override
  String get silver => 'STŘÍBRNÁ';

  @override
  String get gold => 'ZLATÁ';

  @override
  String get platinum => 'PLATINOVÁ';

  @override
  String get diamond => 'DIAMANTOVÁ';

  @override
  String get analyzingYourJourney => 'Analýza vaší cesty...';

  @override
  String get aiCreatingSanctuary => 'Naše AI vytváří vaše osobní útočiště.';

  @override
  String get understandingHabits => 'Porozumění vašim návykům...';

  @override
  String get calculatingBaseline => 'Výpočet výchozího stavu...';

  @override
  String get personalizingPlan => 'Personalizace vašeho plánu...';

  @override
  String get finalizingSanctuary => 'Dokončování vašeho útočiště...';

  @override
  String get creatingYourPlan => 'Vytváření vašeho plánu...';

  @override
  String get personalizedPlanError =>
      'Váš osobní plán se nepodařilo vytvořit. Zkuste to prosím znovu.';

  @override
  String get retry => 'Zkusit znovu';

  @override
  String get breathInhale => 'NÁDECH';

  @override
  String get breathHold => 'ZADRŽET';

  @override
  String get breathExhale => 'VÝDECH';

  @override
  String get breathDone => 'HOTOVO';

  @override
  String get breathGreatJob => 'Skvělá práce!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cvičení dnes',
      few: '$count cvičení dnes',
      one: '$count cvičení dnes',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Ukončit cvičení';

  @override
  String get done => 'Hotovo';

  @override
  String get noCopingTipsYet => 'Zatím žádné tipy na zvládání';

  @override
  String get copingStrategiesWillAppear =>
      'Vaše osobní strategie zvládání se zde zobrazí po dokončení generování plánu.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategie přizpůsobené vašim spouštěčům';

  @override
  String get cravingsPeakAndPass => 'Chutě vyvrcholí\na odezní';

  @override
  String get rideTheWaveDescription =>
      'Většina chutí odezní během 15 minut. Nemusíte jim podléhat – prostě tu vlnu překonejte s námi.';

  @override
  String get stayWithIt => 'vydržte to';

  @override
  String get youMadeIt => 'zvládli jste to';

  @override
  String get readyWhenYouAre => 'připraveni, až budete chtít';

  @override
  String get rideItAgain => 'Překonat znovu';

  @override
  String get start15MinuteTimer => 'Spustit 15minutový časovač';

  @override
  String get rideTheWaveCompletedMessage =>
      'Překonali jste vlnu. To je opravdová síla. 💪';

  @override
  String get myProgress => 'Můj pokrok';

  @override
  String get weekLabel => 'Týden';

  @override
  String get monthLabel => 'Měsíc';

  @override
  String get allLabel => 'Vše';

  @override
  String get daysSoberStatLabel => 'Dny bez\nalkoholu';

  @override
  String get savedStatLabel => 'Ušetřeno';

  @override
  String get avoidedStatLabel => 'Odepřeno';

  @override
  String get moodTrends => 'Trendy nálady';

  @override
  String get cravingsPattern => 'Vzorce chutí';

  @override
  String get unlockLabel => 'Odemknout';

  @override
  String get unlockFullStats => 'Odemknout kompletní statistiky';

  @override
  String get premiumStatsMessage =>
      'Trendy nálad a vzorce chutí jsou funkcemi Premium. Přejděte na Premium pro zobrazení kompletních statistik.';

  @override
  String get healthMilestonesWillAppear =>
      'Zde se zobrazí vaše zdravotní milníky.';

  @override
  String get healthMilestones => 'Zdravotní milníky';

  @override
  String dayNumber(int day) {
    return '$day. den';
  }

  @override
  String get soberLabel => 'Bez alkoholu';

  @override
  String get slipLabel => 'Uklouznutí';

  @override
  String get noDataLabel => 'Bez dat';

  @override
  String get milestone24Hours => '24 hodin';

  @override
  String get milestoneOneWeek => 'Jeden týden';

  @override
  String get milestoneOneMonth => 'Jeden měsíc';

  @override
  String get milestoneThreeMonths => 'Tři měsíce';

  @override
  String get milestoneSixMonths => 'Šest měsíců';

  @override
  String get milestoneOneYear => 'Jeden rok';

  @override
  String milestoneDayCount(int day) {
    return 'Milník $day. dne';
  }

  @override
  String get maybeLaterLabel => 'Možná později';

  @override
  String get cancelLabel => 'Zrušit';
}
