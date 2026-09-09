// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get skip => 'Sleppa';

  @override
  String get continueButton => 'Halda áfram';

  @override
  String get getStarted => 'Hefjast handa';

  @override
  String get onboardingTitle1 => 'Taktu stjórn á lífi þínu';

  @override
  String get onboardingSubtitle1 =>
      'Fylgstu með vegferð þinni, fagnaðu hverjum áfanga og verðu heilbrigðari dag frá degi.';

  @override
  String get onboardingTitle2 => 'Þinn AI Bati-Félagi';

  @override
  String get onboardingSubtitle2 =>
      'Fáðu persónulega leiðsögn, holla vanasamskipti, hvatningu og framfaraskýrslur.';

  @override
  String get goodMorning => 'Góðan daginn';

  @override
  String get goodAfternoon => 'Góðan dag';

  @override
  String get goodEvening => 'Góðan daginn';

  @override
  String get goodNight => 'Góða nótt';

  @override
  String get embracingClarity => 'Að faðma skýrleikann, einn dag í einu.';

  @override
  String get streakLabel => 'DAGA RÖÐ';

  @override
  String get goalLabel => 'Markmið';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Dagar',
      one: '$count Dagur',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Prikum Áætlun';

  @override
  String get premiumPlanSubtitle => 'Oplaðu alla bati-upplifun þína';

  @override
  String get accountAndSupport => 'AÐGANGUR OG AÐSTOÐ';

  @override
  String get privacyPolicy => 'Persónuverndarstefna';

  @override
  String get privacyPolicySubtitle =>
      'Stjórnaðu gagnadeilingu og öryggi aðgangs';

  @override
  String get termsOfService => 'Þjónustuskilmálar';

  @override
  String get termsOfServiceSubtitle =>
      'Algengar spurningar, tengiliðir og úrræði';

  @override
  String get shareApp => 'Deila appi';

  @override
  String get shareAppSubtitle => 'Deildu appinu með vinum þínum';

  @override
  String get resetData => 'Endurstilla gögn';

  @override
  String get resetDataSubtitle => 'Eyða öllu sem vistað er á þessu tæki';

  @override
  String get resetAllDataTitle => 'Endurstilla öll gögn?';

  @override
  String get resetAllDataMessage =>
      'Þetta eyðir öllu sem vistað er á tækinu — prófíl, dagbókarfærslum og framförum — og er ekki hægt að afturkalla.';

  @override
  String get cancel => 'Hætta við';

  @override
  String get reset => 'Endurstilla';

  @override
  String get chooseFromGallery => 'Velja úr myndasafni';

  @override
  String get takePhoto => 'Taka mynd';

  @override
  String get removePhoto => 'Farlægja mynd';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Ekki tókst að uppfæra mynd: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Ekki tókst að fjarlægja mynd: $error';
  }

  @override
  String get photoTooLarge =>
      'Myndin er of stór jafnvel eftir þjöppun — vinsamlegast prófaðu aðra.';

  @override
  String get unableToLoadProfile => 'Ekki tókst að hlaða prófíl';

  @override
  String get pleaseTryAgain => 'Vinsamlegast prófaðu aftur.';

  @override
  String get tryAgain => 'Prófa aftur';

  @override
  String get profileNotFound => 'Prófíll fannst ekki';

  @override
  String get refresh => 'Endurnýja';

  @override
  String get noProfileDataFound =>
      'Engin prófílgögn fundust á þessu tæki ennþá.';

  @override
  String couldNotResetData(String error) {
    return 'Ekki tókst að endurstilla gögn: $error';
  }

  @override
  String get navHome => 'Heim';

  @override
  String get navStats => 'Tölfræði';

  @override
  String get navJournal => 'Dagbók';

  @override
  String get navBadges => 'Merki';

  @override
  String get navProfile => 'Prófíll';

  @override
  String featureComingSoon(String feature) {
    return '$feature verður í boði fljótlega.';
  }

  @override
  String get appWordmark => 'Vellíðan';

  @override
  String get appTitle => 'Hættu að drekka';

  @override
  String get splashSubtitle =>
      'Taktu fyrsta skrefið á leið til\náfengislauss lífs';

  @override
  String get preparingJourney => 'Undirbýr þína\nvegferð';

  @override
  String get taskMorningMeditation => 'Morgunhugleiðsla (10m)';

  @override
  String get taskReadChapter => 'Lestu 4. kafla í \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Kvöld-þakklætisdagbók';

  @override
  String get close => 'Loka';

  @override
  String get youAreDoingGreat => 'Þér gengur frábærlega!';

  @override
  String get shareMilestone => 'Deila áfanga';

  @override
  String shareMilestoneMessage(int days) {
    return 'Ég er á degi $days í bati-vegferð minni! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Bati-áfanginn minn';

  @override
  String get weeklyReportReadyTitle => 'Vikulega skýrslan þín er tilbúin';

  @override
  String get weeklyReportReadySubtitle => 'Ýttu til að sjá hvernig vikan gekk';

  @override
  String get howAreYouFeeling => 'Hvernig líður þér?';

  @override
  String get moodTough => 'Erfitt';

  @override
  String get moodOkay => 'Allt í lagi';

  @override
  String get moodGood => 'Góð';

  @override
  String get moneySaved => 'Peningar sparast';

  @override
  String get caloriesSaved => 'Hitaeiningar sparast';

  @override
  String get healthScore => 'Heilsustig';

  @override
  String get drinksAvoided => 'Drykkir forðast';

  @override
  String get estimated => 'Aðætlað';

  @override
  String get aiGenerated => 'Búið til af AI';

  @override
  String get daysCapsLabel => 'DAGAR';

  @override
  String get todaysMotivation => 'Hvatning dagsins';

  @override
  String get defaultMotivationQuote =>
      'Þér hefur tekist að halda skuldbindingu þinni. Haltu áfram á tæknibylgjunni.';

  @override
  String get talkToCoach => 'Ræða við þjálfara';

  @override
  String get havingACraving => 'Ég finn fyrir löngun';

  @override
  String get unlockWeeklyReportsTitle => 'Opna vikulegar skýrslur';

  @override
  String get unlockWeeklyReportsMessage =>
      'Sjáðu edrú daga þína, líðan og AI endurgjöf í hverri viku. Uppfærðu í Premium.';

  @override
  String get maybeLater => 'Kannski síðar';

  @override
  String get upgrade => 'Uppfæra';

  @override
  String get weeklyReportTitle => 'Vikuleg skýrsla';

  @override
  String get weeklyReportsPremiumTitle =>
      'Vikulegar skýrslur eru Premium eiginleiki';

  @override
  String get weeklyReportsPremiumMessage =>
      'Fylgstu með edrú dögum, líðan og fáðu persónulega AI endurgjöf.';

  @override
  String get upgradeToPremium => 'Uppfæra í Premium';

  @override
  String get couldNotGenerateReport =>
      'Ekki var hægt að búa til skýrsluna þína núna.';

  @override
  String get tryAgainLower => 'Prófa aftur';

  @override
  String get statSoberDays => 'Edrú dagar';

  @override
  String get statAvgMood => 'Meðallíðan';

  @override
  String get statCravings => 'Langanir';

  @override
  String get statMoneySaved => 'Peningar sparast';

  @override
  String get coachFeedback => 'Endurgjöf þjálfara';

  @override
  String get journalInsights => 'Dagbókarinnsýn';

  @override
  String get next => 'Næst';

  @override
  String get question1Title => 'Hvert er markmið þitt?';

  @override
  String get question1Subtitle =>
      'Veldu það markmið sem skiptir þig mestu máli';

  @override
  String get goalQuitCompletely => 'Hætta alveg';

  @override
  String get goalReduceDrinking => 'Draga úr drykkju';

  @override
  String get goalTakeABreak => 'Taka hlé';

  @override
  String get goalBuildHealthierHabits => 'Búa til hollli vanasamskipti';

  @override
  String get question3Title => 'Segðu okkur frá þinni\nrútínu';

  @override
  String get drinksPerWeek => 'Drykkir á viku';

  @override
  String get moneySpentPerWeek => 'Peningar notaðir á viku';

  @override
  String get drinkingLevel => 'Drykkjustig';

  @override
  String get triggersLabel => 'Kveikjur (Triggers)';

  @override
  String get levelSocial => 'Félagslegt';

  @override
  String get levelRegular => 'Reglulegt';

  @override
  String get levelHeavy => 'Mikið';

  @override
  String get levelDependent => 'Háð';

  @override
  String get triggerStress => 'Streita';

  @override
  String get triggerLoneliness => 'Einmanaleiki';

  @override
  String get triggerHabit => 'Vani';

  @override
  String get triggerSadness => 'Sorg / Depurð';

  @override
  String get triggerAnger => 'Reiði';

  @override
  String get triggerBoredom => 'Leindist';

  @override
  String get triggerSocialPressure => 'Félagslegur þrýstingur';

  @override
  String get triggerCelebration => 'Fagnaður';

  @override
  String get triggerSleepProblems => 'Svefnvandamál';

  @override
  String get triggerWorkPressure => 'Vinnuálag';

  @override
  String get question4Title => 'Af hverju viltu breyta?';

  @override
  String get question4Subtitle =>
      'Ástæðan þín mun hjálpa þér að halda hvatningu.';

  @override
  String get reasonImproveHealth => 'Bæta heilsuna';

  @override
  String get reasonSaveMoney => 'Spara peninga';

  @override
  String get reasonFamily => 'Fjölskylda';

  @override
  String get reasonBetterSleep => 'Betri svefn';

  @override
  String get reasonMentalClarity => 'Andleg skýrleiki';

  @override
  String get reasonFitness => 'Líkamsrækt';

  @override
  String get reasonSelfRespect => 'Sjálfsvirðing';

  @override
  String get reasonCareer => 'Starfsframi';

  @override
  String get milestoneUnlockedLabel => 'ÁFANGI OPNADUR';

  @override
  String incredibleNamePrefix(String name) {
    return 'Frábært, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount sparast';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count forðast';
  }

  @override
  String get shareMyMilestone => 'Deila áfanga mínum';

  @override
  String get milestoneImageShareError =>
      'Ekki tókst að búa til áfangamyndina. Vinsamlegast prófaðu aftur.';

  @override
  String get dailyCheckInTitle => 'Dagleg innskráning';

  @override
  String get howAreYouFeelingToday => 'Hvernig líður þér í dag?';

  @override
  String get honestAnswerHelp =>
      'Heiðarleg svör þín hjálpa okkur að styðja þig betur';

  @override
  String get didYouDrinkToday => 'Drakkst þú í dag?';

  @override
  String get noLabel => 'Nei';

  @override
  String get yesLabel => 'Já';

  @override
  String get cravingLevelNow => 'Löngunarstig rétt í þessu?';

  @override
  String get anythingOnMind => 'Eitthvað sem þér liggur á hjarta?';

  @override
  String get optionalLabel => '(valfrjálst)';

  @override
  String get dailyNoteHint => 'Skrifaðu um daginn þinn, kveikjur, sigra...';

  @override
  String get alreadyCheckedInToday => 'Ertu þegar búinn að skrá þig í dag';

  @override
  String get saveCheckIn => 'Vista skráningu';

  @override
  String get checkInsHelpTrack =>
      'Innskráningar hjálpa til við að fylgjast með framförum þínum';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Þú hefur þegar lokið innskráningu dagsins.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Vinsamlegast svaraðu báðum spurningunum hér að ofan fyrst';

  @override
  String get checkInSaved => 'Innskráning vistuð';

  @override
  String get cravingNone => 'Engin';

  @override
  String get cravingLow => 'Lítil';

  @override
  String get cravingMedium => 'Meðal';

  @override
  String get cravingStrong => 'Mikil';

  @override
  String get moodBad => 'Slæm';

  @override
  String get moodLow => 'Lág';

  @override
  String get moodGreat => 'Frábær';

  @override
  String get sosSupportTitle => 'SOS Aðstoð';

  @override
  String notAloneMessage(String name) {
    return 'Þú ert ekki einn/ein, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Langanir líða hjá. Veldu eitthvað hér að neðan til að hjálpa þér í gegnum þetta augnablik.';

  @override
  String get breathingExercise => 'Öndunaræfing';

  @override
  String get breathingExerciseSubtitle => 'Leiðbeind 4-7-8 tækni, 2 mínútur';

  @override
  String get rideTheWave => 'Ríða á öldunni';

  @override
  String get rideTheWaveSubtitle =>
      '15 mínútna teljari — langanir líða alltaf hjá';

  @override
  String get copingTips => 'Ráð við að takast á við';

  @override
  String get copingTipsSubtitle => 'Sérsniðnar aðferðir við þínum kveikjum';

  @override
  String get talkToAiCoach => 'Tala við AI þjálfara';

  @override
  String get talkToAiCoachSubtitle => 'Spjallaðu við bati-félagann þinn';

  @override
  String get callSomeone => 'Hringja í einhvern';

  @override
  String get callSomeoneSubtitle => 'Náðu í traustan tengilið';

  @override
  String get contactsPermissionNeeded =>
      'Aðgangur að tengiliðum er nauðsynlegur til að hringja.';

  @override
  String get beatenCravingsPrefix => 'Þú hefur yfirunnið langanir ';

  @override
  String beatenCravingsCount(int count) {
    return '$count sinnum';
  }

  @override
  String get beatenCravingsSuffix => ' áður. Þú getur gert það aftur.';

  @override
  String get tellUsAboutYourself => 'Segðu okkur frá þér';

  @override
  String get detailsSubtitle =>
      'Þessar upplýsingar hjálpa okkur að sérsníða bati-vegferðina þína.';

  @override
  String get nameLabel => 'Nafn';

  @override
  String get nameHint => 't.d. Alex Rivers';

  @override
  String get ageLabel => 'Aldur';

  @override
  String get ageHint => 't.d. 32';

  @override
  String get sexAssignedAtBirth => 'Kyn við fæðingu';

  @override
  String get sexFemale => 'Kvenkyns';

  @override
  String get sexMale => 'Karlkyns';

  @override
  String get heightLabel => 'Hæð';

  @override
  String get weightLabel => 'Þyngd';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Dagsmörkum náð';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Þú hefur notað öll $limit ókeypis skilaboðin í dag. Uppfærðu í Premium fyrir ótakmarkað spjall.';
  }

  @override
  String get coachConnectError =>
      'Ekki tókst að tengjast núna. Vinsamlegast prófaðu aftur eftir stund.';

  @override
  String get clearConversationTitle => 'Hreinsa samtal?';

  @override
  String get clearConversationMessage =>
      'Þetta mun eyða spjallsögunni við þjálfarann þinn varanlega.';

  @override
  String get clearLabel => 'Hreinsa';

  @override
  String get recoveryCoachTitle => 'Bati-þjálfari';

  @override
  String get onlineLabel => 'Tengdur';

  @override
  String get clearConversationMenuItem => 'Hreinsa samtal';

  @override
  String chatGreeting(String name) {
    return 'Hæ $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Þú ert á degi $days í þinni vegferð. Ég er hér ef þú vilt ræða málin.';
  }

  @override
  String get quickPromptsLabel => 'FLJÓTLEG SVÖR';

  @override
  String get promptCravingLabel => 'Finn fyrir löngun';

  @override
  String get promptCravingSubtitle => 'Náðu stjórn, hratt';

  @override
  String get promptMotivationLabel => 'Vantar hvatningu';

  @override
  String get promptMotivationSubtitle => 'Aukning á erfiðum stundum';

  @override
  String get promptSocialLabel => 'Félagslegar aðstæður';

  @override
  String get promptSocialSubtitle => 'Að tækla samkomu';

  @override
  String get promptSlippedLabel => 'Mér urðu á mistök';

  @override
  String get promptSlippedSubtitle => 'Engin dómharða, bara stuðningur';

  @override
  String get typeMessageHint => 'Skrifaðu skilaboð...';

  @override
  String get editProfileTitle => 'Breyta prófíl';

  @override
  String couldNotSaveProfile(String error) {
    return 'Ekki tókst að vista prófíl: $error';
  }

  @override
  String get heightCmLabel => 'Hæð (cm)';

  @override
  String get weightKgLabel => 'Þyngd (kg)';

  @override
  String get saveChangesLabel => 'Vista breytingar';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Ítarleg tölfræði og greining';

  @override
  String get featureUnlimitedJournal => 'Ótakmarkaðar dagbókarfærslur';

  @override
  String get featureUnlimitedChat => 'Ótakmarkað spjall við AI þjálfara';

  @override
  String get featureCommunityGroups => 'Einkahópar samfélagsins';

  @override
  String get featurePrioritySupport => 'Forgangsþjónusta';

  @override
  String get featureThemePacks => 'Sérsniðin þemu';

  @override
  String get featureDataExport => 'Gagnaútflutningur';

  @override
  String get featureAdFree => 'Auglýsingalaus upplifun';

  @override
  String get premiumMemberTitle => 'Þú ert Premium meðlimur';

  @override
  String get unlockFullRecoveryTitle => 'Opnaðu alla þína\nbati-upplifun';

  @override
  String get premiumMemberSubtitle =>
      'Takk fyrir að styðja við bati-vegferðina þína — allir Premium eiginleikar eru opnir.';

  @override
  String get premiumJoinSubtitle =>
      'Gakktu í hóp þúsunda sem flýta fyrir bati sínum.';

  @override
  String get monthlyPlanLabel => 'Mánaðarlega';

  @override
  String get perMonthSuffix => '/mán';

  @override
  String get cancelAnytimeLabel => 'Hætta við hvenær sem er';

  @override
  String get yearlyPlanLabel => 'Árlega';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Rukkað árlega $amount';
  }

  @override
  String get bestValueLabel => 'Besta verðið';

  @override
  String get alreadyPremiumLabel => 'Þú ert með Premium ✓';

  @override
  String get startPremiumLabel => 'Hefja Premium';

  @override
  String get manageSubscriptionLabel =>
      'Stjórnaðu eða hættu við í áskriftarstillingum tækisins.';

  @override
  String get noCommitmentLabel => 'Engin binding. Hætta við hvenær sem er.';

  @override
  String get continueFreePlanLabel => 'Halda áfram á ókeypis áætlun';

  @override
  String get backToHomeLabel => 'Aftur á heimssíðu';

  @override
  String get cancelPremiumLabel => 'Hætta við Premium';

  @override
  String get cancelPremiumTitle => 'Hætta við Premium?';

  @override
  String get cancelPremiumMessage =>
      'Þú munir missa aðgang að ótakmörkuðum færslum, spjalli og skýrslum.';

  @override
  String get keepPremiumLabel => 'Halda Premium';

  @override
  String get nowPremiumMessage => 'Þú ert núna kominn með Premium!';

  @override
  String get premiumCancelledMessage =>
      'Hætt var við Premium. Þú ert aftur á ókeypis áætlun.';

  @override
  String get termsOfUseLabel => 'Notkunarskilmálar';

  @override
  String get navHomeLabel => 'Heim';

  @override
  String get navStatsLabel => 'Tölfræði';

  @override
  String get navJournalLabel => 'Dagbók';

  @override
  String get navBadgesLabel => 'Merki';

  @override
  String get navProfileLabel => 'Prófíll';

  @override
  String get recoveryGoalsTitle => 'Bati-markmið';

  @override
  String get drinksPerWeekLabel => 'Drykkir á viku';

  @override
  String get quitReasonsLabel => 'Ástæður fyrir því að hætta';

  @override
  String get quitReasonsHelperText => 'Aðskildu margar ástæður með kommu.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Ekki tókst að vista markmið: $error';
  }

  @override
  String get goalHint => 't.d. Algjört bindindi';

  @override
  String get drinksPerWeekHint => 't.d. 12';

  @override
  String get quitReasonsHint => 't.d. Hilsa, Fjölskylda, Peningar';

  @override
  String get todaysPrompt => 'Spurning dagsins';

  @override
  String get defaultJournalPrompt => 'Hvað er þér efst í huga í dag?';

  @override
  String get aiJournalInsights => 'AI dagbókarinnsýn';

  @override
  String get unlockJournalInsightsMessage =>
      'Opnaðu vikuleg munstur og líðan út frá færslum þínum.';

  @override
  String get notEnoughJournalData =>
      'Ekki næg gögn ennþá — skrifaðu nokkrar færslur í þessari viku.';

  @override
  String get openEntry => 'Opna';

  @override
  String get editEntry => 'Breyta';

  @override
  String get deleteEntry => 'Eyða';

  @override
  String get searchJournalEntries => 'Lita í færslum...';

  @override
  String get writeNewEntry => 'Skrifa nýja færslu';

  @override
  String get recentEntries => 'Nýlegar færslur';

  @override
  String get noJournalEntriesYet =>
      'Engar færslur ennþá — skrifaðu þínar fyrstu hugsanir hér að ofan.';

  @override
  String get noEntriesMatchFilters =>
      'Engar færslur pössuðu við síurnar þínar.';

  @override
  String get weeklyJournalLimitReached => 'Vikulegum mörkum náð';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Þú hefur notað allar $limit ókeypis færslurnar í þessari viku.';
  }

  @override
  String get newEntry => 'Ný færsla';

  @override
  String get writeYourThoughts => 'Skrifaðu hugsanir þínar';

  @override
  String get saveEntry => 'Vista færslu';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining af $limit ókeypis færslum eftir í þessari viku';
  }

  @override
  String get deleteEntryQuestion => 'Eyða færslu?';

  @override
  String get deleteEntryConfirmation => 'Þessari færslu verður eytt varanlega.';

  @override
  String get journalEntryNotFound => 'Færsla fannst ekki';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Þessari dagbókarfærslu gæti hafa verið eytt.';

  @override
  String get goBack => 'Fara til baka';

  @override
  String get journalEntryTitle => 'Dagbókarfærsla';

  @override
  String get moodStruggling => 'Á undir högg að að stríða';

  @override
  String get moodUnwell => 'Veikur/Lélegur';

  @override
  String get moodNeutral => 'Hlutlaus';

  @override
  String get whatHappenedToday => 'Hvað gerðist í dag?';

  @override
  String get trigger => 'Kveikja';

  @override
  String get whatHelped => 'Hvað hjálpaði';

  @override
  String get whatIllTryNextTime => 'Hvað ég mun prófa næst';

  @override
  String get journalPrivacyMessage =>
      'Hugsanir þínar eru einkamál og örugglega vistaðar.';

  @override
  String get unlocked => 'Opnað';

  @override
  String daysLeft(int count) {
    return '$count dagar eftir';
  }

  @override
  String daysCount(int count) {
    return '$count Dagar';
  }

  @override
  String get firstReflection => 'Fyrsta\nhugsun';

  @override
  String get oneJournalEntry => '1 Dagbókarfærsla';

  @override
  String get openBook => 'Opin bók';

  @override
  String get tenJournalEntries => '10 Dagbókarfærslur';

  @override
  String get dedicatedWriter => 'Iðinn\nrithöfundur';

  @override
  String get thirtyJournalEntries => '30 Dagbókarfærslur';

  @override
  String get firstConversation => 'Fyrsta\nsamtal';

  @override
  String get oneAiCoachChat => '1 Spjall við AI þjálfara';

  @override
  String get keepTalking => 'Halda áfram að tala';

  @override
  String get fiveConversations => '5 Samtöl';

  @override
  String get coachCompanion => 'Þjálfara-\nfélagi';

  @override
  String get twentyConversations => '20 Samtöl';

  @override
  String get checkInHabit => 'Innskráningar-\nvani';

  @override
  String get sevenCheckIns => '7 Innskráningar';

  @override
  String get consistencyPro => 'Aðhalds-\nmeistari';

  @override
  String get thirtyCheckIns => '30 Innskráningar';

  @override
  String get dedicatedJourney => 'Einbeitt\nvegferð';

  @override
  String get hundredCheckIns => '100 Innskráningar';

  @override
  String get goalGetter => 'Markmiðanáer';

  @override
  String get threeGoalsCompleted => '3 Markmiðum náð';

  @override
  String get goalAchiever => 'Markmiða-\nmeistari';

  @override
  String get tenGoalsCompleted => '10 Markmiðum náð';

  @override
  String get firstSavings => 'Fyrsti\nsparnaður';

  @override
  String get fiveHundredSaved => '\$500 Sparað';

  @override
  String get smartSaver => 'Kænn sparaður';

  @override
  String get oneThousandSaved => '\$1,000 Sparað';

  @override
  String get bigSaver => 'Stór sparaður';

  @override
  String get fiveThousandSaved => '\$5,000 Sparað';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current af \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current af $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Haltu áfram — fyrsti áfanginn þinn bíður þín!';

  @override
  String get badgesAndMilestones => 'Merki & Áfangar';

  @override
  String get yourMilestoneJourney => 'Áfanga-vegferðin þín';

  @override
  String milestonesAchieved(int count) {
    return '$count áfangar náðst.\nÝttu til að skoða';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Þú hefur opnað $unlocked af $total áföngum.';
  }

  @override
  String get remaining => 'Eftir';

  @override
  String get complete => 'Lokið';

  @override
  String get nextMilestone => 'Næsti áfangi';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% náð';
  }

  @override
  String get sobrietyMilestones => 'Edrú-áfangar';

  @override
  String get journeyBadges => 'Vegferðarmerki';

  @override
  String get bronze => 'BRONS';

  @override
  String get silver => 'SILFUR';

  @override
  String get gold => 'GULL';

  @override
  String get platinum => 'PLATÍNA';

  @override
  String get diamond => 'DEMANTUR';

  @override
  String get analyzingYourJourney => 'Greinir vegferð þína...';

  @override
  String get aiCreatingSanctuary =>
      'AI okkar er að búa til þinn persónulega stað.';

  @override
  String get understandingHabits => 'Skilur vanasamskipti...';

  @override
  String get calculatingBaseline => 'Reiknar út viðmið...';

  @override
  String get personalizingPlan => 'Sérsníður áætlunina...';

  @override
  String get finalizingSanctuary => 'Gengur frá þínum stað...';

  @override
  String get creatingYourPlan => 'Býr til áætlunina...';

  @override
  String get personalizedPlanError =>
      'Ekki tókst að búa til sérsniðna áætlun. Vinsamlegast prófaðu aftur.';

  @override
  String get retry => 'Aftur';

  @override
  String get breathInhale => 'ANDA INN';

  @override
  String get breathHold => 'HALDA';

  @override
  String get breathExhale => 'ANDA ÚT';

  @override
  String get breathDone => 'LOKIÐ';

  @override
  String get breathGreatJob => 'Vel gert!';

  @override
  String breathSessionsToday(int count) {
    return '$count lotur í dag';
  }

  @override
  String get endExercise => 'Ljúka æfingu';

  @override
  String get done => 'Lokið';

  @override
  String get noCopingTipsYet => 'Engin ráð ennþá';

  @override
  String get copingStrategiesWillAppear =>
      'Aðferðir þínar munu birtast hér þegar áætlunin hefur verið búin til.';

  @override
  String get strategiesTailoredToTriggers =>
      'Aðferðir sérsniðnar að kveikjum þínum';

  @override
  String get cravingsPeakAndPass => 'Langanir ná hámarki\nog líða hjá';

  @override
  String get rideTheWaveDescription =>
      'Flestar langanir líða hjá innan 15 mínútna. Vertu með okkur í gegnum það.';

  @override
  String get stayWithIt => 'Halda út';

  @override
  String get youMadeIt => 'Þú klaraðir þetta';

  @override
  String get readyWhenYouAre => 'Tilbúinn þegar þú ert tilbúinn';

  @override
  String get rideItAgain => 'Ríða á öldunni aftur';

  @override
  String get start15MinuteTimer => 'Hefja 15 mínútna teljara';

  @override
  String get rideTheWaveCompletedMessage =>
      'Þú reist á öldunni. Það er alvöru styrkur. 💪';

  @override
  String get myProgress => 'Framfarir mínar';

  @override
  String get weekLabel => 'Vika';

  @override
  String get monthLabel => 'Mánuður';

  @override
  String get allLabel => 'Allt';

  @override
  String get daysSoberStatLabel => 'Dagar\nedrú';

  @override
  String get savedStatLabel => 'Sparað';

  @override
  String get avoidedStatLabel => 'Forðast';

  @override
  String get moodTrends => 'Líðan hneigðir';

  @override
  String get cravingsPattern => 'Löngunar munstur';

  @override
  String get unlockLabel => 'Opna';

  @override
  String get unlockFullStats => 'Opna alla tölfræði';

  @override
  String get premiumStatsMessage =>
      'Tölfræði um líðan og langanir eru Premium eiginleikar.';

  @override
  String get healthMilestonesWillAppear => 'Heilsuáfangar þínir birtast hér.';

  @override
  String get healthMilestones => 'Heilsuáfangar';

  @override
  String dayNumber(int day) {
    return 'Dagur $day';
  }

  @override
  String get soberLabel => 'Edrú';

  @override
  String get slipLabel => 'Mistök';

  @override
  String get noDataLabel => 'Engin gögn';

  @override
  String get milestone24Hours => '24 Klukkustundir';

  @override
  String get milestoneOneWeek => 'Eina viku';

  @override
  String get milestoneOneMonth => 'Einn mánuður';

  @override
  String get milestoneThreeMonths => 'Þrír mánuðir';

  @override
  String get milestoneSixMonths => 'Sex mánuðir';

  @override
  String get milestoneOneYear => 'Eitt ár';

  @override
  String milestoneDayCount(int day) {
    return 'Dagur $day Áfangi';
  }

  @override
  String get maybeLaterLabel => 'Kannski síðar';

  @override
  String get cancelLabel => 'Hætta við';
}
