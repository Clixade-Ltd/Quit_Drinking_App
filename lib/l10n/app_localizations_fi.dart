// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get skip => 'Ohita';

  @override
  String get continueButton => 'Jatka';

  @override
  String get getStarted => 'Aloita';

  @override
  String get onboardingTitle1 => 'Ota elämäsi hallintaan';

  @override
  String get onboardingSubtitle1 =>
      'Seuraa matkaasi, juhlista jokaista saavutusta ja tule terveemmäksi päivä päivältä.';

  @override
  String get onboardingTitle2 => 'Tekoälypohjainen toipumiskumppanisi';

  @override
  String get onboardingSubtitle2 =>
      'Saa henkilökohtaista ohjausta, terveellisiä tavoiteltavia tapoja, motivaatiomuistutuksia ja edistymisraportteja.';

  @override
  String get goodMorning => 'Hyvää huomenta';

  @override
  String get goodAfternoon => 'Hyvää iltapäivää';

  @override
  String get goodEvening => 'Hyvää iltaa';

  @override
  String get goodNight => 'Hyvää yötä';

  @override
  String get embracingClarity => 'Kohti selkeyttä, päivä kerrallaan.';

  @override
  String get streakLabel => 'PUTKI';

  @override
  String get goalLabel => 'TAVOITE';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivää',
      one: '$count päivä',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium-tilaus';

  @override
  String get premiumPlanSubtitle => 'Avaa täysi toipumiskokemuksesi';

  @override
  String get accountAndSupport => 'TILI JA TUKI';

  @override
  String get privacyPolicy => 'Tietosuojaseloste';

  @override
  String get privacyPolicySubtitle =>
      'Hallitse tietojen jakoa ja tilin turvallisuutta';

  @override
  String get termsOfService => 'Käyttöehdot';

  @override
  String get termsOfServiceSubtitle => 'UKK, ota yhteyttä ja resurssit';

  @override
  String get shareApp => 'Jaa sovellus';

  @override
  String get shareAppSubtitle => 'Jaa sovellus ystäviesi kanssa';

  @override
  String get resetData => 'Nollaa tiedot';

  @override
  String get resetDataSubtitle =>
      'Poista kaikki tälle laitteelle tallennetut tiedot';

  @override
  String get resetAllDataTitle => 'Nollataanko kaikki tiedot?';

  @override
  String get resetAllDataMessage =>
      'Tämä poistaa kaikki tälle laitteelle tallennetut tiedot — profiilin, päiväkirjamerkinnät ja edistymisen — eikä toimintoa voi peruuttaa.';

  @override
  String get cancel => 'Peruuta';

  @override
  String get reset => 'Nollaa';

  @override
  String get chooseFromGallery => 'Valitse galleriasta';

  @override
  String get takePhoto => 'Ota kuva';

  @override
  String get removePhoto => 'Poista kuva';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Kuvan päivitys epäonnistui: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Kuvan poisto epäonnistui: $error';
  }

  @override
  String get photoTooLarge =>
      'Kuva on liian suuri jopa pakkaamisen jälkeen — kokeile toista kuvaa.';

  @override
  String get unableToLoadProfile => 'Profiiliasi ei voitu ladata';

  @override
  String get pleaseTryAgain => 'Yritä uudelleen.';

  @override
  String get tryAgain => 'Yritä uudelleen';

  @override
  String get profileNotFound => 'Profiilia ei löytynyt';

  @override
  String get refresh => 'Päivitä';

  @override
  String get noProfileDataFound =>
      'Tältä laitteelta ei löytynyt vielä profiilitietoja.';

  @override
  String couldNotResetData(String error) {
    return 'Tietojen nollaus epäonnistui: $error';
  }

  @override
  String get navHome => 'Koti';

  @override
  String get navStats => 'Tilastot';

  @override
  String get navJournal => 'Päiväkirja';

  @override
  String get navBadges => 'Merkit';

  @override
  String get navProfile => 'Profiili';

  @override
  String featureComingSoon(String feature) {
    return '$feature on pian saatavilla.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Lopeta juominen';

  @override
  String get splashSubtitle =>
      'Ota ensimmäinen askel kohti\nalkoholitonta elämää';

  @override
  String get preparingJourney => 'Valmistellaan\nmatkaasi';

  @override
  String get taskMorningMeditation => 'Aamumeditaatio (10 min)';

  @override
  String get taskReadChapter => 'Lue luku 4 kirjasta \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Iltapäivän kiitollisuuspäiväkirja';

  @override
  String get close => 'Sulje';

  @override
  String get youAreDoingGreat => 'Teet upeaa työtä!';

  @override
  String get shareMilestone => 'Jaa saavutus';

  @override
  String shareMilestoneMessage(int days) {
    return 'Olen toipumismatkani päivässä $days! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Minun toipumissaavutukseni';

  @override
  String get weeklyReportReadyTitle => 'Viikkoraporttisi on valmis';

  @override
  String get weeklyReportReadySubtitle =>
      'Napauta nähdäksesi, miten viikkosi sujui';

  @override
  String get howAreYouFeeling => 'Miltä sinusta tuntuu?';

  @override
  String get moodTough => 'Raskas';

  @override
  String get moodOkay => 'Ihan ok';

  @override
  String get moodGood => 'Hyvä';

  @override
  String get moneySaved => 'Rahaa säästetty';

  @override
  String get caloriesSaved => 'Kaloreita säästetty';

  @override
  String get healthScore => 'Terveyspisteet';

  @override
  String get drinksAvoided => 'Vältetyt annokset';

  @override
  String get estimated => 'Arvioitu';

  @override
  String get aiGenerated => 'Tekoälyn luoma';

  @override
  String get daysCapsLabel => 'PÄIVÄÄ';

  @override
  String get todaysMotivation => 'Päivän motivaatio';

  @override
  String get defaultMotivationQuote =>
      'Olet pitänyt lupauksesi menestyksekkäästi. Jatka positiivisen muutoksen aallolla ratsastamista.';

  @override
  String get talkToCoach => 'Puhu valmentajalle';

  @override
  String get havingACraving => 'Minun tekee mieli';

  @override
  String get unlockWeeklyReportsTitle => 'Avaa viikkoraportit';

  @override
  String get unlockWeeklyReportsMessage =>
      'Näe raittiit päiväsi, mielialatrendisi ja henkilökohtainen tekoälypalaute joka viikko. Päivitä Premiumversioon avataksesi toiminnot.';

  @override
  String get maybeLater => 'Ehkä myöhemmin';

  @override
  String get upgrade => 'Päivitä';

  @override
  String get weeklyReportTitle => 'Viikkoraportti';

  @override
  String get weeklyReportsPremiumTitle =>
      'Viikkoraportit ovat Premium-ominaisuus';

  @override
  String get weeklyReportsPremiumMessage =>
      'Näe raittiit päiväsi, mielialatrendisi, mieliteot ja henkilökohtainen tekoälypalaute joka viikko.';

  @override
  String get upgradeToPremium => 'Päivitä Premium-versioon';

  @override
  String get couldNotGenerateReport => 'Raporttia ei voitu luoda juuri nyt.';

  @override
  String get tryAgainLower => 'Kokeile uudelleen';

  @override
  String get statSoberDays => 'Raittiit päivät';

  @override
  String get statAvgMood => 'Keskim. mieliala';

  @override
  String get statCravings => 'Mieliteot';

  @override
  String get statMoneySaved => 'Säästetty raha';

  @override
  String get coachFeedback => 'Valmentajan palaute';

  @override
  String get journalInsights => 'Päiväkirjaoivallukset';

  @override
  String get next => 'Seuraava';

  @override
  String get question1Title => 'Mikä on tavoitteesi';

  @override
  String get question1Subtitle => 'Valitse tavoite, joka on sinulle\ntärkein';

  @override
  String get goalQuitCompletely => 'Lopeta kokonaan';

  @override
  String get goalReduceDrinking => 'Vähennä juomista';

  @override
  String get goalTakeABreak => 'Pidä tauko';

  @override
  String get goalBuildHealthierHabits => 'Rakenna terveellisempiä tapoja';

  @override
  String get question3Title => 'Kerro meille\nrutiinistasi';

  @override
  String get drinksPerWeek => 'Annoksia viikossa';

  @override
  String get moneySpentPerWeek => 'Rahaa käytetty viikossa';

  @override
  String get drinkingLevel => 'Juomisen taso';

  @override
  String get triggersLabel => 'Laukaisimet';

  @override
  String get levelSocial => 'Sosiaalinen';

  @override
  String get levelRegular => 'Säännöllinen';

  @override
  String get levelHeavy => 'Runsasaikaista';

  @override
  String get levelDependent => 'Riippuvainen';

  @override
  String get triggerStress => 'Stressi';

  @override
  String get triggerLoneliness => 'Yksinäisyys';

  @override
  String get triggerHabit => 'Tapa';

  @override
  String get triggerSadness => 'Suru';

  @override
  String get triggerAnger => 'Viha';

  @override
  String get triggerBoredom => 'Tylsyys';

  @override
  String get triggerSocialPressure => 'Sosiaalinen paine';

  @override
  String get triggerCelebration => 'Juhliminen';

  @override
  String get triggerSleepProblems => 'Univaikeudet';

  @override
  String get triggerWorkPressure => 'Työpaineet';

  @override
  String get question4Title => 'Miksi haluat muuttua?';

  @override
  String get question4Subtitle => 'Syysi auttaa motivoimaan sinua.';

  @override
  String get reasonImproveHealth => 'Parantaa terveyttäni';

  @override
  String get reasonSaveMoney => 'Säästää rahaa';

  @override
  String get reasonFamily => 'Perhe';

  @override
  String get reasonBetterSleep => 'Parempi uni';

  @override
  String get reasonMentalClarity => 'Mielen selkeys';

  @override
  String get reasonFitness => 'Kuntoilu';

  @override
  String get reasonSelfRespect => 'Iseunnustus';

  @override
  String get reasonCareer => 'Ura';

  @override
  String get milestoneUnlockedLabel => 'SAAVUTUS AVATTU';

  @override
  String incredibleNamePrefix(String name) {
    return 'Upeaa, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount säästetty';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count vältetty';
  }

  @override
  String get shareMyMilestone => 'Jaa saavutukseni';

  @override
  String get milestoneImageShareError =>
      'Saavutuskunvan luominen epäonnistui. Yritä uudelleen.';

  @override
  String get dailyCheckInTitle => 'Päivittäinen kirjautuminen';

  @override
  String get howAreYouFeelingToday => 'Miltä sinusta tuntuu tänään?';

  @override
  String get honestAnswerHelp =>
      'Rehellinen vastauksesi auttaa meitä tukemaan sinua paremmin';

  @override
  String get didYouDrinkToday => 'Joitko tänään?';

  @override
  String get noLabel => 'En';

  @override
  String get yesLabel => 'Kyllä';

  @override
  String get cravingLevelNow => 'Mieliteon taso juuri nyt?';

  @override
  String get anythingOnMind => 'Onko jotain mielessäsi?';

  @override
  String get optionalLabel => '(valinnainen)';

  @override
  String get dailyNoteHint =>
      'Kirjoita päivästäsi, laukaisimista, onnistumisista...';

  @override
  String get alreadyCheckedInToday => 'Olet jo kirjautunut tänään';

  @override
  String get saveCheckIn => 'Tallenna kirjautuminen';

  @override
  String get checkInsHelpTrack =>
      'Kirjautumiset auttavat seuraamaan edistymistäsi ajan myötä';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Olet jo suorittanut tämän päivän kirjautumisen.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Vastaa ensin molempiin yllä oleviin kysymyksiin';

  @override
  String get checkInSaved => 'Kirjautuminen tallennettu';

  @override
  String get cravingNone => 'Ei yhtään';

  @override
  String get cravingLow => 'Matala';

  @override
  String get cravingMedium => 'Kohtalainen';

  @override
  String get cravingStrong => 'Voimakas';

  @override
  String get moodBad => 'Huono';

  @override
  String get moodLow => 'Alhainen';

  @override
  String get moodGreat => 'Maanmainio';

  @override
  String get sosSupportTitle => 'SOS-tuki';

  @override
  String notAloneMessage(String name) {
    return 'Et ole yksin, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Mieliteot menevät ohi. Valitse alta jotain, joka auttaa sinua tämän hetken yli.';

  @override
  String get breathingExercise => 'Hengitysharjoitus';

  @override
  String get breathingExerciseSubtitle =>
      'Ohjattu 4-7-8 tekniikka, 2 minuuttia';

  @override
  String get rideTheWave => 'Ratsasta aallolla';

  @override
  String get rideTheWaveSubtitle =>
      '15 minuutin ajastin — mieliteot menevät aina ohi';

  @override
  String get copingTips => 'Selviytymisvinkit';

  @override
  String get copingTipsSubtitle =>
      'Henkilökohtaiset strategiat laukaisimillesi';

  @override
  String get talkToAiCoach => 'Puhu tekoälyvalmentajalle';

  @override
  String get talkToAiCoachSubtitle => 'Keskustele toipumiskumppanisi kanssa';

  @override
  String get callSomeone => 'Soita jollekulle';

  @override
  String get callSomeoneSubtitle => 'Tavoita luotettu yhteyshenkilösi';

  @override
  String get contactsPermissionNeeded =>
      'Yhteystietolupa tarvitaan soiton tekemiseen.';

  @override
  String get beatenCravingsPrefix => 'Olet voittanut mieliteot jo ';

  @override
  String beatenCravingsCount(int count) {
    return '$count kertaa';
  }

  @override
  String get beatenCravingsSuffix => ' aiemmin. Pystyt siihen uudelleen.';

  @override
  String get tellUsAboutYourself => 'Kerro meille itsestäsi';

  @override
  String get detailsSubtitle =>
      'Nämä tiedot auttavat meitä mukauttamaan toipumismatkaasi ja tarjoamaan tarkkoja oivalluksia.';

  @override
  String get nameLabel => 'Nimi';

  @override
  String get nameHint => 'esim. Alex Rivers';

  @override
  String get ageLabel => 'Ikä';

  @override
  String get ageHint => 'esim. 32';

  @override
  String get sexAssignedAtBirth => 'Syntymässä määritetty sukupuoli';

  @override
  String get sexFemale => 'Nainen';

  @override
  String get sexMale => 'Mies';

  @override
  String get heightLabel => 'Pituus';

  @override
  String get weightLabel => 'Paino';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Päivittäinen raja saavutettu';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Olet käyttänyt kaikki $limit ilmaista viestiä tänään. Päivitä Premium-versioon saadaksesi rajoittamattoman keskustelun valmentajan kanssa.';
  }

  @override
  String get coachConnectError =>
      'Yhteyttä ei saatu muodostettua juuri nyt. Yritä hetken kuluttua uudelleen.';

  @override
  String get clearConversationTitle => 'Tyhjennetäänkö keskustelu?';

  @override
  String get clearConversationMessage =>
      'Tämä poistaa valmentajan keskusteluhistorian pysyvästi.';

  @override
  String get clearLabel => 'Tyhjennä';

  @override
  String get recoveryCoachTitle => 'Toipumisvalmentaja';

  @override
  String get onlineLabel => 'Paikalla';

  @override
  String get clearConversationMenuItem => 'Tyhjennä keskustelu';

  @override
  String chatGreeting(String name) {
    return 'Hei $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Olet matkasi päivässä $days. Olen täällä aina, kun haluat jutella asioista.';
  }

  @override
  String get quickPromptsLabel => 'PIKAVINKIT';

  @override
  String get promptCravingLabel => 'Tekee mieli juoda';

  @override
  String get promptCravingSubtitle => 'Palaa todellisuuteen, nopeasti';

  @override
  String get promptMotivationLabel => 'Tarvitsen motivaatiota';

  @override
  String get promptMotivationSubtitle => 'Piristystä vaikeaan hetkeen';

  @override
  String get promptSocialLabel => 'Sosiaalinen tilanne';

  @override
  String get promptSocialSubtitle => 'Selviydy juhlissa';

  @override
  String get promptSlippedLabel => 'Sorruin juomaan';

  @override
  String get promptSlippedSubtitle => 'Ei tuomitsemista, vain tukea';

  @override
  String get typeMessageHint => 'Kirjoita viesti...';

  @override
  String get editProfileTitle => 'Muokkaa profiilia';

  @override
  String couldNotSaveProfile(String error) {
    return 'Profiilia ei voitu tallentaa: $error';
  }

  @override
  String get heightCmLabel => 'Pituus (cm)';

  @override
  String get weightKgLabel => 'Paino (kg)';

  @override
  String get saveChangesLabel => 'Tallenna muutokset';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Edistyneet oivallukset ja analitikka';

  @override
  String get featureUnlimitedJournal => 'Rajoittamattomat päiväkirjamerkinnät';

  @override
  String get featureUnlimitedChat =>
      'Rajoittamaton chatti tekoälyvalmentajan kanssa';

  @override
  String get featureCommunityGroups => 'Yksinoikeudelliset yhteisöryhmät';

  @override
  String get featurePrioritySupport => 'Priorisoitu asiantuntijatuki';

  @override
  String get featureThemePacks => 'Mukautetut teemapaketit';

  @override
  String get featureDataExport => 'Tietojen vienti';

  @override
  String get featureAdFree => 'Mainokseton kokemus';

  @override
  String get premiumMemberTitle => 'Olet Premium-jäsen';

  @override
  String get unlockFullRecoveryTitle => 'Avaa täysi toipumis-\nkokemuksesi';

  @override
  String get premiumMemberSubtitle =>
      'Kiitos toipumismatkasi tukemisesta — kaikki alla olevat Premium-ominaisuudet ovat käytössäsi.';

  @override
  String get premiumJoinSubtitle =>
      'Liity tuhansien joukkoon, jotka nopeuttavat toipumistaan Premium-työkaluillamme ja henkilökohtaisella tuellamme.';

  @override
  String get monthlyPlanLabel => 'Kuukausittain';

  @override
  String get perMonthSuffix => '/kk';

  @override
  String get cancelAnytimeLabel => 'Peruuta milloin vain';

  @override
  String get yearlyPlanLabel => 'Vuosittain';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Laskutetaan vuosittain hinnalla $amount';
  }

  @override
  String get bestValueLabel => 'Paras arvo';

  @override
  String get alreadyPremiumLabel => 'Olet Premium-käyttäjä ✓';

  @override
  String get startPremiumLabel => 'Aloita Premium';

  @override
  String get manageSubscriptionLabel =>
      'Hallitse tai peruuta laitteesi tilausasetuksista.';

  @override
  String get noCommitmentLabel => 'Ei sitoutumista. Peruuta milloin vain.';

  @override
  String get continueFreePlanLabel => 'Jatka ilmaisversiolla';

  @override
  String get backToHomeLabel => 'Takaisin kotiin';

  @override
  String get cancelPremiumLabel => 'Peruuta Premium';

  @override
  String get cancelPremiumTitle => 'Peruutetaanko Premium?';

  @override
  String get cancelPremiumMessage =>
      'Menetät pääsyn rajoittamattomiin päiväkirjamerkintöihin, valmentajachattiin, tilasto-oivalluksiin ja viikkoraportteihin. Voit tilata uudelleen milloin vain.';

  @override
  String get keepPremiumLabel => 'Pidä Premium';

  @override
  String get nowPremiumMessage =>
      'Olet nyt Premium-käyttäjä! Nauti täydestä toipumiskokemuksestasi.';

  @override
  String get premiumCancelledMessage =>
      'Premium peruutettu. Olet palannut ilmaisversioon.';

  @override
  String get termsOfUseLabel => 'Käyttöehdot';

  @override
  String get navHomeLabel => 'Koti';

  @override
  String get navStatsLabel => 'Tilastot';

  @override
  String get navJournalLabel => 'Päiväkirja';

  @override
  String get navBadgesLabel => 'Merkit';

  @override
  String get navProfileLabel => 'Profiili';

  @override
  String get recoveryGoalsTitle => 'Toipumistavoitteet';

  @override
  String get drinksPerWeekLabel => 'Drinks per week';

  @override
  String get quitReasonsLabel => 'Lopettamisen syyt';

  @override
  String get quitReasonsHelperText => 'Erota useat syyt pilkulla.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Toipumistavoitteita ei voitu tallentaa: $error';
  }

  @override
  String get goalHint => 'esim. Täysi raittius';

  @override
  String get drinksPerWeekHint => 'esim. 12';

  @override
  String get quitReasonsHint => 'esim. Terveys, Perhe, Raha';

  @override
  String get todaysPrompt => 'Päivän aihe';

  @override
  String get defaultJournalPrompt => 'Mitä mielessäsi on tänään?';

  @override
  String get aiJournalInsights => 'Tekoälyn päiväkirjaoivallukset';

  @override
  String get unlockJournalInsightsMessage =>
      'Avaa viikoittaiset kaavat, mielialatrendit ja henkilökohtaiset oivallukset päiväkirjamerkinnöistäsi.';

  @override
  String get notEnoughJournalData =>
      'Ei vielä riittävästi tietoja — kirjoita muutama merkintä tällä viikolla ja palaa asiaan.';

  @override
  String get openEntry => 'Avaa';

  @override
  String get editEntry => 'Muokkaa';

  @override
  String get deleteEntry => 'Poista';

  @override
  String get searchJournalEntries => 'Etsi merkintöjä...';

  @override
  String get writeNewEntry => 'Kirjoita uusi merkintä';

  @override
  String get recentEntries => 'Viimeisimmät merkinnät';

  @override
  String get noJournalEntriesYet =>
      'Ei vielä päiväkirjamerkintöjä — kirjoita ensimmäinen pohdintasi yllä.';

  @override
  String get noEntriesMatchFilters =>
      'Mikään merkintä ei vastaa suodattimiasi.';

  @override
  String get weeklyJournalLimitReached => 'Viikkoraja saavutettu';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Olet käyttänyt kaikki $limit ilmaista päiväkirjamerkintää tällä viikolla. Päivitä Premium-versioon saadaksesi rajoittamattomasti merkintöjä.';
  }

  @override
  String get newEntry => 'Uusi merkintä';

  @override
  String get writeYourThoughts => 'Kirjoita ajatuksesi';

  @override
  String get saveEntry => 'Tallenna merkintä';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining / $limit ilmaista merkintää jäljellä tällä viikolla';
  }

  @override
  String get deleteEntryQuestion => 'Poistetaanko merkintä?';

  @override
  String get deleteEntryConfirmation =>
      'Tämä merkintä poistetaan pysyvästi. Tätä ei voi peruuttaa.';

  @override
  String get journalEntryNotFound => 'Merkintää ei löytynyt';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Tämä päiväkirjamerkintä on saattanut tulla poistetuksi.';

  @override
  String get goBack => 'Mene takaisin';

  @override
  String get journalEntryTitle => 'Päiväkirjamerkintä';

  @override
  String get moodStruggling => 'Kamppailee';

  @override
  String get moodUnwell => 'Huonovointinen';

  @override
  String get moodNeutral => 'Neutraali';

  @override
  String get whatHappenedToday => 'Mitä tapahtui tänään?';

  @override
  String get trigger => 'Laukaisin';

  @override
  String get whatHelped => 'Mikä auttoi';

  @override
  String get whatIllTryNextTime => 'Mitä kokeilen ensi kerralla';

  @override
  String get journalPrivacyMessage =>
      'Pohdintasi on yksityinen ja se tallennetaan päiväkirjaasi.';

  @override
  String get unlocked => 'Avattu';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivää jäljellä',
      one: '$count päivä jäljellä',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count Päivää';
  }

  @override
  String get firstReflection => 'Ensimmäinen\npohdinta';

  @override
  String get oneJournalEntry => '1 päiväkirjamerkintä';

  @override
  String get openBook => 'Avoin kirja';

  @override
  String get tenJournalEntries => '10 päiväkirjamerkintää';

  @override
  String get dedicatedWriter => 'Omistautunut\nkirjoittaja';

  @override
  String get thirtyJournalEntries => '30 päiväkirjamerkintää';

  @override
  String get firstConversation => 'Ensimmäinen\nkeskustelu';

  @override
  String get oneAiCoachChat => '1 tekoälyvalmentajan chatti';

  @override
  String get keepTalking => 'Jatka puhumista';

  @override
  String get fiveConversations => '5 keskustelua';

  @override
  String get coachCompanion => 'Valmentajan\nkumppani';

  @override
  String get twentyConversations => '20 keskustelua';

  @override
  String get checkInHabit => 'Kirjautumis-\ntapa';

  @override
  String get sevenCheckIns => '7 kirjautumista';

  @override
  String get consistencyPro => 'Säännöllisyys-\nmestari';

  @override
  String get thirtyCheckIns => '30 kirjautumista';

  @override
  String get dedicatedJourney => 'Omistautunut\nmatka';

  @override
  String get hundredCheckIns => '100 kirjautumista';

  @override
  String get goalGetter => 'Tavoitteen saavuttaja';

  @override
  String get threeGoalsCompleted => '3 tavoitetta suoritettu';

  @override
  String get goalAchiever => 'Tavoitteiden\ntoteuttaja';

  @override
  String get tenGoalsCompleted => '10 tavoitetta suoritettu';

  @override
  String get firstSavings => 'Ensimmäiset\nsäästöt';

  @override
  String get fiveHundredSaved => '\$500 säästetty';

  @override
  String get smartSaver => 'Viisas säästäjä';

  @override
  String get oneThousandSaved => '\$1 000 säästetty';

  @override
  String get bigSaver => 'Suursäästäjä';

  @override
  String get fiveThousandSaved => '\$5 000 säästetty';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current / \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current / $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Jatka samaan malliin — ensimmäinen saavutuksesi odottaa sinua!';

  @override
  String get badgesAndMilestones => 'Merkit ja saavutukset';

  @override
  String get yourMilestoneJourney => 'Saavutusmatkasi';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saavutusta saavutettu.\nNapauta katsoaksesi',
      one: '$count saavutus saavutettu.\nNapauta katsoaksesi',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Olet avannut $unlocked / $total saavutuksesta matkallasi.';
  }

  @override
  String get remaining => 'Jäljellä';

  @override
  String get complete => 'Valmis';

  @override
  String get nextMilestone => 'Seuraava saavutus';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% valmiina';
  }

  @override
  String get sobrietyMilestones => 'Raittius saavutukset';

  @override
  String get journeyBadges => 'Matkamerkit';

  @override
  String get bronze => 'PRONSSI';

  @override
  String get silver => 'HOPEA';

  @override
  String get gold => 'KULTA';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'TIMANTTI';

  @override
  String get analyzingYourJourney => 'Analysoidaan matkaasi...';

  @override
  String get aiCreatingSanctuary =>
      'Tekoälymme luo henkilökohtaista turvapaikkaasi.';

  @override
  String get understandingHabits => 'Ymmärretään tapojasi...';

  @override
  String get calculatingBaseline => 'Lasketaan lähtötasoasi...';

  @override
  String get personalizingPlan => 'Mukautetaan suunnitelmaasi...';

  @override
  String get finalizingSanctuary => 'Viimeistellään turvapaikkaasi...';

  @override
  String get creatingYourPlan => 'Luodaan suunnitelmaasi...';

  @override
  String get personalizedPlanError =>
      'Henkilökohtaista suunnitelmaasi ei voitu luoda. Yritä uudelleen.';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get breathInhale => 'HENGITÄ SISÄÄN';

  @override
  String get breathHold => 'PIDÄTÄ';

  @override
  String get breathExhale => 'HENGITÄ ULOS';

  @override
  String get breathDone => 'VALMIS';

  @override
  String get breathGreatJob => 'Hienoa työtä!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessiota tänään',
      one: '$count sessio tänään',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Lopeta harjoitus';

  @override
  String get done => 'Valmis';

  @override
  String get noCopingTipsYet => 'Ei vielä selviytymisvinkkejä';

  @override
  String get copingStrategiesWillAppear =>
      'Henkilökohtaiset selviytymisstrategiasi näkyvät täällä, kun toipumissuunnitelmasi on luotu.';

  @override
  String get strategiesTailoredToTriggers =>
      'Laukaisimillesi räätälöidyt strategiat';

  @override
  String get cravingsPeakAndPass =>
      'Mieliteot saavuttavat huipun\nja menevät ohi';

  @override
  String get rideTheWaveDescription =>
      'Useimmat mieliteot menevät ohi 15 minuutissa. Sinun ei tarvitse toimia sen mukaan — ratsasta vain aallolla kanssamme.';

  @override
  String get stayWithIt => 'pysy siinä';

  @override
  String get youMadeIt => 'selvisit siitä';

  @override
  String get readyWhenYouAre => 'valmiina kun sinäkin';

  @override
  String get rideItAgain => 'Ratsasta uudelleen';

  @override
  String get start15MinuteTimer => 'Käynnistä 15 minuutin ajastin';

  @override
  String get rideTheWaveCompletedMessage =>
      'Ratsastit aallolla. Se on todellista voimaa. 💪';

  @override
  String get myProgress => 'Edistymiseni';

  @override
  String get weekLabel => 'Viikko';

  @override
  String get monthLabel => 'Kuukausi';

  @override
  String get allLabel => 'Kaikki';

  @override
  String get daysSoberStatLabel => 'Päivää\nraittiina';

  @override
  String get savedStatLabel => 'Säästetty';

  @override
  String get avoidedStatLabel => 'Vältetty';

  @override
  String get moodTrends => 'Mielialatrendit';

  @override
  String get cravingsPattern => 'Mielitekojen kaavat';

  @override
  String get unlockLabel => 'Avaa';

  @override
  String get unlockFullStats => 'Avaa täydet tilastot';

  @override
  String get premiumStatsMessage =>
      'Mielialatrendit ja mielitekomallit ovat Premium-ominaisuuksia. Päivitä nähdäksesi täydet tilastosi.';

  @override
  String get healthMilestonesWillAppear =>
      'Terveyssaavutuksesi näkyvät täällä.';

  @override
  String get healthMilestones => 'Terveyssaavutukset';

  @override
  String dayNumber(int day) {
    return 'Päivä $day';
  }

  @override
  String get soberLabel => 'Raitis';

  @override
  String get slipLabel => 'Retkahdus';

  @override
  String get noDataLabel => 'Ei tietoja';

  @override
  String get milestone24Hours => '24 tuntia';

  @override
  String get milestoneOneWeek => 'Yksi viikko';

  @override
  String get milestoneOneMonth => 'Yksi kuukausi';

  @override
  String get milestoneThreeMonths => 'Kolme kuukautta';

  @override
  String get milestoneSixMonths => 'Kuusi kuukautta';

  @override
  String get milestoneOneYear => 'Yksi vuosi';

  @override
  String milestoneDayCount(int day) {
    return 'Päivän $day saavutus';
  }

  @override
  String get maybeLaterLabel => 'Ehkä myöhemmin';

  @override
  String get cancelLabel => 'Peruuta';
}
