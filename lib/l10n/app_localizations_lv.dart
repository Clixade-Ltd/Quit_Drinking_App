// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get skip => 'Izlaist';

  @override
  String get continueButton => 'Turpināt';

  @override
  String get getStarted => 'Sākt';

  @override
  String get onboardingTitle1 => 'Pārņemiet kontroli pār savu dzīvi';

  @override
  String get onboardingSubtitle1 =>
      'Sekojiet savam ceļam, atzīmējiet katru sasniegumu un kļūstiet veselīgāki ar katru dienu.';

  @override
  String get onboardingTitle2 => 'Jūsu AI atveseļošanās pavadonis';

  @override
  String get onboardingSubtitle2 =>
      'Saņemiet personalizētus ieteikumus, veselīgus ieradumus, motivācijas atgādinājumus un progresa pārskatus, kas pielāgoti jūsu ceļam.';

  @override
  String get goodMorning => 'Labrīt';

  @override
  String get goodAfternoon => 'Labdien';

  @override
  String get goodEvening => 'Labvakar';

  @override
  String get goodNight => 'Ar labu nakti';

  @override
  String get embracingClarity => 'Skaidrāka dzīve — vienu dienu pēc otras.';

  @override
  String get streakLabel => 'SĒRIJA';

  @override
  String get goalLabel => 'Mērķis';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dienas',
      one: '$count diena',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium plāns';

  @override
  String get premiumPlanSubtitle => 'Atbloķējiet pilnu atveseļošanās pieredzi';

  @override
  String get accountAndSupport => 'KONTS UN ATBALSTS';

  @override
  String get privacyPolicy => 'Privātuma politika';

  @override
  String get privacyPolicySubtitle =>
      'Pārvaldiet datu kopīgošanu un konta drošību';

  @override
  String get termsOfService => 'Pakalpojumu sniegšanas noteikumi';

  @override
  String get termsOfServiceSubtitle =>
      'BUJ, sazinieties ar mums un izmantojiet resursus';

  @override
  String get shareApp => 'Kopīgot lietotni';

  @override
  String get shareAppSubtitle => 'Kopīgojiet lietotni ar draugiem';

  @override
  String get resetData => 'Atiestatīt datus';

  @override
  String get resetDataSubtitle => 'Dzēst visu šajā ierīcē saglabāto';

  @override
  String get resetAllDataTitle => 'Atiestatīt visus datus?';

  @override
  String get resetAllDataMessage =>
      'Tiks dzēsts viss šajā ierīcē saglabātais — profils, dienasgrāmatas ieraksti un progress — un šo darbību nevar atsaukt.';

  @override
  String get cancel => 'Atcelt';

  @override
  String get reset => 'Atiestatīt';

  @override
  String get chooseFromGallery => 'Izvēlēties no galerijas';

  @override
  String get takePhoto => 'Uzņemt foto';

  @override
  String get removePhoto => 'Noņemt foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Neizdevās atjaunināt foto: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Neizdevās noņemt foto: $error';
  }

  @override
  String get photoTooLarge =>
      'Šis foto ir pārāk liels pat pēc saspiešanas — lūdzu, izmēģiniet citu.';

  @override
  String get unableToLoadProfile => 'Nevar ielādēt jūsu profilu';

  @override
  String get pleaseTryAgain => 'Lūdzu, mēģiniet vēlreiz.';

  @override
  String get tryAgain => 'Mēģināt vēlreiz';

  @override
  String get profileNotFound => 'Profils nav atrasts';

  @override
  String get refresh => 'Atsvaidzināt';

  @override
  String get noProfileDataFound => 'Šajā ierīcē vēl nav atrasti profila dati.';

  @override
  String couldNotResetData(String error) {
    return 'Neizdevās atiestatīt datus: $error';
  }

  @override
  String get navHome => 'Sākums';

  @override
  String get navStats => 'Statistika';

  @override
  String get navJournal => 'Dienasgrāmata';

  @override
  String get navBadges => 'Nozīmītes';

  @override
  String get navProfile => 'Profils';

  @override
  String featureComingSoon(String feature) {
    return '$feature drīzumā būs pieejama.';
  }

  @override
  String get appWordmark => 'LABSAJŪTA';

  @override
  String get appTitle => 'Atmest dzeršanu';

  @override
  String get splashSubtitle => 'Speriet pirmo soli pretī\nbezalkohola dzīvei';

  @override
  String get preparingJourney => 'Sagatavojam jūsu\nceļu';

  @override
  String get taskMorningMeditation => 'Rīta meditācija (10 min)';

  @override
  String get taskReadChapter =>
      'Izlasiet 4. nodaļu grāmatā \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Vakara pateicības dienasgrāmata';

  @override
  String get close => 'Aizvērt';

  @override
  String get youAreDoingGreat => 'Jums lieliski veicas!';

  @override
  String get shareMilestone => 'Kopīgot sasniegumu';

  @override
  String shareMilestoneMessage(int days) {
    return 'Es esmu savas atveseļošanās ceļa $days. dienā! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Mans atveseļošanās sasniegums';

  @override
  String get weeklyReportReadyTitle => 'Jūsu nedēļas pārskats ir gatavs';

  @override
  String get weeklyReportReadySubtitle =>
      'Pieskarieties, lai redzētu, kā jums veicās šonedēļ';

  @override
  String get howAreYouFeeling => 'Kā jūs jūtaties?';

  @override
  String get moodTough => 'Grūti';

  @override
  String get moodOkay => 'Labi';

  @override
  String get moodGood => 'Labs';

  @override
  String get moneySaved => 'Ietaupītā nauda';

  @override
  String get caloriesSaved => 'Ietaupītās kalorijas';

  @override
  String get healthScore => 'Veselības rādītājs';

  @override
  String get drinksAvoided => 'No dzērieniem izvairīts';

  @override
  String get estimated => 'Aptuveni';

  @override
  String get aiGenerated => 'Ģenerēts ar AI';

  @override
  String get daysCapsLabel => 'DIENAS';

  @override
  String get todaysMotivation => 'Šodienas motivācija';

  @override
  String get defaultMotivationQuote =>
      'Jūs veiksmīgi esat saglabājuši savu apņemšanos. Turpiniet pozitīvo pārmaiņu vilni.';

  @override
  String get talkToCoach => 'Sarunāties ar kouču';

  @override
  String get havingACraving => 'Man ir vēlme dzert';

  @override
  String get unlockWeeklyReportsTitle => 'Atbloķēt nedēļas pārskatus';

  @override
  String get unlockWeeklyReportsMessage =>
      'Katru nedēļu skatiet savas dienas bez alkohola, noskaņojuma tendences un personalizētu AI atgriezenisko saiti. Lai atbloķētu, jauniniet uz Premium.';

  @override
  String get maybeLater => 'Varbūt vēlāk';

  @override
  String get upgrade => 'Jaunināt';

  @override
  String get weeklyReportTitle => 'Nedēļas pārskats';

  @override
  String get weeklyReportsPremiumTitle =>
      'Nedēļas pārskati ir Premium funkcija';

  @override
  String get weeklyReportsPremiumMessage =>
      'Katru nedēļu skatiet savas dienas bez alkohola, noskaņojuma tendences, vēlmes un personalizētu AI atgriezenisko saiti.';

  @override
  String get upgradeToPremium => 'Jaunināt uz Premium';

  @override
  String get couldNotGenerateReport =>
      'Šobrīd neizdevās izveidot jūsu pārskatu.';

  @override
  String get tryAgainLower => 'Mēģināt vēlreiz';

  @override
  String get statSoberDays => 'Dienas bez alkohola';

  @override
  String get statAvgMood => 'Vidējais noskaņojums';

  @override
  String get statCravings => 'Vēlmes';

  @override
  String get statMoneySaved => 'Ietaupītā nauda';

  @override
  String get coachFeedback => 'Kouča atsauksmes';

  @override
  String get journalInsights => 'Dienasgrāmatas atziņas';

  @override
  String get next => 'Tālāk';

  @override
  String get question1Title => 'Kāds ir jūsu mērķis?';

  @override
  String get question1Subtitle =>
      'Izvēlieties mērķi, kas jums ir\nvissvarīgākais';

  @override
  String get goalQuitCompletely => 'Pilnībā atmest';

  @override
  String get goalReduceDrinking => 'Samazināt dzeršanu';

  @override
  String get goalTakeABreak => 'Paņemt pārtraukumu';

  @override
  String get goalBuildHealthierHabits => 'Veidot veselīgākus ieradumus';

  @override
  String get question3Title => 'Pastāstiet par savu\nikdienas rutīnu';

  @override
  String get drinksPerWeek => 'Dzērieni nedēļā';

  @override
  String get moneySpentPerWeek => 'Nedēļā iztērētā nauda';

  @override
  String get drinkingLevel => 'Dzeršanas līmenis';

  @override
  String get triggersLabel => 'Izraisītāji';

  @override
  String get levelSocial => 'Sociāla';

  @override
  String get levelRegular => 'Regulāra';

  @override
  String get levelHeavy => 'Pastiprināta';

  @override
  String get levelDependent => 'Atkarīga';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Vientulība';

  @override
  String get triggerHabit => 'Ieradums';

  @override
  String get triggerSadness => 'Skumjas';

  @override
  String get triggerAnger => 'Dusmas';

  @override
  String get triggerBoredom => 'Garlaicība';

  @override
  String get triggerSocialPressure => 'Sociālais spiediens';

  @override
  String get triggerCelebration => 'Svinības';

  @override
  String get triggerSleepProblems => 'Miega problēmas';

  @override
  String get triggerWorkPressure => 'Darba spiediens';

  @override
  String get question4Title => 'Kāpēc vēlaties mainīties?';

  @override
  String get question4Subtitle => 'Jūsu iemesls palīdzēs saglabāt motivāciju.';

  @override
  String get reasonImproveHealth => 'Uzlabot savu veselību';

  @override
  String get reasonSaveMoney => 'Ietaupīt naudu';

  @override
  String get reasonFamily => 'Ģimene';

  @override
  String get reasonBetterSleep => 'Labāks miegs';

  @override
  String get reasonMentalClarity => 'Garīga skaidrība';

  @override
  String get reasonFitness => 'Fiziskā sagatavotība';

  @override
  String get reasonSelfRespect => 'Pašcieņa';

  @override
  String get reasonCareer => 'Karjera';

  @override
  String get milestoneUnlockedLabel => 'SASNIEGUMS ATBLOĶĒTS';

  @override
  String incredibleNamePrefix(String name) {
    return 'Neticami, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'Ietaupīti $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count reizes izvairījāties';
  }

  @override
  String get shareMyMilestone => 'Kopīgot manu sasniegumu';

  @override
  String get milestoneImageShareError =>
      'Neizdevās izveidot sasnieguma attēlu. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get dailyCheckInTitle => 'Dienas pārbaude';

  @override
  String get howAreYouFeelingToday => 'Kā jūs šodien jūtaties?';

  @override
  String get honestAnswerHelp =>
      'Jūsu godīgā atbilde palīdz mums jūs labāk atbalstīt';

  @override
  String get didYouDrinkToday => 'Vai šodien dzērāt?';

  @override
  String get noLabel => 'Nē';

  @override
  String get yesLabel => 'Jā';

  @override
  String get cravingLevelNow => 'Cik spēcīga ir vēlme dzert šobrīd?';

  @override
  String get anythingOnMind => 'Vai jums kaut kas ir prātā?';

  @override
  String get optionalLabel => '(neobligāti)';

  @override
  String get dailyNoteHint =>
      'Rakstiet par savu dienu, izraisītājiem, panākumiem...';

  @override
  String get alreadyCheckedInToday => 'Šodien jau veicāt pārbaudi';

  @override
  String get saveCheckIn => 'Saglabāt pārbaudi';

  @override
  String get checkInsHelpTrack =>
      'Pārbaudes palīdz laika gaitā sekot jūsu progresam';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Jūs jau esat pabeidzis šodienas pārbaudi.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Vispirms, lūdzu, atbildiet uz abiem iepriekš minētajiem jautājumiem';

  @override
  String get checkInSaved => 'Pārbaude saglabāta';

  @override
  String get cravingNone => 'Nav';

  @override
  String get cravingLow => 'Zema';

  @override
  String get cravingMedium => 'Vidēja';

  @override
  String get cravingStrong => 'Spēcīga';

  @override
  String get moodBad => 'Slikts';

  @override
  String get moodLow => 'Zems';

  @override
  String get moodGreat => 'Lielisks';

  @override
  String get sosSupportTitle => 'SOS atbalsts';

  @override
  String notAloneMessage(String name) {
    return 'Jūs neesat viens, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Vēlmes pāriet. Izvēlieties kādu no tālāk redzamajām iespējām, lai palīdzētu sev pārvarēt šo brīdi.';

  @override
  String get breathingExercise => 'Elpošanas vingrinājums';

  @override
  String get breathingExerciseSubtitle => 'Vadīta 4-7-8 tehnika, 2 minūtes';

  @override
  String get rideTheWave => 'Pārvariet vilni';

  @override
  String get rideTheWaveSubtitle =>
      '15 minūšu taimeris — vēlmes vienmēr pāriet';

  @override
  String get copingTips => 'Pārvarēšanas padomi';

  @override
  String get copingTipsSubtitle =>
      'Personalizētas stratēģijas jūsu izraisītājiem';

  @override
  String get talkToAiCoach => 'Sarunāties ar AI kouču';

  @override
  String get talkToAiCoachSubtitle =>
      'Sazinieties ar savu atveseļošanās pavadoni';

  @override
  String get callSomeone => 'Piezvanīt kādam';

  @override
  String get callSomeoneSubtitle => 'Sazinieties ar uzticamu personu';

  @override
  String get contactsPermissionNeeded =>
      'Lai zvanītu kontaktpersonai, nepieciešama piekļuve kontaktiem.';

  @override
  String get beatenCravingsPrefix => 'Jūs jau esat pārvarējis vēlmi ';

  @override
  String beatenCravingsCount(int count) {
    return '$count reizes';
  }

  @override
  String get beatenCravingsSuffix => '. Jūs varat to izdarīt vēlreiz.';

  @override
  String get tellUsAboutYourself => 'Pastāstiet par sevi';

  @override
  String get detailsSubtitle =>
      'Šī informācija palīdz personalizēt jūsu atveseļošanās ceļu un sniegt precīzas atziņas.';

  @override
  String get nameLabel => 'Vārds';

  @override
  String get nameHint => 'piem., Alex Rivers';

  @override
  String get ageLabel => 'Vecums';

  @override
  String get ageHint => 'piem., 32';

  @override
  String get sexAssignedAtBirth => 'Dzimums, kas noteikts piedzimstot';

  @override
  String get sexFemale => 'Sieviete';

  @override
  String get sexMale => 'Vīrietis';

  @override
  String get heightLabel => 'Augums';

  @override
  String get weightLabel => 'Svars';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Sasniegts dienas limits';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Šodien esat izmantojis visas $limit bezmaksas ziņas. Jauniniet uz Premium, lai neierobežoti tērzētu ar kouču.';
  }

  @override
  String get coachConnectError =>
      'Šobrīd neizdevās izveidot savienojumu. Lūdzu, pēc brīža mēģiniet vēlreiz.';

  @override
  String get clearConversationTitle => 'Notīrīt sarunu?';

  @override
  String get clearConversationMessage =>
      'Jūsu sarunas ar kouču vēsture tiks neatgriezeniski noņemta.';

  @override
  String get clearLabel => 'Notīrīt';

  @override
  String get recoveryCoachTitle => 'Atveseļošanās koučs';

  @override
  String get onlineLabel => 'Tiešsaistē';

  @override
  String get clearConversationMenuItem => 'Notīrīt sarunu';

  @override
  String chatGreeting(String name) {
    return 'Sveiki, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Jūs esat savas atveseļošanās ceļa $days. dienā. Esmu šeit, kad vien vēlaties parunāt.';
  }

  @override
  String get quickPromptsLabel => 'ĀTRIE JAUTĀJUMI';

  @override
  String get promptCravingLabel => 'Man ir vēlme dzert';

  @override
  String get promptCravingSubtitle => 'Ātri atgūstiet līdzsvaru';

  @override
  String get promptMotivationLabel => 'Nepieciešama motivācija';

  @override
  String get promptMotivationSubtitle => 'Atbalsts grūtā brīdī';

  @override
  String get promptSocialLabel => 'Sociāla situācija';

  @override
  String get promptSocialSubtitle => 'Kā rīkoties pasākumā';

  @override
  String get promptSlippedLabel => 'Es paslīdēju';

  @override
  String get promptSlippedSubtitle => 'Bez nosodījuma, tikai atbalsts';

  @override
  String get typeMessageHint => 'Ierakstiet ziņu...';

  @override
  String get editProfileTitle => 'Rediģēt profilu';

  @override
  String couldNotSaveProfile(String error) {
    return 'Neizdevās saglabāt profilu: $error';
  }

  @override
  String get heightCmLabel => 'Augums (cm)';

  @override
  String get weightKgLabel => 'Svars (kg)';

  @override
  String get saveChangesLabel => 'Saglabāt izmaiņas';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Uzlabotas atziņas un analītika';

  @override
  String get featureUnlimitedJournal => 'Neierobežoti dienasgrāmatas ieraksti';

  @override
  String get featureUnlimitedChat => 'Neierobežota tērzēšana ar AI kouču';

  @override
  String get featureCommunityGroups => 'Ekskluzīvas kopienas grupas';

  @override
  String get featurePrioritySupport => 'Prioritārs ekspertu atbalsts';

  @override
  String get featureThemePacks => 'Pielāgoti motīvu komplekti';

  @override
  String get featureDataExport => 'Datu eksportēšana';

  @override
  String get featureAdFree => 'Pieredze bez reklāmām';

  @override
  String get premiumMemberTitle => 'Jūs esat Premium dalībnieks';

  @override
  String get unlockFullRecoveryTitle =>
      'Atbloķējiet pilnu atveseļošanās\npieredzi';

  @override
  String get premiumMemberSubtitle =>
      'Paldies, ka atbalstāt savu atveseļošanās ceļu — visas tālāk norādītās Premium funkcijas ir atbloķētas.';

  @override
  String get premiumJoinSubtitle =>
      'Pievienojieties tūkstošiem cilvēku kopienai,\nkas paātrina savu atveseļošanās ceļu ar mūsu\nPremium rīkiem un personalizētu atbalstu.';

  @override
  String get monthlyPlanLabel => 'Mēneša';

  @override
  String get perMonthSuffix => '/mēn.';

  @override
  String get cancelAnytimeLabel => 'Atcelt jebkurā laikā';

  @override
  String get yearlyPlanLabel => 'Gada';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Ikgadējais maksājums $amount';
  }

  @override
  String get bestValueLabel => 'Labākā vērtība';

  @override
  String get alreadyPremiumLabel => 'Jums jau ir Premium ✓';

  @override
  String get startPremiumLabel => 'Sākt Premium';

  @override
  String get manageSubscriptionLabel =>
      'Pārvaldiet vai atceliet abonementu ierīces abonementu iestatījumos.';

  @override
  String get noCommitmentLabel => 'Bez saistībām. Atceliet jebkurā laikā.';

  @override
  String get continueFreePlanLabel => 'Turpināt ar bezmaksas plānu';

  @override
  String get backToHomeLabel => 'Atpakaļ uz sākumu';

  @override
  String get cancelPremiumLabel => 'Atcelt Premium';

  @override
  String get cancelPremiumTitle => 'Atcelt Premium?';

  @override
  String get cancelPremiumMessage =>
      'Jūs zaudēsiet piekļuvi neierobežotiem dienasgrāmatas ierakstiem, neierobežotai tērzēšanai ar kouču, statistikas atziņām un nedēļas pārskatiem. Jebkurā laikā varat atkārtoti abonēt.';

  @override
  String get keepPremiumLabel => 'Saglabāt Premium';

  @override
  String get nowPremiumMessage =>
      'Tagad jums ir Premium! Izbaudiet pilnu atveseļošanās pieredzi.';

  @override
  String get premiumCancelledMessage =>
      'Premium atcelts. Jūs atgriezāties bezmaksas plānā.';

  @override
  String get termsOfUseLabel => 'Lietošanas noteikumi';

  @override
  String get navHomeLabel => 'Sākums';

  @override
  String get navStatsLabel => 'Statistika';

  @override
  String get navJournalLabel => 'Dienasgrāmata';

  @override
  String get navBadgesLabel => 'Nozīmītes';

  @override
  String get navProfileLabel => 'Profils';

  @override
  String get recoveryGoalsTitle => 'Atveseļošanās mērķi';

  @override
  String get drinksPerWeekLabel => 'Dzērieni nedēļā';

  @override
  String get quitReasonsLabel => 'Atmešanas iemesli';

  @override
  String get quitReasonsHelperText => 'Atdaliet vairākus iemeslus ar komatu.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Neizdevās saglabāt atveseļošanās mērķus: $error';
  }

  @override
  String get goalHint => 'piem., Pilnīga atturēšanās';

  @override
  String get drinksPerWeekHint => 'piem., 12';

  @override
  String get quitReasonsHint => 'piem., Veselība, ģimene, nauda';

  @override
  String get todaysPrompt => 'Šodienas jautājums';

  @override
  String get defaultJournalPrompt => 'Kas jums šodien ir prātā?';

  @override
  String get aiJournalInsights => 'AI dienasgrāmatas atziņas';

  @override
  String get unlockJournalInsightsMessage =>
      'Atklājiet nedēļas modeļus, noskaņojuma tendences un personalizētas atziņas no saviem dienasgrāmatas ierakstiem.';

  @override
  String get notEnoughJournalData =>
      'Vēl nav pietiekami daudz datu — šonedēļ uzrakstiet dažus ierakstus un pārbaudiet vēlreiz.';

  @override
  String get openEntry => 'Atvērt';

  @override
  String get editEntry => 'Rediģēt';

  @override
  String get deleteEntry => 'Dzēst';

  @override
  String get searchJournalEntries => 'Meklēt ierakstos...';

  @override
  String get writeNewEntry => 'Rakstīt jaunu ierakstu';

  @override
  String get recentEntries => 'Jaunākie ieraksti';

  @override
  String get noJournalEntriesYet =>
      'Vēl nav dienasgrāmatas ierakstu — augstāk uzrakstiet savu pirmo pārdomu.';

  @override
  String get noEntriesMatchFilters =>
      'Nevienā ierakstā nav atrasta atbilstība filtriem.';

  @override
  String get weeklyJournalLimitReached => 'Sasniegts nedēļas limits';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Šonedēļ esat izmantojis visus $limit bezmaksas dienasgrāmatas ierakstus. Jauniniet uz Premium neierobežotiem ierakstiem.';
  }

  @override
  String get newEntry => 'Jauns ieraksts';

  @override
  String get writeYourThoughts => 'Uzrakstiet savas domas';

  @override
  String get saveEntry => 'Saglabāt ierakstu';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Šonedēļ atlikuši $remaining no $limit bezmaksas ierakstiem';
  }

  @override
  String get deleteEntryQuestion => 'Dzēst ierakstu?';

  @override
  String get deleteEntryConfirmation =>
      'Šis ieraksts tiks neatgriezeniski dzēsts. To nevar atsaukt.';

  @override
  String get journalEntryNotFound => 'Ieraksts nav atrasts';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Šis dienasgrāmatas ieraksts, iespējams, ir dzēsts.';

  @override
  String get goBack => 'Atgriezties';

  @override
  String get journalEntryTitle => 'Dienasgrāmatas ieraksts';

  @override
  String get moodStruggling => 'Grūti';

  @override
  String get moodUnwell => 'Slikti';

  @override
  String get moodNeutral => 'Neitrāli';

  @override
  String get whatHappenedToday => 'Kas šodien notika?';

  @override
  String get trigger => 'Izraisītājs';

  @override
  String get whatHelped => 'Kas palīdzēja';

  @override
  String get whatIllTryNextTime => 'Ko izmēģināšu nākamreiz';

  @override
  String get journalPrivacyMessage =>
      'Jūsu pārdomas ir privātas un tiek saglabātas jūsu dienasgrāmatā.';

  @override
  String get unlocked => 'Atbloķēts';

  @override
  String daysLeft(int count) {
    return 'Atlikušas $count dienas';
  }

  @override
  String daysCount(int count) {
    return '$count dienas';
  }

  @override
  String get firstReflection => 'Pirmās\npārdomas';

  @override
  String get oneJournalEntry => '1 dienasgrāmatas ieraksts';

  @override
  String get openBook => 'Atvērt grāmatu';

  @override
  String get tenJournalEntries => '10 dienasgrāmatas ieraksti';

  @override
  String get dedicatedWriter => 'Uzticīgs\nrakstītājs';

  @override
  String get thirtyJournalEntries => '30 dienasgrāmatas ieraksti';

  @override
  String get firstConversation => 'Pirmā\nsaruna';

  @override
  String get oneAiCoachChat => '1 AI kouča saruna';

  @override
  String get keepTalking => 'Turpināt sarunu';

  @override
  String get fiveConversations => '5 sarunas';

  @override
  String get coachCompanion => 'Kouča\npavadonis';

  @override
  String get twentyConversations => '20 sarunas';

  @override
  String get checkInHabit => 'Pārbaudes\nieradums';

  @override
  String get sevenCheckIns => '7 pārbaudes';

  @override
  String get consistencyPro => 'Konsekvences\nmeistars';

  @override
  String get thirtyCheckIns => '30 pārbaudes';

  @override
  String get dedicatedJourney => 'Mērķtiecīgs\nceļš';

  @override
  String get hundredCheckIns => '100 pārbaudes';

  @override
  String get goalGetter => 'Mērķu sasniedzējs';

  @override
  String get threeGoalsCompleted => '3 mērķi pabeigti';

  @override
  String get goalAchiever => 'Mērķu\nsasniedzējs';

  @override
  String get tenGoalsCompleted => '10 mērķi pabeigti';

  @override
  String get firstSavings => 'Pirmie\nietaupījumi';

  @override
  String get fiveHundredSaved => 'Ietaupīti \$500';

  @override
  String get smartSaver => 'Gudrs taupītājs';

  @override
  String get oneThousandSaved => 'Ietaupīti \$1,000';

  @override
  String get bigSaver => 'Lielais taupītājs';

  @override
  String get fiveThousandSaved => 'Ietaupīti \$5,000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current no \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current no $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Turpiniet — jūsu pirmais sasniegums jūs gaida!';

  @override
  String get badgesAndMilestones => 'Nozīmītes un sasniegumi';

  @override
  String get yourMilestoneJourney => 'Jūsu sasniegumu ceļš';

  @override
  String milestonesAchieved(int count) {
    return 'Sasniegti $count sasniegumi.\nPieskarieties, lai skatītu';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Jūsu ceļā ir atbloķēti $unlocked no $total sasniegumiem.';
  }

  @override
  String get remaining => 'Atlikuši';

  @override
  String get complete => 'Pabeigts';

  @override
  String get nextMilestone => 'Nākamais sasniegums';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% paveikts';
  }

  @override
  String get sobrietyMilestones => 'Atturības sasniegumi';

  @override
  String get journeyBadges => 'Ceļa nozīmītes';

  @override
  String get bronze => 'BRONZA';

  @override
  String get silver => 'SUDRABS';

  @override
  String get gold => 'ZELTS';

  @override
  String get platinum => 'PLATĪNS';

  @override
  String get diamond => 'DIMANTS';

  @override
  String get analyzingYourJourney => 'Analizējam jūsu ceļu...';

  @override
  String get aiCreatingSanctuary =>
      'Mūsu AI veido jums personalizētu atveseļošanās telpu.';

  @override
  String get understandingHabits => 'Izprotam ieradumus...';

  @override
  String get calculatingBaseline => 'Aprēķinām jūsu sākotnējos rādītājus...';

  @override
  String get personalizingPlan => 'Personalizējam jūsu plānu...';

  @override
  String get finalizingSanctuary => 'Pabeidzam jūsu atveseļošanās telpu...';

  @override
  String get creatingYourPlan => 'Veidojam jūsu plānu...';

  @override
  String get personalizedPlanError =>
      'Neizdevās izveidot jūsu personalizēto plānu. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get retry => 'Mēģināt vēlreiz';

  @override
  String get breathInhale => 'IEELPA';

  @override
  String get breathHold => 'AIZTURĒT';

  @override
  String get breathExhale => 'IZELPA';

  @override
  String get breathDone => 'GATAVS';

  @override
  String get breathGreatJob => 'Lielisks darbs!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesijas šodien',
      one: '$count sesija šodien',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Beigt vingrinājumu';

  @override
  String get done => 'Gatavs';

  @override
  String get noCopingTipsYet => 'Vēl nav pārvarēšanas padomu';

  @override
  String get copingStrategiesWillAppear =>
      'Jūsu personalizētās pārvarēšanas stratēģijas parādīsies šeit, kad jūsu atveseļošanās plāns būs izveidots.';

  @override
  String get strategiesTailoredToTriggers =>
      'Stratēģijas, kas pielāgotas jūsu izraisītājiem';

  @override
  String get cravingsPeakAndPass => 'Vēlmes sasniedz maksimumu\nun pāriet';

  @override
  String get rideTheWaveDescription =>
      'Lielākā daļa vēlmju pāriet 15 minūšu laikā. Jums nav tām jāļaujas — vienkārši pārvariet šo brīdi kopā ar mums.';

  @override
  String get stayWithIt => 'turpiniet';

  @override
  String get youMadeIt => 'jums izdevās';

  @override
  String get readyWhenYouAre => 'kad esat gatavs';

  @override
  String get rideItAgain => 'Pārvarēt vēlreiz';

  @override
  String get start15MinuteTimer => 'Sākt 15 minūšu taimeri';

  @override
  String get rideTheWaveCompletedMessage =>
      'Jūs pārvarējāt šo vilni. Tā ir īsta izturība. 💪';

  @override
  String get myProgress => 'Mans progress';

  @override
  String get weekLabel => 'Nedēļa';

  @override
  String get monthLabel => 'Mēnesis';

  @override
  String get allLabel => 'Viss';

  @override
  String get daysSoberStatLabel => 'Dienas\nbez alkohola';

  @override
  String get savedStatLabel => 'Ietaupīts';

  @override
  String get avoidedStatLabel => 'Izvairīts';

  @override
  String get moodTrends => 'Noskaņojuma tendences';

  @override
  String get cravingsPattern => 'Vēlmju modelis';

  @override
  String get unlockLabel => 'Atbloķēt';

  @override
  String get unlockFullStats => 'Atbloķēt pilnu statistiku';

  @override
  String get premiumStatsMessage =>
      'Noskaņojuma tendences un vēlmju modeļi ir Premium funkcijas. Jauniniet, lai skatītu pilnu statistiku.';

  @override
  String get healthMilestonesWillAppear =>
      'Jūsu veselības sasniegumi parādīsies šeit.';

  @override
  String get healthMilestones => 'Veselības sasniegumi';

  @override
  String dayNumber(int day) {
    return '$day. diena';
  }

  @override
  String get soberLabel => 'Bez alkohola';

  @override
  String get slipLabel => 'Paslīdēšana';

  @override
  String get noDataLabel => 'Nav datu';

  @override
  String get milestone24Hours => '24 stundas';

  @override
  String get milestoneOneWeek => 'Viena nedēļa';

  @override
  String get milestoneOneMonth => 'Viens mēnesis';

  @override
  String get milestoneThreeMonths => 'Trīs mēneši';

  @override
  String get milestoneSixMonths => 'Seši mēneši';

  @override
  String get milestoneOneYear => 'Viens gads';

  @override
  String milestoneDayCount(int day) {
    return '$day. dienas sasniegums';
  }

  @override
  String get maybeLaterLabel => 'Varbūt vēlāk';

  @override
  String get cancelLabel => 'Atcelt';
}
