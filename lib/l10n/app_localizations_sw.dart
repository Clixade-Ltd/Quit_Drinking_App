// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get skip => 'Ruka';

  @override
  String get continueButton => 'Endelea';

  @override
  String get getStarted => 'Anza';

  @override
  String get onboardingTitle1 => 'Dhibiti Maisha Yako';

  @override
  String get onboardingSubtitle1 =>
      'Fuatilia safari yako, sherehekea kila mafanikio, na kuwa na afya bora siku baada ya siku.';

  @override
  String get onboardingTitle2 => 'Mshirika Wako wa AI wa Kupona';

  @override
  String get onboardingSubtitle2 =>
      'Pata mwongozo uliobinafsishwa, tabia bora za afya, vikumbusho vya motisha, na ripoti za maendeleo zilizoundwa kulingana na safari yako.';

  @override
  String get goodMorning => 'Habari za asubuhi';

  @override
  String get goodAfternoon => 'Habari za mchana';

  @override
  String get goodEvening => 'Habari za jioni';

  @override
  String get goodNight => 'Usiku mwema';

  @override
  String get embracingClarity =>
      'Tukumbatie uwazi, siku moja baada ya nyingine.';

  @override
  String get streakLabel => 'MWENDELEZO';

  @override
  String get goalLabel => 'Lengo';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Siku $count',
      one: 'Siku $count',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Mpango wa Premium';

  @override
  String get premiumPlanSubtitle => 'Fungua uzoefu wako kamili wa kupona';

  @override
  String get accountAndSupport => 'AKAUNTI NA MSAADA';

  @override
  String get privacyPolicy => 'Sera ya Faragha';

  @override
  String get privacyPolicySubtitle =>
      'Dhibiti kushiriki data na usalama wa akaunti';

  @override
  String get termsOfService => 'Masharti ya Huduma';

  @override
  String get termsOfServiceSubtitle =>
      'Maswali yanayoulizwa mara kwa mara, wasiliana nasi na rasilimali';

  @override
  String get shareApp => 'Shiriki Programu';

  @override
  String get shareAppSubtitle => 'Shiriki programu na marafiki zako';

  @override
  String get resetData => 'Weka Upya Data';

  @override
  String get resetDataSubtitle =>
      'Futa kila kitu kilichohifadhiwa kwenye kifaa hiki';

  @override
  String get resetAllDataTitle => 'Uweke upya data yote?';

  @override
  String get resetAllDataMessage =>
      'Hii itafuta kila kitu kilichohifadhiwa kwenye kifaa hiki — wasifu, maingizo ya jarida na maendeleo — na haiwezi kutenduliwa.';

  @override
  String get cancel => 'Ghairi';

  @override
  String get reset => 'Weka Upya';

  @override
  String get chooseFromGallery => 'Chagua kutoka kwenye Galari';

  @override
  String get takePhoto => 'Piga Picha';

  @override
  String get removePhoto => 'Ondoa Picha';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Picha haikuweza kusasishwa: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Picha haikuweza kuondolewa: $error';
  }

  @override
  String get photoTooLarge =>
      'Picha hiyo ni kubwa sana hata baada ya kubanwa — tafadhali jaribu nyingine.';

  @override
  String get unableToLoadProfile => 'Imeshindikana kupakia wasifu wako';

  @override
  String get pleaseTryAgain => 'Tafadhali jaribu tena.';

  @override
  String get tryAgain => 'Jaribu Tena';

  @override
  String get profileNotFound => 'Wasifu haukupatikana';

  @override
  String get refresh => 'Onyesha Upya';

  @override
  String get noProfileDataFound =>
      'Hakuna data ya wasifu iliyopatikana kwenye kifaa hiki bado.';

  @override
  String couldNotResetData(String error) {
    return 'Data haikuweza kuwekwa upya: $error';
  }

  @override
  String get navHome => 'Nyumbani';

  @override
  String get navStats => 'Takwimu';

  @override
  String get navJournal => 'Jarida';

  @override
  String get navBadges => 'Beji';

  @override
  String get navProfile => 'Wasifu';

  @override
  String featureComingSoon(String feature) {
    return '$feature itapatikana hivi karibuni.';
  }

  @override
  String get appWordmark => 'USTAWI';

  @override
  String get appTitle => 'Acha Kunywa';

  @override
  String get splashSubtitle =>
      'Chukua hatua ya kwanza kuelekea\nmaisha yasiyo na pombe';

  @override
  String get preparingJourney => 'Tunaandaa\nsafari yako';

  @override
  String get taskMorningMeditation => 'Kutafakari Asubuhi (dakika 10)';

  @override
  String get taskReadChapter => 'Soma Sura ya 4 ya \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Jarida la Shukrani la Jioni';

  @override
  String get close => 'Funga';

  @override
  String get youAreDoingGreat => 'Unaendelea vizuri sana!';

  @override
  String get shareMilestone => 'Shiriki Hatua Muhimu';

  @override
  String shareMilestoneMessage(int days) {
    return 'Niko siku ya $days ya safari yangu ya kupona! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Hatua yangu muhimu ya kupona';

  @override
  String get weeklyReportReadyTitle => 'Ripoti yako ya wiki iko tayari';

  @override
  String get weeklyReportReadySubtitle =>
      'Gusa kuona jinsi wiki yako ilivyokwenda';

  @override
  String get howAreYouFeeling => 'Unajisikiaje?';

  @override
  String get moodTough => 'Ngumu';

  @override
  String get moodOkay => 'Sawa';

  @override
  String get moodGood => 'Vizuri';

  @override
  String get moneySaved => 'Pesa Zilizookolewa';

  @override
  String get caloriesSaved => 'Kalori Zilizoepukwa';

  @override
  String get healthScore => 'Alama ya Afya';

  @override
  String get drinksAvoided => 'Vinywaji Vilivyoepukwa';

  @override
  String get estimated => 'Makadirio';

  @override
  String get aiGenerated => 'Imetengenezwa na AI';

  @override
  String get daysCapsLabel => 'SIKU';

  @override
  String get todaysMotivation => 'Motisha ya Leo';

  @override
  String get defaultMotivationQuote =>
      'Umefanikiwa kudumisha ahadi yako. Endelea na wimbi la mabadiliko chanya.';

  @override
  String get talkToCoach => 'Zungumza na kocha';

  @override
  String get havingACraving => 'Nina Tamaa ya Kunywa';

  @override
  String get unlockWeeklyReportsTitle => 'Fungua Ripoti za Wiki';

  @override
  String get unlockWeeklyReportsMessage =>
      'Angalia siku zako bila pombe, mienendo ya hisia na maoni ya AI yaliyobinafsishwa kila wiki. Boresha hadi Premium ili kufungua.';

  @override
  String get maybeLater => 'Labda baadaye';

  @override
  String get upgrade => 'Boresha';

  @override
  String get weeklyReportTitle => 'Ripoti ya Wiki';

  @override
  String get weeklyReportsPremiumTitle =>
      'Ripoti za wiki ni kipengele cha Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Angalia siku zako bila pombe, mienendo ya hisia, tamaa za kunywa na maoni ya AI yaliyobinafsishwa kila wiki.';

  @override
  String get upgradeToPremium => 'Boresha hadi Premium';

  @override
  String get couldNotGenerateReport =>
      'Ripoti yako haikuweza kutengenezwa kwa sasa.';

  @override
  String get tryAgainLower => 'Jaribu tena';

  @override
  String get statSoberDays => 'Siku bila pombe';

  @override
  String get statAvgMood => 'Wastani wa hisia';

  @override
  String get statCravings => 'Tamaa';

  @override
  String get statMoneySaved => 'Pesa zilizookolewa';

  @override
  String get coachFeedback => 'Maoni ya kocha';

  @override
  String get journalInsights => 'Maarifa ya jarida';

  @override
  String get next => 'Ifuatayo';

  @override
  String get question1Title => 'Lengo lako ni nini';

  @override
  String get question1Subtitle => 'Chagua lengo ambalo ni muhimu\nzaidi kwako';

  @override
  String get goalQuitCompletely => 'Acha kabisa';

  @override
  String get goalReduceDrinking => 'Punguza unywaji';

  @override
  String get goalTakeABreak => 'Pumzika';

  @override
  String get goalBuildHealthierHabits => 'Jenga tabia bora za afya';

  @override
  String get question3Title => 'Tuambie kuhusu\nratiba yako';

  @override
  String get drinksPerWeek => 'Vinywaji kwa wiki';

  @override
  String get moneySpentPerWeek => 'Pesa zinazotumika kwa wiki';

  @override
  String get drinkingLevel => 'Kiwango cha unywaji';

  @override
  String get triggersLabel => 'Vichochezi';

  @override
  String get levelSocial => 'Kijamii';

  @override
  String get levelRegular => 'Kawaida';

  @override
  String get levelHeavy => 'Mwingi';

  @override
  String get levelDependent => 'Mtegemezi';

  @override
  String get triggerStress => 'Msongo wa mawazo';

  @override
  String get triggerLoneliness => 'Upweke';

  @override
  String get triggerHabit => 'Mazoea';

  @override
  String get triggerSadness => 'Huzuni';

  @override
  String get triggerAnger => 'Hasira';

  @override
  String get triggerBoredom => 'Uchovu';

  @override
  String get triggerSocialPressure => 'Shinikizo la kijamii';

  @override
  String get triggerCelebration => 'Sherehe';

  @override
  String get triggerSleepProblems => 'Matatizo ya usingizi';

  @override
  String get triggerWorkPressure => 'Shinikizo la kazi';

  @override
  String get question4Title => 'Kwa nini unataka kubadilika?';

  @override
  String get question4Subtitle => 'Sababu yako itakusaidia kubaki na motisha.';

  @override
  String get reasonImproveHealth => 'Boresha Afya Yangu';

  @override
  String get reasonSaveMoney => 'Okoa Pesa';

  @override
  String get reasonFamily => 'Familia';

  @override
  String get reasonBetterSleep => 'Usingizi Bora';

  @override
  String get reasonMentalClarity => 'Uwazi wa Akili';

  @override
  String get reasonFitness => 'Usawa wa Mwili';

  @override
  String get reasonSelfRespect => 'Kujiheshimu';

  @override
  String get reasonCareer => 'Kazi';

  @override
  String get milestoneUnlockedLabel => 'HATUA MUHIMU IMEFUNGULIWA';

  @override
  String incredibleNamePrefix(String name) {
    return 'Ajabu, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount imeokolewa';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count vimeepukwa';
  }

  @override
  String get shareMyMilestone => 'Shiriki Hatua Yangu';

  @override
  String get milestoneImageShareError =>
      'Picha ya hatua muhimu haikuweza kutengenezwa. Tafadhali jaribu tena.';

  @override
  String get dailyCheckInTitle => 'Kujichunguza Kila Siku';

  @override
  String get howAreYouFeelingToday => 'Unajisikiaje leo?';

  @override
  String get honestAnswerHelp =>
      'Jibu lako la kweli hutusaidia kukusaidia vizuri zaidi';

  @override
  String get didYouDrinkToday => 'Ulikunywa leo?';

  @override
  String get noLabel => 'Hapana';

  @override
  String get yesLabel => 'Ndiyo';

  @override
  String get cravingLevelNow => 'Tamaa ya kunywa iko kiwango gani sasa?';

  @override
  String get anythingOnMind => 'Kuna jambo lolote akilini mwako?';

  @override
  String get optionalLabel => '(si lazima)';

  @override
  String get dailyNoteHint =>
      'Andika kuhusu siku yako, vichochezi, mafanikio...';

  @override
  String get alreadyCheckedInToday => 'Tayari umejichunguza leo';

  @override
  String get saveCheckIn => 'Hifadhi ukaguzi';

  @override
  String get checkInsHelpTrack =>
      'Ukaguzi husaidia kufuatilia maendeleo yako kwa muda';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Tayari umekamilisha ukaguzi wa leo.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Tafadhali jibu maswali yote mawili hapo juu kwanza';

  @override
  String get checkInSaved => 'Ukaguzi umehifadhiwa';

  @override
  String get cravingNone => 'Hakuna';

  @override
  String get cravingLow => 'Chini';

  @override
  String get cravingMedium => 'Wastani';

  @override
  String get cravingStrong => 'Kali';

  @override
  String get moodBad => 'Mbaya';

  @override
  String get moodLow => 'Chini';

  @override
  String get moodGreat => 'Vizuri sana';

  @override
  String get sosSupportTitle => 'Msaada wa SOS';

  @override
  String notAloneMessage(String name) {
    return 'Huko peke yako, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Tamaa hupita. Chagua kitu hapa chini kitakachokusaidia kupitia wakati huu.';

  @override
  String get breathingExercise => 'Mazoezi ya Kupumua';

  @override
  String get breathingExerciseSubtitle =>
      'Mbinu ya 4-7-8 iliyoongozwa, dakika 2';

  @override
  String get rideTheWave => 'Vuka Wimbi';

  @override
  String get rideTheWaveSubtitle =>
      'Kipima muda cha dakika 15 — tamaa hupita kila wakati';

  @override
  String get copingTips => 'Vidokezo vya Kukabiliana';

  @override
  String get copingTipsSubtitle =>
      'Mikakati iliyobinafsishwa kwa vichochezi vyako';

  @override
  String get talkToAiCoach => 'Zungumza na kocha wa AI';

  @override
  String get talkToAiCoachSubtitle => 'Zungumza na mshirika wako wa kupona';

  @override
  String get callSomeone => 'Mpigie mtu simu';

  @override
  String get callSomeoneSubtitle => 'Wasiliana na mtu unayemwamini';

  @override
  String get contactsPermissionNeeded =>
      'Ruhusa ya mawasiliano inahitajika ili kumpigia simu mtu.';

  @override
  String get beatenCravingsPrefix => 'Umeshinda tamaa ';

  @override
  String beatenCravingsCount(int count) {
    return 'mara $count';
  }

  @override
  String get beatenCravingsSuffix => ' hapo awali. Unaweza kufanya hivyo tena.';

  @override
  String get tellUsAboutYourself => 'Tuambie Kuhusu Wewe';

  @override
  String get detailsSubtitle =>
      'Taarifa hizi hutusaidia kubinafsisha safari yako ya kupona na kutoa maarifa sahihi.';

  @override
  String get nameLabel => 'Jina';

  @override
  String get nameHint => 'mf., Alex Rivers';

  @override
  String get ageLabel => 'Umri';

  @override
  String get ageHint => 'mf., 32';

  @override
  String get sexAssignedAtBirth => 'Jinsia uliyopewa wakati wa kuzaliwa';

  @override
  String get sexFemale => 'Mwanamke';

  @override
  String get sexMale => 'Mwanaume';

  @override
  String get heightLabel => 'Urefu';

  @override
  String get weightLabel => 'Uzito';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Umefikia kikomo cha kila siku';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Umetumia ujumbe wote $limit wa bure wa leo. Boresha hadi Premium kwa mazungumzo yasiyo na kikomo na kocha.';
  }

  @override
  String get coachConnectError =>
      'Sikuweza kuunganishwa kwa sasa. Tafadhali jaribu tena baada ya muda mfupi.';

  @override
  String get clearConversationTitle => 'Ufute mazungumzo?';

  @override
  String get clearConversationMessage =>
      'Hii itaondoa kabisa historia yako ya mazungumzo na kocha.';

  @override
  String get clearLabel => 'Futa';

  @override
  String get recoveryCoachTitle => 'Kocha wa Kupona';

  @override
  String get onlineLabel => 'Yuko mtandaoni';

  @override
  String get clearConversationMenuItem => 'Futa mazungumzo';

  @override
  String chatGreeting(String name) {
    return 'Habari $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Uko siku ya $days ya safari yako. Niko hapa wakati wowote unapotaka kuzungumza.';
  }

  @override
  String get quickPromptsLabel => 'MAPENDEKEZO YA HARAKA';

  @override
  String get promptCravingLabel => 'Nina tamaa ya kunywa';

  @override
  String get promptCravingSubtitle => 'Tulia haraka';

  @override
  String get promptMotivationLabel => 'Nahitaji motisha';

  @override
  String get promptMotivationSubtitle => 'Msukumo wakati mambo ni magumu';

  @override
  String get promptSocialLabel => 'Hali ya kijamii';

  @override
  String get promptSocialSubtitle => 'Jinsi ya kukabiliana na mkusanyiko';

  @override
  String get promptSlippedLabel => 'Nimeporomoka';

  @override
  String get promptSlippedSubtitle => 'Hakuna hukumu, msaada tu';

  @override
  String get typeMessageHint => 'Andika ujumbe...';

  @override
  String get editProfileTitle => 'Hariri Wasifu';

  @override
  String couldNotSaveProfile(String error) {
    return 'Wasifu haukuweza kuhifadhiwa: $error';
  }

  @override
  String get heightCmLabel => 'Urefu (cm)';

  @override
  String get weightKgLabel => 'Uzito (kg)';

  @override
  String get saveChangesLabel => 'Hifadhi Mabadiliko';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Maarifa na Uchambuzi wa Juu';

  @override
  String get featureUnlimitedJournal => 'Maingizo ya Jarida Yasiyo na Kikomo';

  @override
  String get featureUnlimitedChat =>
      'Mazungumzo Yasiyo na Kikomo na Kocha wa AI';

  @override
  String get featureCommunityGroups => 'Vikundi Maalum vya Jamii';

  @override
  String get featurePrioritySupport => 'Msaada wa Kipaumbele wa Wataalamu';

  @override
  String get featureThemePacks => 'Vifurushi Maalum vya Mandhari';

  @override
  String get featureDataExport => 'Hamisha Data';

  @override
  String get featureAdFree => 'Uzoefu Usio na Matangazo';

  @override
  String get premiumMemberTitle => 'Wewe ni Mwanachama wa Premium';

  @override
  String get unlockFullRecoveryTitle => 'Fungua Uzoefu Wako Kamili\nwa Kupona';

  @override
  String get premiumMemberSubtitle =>
      'Asante kwa kuunga mkono safari yako ya kupona — vipengele vyote vya Premium vilivyo hapa chini vimefunguliwa.';

  @override
  String get premiumJoinSubtitle =>
      'Jiunge na jamii ya maelfu wanaoharakisha\nsafari yao ya uponyaji kwa kutumia zana zetu za\nPremium na msaada uliobinafsishwa.';

  @override
  String get monthlyPlanLabel => 'Kila Mwezi';

  @override
  String get perMonthSuffix => '/mwezi';

  @override
  String get cancelAnytimeLabel => 'Ghairi wakati wowote';

  @override
  String get yearlyPlanLabel => 'Kila Mwaka';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Inatozwa kila mwaka kwa $amount';
  }

  @override
  String get bestValueLabel => 'Thamani Bora';

  @override
  String get alreadyPremiumLabel => 'Wewe ni Premium ✓';

  @override
  String get startPremiumLabel => 'Anza Premium';

  @override
  String get manageSubscriptionLabel =>
      'Dhibiti au ghairi usajili kutoka kwenye mipangilio ya usajili ya kifaa chako.';

  @override
  String get noCommitmentLabel => 'Hakuna kujifunga. Ghairi wakati wowote.';

  @override
  String get continueFreePlanLabel => 'Endelea na Mpango wa Bure';

  @override
  String get backToHomeLabel => 'Rudi Nyumbani';

  @override
  String get cancelPremiumLabel => 'Ghairi Premium';

  @override
  String get cancelPremiumTitle => 'Ghairi Premium?';

  @override
  String get cancelPremiumMessage =>
      'Utapoteza ufikiaji wa maingizo ya jarida yasiyo na kikomo, mazungumzo yasiyo na kikomo na kocha, maarifa ya takwimu na ripoti za wiki. Unaweza kujiandikisha tena wakati wowote.';

  @override
  String get keepPremiumLabel => 'Weka Premium';

  @override
  String get nowPremiumMessage =>
      'Sasa wewe ni Premium! Furahia uzoefu wako kamili wa kupona.';

  @override
  String get premiumCancelledMessage =>
      'Premium imeghairiwa. Umerudi kwenye mpango wa bure.';

  @override
  String get termsOfUseLabel => 'Masharti ya Matumizi';

  @override
  String get navHomeLabel => 'Nyumbani';

  @override
  String get navStatsLabel => 'Takwimu';

  @override
  String get navJournalLabel => 'Jarida';

  @override
  String get navBadgesLabel => 'Beji';

  @override
  String get navProfileLabel => 'Wasifu';

  @override
  String get recoveryGoalsTitle => 'Malengo ya Kupona';

  @override
  String get drinksPerWeekLabel => 'Vinywaji kwa wiki';

  @override
  String get quitReasonsLabel => 'Sababu za Kuacha';

  @override
  String get quitReasonsHelperText => 'Tenganisha sababu nyingi kwa koma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Malengo ya kupona hayakuweza kuhifadhiwa: $error';
  }

  @override
  String get goalHint => 'mf., Kuacha kabisa';

  @override
  String get drinksPerWeekHint => 'mf., 12';

  @override
  String get quitReasonsHint => 'mf., Afya, Familia, Pesa';

  @override
  String get todaysPrompt => 'Swali la Leo';

  @override
  String get defaultJournalPrompt => 'Unafikiria nini leo?';

  @override
  String get aiJournalInsights => 'Maarifa ya Jarida ya AI';

  @override
  String get unlockJournalInsightsMessage =>
      'Fungua mifumo ya kila wiki, mienendo ya hisia na maarifa yaliyobinafsishwa kutoka kwenye maingizo yako ya jarida.';

  @override
  String get notEnoughJournalData =>
      'Bado hakuna data ya kutosha — andika maingizo machache wiki hii kisha urudi tena.';

  @override
  String get openEntry => 'Fungua';

  @override
  String get editEntry => 'Hariri';

  @override
  String get deleteEntry => 'Futa';

  @override
  String get searchJournalEntries => 'Tafuta maingizo...';

  @override
  String get writeNewEntry => 'Andika ingizo jipya';

  @override
  String get recentEntries => 'Maingizo ya Hivi Karibuni';

  @override
  String get noJournalEntriesYet =>
      'Bado hakuna maingizo ya jarida — andika tafakari yako ya kwanza hapo juu.';

  @override
  String get noEntriesMatchFilters =>
      'Hakuna maingizo yanayolingana na vichujio vyako.';

  @override
  String get weeklyJournalLimitReached => 'Umefikia kikomo cha kila wiki';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Umetumia maingizo yote $limit ya bure ya jarida wiki hii. Boresha hadi Premium kwa maingizo yasiyo na kikomo.';
  }

  @override
  String get newEntry => 'Ingizo Jipya';

  @override
  String get writeYourThoughts => 'Andika mawazo yako';

  @override
  String get saveEntry => 'Hifadhi Ingizo';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Umebakiza $remaining kati ya $limit maingizo ya bure wiki hii';
  }

  @override
  String get deleteEntryQuestion => 'Ufute ingizo?';

  @override
  String get deleteEntryConfirmation =>
      'Ingizo hili litafutwa kabisa. Hili haliwezi kutenduliwa.';

  @override
  String get journalEntryNotFound => 'Ingizo halikupatikana';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Ingizo hili la jarida huenda limefutwa.';

  @override
  String get goBack => 'Rudi Nyuma';

  @override
  String get journalEntryTitle => 'Ingizo la Jarida';

  @override
  String get moodStruggling => 'Ninapata Ugumu';

  @override
  String get moodUnwell => 'Sijisikii Vizuri';

  @override
  String get moodNeutral => 'Kawaida';

  @override
  String get whatHappenedToday => 'Nini kilitokea leo?';

  @override
  String get trigger => 'Kichochezi';

  @override
  String get whatHelped => 'Nini kilisaidia';

  @override
  String get whatIllTryNextTime => 'Nitakachojaribu wakati mwingine';

  @override
  String get journalPrivacyMessage =>
      'Tafakari yako ni ya faragha na imehifadhiwa kwenye jarida lako.';

  @override
  String get unlocked => 'Imefunguliwa';

  @override
  String daysLeft(int count) {
    return 'Zimesalia siku $count';
  }

  @override
  String daysCount(int count) {
    return 'Siku $count';
  }

  @override
  String get firstReflection => 'Tafakari\nya Kwanza';

  @override
  String get oneJournalEntry => 'Ingizo 1 la Jarida';

  @override
  String get openBook => 'Fungua Kitabu';

  @override
  String get tenJournalEntries => 'Maingizo 10 ya Jarida';

  @override
  String get dedicatedWriter => 'Mwandishi\nAliyejitolea';

  @override
  String get thirtyJournalEntries => 'Maingizo 30 ya Jarida';

  @override
  String get firstConversation => 'Mazungumzo\nya Kwanza';

  @override
  String get oneAiCoachChat => 'Mazungumzo 1 na Kocha wa AI';

  @override
  String get keepTalking => 'Endelea Kuzungumza';

  @override
  String get fiveConversations => 'Mazungumzo 5';

  @override
  String get coachCompanion => 'Mshirika wa\nKocha';

  @override
  String get twentyConversations => 'Mazungumzo 20';

  @override
  String get checkInHabit => 'Mazoea ya\nKujichunguza';

  @override
  String get sevenCheckIns => 'Ukaguzi 7';

  @override
  String get consistencyPro => 'Mtaalamu wa\nUendelevu';

  @override
  String get thirtyCheckIns => 'Ukaguzi 30';

  @override
  String get dedicatedJourney => 'Safari\nIliyowekwa Wakfu';

  @override
  String get hundredCheckIns => 'Ukaguzi 100';

  @override
  String get goalGetter => 'Mfanikishaji wa Malengo';

  @override
  String get threeGoalsCompleted => 'Malengo 3 Yamekamilika';

  @override
  String get goalAchiever => 'Mfanikishaji\nwa Malengo';

  @override
  String get tenGoalsCompleted => 'Malengo 10 Yamekamilika';

  @override
  String get firstSavings => 'Akiba\nya Kwanza';

  @override
  String get fiveHundredSaved => '\$500 Zimeokolewa';

  @override
  String get smartSaver => 'Mwokoaji Mahiri';

  @override
  String get oneThousandSaved => '\$1,000 Zimeokolewa';

  @override
  String get bigSaver => 'Mwokoaji Mkuu';

  @override
  String get fiveThousandSaved => '\$5,000 Zimeokolewa';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current kati ya \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current kati ya $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Endelea — hatua yako ya kwanza muhimu inakusubiri!';

  @override
  String get badgesAndMilestones => 'Beji na Hatua Muhimu';

  @override
  String get yourMilestoneJourney => 'Safari Yako ya Hatua Muhimu';

  @override
  String milestonesAchieved(int count) {
    return 'Hatua $count muhimu zimefikiwa.\nGusa kutazama';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Umefungua $unlocked kati ya $total hatua muhimu kwenye safari yako.';
  }

  @override
  String get remaining => 'Zimesalia';

  @override
  String get complete => 'Kamilisha';

  @override
  String get nextMilestone => 'Hatua Inayofuata Muhimu';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% imekamilika';
  }

  @override
  String get sobrietyMilestones => 'Hatua Muhimu za Kutokuwa na Pombe';

  @override
  String get journeyBadges => 'Beji za Safari';

  @override
  String get bronze => 'SHABA';

  @override
  String get silver => 'FEDHA';

  @override
  String get gold => 'DHABU';

  @override
  String get platinum => 'PLATINUM';

  @override
  String get diamond => 'ALMASI';

  @override
  String get analyzingYourJourney => 'Tunachambua Safari Yako...';

  @override
  String get aiCreatingSanctuary =>
      'AI yetu inaunda mazingira yako ya kibinafsi ya kupona.';

  @override
  String get understandingHabits => 'Tunaelewa tabia zako...';

  @override
  String get calculatingBaseline => 'Tunahesabu kiwango chako cha msingi...';

  @override
  String get personalizingPlan => 'Tunabinafsisha mpango wako...';

  @override
  String get finalizingSanctuary => 'Tunakamilisha mazingira yako...';

  @override
  String get creatingYourPlan => 'Tunaunda mpango wako...';

  @override
  String get personalizedPlanError =>
      'Hatukuweza kuunda mpango wako uliobinafsishwa. Tafadhali jaribu tena.';

  @override
  String get retry => 'Jaribu Tena';

  @override
  String get breathInhale => 'VUTA HEWA';

  @override
  String get breathHold => 'SHIKILIA';

  @override
  String get breathExhale => 'TOA HEWA';

  @override
  String get breathDone => 'IMEMALIZIKA';

  @override
  String get breathGreatJob => 'Umefanya vizuri!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vipindi $count leo',
      one: 'Kipindi $count leo',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Maliza Zoezi';

  @override
  String get done => 'Imemalizika';

  @override
  String get noCopingTipsYet => 'Bado hakuna vidokezo vya kukabiliana';

  @override
  String get copingStrategiesWillAppear =>
      'Mikakati yako ya kibinafsi ya kukabiliana itaonekana hapa mpango wako wa kupona utakapomaliza kutengenezwa.';

  @override
  String get strategiesTailoredToTriggers =>
      'Mikakati iliyoundwa kulingana na vichochezi vyako';

  @override
  String get cravingsPeakAndPass => 'Tamaa hufikia kilele\nna kisha hupita';

  @override
  String get rideTheWaveDescription =>
      'Tamaa nyingi hupita ndani ya dakika 15. Si lazima uitende — vuka tu pamoja nasi.';

  @override
  String get stayWithIt => 'endelea nayo';

  @override
  String get youMadeIt => 'umeweza';

  @override
  String get readyWhenYouAre => 'ukiwa tayari';

  @override
  String get rideItAgain => 'Vuka tena';

  @override
  String get start15MinuteTimer => 'Anza Kipima Muda cha Dakika 15';

  @override
  String get rideTheWaveCompletedMessage =>
      'Umevuka wimbi. Huo ni nguvu halisi. 💪';

  @override
  String get myProgress => 'Maendeleo Yangu';

  @override
  String get weekLabel => 'Wiki';

  @override
  String get monthLabel => 'Mwezi';

  @override
  String get allLabel => 'Yote';

  @override
  String get daysSoberStatLabel => 'Siku bila\npombe';

  @override
  String get savedStatLabel => 'Imeokolewa';

  @override
  String get avoidedStatLabel => 'Imeepukwa';

  @override
  String get moodTrends => 'Mienendo ya Hisia';

  @override
  String get cravingsPattern => 'Muundo wa Tamaa';

  @override
  String get unlockLabel => 'Fungua';

  @override
  String get unlockFullStats => 'Fungua Takwimu Zote';

  @override
  String get premiumStatsMessage =>
      'Mienendo ya hisia na miundo ya tamaa ni vipengele vya Premium. Boresha ili kuona takwimu zako zote.';

  @override
  String get healthMilestonesWillAppear =>
      'Hatua zako muhimu za afya zitaonekana hapa.';

  @override
  String get healthMilestones => 'Hatua Muhimu za Afya';

  @override
  String dayNumber(int day) {
    return 'Siku $day';
  }

  @override
  String get soberLabel => 'Bila pombe';

  @override
  String get slipLabel => 'Kuteleza';

  @override
  String get noDataLabel => 'Hakuna data';

  @override
  String get milestone24Hours => 'Masaa 24';

  @override
  String get milestoneOneWeek => 'Wiki Moja';

  @override
  String get milestoneOneMonth => 'Mwezi Mmoja';

  @override
  String get milestoneThreeMonths => 'Miezi Mitatu';

  @override
  String get milestoneSixMonths => 'Miezi Sita';

  @override
  String get milestoneOneYear => 'Mwaka Mmoja';

  @override
  String milestoneDayCount(int day) {
    return 'Hatua Muhimu ya Siku $day';
  }

  @override
  String get maybeLaterLabel => 'Labda baadaye';

  @override
  String get cancelLabel => 'Ghairi';
}
