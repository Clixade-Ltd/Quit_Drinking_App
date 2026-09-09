// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get skip => 'Praleisti';

  @override
  String get continueButton => 'Tęsti';

  @override
  String get getStarted => 'Pradėti';

  @override
  String get onboardingTitle1 => 'Perimkite savo gyvenimo kontrolę';

  @override
  String get onboardingSubtitle1 =>
      'Sekite savo kelią, švęskite kiekvieną pasiekimą ir kasdien tapkite sveikesni.';

  @override
  String get onboardingTitle2 => 'Jūsų AI sveikimo palydovas';

  @override
  String get onboardingSubtitle2 =>
      'Gaukite asmeninius patarimus, sveikus įpročius, motyvacinius priminimus ir pažangos ataskaitas, pritaikytas jūsų keliui.';

  @override
  String get goodMorning => 'Labas rytas';

  @override
  String get goodAfternoon => 'Laba diena';

  @override
  String get goodEvening => 'Labas vakaras';

  @override
  String get goodNight => 'Labanakt';

  @override
  String get embracingClarity => 'Aiškesnis gyvenimas – po vieną dieną.';

  @override
  String get streakLabel => 'SERija';

  @override
  String get goalLabel => 'Tikslas';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienos',
      one: '$count diena',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium planas';

  @override
  String get premiumPlanSubtitle => 'Atrakinkite visą sveikimo patirtį';

  @override
  String get accountAndSupport => 'PASKYRA IR PAGALBA';

  @override
  String get privacyPolicy => 'Privatumo politika';

  @override
  String get privacyPolicySubtitle =>
      'Tvarkykite duomenų bendrinimą ir paskyros saugumą';

  @override
  String get termsOfService => 'Paslaugų teikimo sąlygos';

  @override
  String get termsOfServiceSubtitle =>
      'DUK, susisiekite su mumis ir naudokitės ištekliais';

  @override
  String get shareApp => 'Bendrinti programėlę';

  @override
  String get shareAppSubtitle => 'Bendrinkite programėlę su draugais';

  @override
  String get resetData => 'Atkurti duomenis';

  @override
  String get resetDataSubtitle =>
      'Ištrinti viską, kas išsaugota šiame įrenginyje';

  @override
  String get resetAllDataTitle => 'Atkurti visus duomenis?';

  @override
  String get resetAllDataMessage =>
      'Tai ištrins viską, kas išsaugota šiame įrenginyje – profilį, dienoraščio įrašus ir pažangą – ir šio veiksmo nebus galima atšaukti.';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get reset => 'Atkurti';

  @override
  String get chooseFromGallery => 'Pasirinkti iš galerijos';

  @override
  String get takePhoto => 'Fotografuoti';

  @override
  String get removePhoto => 'Pašalinti nuotrauką';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Nepavyko atnaujinti nuotraukos: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Nepavyko pašalinti nuotraukos: $error';
  }

  @override
  String get photoTooLarge =>
      'Ši nuotrauka per didelė net ir suspaudus – pabandykite kitą.';

  @override
  String get unableToLoadProfile => 'Nepavyksta įkelti jūsų profilio';

  @override
  String get pleaseTryAgain => 'Pabandykite dar kartą.';

  @override
  String get tryAgain => 'Bandyti dar kartą';

  @override
  String get profileNotFound => 'Profilis nerastas';

  @override
  String get refresh => 'Atnaujinti';

  @override
  String get noProfileDataFound =>
      'Šiame įrenginyje dar nerasta profilio duomenų.';

  @override
  String couldNotResetData(String error) {
    return 'Nepavyko atkurti duomenų: $error';
  }

  @override
  String get navHome => 'Pagrindinis';

  @override
  String get navStats => 'Statistika';

  @override
  String get navJournal => 'Dienoraštis';

  @override
  String get navBadges => 'Ženkleliai';

  @override
  String get navProfile => 'Profilis';

  @override
  String featureComingSoon(String feature) {
    return '$feature netrukus bus pasiekiama.';
  }

  @override
  String get appWordmark => 'GEROVĖ';

  @override
  String get appTitle => 'Mesti gerti';

  @override
  String get splashSubtitle =>
      'Ženkite pirmą žingsnį link\ngyvenimo be alkoholio';

  @override
  String get preparingJourney => 'Ruošiame jūsų\nkelionę';

  @override
  String get taskMorningMeditation => 'Rytinė meditacija (10 min.)';

  @override
  String get taskReadChapter => 'Perskaitykite 4 skyrių iš „The Sober Diaries“';

  @override
  String get taskEveningJournal => 'Vakaro dėkingumo dienoraštis';

  @override
  String get close => 'Uždaryti';

  @override
  String get youAreDoingGreat => 'Jums puikiai sekasi!';

  @override
  String get shareMilestone => 'Bendrinti pasiekimą';

  @override
  String shareMilestoneMessage(int days) {
    return 'Šiandien yra mano sveikimo kelionės $days diena! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Mano sveikimo pasiekimas';

  @override
  String get weeklyReportReadyTitle => 'Jūsų savaitės ataskaita paruošta';

  @override
  String get weeklyReportReadySubtitle =>
      'Palieskite, kad pamatytumėte, kaip praėjo jūsų savaitė';

  @override
  String get howAreYouFeeling => 'Kaip jaučiatės?';

  @override
  String get moodTough => 'Sunku';

  @override
  String get moodOkay => 'Gerai';

  @override
  String get moodGood => 'Puikiai';

  @override
  String get moneySaved => 'Sutaupyta pinigų';

  @override
  String get caloriesSaved => 'Sutaupyta kalorijų';

  @override
  String get healthScore => 'Sveikatos balas';

  @override
  String get drinksAvoided => 'Išvengta gėrimų';

  @override
  String get estimated => 'Apskaičiuota';

  @override
  String get aiGenerated => 'Sugeneruota AI';

  @override
  String get daysCapsLabel => 'DIENOS';

  @override
  String get todaysMotivation => 'Šiandienos motyvacija';

  @override
  String get defaultMotivationQuote =>
      'Sėkmingai laikotės savo įsipareigojimo. Toliau plaukite pozityvių pokyčių banga.';

  @override
  String get talkToCoach => 'Pasikalbėti su treneriu';

  @override
  String get havingACraving => 'Man kyla noras išgerti';

  @override
  String get unlockWeeklyReportsTitle => 'Atrakinti savaitės ataskaitas';

  @override
  String get unlockWeeklyReportsMessage =>
      'Kiekvieną savaitę matykite blaivias dienas, nuotaikos tendencijas ir asmeninį AI grįžtamąjį ryšį. Atnaujinkite į Premium, kad atrakintumėte.';

  @override
  String get maybeLater => 'Gal vėliau';

  @override
  String get upgrade => 'Atnaujinti';

  @override
  String get weeklyReportTitle => 'Savaitės ataskaita';

  @override
  String get weeklyReportsPremiumTitle =>
      'Savaitės ataskaitos yra Premium funkcija';

  @override
  String get weeklyReportsPremiumMessage =>
      'Kiekvieną savaitę matykite blaivias dienas, nuotaikos tendencijas, potraukį ir asmeninį AI grįžtamąjį ryšį.';

  @override
  String get upgradeToPremium => 'Atnaujinti į Premium';

  @override
  String get couldNotGenerateReport =>
      'Šiuo metu nepavyko sugeneruoti jūsų ataskaitos.';

  @override
  String get tryAgainLower => 'Bandyti dar kartą';

  @override
  String get statSoberDays => 'Blaivios dienos';

  @override
  String get statAvgMood => 'Vidutinė nuotaika';

  @override
  String get statCravings => 'Potraukiai';

  @override
  String get statMoneySaved => 'Sutaupyta pinigų';

  @override
  String get coachFeedback => 'Trenerio atsiliepimas';

  @override
  String get journalInsights => 'Dienoraščio įžvalgos';

  @override
  String get next => 'Toliau';

  @override
  String get question1Title => 'Koks jūsų tikslas?';

  @override
  String get question1Subtitle =>
      'Pasirinkite tikslą, kuris jums\nsvarbiausias';

  @override
  String get goalQuitCompletely => 'Visiškai mesti';

  @override
  String get goalReduceDrinking => 'Mažinti alkoholio vartojimą';

  @override
  String get goalTakeABreak => 'Padaryti pertrauką';

  @override
  String get goalBuildHealthierHabits => 'Kurti sveikesnius įpročius';

  @override
  String get question3Title => 'Papasakokite apie savo\nįpročius';

  @override
  String get drinksPerWeek => 'Gėrimai per savaitę';

  @override
  String get moneySpentPerWeek => 'Per savaitę išleidžiama suma';

  @override
  String get drinkingLevel => 'Alkoholio vartojimo lygis';

  @override
  String get triggersLabel => 'Paskatinantys veiksniai';

  @override
  String get levelSocial => 'Socialinis';

  @override
  String get levelRegular => 'Reguliarus';

  @override
  String get levelHeavy => 'Intensyvus';

  @override
  String get levelDependent => 'Priklausomas';

  @override
  String get triggerStress => 'Stresas';

  @override
  String get triggerLoneliness => 'Vienatvė';

  @override
  String get triggerHabit => 'Įprotis';

  @override
  String get triggerSadness => 'Liūdesys';

  @override
  String get triggerAnger => 'Pyktis';

  @override
  String get triggerBoredom => 'Nuobodulys';

  @override
  String get triggerSocialPressure => 'Socialinis spaudimas';

  @override
  String get triggerCelebration => 'Šventimas';

  @override
  String get triggerSleepProblems => 'Miego problemos';

  @override
  String get triggerWorkPressure => 'Darbo spaudimas';

  @override
  String get question4Title => 'Kodėl norite pasikeisti?';

  @override
  String get question4Subtitle => 'Jūsų priežastis padės išlaikyti motyvaciją.';

  @override
  String get reasonImproveHealth => 'Pagerinti savo sveikatą';

  @override
  String get reasonSaveMoney => 'Sutaupyti pinigų';

  @override
  String get reasonFamily => 'Šeima';

  @override
  String get reasonBetterSleep => 'Geresnis miegas';

  @override
  String get reasonMentalClarity => 'Proto aiškumas';

  @override
  String get reasonFitness => 'Fizinis pasirengimas';

  @override
  String get reasonSelfRespect => 'Savigarba';

  @override
  String get reasonCareer => 'Karjera';

  @override
  String get milestoneUnlockedLabel => 'PASIEKIMAS ATRAKINTAS';

  @override
  String incredibleNamePrefix(String name) {
    return 'Neįtikėtina, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'Sutaupyta $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'Išvengta $count';
  }

  @override
  String get shareMyMilestone => 'Bendrinti mano pasiekimą';

  @override
  String get milestoneImageShareError =>
      'Nepavyko sukurti pasiekimo vaizdo. Pabandykite dar kartą.';

  @override
  String get dailyCheckInTitle => 'Kasdienė patikra';

  @override
  String get howAreYouFeelingToday => 'Kaip šiandien jaučiatės?';

  @override
  String get honestAnswerHelp =>
      'Jūsų nuoširdus atsakymas padeda mums geriau jus palaikyti';

  @override
  String get didYouDrinkToday => 'Ar šiandien gėrėte?';

  @override
  String get noLabel => 'Ne';

  @override
  String get yesLabel => 'Taip';

  @override
  String get cravingLevelNow => 'Koks jūsų noras išgerti šiuo metu?';

  @override
  String get anythingOnMind => 'Ar kas nors sukasi jūsų galvoje?';

  @override
  String get optionalLabel => '(neprivaloma)';

  @override
  String get dailyNoteHint =>
      'Rašykite apie savo dieną, paskatinančius veiksnius, pergales...';

  @override
  String get alreadyCheckedInToday => 'Šiandien jau atlikote patikrą';

  @override
  String get saveCheckIn => 'Išsaugoti patikrą';

  @override
  String get checkInsHelpTrack =>
      'Patikros padeda stebėti jūsų pažangą laikui bėgant';

  @override
  String get alreadyCompletedTodayCheckIn => 'Šiandienos patikrą jau atlikote.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Pirmiausia atsakykite į abu aukščiau pateiktus klausimus';

  @override
  String get checkInSaved => 'Patikra išsaugota';

  @override
  String get cravingNone => 'Nėra';

  @override
  String get cravingLow => 'Silpnas';

  @override
  String get cravingMedium => 'Vidutinis';

  @override
  String get cravingStrong => 'Stiprus';

  @override
  String get moodBad => 'Blogai';

  @override
  String get moodLow => 'Prastai';

  @override
  String get moodGreat => 'Nuostabiai';

  @override
  String get sosSupportTitle => 'SOS pagalba';

  @override
  String notAloneMessage(String name) {
    return 'Jūs ne vieni, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Potraukis praeina. Pasirinkite ką nors iš toliau pateiktų variantų, kas padėtų jums išgyventi šią akimirką.';

  @override
  String get breathingExercise => 'Kvėpavimo pratimas';

  @override
  String get breathingExerciseSubtitle => 'Vedama 4-7-8 technika, 2 minutės';

  @override
  String get rideTheWave => 'Išbūti potraukio bangą';

  @override
  String get rideTheWaveSubtitle =>
      '15 min. laikmatis — potraukis visada praeina';

  @override
  String get copingTips => 'Įveikimo patarimai';

  @override
  String get copingTipsSubtitle =>
      'Asmeninės strategijos, pritaikytos jūsų paskatinantiems veiksniams';

  @override
  String get talkToAiCoach => 'Pasikalbėti su AI treneriu';

  @override
  String get talkToAiCoachSubtitle => 'Pabendraukite su savo sveikimo palydovu';

  @override
  String get callSomeone => 'Paskambinti kam nors';

  @override
  String get callSomeoneSubtitle => 'Susisiekite su patikimu žmogumi';

  @override
  String get contactsPermissionNeeded =>
      'Norint skambinti kontaktui, reikia prieigos prie kontaktų.';

  @override
  String get beatenCravingsPrefix => 'Jūs įveikėte potraukį ';

  @override
  String beatenCravingsCount(int count) {
    return '$count kartų';
  }

  @override
  String get beatenCravingsSuffix =>
      ' anksčiau. Jūs galite tai padaryti dar kartą.';

  @override
  String get tellUsAboutYourself => 'Papasakokite apie save';

  @override
  String get detailsSubtitle =>
      'Ši informacija padeda pritaikyti jūsų sveikimo kelią ir pateikti tikslias įžvalgas.';

  @override
  String get nameLabel => 'Vardas';

  @override
  String get nameHint => 'pvz., Alex Rivers';

  @override
  String get ageLabel => 'Amžius';

  @override
  String get ageHint => 'pvz., 32';

  @override
  String get sexAssignedAtBirth => 'Gimimo metu priskirta lytis';

  @override
  String get sexFemale => 'Moteris';

  @override
  String get sexMale => 'Vyras';

  @override
  String get heightLabel => 'Ūgis';

  @override
  String get weightLabel => 'Svoris';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Pasiektas dienos limitas';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Šiandien išnaudojote visas $limit nemokamas žinutes. Atnaujinkite į Premium, kad galėtumėte neribotai kalbėtis su treneriu.';
  }

  @override
  String get coachConnectError =>
      'Šiuo metu nepavyko prisijungti. Po akimirkos pabandykite dar kartą.';

  @override
  String get clearConversationTitle => 'Išvalyti pokalbį?';

  @override
  String get clearConversationMessage =>
      'Jūsų pokalbių su treneriu istorija bus visam laikui pašalinta.';

  @override
  String get clearLabel => 'Išvalyti';

  @override
  String get recoveryCoachTitle => 'Sveikimo treneris';

  @override
  String get onlineLabel => 'Prisijungęs';

  @override
  String get clearConversationMenuItem => 'Išvalyti pokalbį';

  @override
  String chatGreeting(String name) {
    return 'Sveiki, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Esate savo kelionės $days dieną. Esu čia, kai tik norite viską aptarti.';
  }

  @override
  String get quickPromptsLabel => 'GREITI KLAUSIMAI';

  @override
  String get promptCravingLabel => 'Noriu išgerti';

  @override
  String get promptCravingSubtitle => 'Greitai susigrąžinkite pusiausvyrą';

  @override
  String get promptMotivationLabel => 'Reikia motyvacijos';

  @override
  String get promptMotivationSubtitle => 'Paskatinimas sunkią akimirką';

  @override
  String get promptSocialLabel => 'Socialinė situacija';

  @override
  String get promptSocialSubtitle => 'Kaip elgtis susibūrime';

  @override
  String get promptSlippedLabel => 'Suklupau';

  @override
  String get promptSlippedSubtitle => 'Be vertinimo, tik palaikymas';

  @override
  String get typeMessageHint => 'Įveskite žinutę...';

  @override
  String get editProfileTitle => 'Redaguoti profilį';

  @override
  String couldNotSaveProfile(String error) {
    return 'Nepavyko išsaugoti profilio: $error';
  }

  @override
  String get heightCmLabel => 'Ūgis (cm)';

  @override
  String get weightKgLabel => 'Svoris (kg)';

  @override
  String get saveChangesLabel => 'Išsaugoti pakeitimus';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Išplėstinės įžvalgos ir analizė';

  @override
  String get featureUnlimitedJournal => 'Neriboti dienoraščio įrašai';

  @override
  String get featureUnlimitedChat => 'Neribotas pokalbis su AI treneriu';

  @override
  String get featureCommunityGroups => 'Išskirtinės bendruomenės grupės';

  @override
  String get featurePrioritySupport => 'Pirmenybinė ekspertų pagalba';

  @override
  String get featureThemePacks => 'Individualūs temų paketai';

  @override
  String get featureDataExport => 'Duomenų eksportavimas';

  @override
  String get featureAdFree => 'Patirtis be reklamų';

  @override
  String get premiumMemberTitle => 'Esate Premium narys';

  @override
  String get unlockFullRecoveryTitle => 'Atrakinkite visą sveikimo\npatirtį';

  @override
  String get premiumMemberSubtitle =>
      'Ačiū, kad palaikote savo sveikimo kelią – visos toliau pateiktos Premium funkcijos yra atrakintos.';

  @override
  String get premiumJoinSubtitle =>
      'Prisijunkite prie tūkstančių žmonių bendruomenės,\nkurie spartina savo sveikimo kelią naudodami mūsų\nPremium įrankius ir asmeninę pagalbą.';

  @override
  String get monthlyPlanLabel => 'Mėnesinis';

  @override
  String get perMonthSuffix => '/mėn.';

  @override
  String get cancelAnytimeLabel => 'Atšaukti bet kada';

  @override
  String get yearlyPlanLabel => 'Metinis';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Kasmet apmokestinama $amount';
  }

  @override
  String get bestValueLabel => 'Geriausia vertė';

  @override
  String get alreadyPremiumLabel => 'Jūs jau naudojate Premium ✓';

  @override
  String get startPremiumLabel => 'Pradėti Premium';

  @override
  String get manageSubscriptionLabel =>
      'Valdykite arba atšaukite prenumeratą savo įrenginio prenumeratos nustatymuose.';

  @override
  String get noCommitmentLabel => 'Jokių įsipareigojimų. Atšaukite bet kada.';

  @override
  String get continueFreePlanLabel => 'Tęsti su nemokamu planu';

  @override
  String get backToHomeLabel => 'Grįžti į pagrindinį';

  @override
  String get cancelPremiumLabel => 'Atšaukti Premium';

  @override
  String get cancelPremiumTitle => 'Atšaukti Premium?';

  @override
  String get cancelPremiumMessage =>
      'Prarasite prieigą prie neribotų dienoraščio įrašų, neriboto pokalbio su treneriu, statistikos įžvalgų ir savaitės ataskaitų. Prenumeratą galite atnaujinti bet kada.';

  @override
  String get keepPremiumLabel => 'Palikti Premium';

  @override
  String get nowPremiumMessage =>
      'Dabar turite Premium! Mėgaukitės visa sveikimo patirtimi.';

  @override
  String get premiumCancelledMessage =>
      'Premium atšauktas. Grįžote į nemokamą planą.';

  @override
  String get termsOfUseLabel => 'Naudojimo sąlygos';

  @override
  String get navHomeLabel => 'Pagrindinis';

  @override
  String get navStatsLabel => 'Statistika';

  @override
  String get navJournalLabel => 'Dienoraštis';

  @override
  String get navBadgesLabel => 'Ženkleliai';

  @override
  String get navProfileLabel => 'Profilis';

  @override
  String get recoveryGoalsTitle => 'Sveikimo tikslai';

  @override
  String get drinksPerWeekLabel => 'Gėrimai per savaitę';

  @override
  String get quitReasonsLabel => 'Metimo priežastys';

  @override
  String get quitReasonsHelperText => 'Kelias priežastis atskirkite kableliu.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Nepavyko išsaugoti sveikimo tikslų: $error';
  }

  @override
  String get goalHint => 'pvz., Visiškas susilaikymas';

  @override
  String get drinksPerWeekHint => 'pvz., 12';

  @override
  String get quitReasonsHint => 'pvz., Sveikata, šeima, pinigai';

  @override
  String get todaysPrompt => 'Šiandienos klausimas';

  @override
  String get defaultJournalPrompt => 'Kas šiandien sukasi jūsų galvoje?';

  @override
  String get aiJournalInsights => 'AI dienoraščio įžvalgos';

  @override
  String get unlockJournalInsightsMessage =>
      'Atrakinkite savaitės tendencijas, nuotaikos pokyčius ir asmenines įžvalgas iš savo dienoraščio įrašų.';

  @override
  String get notEnoughJournalData =>
      'Dar nepakanka duomenų – šią savaitę parašykite kelis įrašus ir patikrinkite dar kartą.';

  @override
  String get openEntry => 'Atidaryti';

  @override
  String get editEntry => 'Redaguoti';

  @override
  String get deleteEntry => 'Ištrinti';

  @override
  String get searchJournalEntries => 'Ieškoti įrašų...';

  @override
  String get writeNewEntry => 'Rašyti naują įrašą';

  @override
  String get recentEntries => 'Naujausi įrašai';

  @override
  String get noJournalEntriesYet =>
      'Dar nėra dienoraščio įrašų – aukščiau parašykite pirmąjį apmąstymą.';

  @override
  String get noEntriesMatchFilters => 'Nėra įrašų, atitinkančių jūsų filtrus.';

  @override
  String get weeklyJournalLimitReached => 'Pasiektas savaitės limitas';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Šią savaitę išnaudojote visus $limit nemokamus dienoraščio įrašus. Atnaujinkite į Premium, kad galėtumėte kurti neribotą skaičių įrašų.';
  }

  @override
  String get newEntry => 'Naujas įrašas';

  @override
  String get writeYourThoughts => 'Užrašykite savo mintis';

  @override
  String get saveEntry => 'Išsaugoti įrašą';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Šią savaitę liko $remaining iš $limit nemokamų įrašų';
  }

  @override
  String get deleteEntryQuestion => 'Ištrinti įrašą?';

  @override
  String get deleteEntryConfirmation =>
      'Šis įrašas bus visam laikui ištrintas. Šio veiksmo negalima atšaukti.';

  @override
  String get journalEntryNotFound => 'Įrašas nerastas';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Šis dienoraščio įrašas galėjo būti ištrintas.';

  @override
  String get goBack => 'Grįžti';

  @override
  String get journalEntryTitle => 'Dienoraščio įrašas';

  @override
  String get moodStruggling => 'Sunku';

  @override
  String get moodUnwell => 'Blogai jaučiuosi';

  @override
  String get moodNeutral => 'Neutrali';

  @override
  String get whatHappenedToday => 'Kas šiandien nutiko?';

  @override
  String get trigger => 'Paskatinantis veiksnys';

  @override
  String get whatHelped => 'Kas padėjo';

  @override
  String get whatIllTryNextTime => 'Ką išbandysiu kitą kartą';

  @override
  String get journalPrivacyMessage =>
      'Jūsų apmąstymai yra privatūs ir saugomi jūsų dienoraštyje.';

  @override
  String get unlocked => 'Atrakinta';

  @override
  String daysLeft(int count) {
    return 'Liko $count dienų';
  }

  @override
  String daysCount(int count) {
    return '$count dienos';
  }

  @override
  String get firstReflection => 'Pirmasis\napmąstymas';

  @override
  String get oneJournalEntry => '1 dienoraščio įrašas';

  @override
  String get openBook => 'Atverti knygą';

  @override
  String get tenJournalEntries => '10 dienoraščio įrašų';

  @override
  String get dedicatedWriter => 'Atsidavęs\nrašytojas';

  @override
  String get thirtyJournalEntries => '30 dienoraščio įrašų';

  @override
  String get firstConversation => 'Pirmasis\npokalbis';

  @override
  String get oneAiCoachChat => '1 AI trenerio pokalbis';

  @override
  String get keepTalking => 'Tęsti pokalbį';

  @override
  String get fiveConversations => '5 pokalbiai';

  @override
  String get coachCompanion => 'Trenerio\npalydovas';

  @override
  String get twentyConversations => '20 pokalbių';

  @override
  String get checkInHabit => 'Patikros\nįprotis';

  @override
  String get sevenCheckIns => '7 patikros';

  @override
  String get consistencyPro => 'Nuoseklumo\nmeistras';

  @override
  String get thirtyCheckIns => '30 patikrų';

  @override
  String get dedicatedJourney => 'Atsidavusi\nkelionė';

  @override
  String get hundredCheckIns => '100 patikrų';

  @override
  String get goalGetter => 'Tikslo siekėjas';

  @override
  String get threeGoalsCompleted => '3 tikslai pasiekti';

  @override
  String get goalAchiever => 'Tikslų\npasiekėjas';

  @override
  String get tenGoalsCompleted => '10 tikslų pasiekta';

  @override
  String get firstSavings => 'Pirmasis\nsutaupymas';

  @override
  String get fiveHundredSaved => 'Sutaupyta \$500';

  @override
  String get smartSaver => 'Išmanus taupytojas';

  @override
  String get oneThousandSaved => 'Sutaupyta \$1,000';

  @override
  String get bigSaver => 'Didysis taupytojas';

  @override
  String get fiveThousandSaved => 'Sutaupyta \$5,000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current iš \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current iš $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Tęskite – jūsų pirmasis pasiekimas jūsų laukia!';

  @override
  String get badgesAndMilestones => 'Ženkleliai ir pasiekimai';

  @override
  String get yourMilestoneJourney => 'Jūsų pasiekimų kelias';

  @override
  String milestonesAchieved(int count) {
    return 'Pasiekta $count pasiekimų.\nPalieskite, kad peržiūrėtumėte';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Savo kelyje atrakinote $unlocked iš $total pasiekimų.';
  }

  @override
  String get remaining => 'Liko';

  @override
  String get complete => 'Baigta';

  @override
  String get nextMilestone => 'Kitas pasiekimas';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% pasiekta';
  }

  @override
  String get sobrietyMilestones => 'Blaivybės pasiekimai';

  @override
  String get journeyBadges => 'Kelionės ženkleliai';

  @override
  String get bronze => 'BRONZA';

  @override
  String get silver => 'SIDABRAS';

  @override
  String get gold => 'AUKSAS';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'DEIMANTAS';

  @override
  String get analyzingYourJourney => 'Analizuojame jūsų kelią...';

  @override
  String get aiCreatingSanctuary =>
      'Mūsų AI kuria jums asmeninę sveikimo erdvę.';

  @override
  String get understandingHabits => 'Analizuojame įpročius...';

  @override
  String get calculatingBaseline => 'Skaičiuojame jūsų pradinį rodiklį...';

  @override
  String get personalizingPlan => 'Pritaikome jūsų planą...';

  @override
  String get finalizingSanctuary => 'Baigiame kurti jūsų sveikimo erdvę...';

  @override
  String get creatingYourPlan => 'Kuriame jūsų planą...';

  @override
  String get personalizedPlanError =>
      'Nepavyko sukurti jūsų asmeninio plano. Pabandykite dar kartą.';

  @override
  String get retry => 'Bandyti dar kartą';

  @override
  String get breathInhale => 'ĮKVĖPTI';

  @override
  String get breathHold => 'SULAIKYTI';

  @override
  String get breathExhale => 'IŠKVĖPTI';

  @override
  String get breathDone => 'ATLIKTA';

  @override
  String get breathGreatJob => 'Puikiai!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesijos šiandien',
      one: '$count sesija šiandien',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Baigti pratimą';

  @override
  String get done => 'Atlikta';

  @override
  String get noCopingTipsYet => 'Kol kas nėra įveikimo patarimų';

  @override
  String get copingStrategiesWillAppear =>
      'Jūsų asmeninės įveikimo strategijos pasirodys čia, kai bus baigtas kurti jūsų sveikimo planas.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategijos, pritaikytos jūsų paskatinantiems veiksniams';

  @override
  String get cravingsPeakAndPass => 'Potraukis pasiekia piką\nir praeina';

  @override
  String get rideTheWaveDescription =>
      'Dauguma potraukių praeina per 15 minučių. Jums nereikia veikti pagal jį – tiesiog išbūkite šią akimirką kartu su mumis.';

  @override
  String get stayWithIt => 'išbūkite';

  @override
  String get youMadeIt => 'jums pavyko';

  @override
  String get readyWhenYouAre => 'pradėkite, kai būsite pasiruošę';

  @override
  String get rideItAgain => 'Išbūti dar kartą';

  @override
  String get start15MinuteTimer => 'Paleisti 15 minučių laikmatį';

  @override
  String get rideTheWaveCompletedMessage =>
      'Jūs išbuvote šią bangą. Tai tikra stiprybė. 💪';

  @override
  String get myProgress => 'Mano pažanga';

  @override
  String get weekLabel => 'Savaitė';

  @override
  String get monthLabel => 'Mėnuo';

  @override
  String get allLabel => 'Viskas';

  @override
  String get daysSoberStatLabel => 'Dienos\nblaivūs';

  @override
  String get savedStatLabel => 'Sutaupyta';

  @override
  String get avoidedStatLabel => 'Išvengta';

  @override
  String get moodTrends => 'Nuotaikos tendencijos';

  @override
  String get cravingsPattern => 'Potraukio modelis';

  @override
  String get unlockLabel => 'Atrakinti';

  @override
  String get unlockFullStats => 'Atrakinti visą statistiką';

  @override
  String get premiumStatsMessage =>
      'Nuotaikos tendencijos ir potraukio modeliai yra Premium funkcijos. Atnaujinkite, kad pamatytumėte visą statistiką.';

  @override
  String get healthMilestonesWillAppear =>
      'Jūsų sveikatos pasiekimai bus rodomi čia.';

  @override
  String get healthMilestones => 'Sveikatos pasiekimai';

  @override
  String dayNumber(int day) {
    return '$day diena';
  }

  @override
  String get soberLabel => 'Blaivus';

  @override
  String get slipLabel => 'Suklupimas';

  @override
  String get noDataLabel => 'Nėra duomenų';

  @override
  String get milestone24Hours => '24 valandos';

  @override
  String get milestoneOneWeek => 'Viena savaitė';

  @override
  String get milestoneOneMonth => 'Vienas mėnuo';

  @override
  String get milestoneThreeMonths => 'Trys mėnesiai';

  @override
  String get milestoneSixMonths => 'Šeši mėnesiai';

  @override
  String get milestoneOneYear => 'Vieneri metai';

  @override
  String milestoneDayCount(int day) {
    return '$day dienos pasiekimas';
  }

  @override
  String get maybeLaterLabel => 'Galbūt vėliau';

  @override
  String get cancelLabel => 'Atšaukti';
}
