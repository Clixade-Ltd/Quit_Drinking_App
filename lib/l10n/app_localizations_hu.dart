// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get skip => 'Kihagyás';

  @override
  String get continueButton => 'Folytatás';

  @override
  String get getStarted => 'Kezdés';

  @override
  String get onboardingTitle1 => 'Vedd át az irányítást';

  @override
  String get onboardingSubtitle1 =>
      'Kövesd nyomon az utadat, ünnepeld az elért sikereket és válj egészségesebbé napról napra.';

  @override
  String get onboardingTitle2 => 'AI Felépülési Társad';

  @override
  String get onboardingSubtitle2 =>
      'Kapjon személyre szabott tanácsokat, egészséges szokásokat és fejlődési jelentéseket.';

  @override
  String get goodMorning => 'Jó reggelt';

  @override
  String get goodAfternoon => 'Jó napot';

  @override
  String get goodEvening => 'Jó estét';

  @override
  String get goodNight => 'Jó éjszakát';

  @override
  String get embracingClarity => 'A tisztaság elfogadása, napról napra.';

  @override
  String get streakLabel => 'SOROZAT';

  @override
  String get goalLabel => 'Cél';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap',
      one: '$count nap',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Prémium Csomag';

  @override
  String get premiumPlanSubtitle => 'Oldja fel a teljes felépülési élményt';

  @override
  String get accountAndSupport => 'FIÓK ÉS TÁMOGATÁS';

  @override
  String get privacyPolicy => 'Adatvédelmi irányelvek';

  @override
  String get privacyPolicySubtitle => 'Adatmegosztás és fiókbiztonság kezelése';

  @override
  String get termsOfService => 'Felhasználási feltételek';

  @override
  String get termsOfServiceSubtitle => 'GYIK, kapcsolat és erőforrások';

  @override
  String get shareApp => 'Alkalmazás megosztása';

  @override
  String get shareAppSubtitle => 'Oszd meg az alkalmazást barátaiddal';

  @override
  String get resetData => 'Adatok visszaállítása';

  @override
  String get resetDataSubtitle =>
      'Ezen az eszközön mentett összes adat törlése';

  @override
  String get resetAllDataTitle => 'Minden adatot visszaállít?';

  @override
  String get resetAllDataMessage =>
      'Ez véglegesen töröl mindent erről az eszközről — a profilodat, a naplóbejegyzéseket és a haladást.';

  @override
  String get cancel => 'Mégse';

  @override
  String get reset => 'Visszaállítás';

  @override
  String get chooseFromGallery => 'Választás a galériából';

  @override
  String get takePhoto => 'Fotó készítése';

  @override
  String get removePhoto => 'Fotó eltávolítása';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Nem sikerült frissíteni a fotót: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Nem sikerült eltávolítani a fotót: $error';
  }

  @override
  String get photoTooLarge =>
      'A fotó még tömörítés után is túl nagy — kérjük, próbáljon meg egy másikat.';

  @override
  String get unableToLoadProfile => 'A profil betöltése sikertelen';

  @override
  String get pleaseTryAgain => 'Kérjük, próbálja újra.';

  @override
  String get tryAgain => 'Próbálja újra';

  @override
  String get profileNotFound => 'Profil nem található';

  @override
  String get refresh => 'Frissítés';

  @override
  String get noProfileDataFound =>
      'Még nem találhatók profiladatok ezen az eszközön.';

  @override
  String couldNotResetData(String error) {
    return 'Nem sikerült visszaállítani az adatokat: $error';
  }

  @override
  String get navHome => 'Kezdőlap';

  @override
  String get navStats => 'Statisztika';

  @override
  String get navJournal => 'Napló';

  @override
  String get navBadges => 'Jelvények';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return 'A(z) $feature hamarosan elérhető lesz.';
  }

  @override
  String get appWordmark => 'Jóllét';

  @override
  String get appTitle => 'Hagyja abba az ivást';

  @override
  String get splashSubtitle =>
      'Tedd meg az első lépést egy\nalkoholmentes élet felé';

  @override
  String get preparingJourney => 'Az utazásod\nelőkészítése';

  @override
  String get taskMorningMeditation => 'Reggeli meditáció (10 perc)';

  @override
  String get taskReadChapter => 'Ovasd el a \"The Sober Diaries\" 4. fejezetét';

  @override
  String get taskEveningJournal => 'Esti hálanapló';

  @override
  String get close => 'Bezárás';

  @override
  String get youAreDoingGreat => 'Nagyszerűen csinálod!';

  @override
  String get shareMilestone => 'Mérföldkő megosztása';

  @override
  String shareMilestoneMessage(int days) {
    return 'A felépülési utam $days. napján járok! 💪';
  }

  @override
  String get shareMilestoneSubject => 'A felépülési mérföldkövem';

  @override
  String get weeklyReportReadyTitle => 'A heti jelentésed elkészült';

  @override
  String get weeklyReportReadySubtitle => 'Koppints a hét megtekintéséhez';

  @override
  String get howAreYouFeeling => 'Hogy érzed magad?';

  @override
  String get moodTough => 'Nehéz';

  @override
  String get moodOkay => 'Elfogadható';

  @override
  String get moodGood => 'Jó';

  @override
  String get moneySaved => 'Megspórolt pénz';

  @override
  String get caloriesSaved => 'Megspórolt kalória';

  @override
  String get healthScore => 'Egészség pontszám';

  @override
  String get drinksAvoided => 'Elkerült italok';

  @override
  String get estimated => 'Becsült';

  @override
  String get aiGenerated => 'AI által generált';

  @override
  String get daysCapsLabel => 'NAP';

  @override
  String get todaysMotivation => 'A mai motiváció';

  @override
  String get defaultMotivationQuote =>
      'Sikeresen megtartottad az elkötelezettségedet. Haladj tovább a pozitív változás hullámán.';

  @override
  String get talkToCoach => 'Beszélgetés a tanácsadóval';

  @override
  String get havingACraving => 'Sótártságot/Sóvárgást érzek';

  @override
  String get unlockWeeklyReportsTitle => 'Heti jelentések feloldása';

  @override
  String get unlockWeeklyReportsMessage =>
      'Lásd a józan napjaidat, a hangulatod alakulását és az AI visszajelzéseit minden héten. Válts Prémiumra.';

  @override
  String get maybeLater => 'Talán később';

  @override
  String get upgrade => 'Frissítés';

  @override
  String get weeklyReportTitle => 'Heti jelentés';

  @override
  String get weeklyReportsPremiumTitle =>
      'A heti jelentések Prémium funkciónak számítanak';

  @override
  String get weeklyReportsPremiumMessage =>
      'Kövesd nyomon a józan napjaidat, hangulatodat és az AI személyre szabott tanácsait.';

  @override
  String get upgradeToPremium => 'Váltás Prémiumra';

  @override
  String get couldNotGenerateReport =>
      'Jelenleg nem sikerült elkészíteni a jelentést.';

  @override
  String get tryAgainLower => 'Próbálja újra';

  @override
  String get statSoberDays => 'Józan napok';

  @override
  String get statAvgMood => 'Átlagos hangulat';

  @override
  String get statCravings => 'Sóvárgások';

  @override
  String get statMoneySaved => 'Megspórolt pénz';

  @override
  String get coachFeedback => 'Tanácsadó visszajelzése';

  @override
  String get journalInsights => 'Napló elemzések';

  @override
  String get next => 'Tovább';

  @override
  String get question1Title => 'Mi a célod?';

  @override
  String get question1Subtitle => 'Válaszd ki a számodra legfontosabb célt';

  @override
  String get goalQuitCompletely => 'Teljesen abbahagyni';

  @override
  String get goalReduceDrinking => 'Fogyasztás csökkentése';

  @override
  String get goalTakeABreak => 'Szünetet tartani';

  @override
  String get goalBuildHealthierHabits => 'Egészségesebb szokások kialakítása';

  @override
  String get question3Title => 'Mesélj a\nrutinodról';

  @override
  String get drinksPerWeek => 'Italok hetente';

  @override
  String get moneySpentPerWeek => 'Elköltött pénz hetente';

  @override
  String get drinkingLevel => 'Fogyasztási szint';

  @override
  String get triggersLabel => 'Kiváltó okok (Triggerek)';

  @override
  String get levelSocial => 'Társasági';

  @override
  String get levelRegular => 'Rendszeres';

  @override
  String get levelHeavy => 'Magas';

  @override
  String get levelDependent => 'Függő';

  @override
  String get triggerStress => 'Stressz';

  @override
  String get triggerLoneliness => 'Magány';

  @override
  String get triggerHabit => 'Szokás';

  @override
  String get triggerSadness => 'Szomorúság';

  @override
  String get triggerAnger => 'Düh';

  @override
  String get triggerBoredom => 'Unalom';

  @override
  String get triggerSocialPressure => 'Társasági nyomás';

  @override
  String get triggerCelebration => 'Ünneplés';

  @override
  String get triggerSleepProblems => 'Alvási problémák';

  @override
  String get triggerWorkPressure => 'Munkahelyi nyomás';

  @override
  String get question4Title => 'Miért szeretnél változtatni?';

  @override
  String get question4Subtitle =>
      'Az indokod segíteni fog a motiváció megőrzésében.';

  @override
  String get reasonImproveHealth => 'Egészség javítása';

  @override
  String get reasonSaveMoney => 'Pénzmegtakarítás';

  @override
  String get reasonFamily => 'Család';

  @override
  String get reasonBetterSleep => 'Jobb alvás';

  @override
  String get reasonMentalClarity => 'Mentális tisztaság';

  @override
  String get reasonFitness => 'Fitnesz';

  @override
  String get reasonSelfRespect => 'Önbecsülés';

  @override
  String get reasonCareer => 'Karrier';

  @override
  String get milestoneUnlockedLabel => 'MÉR FÖLDKŐ FELOLDVA';

  @override
  String incredibleNamePrefix(String name) {
    return 'Hihetetlen, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount megspórolva';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count elkerülve';
  }

  @override
  String get shareMyMilestone => 'Mérföldkő megosztása';

  @override
  String get milestoneImageShareError =>
      'Nem sikerült létrehozni a képet. Kérjük, próbálja újra.';

  @override
  String get dailyCheckInTitle => 'Napi bejelentkezés';

  @override
  String get howAreYouFeelingToday => 'Hogy érzed magad ma?';

  @override
  String get honestAnswerHelp =>
      'Az őszinte válaszod segít nekünk abban, hogy jobban támogassunk';

  @override
  String get didYouDrinkToday => 'Ittál ma alkoholt?';

  @override
  String get noLabel => 'Nem';

  @override
  String get yesLabel => 'Igen';

  @override
  String get cravingLevelNow => 'Mennyire erős a sóvárgás most?';

  @override
  String get anythingOnMind => 'Szeretnél valamit megosztani?';

  @override
  String get optionalLabel => '(vágylat szerint)';

  @override
  String get dailyNoteHint =>
      'Írj a napodról, a kiváltó okokról vagy a sikereidről...';

  @override
  String get alreadyCheckedInToday => 'Ma már bejelentkeztél';

  @override
  String get saveCheckIn => 'Mentés';

  @override
  String get checkInsHelpTrack =>
      'A bejelentkezések segítenek nyomon követni a fejlődésedet';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Már elvégezted a mai bejelentkezést.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Kérjük, először válaszolj mindkét fenti kérdésre';

  @override
  String get checkInSaved => 'Bejelentkezés elmentve';

  @override
  String get cravingNone => 'Egyáltalán nem';

  @override
  String get cravingLow => 'Gyenge';

  @override
  String get cravingMedium => 'Közepes';

  @override
  String get cravingStrong => 'Erős';

  @override
  String get moodBad => 'Rossz';

  @override
  String get moodLow => 'Nyomott';

  @override
  String get moodGreat => 'Kiváló';

  @override
  String get sosSupportTitle => 'SOS Támogatás';

  @override
  String notAloneMessage(String name) {
    return 'Nem vagy egyedül, $name';
  }

  @override
  String get cravingsPassMessage =>
      'A sóvárgás elmúlik. Válassz egy lehetőséget az alábbiak közül e pillanat áthidalására.';

  @override
  String get breathingExercise => 'Légzőgyakorlat';

  @override
  String get breathingExerciseSubtitle => 'Vezetett 4-7-8 technika, 2 perc';

  @override
  String get rideTheWave => 'Meglovagolni a hullámot';

  @override
  String get rideTheWaveSubtitle =>
      '15 perces időzítő — a sóvárgás mindig elmúlik';

  @override
  String get copingTips => 'Megküzdési tippek';

  @override
  String get copingTipsSubtitle =>
      'Személyre szabott stratégiák a kiváltó okokra';

  @override
  String get talkToAiCoach => 'Beszélgetés az AI tanácsadóval';

  @override
  String get talkToAiCoachSubtitle => 'Csevegj a felépülési társaddal';

  @override
  String get callSomeone => 'Valaki felhívása';

  @override
  String get callSomeoneSubtitle =>
      'Lépj kapcsolatba egy megbízható személlyel';

  @override
  String get contactsPermissionNeeded =>
      'A híváshoz hozzáférés szükséges a névjegyekhez.';

  @override
  String get beatenCravingsPrefix => 'Már ';

  @override
  String beatenCravingsCount(int count) {
    return '$count alkalommal';
  }

  @override
  String get beatenCravingsSuffix =>
      ' legyőzted a sóvárgást. Most is sikerülni fog.';

  @override
  String get tellUsAboutYourself => 'Mesélj magadról';

  @override
  String get detailsSubtitle =>
      'Ezek az információk segítenek a felépülési utad személyre szabásában.';

  @override
  String get nameLabel => 'Név';

  @override
  String get nameHint => 'pl. Alex Rivers';

  @override
  String get ageLabel => 'Kor';

  @override
  String get ageHint => 'pl. 32';

  @override
  String get sexAssignedAtBirth => 'Születési nem';

  @override
  String get sexFemale => 'Nő';

  @override
  String get sexMale => 'Férfi';

  @override
  String get heightLabel => 'Magasság';

  @override
  String get weightLabel => 'Súly';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Napi limit elérve';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Elhasználtad a mai $limit ingyenes üzenetedet. Válts Prémiumra a korlátlan csevegéshez.';
  }

  @override
  String get coachConnectError =>
      'Jelenleg nem sikerült csatlakozni. Kérjük, próbáld újra egy pillanat múlva.';

  @override
  String get clearConversationTitle => 'Törlöd a beszélgetést?';

  @override
  String get clearConversationMessage =>
      'Ez véglegesen törli a tanácsadóval folytatott beszélgetési előzményeket.';

  @override
  String get clearLabel => 'Törlés';

  @override
  String get recoveryCoachTitle => 'Felépülési Tanácsadó';

  @override
  String get onlineLabel => 'Elérhető';

  @override
  String get clearConversationMenuItem => 'Beszélgetés törlése';

  @override
  String chatGreeting(String name) {
    return 'Szia $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Az utazásod $days. napján jársz. Itt vagyok, ha beszélgetni szeretnél.';
  }

  @override
  String get quickPromptsLabel => 'GYORS KÉRDÉSEK';

  @override
  String get promptCravingLabel => 'Sóvárgást érzek';

  @override
  String get promptCravingSubtitle => 'Gyors megnyugvás';

  @override
  String get promptMotivationLabel => 'Motivációra van szükségem';

  @override
  String get promptMotivationSubtitle => 'Lökés a nehéz percekben';

  @override
  String get promptSocialLabel => 'Társasági helyzet';

  @override
  String get promptSocialSubtitle => 'Események kezelése';

  @override
  String get promptSlippedLabel => 'Hibat tettem / visszaestem';

  @override
  String get promptSlippedSubtitle => 'Ítélkezés nélkül, csak támogatás';

  @override
  String get typeMessageHint => 'Írj egy üzenetet...';

  @override
  String get editProfileTitle => 'Profil szerkesztése';

  @override
  String couldNotSaveProfile(String error) {
    return 'Nem sikerült menteni a profilt: $error';
  }

  @override
  String get heightCmLabel => 'Magasság (cm)';

  @override
  String get weightKgLabel => 'Súly (kg)';

  @override
  String get saveChangesLabel => 'Változtatások mentése';

  @override
  String get premiumBadgeLabel => 'PRÉMIUM';

  @override
  String get featureAdvancedInsights => 'Részletes elemzések';

  @override
  String get featureUnlimitedJournal => 'Korlátlan naplóbejegyzés';

  @override
  String get featureUnlimitedChat => 'Korlátlan csevegés az AI tanácsadóval';

  @override
  String get featureCommunityGroups => 'Exkluzív közösségi csoportok';

  @override
  String get featurePrioritySupport => 'Elsőbbségi támogatás';

  @override
  String get featureThemePacks => 'Egyedi témacsomagok';

  @override
  String get featureDataExport => 'Adatok exportálása';

  @override
  String get featureAdFree => 'Reklámmentes élmény';

  @override
  String get premiumMemberTitle => 'Prémium tag vagy';

  @override
  String get unlockFullRecoveryTitle => 'Oldd fel a teljes felépülési\nélményt';

  @override
  String get premiumMemberSubtitle =>
      'Köszönjük a támogatást — az alábbi prémium funkciók mindegyike elérhető.';

  @override
  String get premiumJoinSubtitle =>
      'Csatlakozz több ezer emberhez, akik felgyorsítják a felépülésüket.';

  @override
  String get monthlyPlanLabel => 'Havi';

  @override
  String get perMonthSuffix => '/hó';

  @override
  String get cancelAnytimeLabel => 'Bármikor lemondható';

  @override
  String get yearlyPlanLabel => 'Éves';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Évente számlázva: $amount';
  }

  @override
  String get bestValueLabel => 'Legjobb érték';

  @override
  String get alreadyPremiumLabel => 'Már Prémium tag vagy ✓';

  @override
  String get startPremiumLabel => 'Prémium indítása';

  @override
  String get manageSubscriptionLabel =>
      'Kezeld vagy mondd le a fiókbeállításokban.';

  @override
  String get noCommitmentLabel => 'Elköteleződés nélkül. Bármikor lemondható.';

  @override
  String get continueFreePlanLabel => 'Folytatás ingyenes csomaggal';

  @override
  String get backToHomeLabel => 'Vissza a kezdőlapra';

  @override
  String get cancelPremiumLabel => 'Prémium lemondása';

  @override
  String get cancelPremiumTitle => 'Lemondod a Prémiumot?';

  @override
  String get cancelPremiumMessage =>
      'Elveszíted a hozzáférést a korlátlan naplóhoz, csevegéshez és jelentésekhez.';

  @override
  String get keepPremiumLabel => 'Prémium megtartása';

  @override
  String get nowPremiumMessage =>
      'Most már Prémium tag vagy! Élvezd a teljes élményt.';

  @override
  String get premiumCancelledMessage =>
      'Prémium lemondva. Visszatértél az ingyenes csomagra.';

  @override
  String get termsOfUseLabel => 'Felhasználási feltételek';

  @override
  String get navHomeLabel => 'Kezdőlap';

  @override
  String get navStatsLabel => 'Statisztika';

  @override
  String get navJournalLabel => 'Napló';

  @override
  String get navBadgesLabel => 'Jelvények';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Felépülési Célok';

  @override
  String get drinksPerWeekLabel => 'Italok hetente';

  @override
  String get quitReasonsLabel => 'Okok a leállásra';

  @override
  String get quitReasonsHelperText => 'Válaszd el az okokat vesszővel.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Nem sikerült menteni a célokat: $error';
  }

  @override
  String get goalHint => 'pl. Teljes tartózkodás';

  @override
  String get drinksPerWeekHint => 'pl. 12';

  @override
  String get quitReasonsHint => 'pl. Egészség, Család, Pénz';

  @override
  String get todaysPrompt => 'A mai témánk';

  @override
  String get defaultJournalPrompt => 'Mi jár a fejedben ma?';

  @override
  String get aiJournalInsights => 'AI Napló elemzések';

  @override
  String get unlockJournalInsightsMessage =>
      'Oldd fel a heti mintákat és a hangulati trendeket a bejegyzéseidből.';

  @override
  String get notEnoughJournalData =>
      'Még nincs elég adat — írj néhány bejegyzést ezen a héten.';

  @override
  String get openEntry => 'Megnyitás';

  @override
  String get editEntry => 'Szerkesztés';

  @override
  String get deleteEntry => 'Törlés';

  @override
  String get searchJournalEntries => 'Keresés...';

  @override
  String get writeNewEntry => 'Új bejegyzés írása';

  @override
  String get recentEntries => 'Legutóbbi bejegyzések';

  @override
  String get noJournalEntriesYet => 'Még nincsenek naplóbejegyzések.';

  @override
  String get noEntriesMatchFilters =>
      'Egyetlen bejegyzés sem felel meg a szűrőknek.';

  @override
  String get weeklyJournalLimitReached => 'Heti limit elérve';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Elhasználtad a heti $limit ingyenes bejegyzési lehetőségedet.';
  }

  @override
  String get newEntry => 'Új bejegyzés';

  @override
  String get writeYourThoughts => 'Írd le a gondolataidat';

  @override
  String get saveEntry => 'Bejegyzés mentése';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Még $remaining / $limit ingyenes bejegyzés maradt ezen a héten';
  }

  @override
  String get deleteEntryQuestion => 'Törlöd a bejegyzést?';

  @override
  String get deleteEntryConfirmation => 'Ez a bejegyzés véglegesen törlődik.';

  @override
  String get journalEntryNotFound => 'A bejegyzés nem található';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Ez a naplóbejegyzés lehet, hogy törölve lett.';

  @override
  String get goBack => 'Vissza';

  @override
  String get journalEntryTitle => 'Naplóbejegyzés';

  @override
  String get moodStruggling => 'Küzdelmes';

  @override
  String get moodUnwell => 'Rosszul';

  @override
  String get moodNeutral => 'Semleges';

  @override
  String get whatHappenedToday => 'Mi történt ma?';

  @override
  String get trigger => 'Kiváltó ok';

  @override
  String get whatHelped => 'Mi segített';

  @override
  String get whatIllTryNextTime => 'Mit próbálok meg legközelebb';

  @override
  String get journalPrivacyMessage =>
      'A gondolataid magánjellegűek és biztonságban vannak.';

  @override
  String get unlocked => 'Feloldva';

  @override
  String daysLeft(int count) {
    return '$count nap van hátra';
  }

  @override
  String daysCount(int count) {
    return '$count nap';
  }

  @override
  String get firstReflection => 'Első\ngondolat';

  @override
  String get oneJournalEntry => '1 naplóbejegyzés';

  @override
  String get openBook => 'Nyitott könyv';

  @override
  String get tenJournalEntries => '10 naplóbejegyzés';

  @override
  String get dedicatedWriter => 'Elkötelezett\níró';

  @override
  String get thirtyJournalEntries => '30 naplóbejegyzés';

  @override
  String get firstConversation => 'Első\nbeszélgetés';

  @override
  String get oneAiCoachChat => '1 csevegés a tanácsadóval';

  @override
  String get keepTalking => 'Folytasd a beszélgetést';

  @override
  String get fiveConversations => '5 beszélgetés';

  @override
  String get coachCompanion => 'Tanácsadó\ntárs';

  @override
  String get twentyConversations => '20 beszélgetés';

  @override
  String get checkInHabit => 'Bejelentkezési\nszokás';

  @override
  String get sevenCheckIns => '7 bejelentkezés';

  @override
  String get consistencyPro => 'Következetes\nprofi';

  @override
  String get thirtyCheckIns => '30 bejelentkezés';

  @override
  String get dedicatedJourney => 'Elkötelezett\nutazás';

  @override
  String get hundredCheckIns => '100 bejelentkezés';

  @override
  String get goalGetter => 'Célmegvalósító';

  @override
  String get threeGoalsCompleted => '3 cél teljesítve';

  @override
  String get goalAchiever => 'Sikeres\ncélba érő';

  @override
  String get tenGoalsCompleted => '10 cél teljesítve';

  @override
  String get firstSavings => 'Első\nmegtakarítás';

  @override
  String get fiveHundredSaved => '\$500 megtakarítva';

  @override
  String get smartSaver => 'Okos megtakarító';

  @override
  String get oneThousandSaved => '\$1,000 megtakarítva';

  @override
  String get bigSaver => 'Nagy megtakarító';

  @override
  String get fiveThousandSaved => '\$5,000 megtakarítva';

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
      'Haladj tovább — az első mérföldkő már vár rád!';

  @override
  String get badgesAndMilestones => 'Jelvények és Mérföldkövek';

  @override
  String get yourMilestoneJourney => 'A te mérföldkő utad';

  @override
  String milestonesAchieved(int count) {
    return '$count mérföldkő teljesítve.\nKoppints a megtekintéshez';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return '$unlocked / $total mérföldkövet oldottál fel.';
  }

  @override
  String get remaining => 'Hátravan';

  @override
  String get complete => 'Teljesítve';

  @override
  String get nextMilestone => 'Következő mérföldkő';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% teljesítve';
  }

  @override
  String get sobrietyMilestones => 'Józansági mérföldkövek';

  @override
  String get journeyBadges => 'Utazási jelvények';

  @override
  String get bronze => 'BRONZ';

  @override
  String get silver => 'EZÜST';

  @override
  String get gold => 'ARANY';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'GYÉMÁNT';

  @override
  String get analyzingYourJourney => 'Az utazásod elemzése...';

  @override
  String get aiCreatingSanctuary => 'Az AI elkészíti a személyes teredet.';

  @override
  String get understandingHabits => 'Szokások megértése...';

  @override
  String get calculatingBaseline => 'Kiindulási értékek kiszámítása...';

  @override
  String get personalizingPlan => 'Terv személyre szabása...';

  @override
  String get finalizingSanctuary => 'Személyes tér véglegesítése...';

  @override
  String get creatingYourPlan => 'Terv elkészítése...';

  @override
  String get personalizedPlanError =>
      'Nem sikerült létrehozni a személyre szabott tervet. Próbáld újra.';

  @override
  String get retry => 'Újra';

  @override
  String get breathInhale => 'BELÉGZÉS';

  @override
  String get breathHold => 'BENNTARTÁS';

  @override
  String get breathExhale => 'KILÉGZÉS';

  @override
  String get breathDone => 'KÉSZ';

  @override
  String get breathGreatJob => 'Szép munka!';

  @override
  String breathSessionsToday(int count) {
    return 'Ma $count alkalom teljesítve';
  }

  @override
  String get endExercise => 'Gyakorlat vége';

  @override
  String get done => 'Kész';

  @override
  String get noCopingTipsYet => 'Még nincsenek tippek';

  @override
  String get copingStrategiesWillAppear =>
      'A stratégiák itt fognak megjelenni, amint a terv elkészül.';

  @override
  String get strategiesTailoredToTriggers =>
      'A kiváltó okokhoz igazított stratégiák';

  @override
  String get cravingsPeakAndPass => 'A sóvárgás tetőzik\nés elmúlik';

  @override
  String get rideTheWaveDescription =>
      'A legtöbb sóvárgás 15 percen belül elmúlik. Tartsd ki velünk.';

  @override
  String get stayWithIt => 'Tarts ki';

  @override
  String get youMadeIt => 'Sikerült';

  @override
  String get readyWhenYouAre => 'Készen állsz, ha te is';

  @override
  String get rideItAgain => 'Újra megpróbálom';

  @override
  String get start15MinuteTimer => '15 perces időzítő indítása';

  @override
  String get rideTheWaveCompletedMessage =>
      'Legyőzted a hullámot. Ez az igazi erő. 💪';

  @override
  String get myProgress => 'Haladásom';

  @override
  String get weekLabel => 'Hét';

  @override
  String get monthLabel => 'Hónap';

  @override
  String get allLabel => 'Összes';

  @override
  String get daysSoberStatLabel => 'Józan\nnap';

  @override
  String get savedStatLabel => 'Megspórolva';

  @override
  String get avoidedStatLabel => 'Elkerülve';

  @override
  String get moodTrends => 'Hangulati trendek';

  @override
  String get cravingsPattern => 'Sóvárgási minták';

  @override
  String get unlockLabel => 'Feloldás';

  @override
  String get unlockFullStats => 'Teljes statisztika feloldása';

  @override
  String get premiumStatsMessage =>
      'A hangulati trendek és a sóvárgási minták Prémium funkciók.';

  @override
  String get healthMilestonesWillAppear =>
      'Az egészségügyi mérföldköveid itt fognak megjelenni.';

  @override
  String get healthMilestones => 'Egészségügyi mérföldkövek';

  @override
  String dayNumber(int day) {
    return '$day. nap';
  }

  @override
  String get soberLabel => 'Józan';

  @override
  String get slipLabel => 'Hiba / Visszaesés';

  @override
  String get noDataLabel => 'Nincs adat';

  @override
  String get milestone24Hours => '24 óra';

  @override
  String get milestoneOneWeek => 'Egy hét';

  @override
  String get milestoneOneMonth => 'Egy hónap';

  @override
  String get milestoneThreeMonths => 'Három hónap';

  @override
  String get milestoneSixMonths => 'Hat hónap';

  @override
  String get milestoneOneYear => 'Egy év';

  @override
  String milestoneDayCount(int day) {
    return '$day. napi mérföldkő';
  }

  @override
  String get maybeLaterLabel => 'Talán később';

  @override
  String get cancelLabel => 'Mégse';
}
