// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get skip => 'Laktawan';

  @override
  String get continueButton => 'Magpatuloy';

  @override
  String get getStarted => 'Magsimula';

  @override
  String get onboardingTitle1 => 'Hawakan ang Kontrol sa Iyong Buhay';

  @override
  String get onboardingSubtitle1 =>
      'Subaybayan ang iyong paglalakbay, ipagdiwang ang bawat tagumpay, at maging mas malusog araw-araw.';

  @override
  String get onboardingTitle2 => 'Ang Iyong AI Recovery Companion';

  @override
  String get onboardingSubtitle2 =>
      'Makatanggap ng personalized na gabay, malulusog na gawi, paalala para sa motibasyon, at mga ulat sa pag-unlad na idinisenyo para sa iyo.';

  @override
  String get goodMorning => 'Magandang Umaga';

  @override
  String get goodAfternoon => 'Magandang Hapon';

  @override
  String get goodEvening => 'Magandang Gabi';

  @override
  String get goodNight => 'Magandang Gabi';

  @override
  String get embracingClarity =>
      'Pagyakap sa kalinawan, isang araw sa bawat pagkakataon.';

  @override
  String get streakLabel => 'STREAK';

  @override
  String get goalLabel => 'LAYUNIN';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Araw',
      one: '$count Araw',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium Plan';

  @override
  String get premiumPlanSubtitle =>
      'I-unlock ang buong karanasan sa iyong paggaling';

  @override
  String get accountAndSupport => 'ACCOUNT AT SUPORTA';

  @override
  String get privacyPolicy => 'Patakaran sa Pagkapribado';

  @override
  String get privacyPolicySubtitle =>
      'Pamahalaan ang pagbabahagi ng data at seguridad ng account';

  @override
  String get termsOfService => 'Mga Tuntunin ng Serbisyo';

  @override
  String get termsOfServiceSubtitle =>
      'Mga FAQ, makipag-ugnayan sa amin, at mga mapagkukunan';

  @override
  String get shareApp => 'Ibahagi ang App';

  @override
  String get shareAppSubtitle => 'Ibahagi ang app sa iyong mga kaibigan';

  @override
  String get resetData => 'I-reset ang Data';

  @override
  String get resetDataSubtitle =>
      'I-burado ang lahat ng naka-save sa device na ito';

  @override
  String get resetAllDataTitle => 'I-reset ang lahat ng data?';

  @override
  String get resetAllDataMessage =>
      'Aalisin nito ang lahat ng naka-save sa device na ito — profile, mga entry sa journal, at pag-unlad — at hindi na mababawi.';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get reset => 'I-reset';

  @override
  String get chooseFromGallery => 'Pumili sa Gallery';

  @override
  String get takePhoto => 'Kumuha ng Larawan';

  @override
  String get removePhoto => 'Alisin ang Larawan';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Hindi ma-update ang larawan: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Hindi maalis ang larawan: $error';
  }

  @override
  String get photoTooLarge =>
      'Masyadong malaki ang larawang iyon kahit pagkatapos i-compress — pakisubukan ang iba.';

  @override
  String get unableToLoadProfile => 'Hindi ma-load ang iyong profile';

  @override
  String get pleaseTryAgain => 'Pakiulit muli.';

  @override
  String get tryAgain => 'Subukan Ulit';

  @override
  String get profileNotFound => 'Hindi natagpuan ang profile';

  @override
  String get refresh => 'I-refresh';

  @override
  String get noProfileDataFound =>
      'Wala pang data ng profile na natagpuan sa device na ito.';

  @override
  String couldNotResetData(String error) {
    return 'Hindi ma-reset ang data: $error';
  }

  @override
  String get navHome => 'Home';

  @override
  String get navStats => 'Stats';

  @override
  String get navJournal => 'Journal';

  @override
  String get navBadges => 'Badges';

  @override
  String get navProfile => 'Profile';

  @override
  String featureComingSoon(String feature) {
    return 'Magiging available na ang $feature sa lalong madaling panahon.';
  }

  @override
  String get appWordmark => 'WELLNESS';

  @override
  String get appTitle => 'Itigil ang pag-inom';

  @override
  String get splashSubtitle =>
      'Gawin ang unang hakbang tungo sa\nisang buhay na walang alak';

  @override
  String get preparingJourney => 'Inihahanda ang iyong\npaglalakbay';

  @override
  String get taskMorningMeditation => 'Pagninilay sa Umaga (10 m)';

  @override
  String get taskReadChapter =>
      'Basahin ang Kabanata 4 ng \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Journal ng Pagpapasalamat sa Gabi';

  @override
  String get close => 'Isara';

  @override
  String get youAreDoingGreat => 'Mahusay ang ginagawa mo!';

  @override
  String get shareMilestone => 'Ibahagi ang Milestone';

  @override
  String shareMilestoneMessage(int days) {
    return 'Nasa ika-$days araw na ako ng aking paglalakbay tungo sa paggaling! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Ang aking milestone sa paggaling';

  @override
  String get weeklyReportReadyTitle => 'Handa na ang iyong lingguhang ulat';

  @override
  String get weeklyReportReadySubtitle =>
      'I-tap para makita ang naging takbo ng iyong linggo';

  @override
  String get howAreYouFeeling => 'Ano ang pakiramdam mo?';

  @override
  String get moodTough => 'Mahirap';

  @override
  String get moodOkay => 'Okey lang';

  @override
  String get moodGood => 'Mabuti';

  @override
  String get moneySaved => 'Pera na Naipon';

  @override
  String get caloriesSaved => 'Kalarong Naipon';

  @override
  String get healthScore => 'Iskor sa Kalusugan';

  @override
  String get drinksAvoided => 'Inuming Iniiwasan';

  @override
  String get estimated => 'Tinataya';

  @override
  String get aiGenerated => 'Gawa ng AI';

  @override
  String get daysCapsLabel => 'MGA ARAW';

  @override
  String get todaysMotivation => 'Motibasyon Ngayong Araw';

  @override
  String get defaultMotivationQuote =>
      'Matagumpay mong napanatili ang iyong pangako. Ipagpatuloy ang pagsabay sa daloy ng positibong pagbabago.';

  @override
  String get talkToCoach => 'Makisalamuha sa coach';

  @override
  String get havingACraving => 'Nakatatakam Ako';

  @override
  String get unlockWeeklyReportsTitle => 'I-unlock ang mga lingguhang ulat';

  @override
  String get unlockWeeklyReportsMessage =>
      'Tingnan ang iyong mga araw ng pagiging sober, mga trend ng mood, at personalized na AI feedback bawat linggo. Mag-upgrade sa Premium para ma-unlock.';

  @override
  String get maybeLater => 'Mamaya na lang';

  @override
  String get upgrade => 'Mag-upgrade';

  @override
  String get weeklyReportTitle => 'Lingguhang Ulat';

  @override
  String get weeklyReportsPremiumTitle =>
      'Isang Premium na tampok ang lingguhang ulat';

  @override
  String get weeklyReportsPremiumMessage =>
      'Tingnan ang iyong mga araw ng pagiging sober, mga trend ng mood, mga paghahangad, at personalized na AI feedback bawat linggo.';

  @override
  String get upgradeToPremium => 'Mag-upgrade sa Premium';

  @override
  String get couldNotGenerateReport => 'Hindi magawa ang iyong ulat sa ngayon.';

  @override
  String get tryAgainLower => 'Subukan muli';

  @override
  String get statSoberDays => 'Mga araw na sober';

  @override
  String get statAvgMood => 'Grap ng mood';

  @override
  String get statCravings => 'Paghahangad';

  @override
  String get statMoneySaved => 'Naipong pera';

  @override
  String get coachFeedback => 'Puna ng Coach';

  @override
  String get journalInsights => 'Mga insight sa Journal';

  @override
  String get next => 'Susunod';

  @override
  String get question1Title => 'Ano ang iyong layunin';

  @override
  String get question1Subtitle => 'Pumili ng layunin na pinakamahalaga\nsa iyo';

  @override
  String get goalQuitCompletely => 'TUMIGIL NANG LUBUSAN';

  @override
  String get goalReduceDrinking => 'Bawasan ang pag-inom';

  @override
  String get goalTakeABreak => 'Magpahinga muna';

  @override
  String get goalBuildHealthierHabits => 'Bumuo ng mas malusog na gawi';

  @override
  String get question3Title => 'Ikwento sa amin ang iyong\nrutina';

  @override
  String get drinksPerWeek => 'Mga inumin bawat linggo';

  @override
  String get moneySpentPerWeek => 'Gagastusin bawat linggo';

  @override
  String get drinkingLevel => 'Antas ng pag-inom';

  @override
  String get triggersLabel => 'Mga nag-uudyok';

  @override
  String get levelSocial => 'Sosyal';

  @override
  String get levelRegular => 'Regular';

  @override
  String get levelHeavy => 'Mabigat';

  @override
  String get levelDependent => 'Depende';

  @override
  String get triggerStress => 'Stress';

  @override
  String get triggerLoneliness => 'Kalungkutan';

  @override
  String get triggerHabit => 'Gawi';

  @override
  String get triggerSadness => 'Dalamhati';

  @override
  String get triggerAnger => 'Galit';

  @override
  String get triggerBoredom => 'Pagkabagot';

  @override
  String get triggerSocialPressure => 'Presyur sa lipunan';

  @override
  String get triggerCelebration => 'Pagdiriwang';

  @override
  String get triggerSleepProblems => 'Problema sa pagtulog';

  @override
  String get triggerWorkPressure => 'Presyur sa trabaho';

  @override
  String get question4Title => 'Bakit mo gustong magbago?';

  @override
  String get question4Subtitle =>
      'Ang iyong dahilan ay makatutulong upang mag-udyok sa iyo.';

  @override
  String get reasonImproveHealth => 'Pagbutihin ang Aking Kalusugan';

  @override
  String get reasonSaveMoney => 'Mag-ipon ng Pera';

  @override
  String get reasonFamily => 'Pamilya';

  @override
  String get reasonBetterSleep => 'Mas Magandang Pagtulog';

  @override
  String get reasonMentalClarity => 'Kalinawan ng Isip';

  @override
  String get reasonFitness => 'Kaangkupang Pisikal';

  @override
  String get reasonSelfRespect => 'Paggalang sa Sarili';

  @override
  String get reasonCareer => 'Karera';

  @override
  String get milestoneUnlockedLabel => 'NA-UNLOCK ANG MILESTONE';

  @override
  String incredibleNamePrefix(String name) {
    return 'Kahanga-hanga, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ang naipon';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count ang naiwasan';
  }

  @override
  String get shareMyMilestone => 'Ibahagi ang aking milestone';

  @override
  String get milestoneImageShareError =>
      'Hindi magawa ang larawan ng milestone. Pakisubukan muli.';

  @override
  String get dailyCheckInTitle => 'Araw-araw na Check-in';

  @override
  String get howAreYouFeelingToday => 'Ano ang pakiramdam mo ngayong araw?';

  @override
  String get honestAnswerHelp =>
      'Ang iyong tapat na sagot ay nakatutulong sa amin na mas suportahan ka';

  @override
  String get didYouDrinkToday => 'Uminom ka ba ngayong araw?';

  @override
  String get noLabel => 'Hindi';

  @override
  String get yesLabel => 'Oo';

  @override
  String get cravingLevelNow => 'Antas ng paghahangad ngayon?';

  @override
  String get anythingOnMind => 'Mayroon ka bang naiisip?';

  @override
  String get optionalLabel => '(opsyonal)';

  @override
  String get dailyNoteHint =>
      'Isulat ang tungkol sa iyong araw, mga trigger, mga tagumpay...';

  @override
  String get alreadyCheckedInToday => 'Naka-check in na ngayong araw';

  @override
  String get saveCheckIn => 'I-save ang check-in';

  @override
  String get checkInsHelpTrack =>
      'Nakatutulong ang mga check-in upang masubaybayan ang iyong pag-unlad';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Pumatak na ang iyong check-in para sa araw na ito.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Paki-sagutan muna ang dalawang tanong sa itaas';

  @override
  String get checkInSaved => 'Nai-save ang check-in';

  @override
  String get cravingNone => 'Wala';

  @override
  String get cravingLow => 'Mababa';

  @override
  String get cravingMedium => 'Katamtaman';

  @override
  String get cravingStrong => 'Mataas';

  @override
  String get moodBad => 'Masama';

  @override
  String get moodLow => 'Mababa';

  @override
  String get moodGreat => 'Napakahusay';

  @override
  String get sosSupportTitle => 'Tulong sa SOS';

  @override
  String notAloneMessage(String name) {
    return 'Hindi ka nag-iisa, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Lumalipas din ang paghahangad. Pumili sa ibaba ng makatutulong sa iyo sa sandaling ito.';

  @override
  String get breathingExercise => 'Pagsasanay sa paghinga';

  @override
  String get breathingExerciseSubtitle =>
      'Pamatayang teknik na 4-7-8, 2 minuto';

  @override
  String get rideTheWave => 'Sumabay sa alon';

  @override
  String get rideTheWaveSubtitle =>
      '15 minutong timer — laging lumalipas ang paghahangad';

  @override
  String get copingTips => 'Mga tip sa pagharap';

  @override
  String get copingTipsSubtitle =>
      'Mga diskarteng nakatutok sa iyong mga trigger';

  @override
  String get talkToAiCoach => 'Makisalamuha sa AI coach';

  @override
  String get talkToAiCoachSubtitle =>
      'Makipag-usap sa iyong kasama sa paggaling';

  @override
  String get callSomeone => 'Tawagan ang isang tao';

  @override
  String get callSomeoneSubtitle =>
      'Makipag-ugnayan sa iyong pinagkakatiwalaang contact';

  @override
  String get contactsPermissionNeeded =>
      'Kailangan ng pahintulot sa mga contact para makatawag.';

  @override
  String get beatenCravingsPrefix => 'Nalagpasan mo na ang paghahangad nang ';

  @override
  String beatenCravingsCount(int count) {
    return '$count beses';
  }

  @override
  String get beatenCravingsSuffix => ' noong una. Magagawa mo itong muli.';

  @override
  String get tellUsAboutYourself =>
      'Ikwento sa Amin ang Tungkol sa Iyong Sarili';

  @override
  String get detailsSubtitle =>
      'Nakatutulong ang impormasyong ito upang maiakma ang iyong paglalakbay at makapagbigay ng tumpak na mga insight.';

  @override
  String get nameLabel => 'Pangalan';

  @override
  String get nameHint => 'hal., Alex Rivers';

  @override
  String get ageLabel => 'Edad';

  @override
  String get ageHint => 'hal., 32';

  @override
  String get sexAssignedAtBirth => 'Kasarian nang ipinanganak';

  @override
  String get sexFemale => 'Babae';

  @override
  String get sexMale => 'Lalaki';

  @override
  String get heightLabel => 'Taas';

  @override
  String get weightLabel => 'Timbang';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle =>
      'Nakarating na sa araw-araw na limitasyon';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Nagamit mo na ang lahat ng $limit libreng mensahe ngayong araw. Mag-upgrade sa Premium para sa walang limitasyong chat sa coach.';
  }

  @override
  String get coachConnectError =>
      'Hindi ako makakonekta sa ngayon. Pakisubukan muli sa isang sandali.';

  @override
  String get clearConversationTitle => 'I-clear ang usapan?';

  @override
  String get clearConversationMessage =>
      'Permanenteng aalisin nito ang kasaysayan ng iyong chat sa coach.';

  @override
  String get clearLabel => 'I-clear';

  @override
  String get recoveryCoachTitle => 'Coach sa Paggaling';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'I-clear ang usapan';

  @override
  String chatGreeting(String name) {
    return 'Kamusta $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Nasa ika-$days araw ka na ng iyong paglalakbay. Nandito ako tuwing gusto mong makipag-usap.';
  }

  @override
  String get quickPromptsLabel => 'MABILIS NA PROMPTS';

  @override
  String get promptCravingLabel => 'Nakatatakam ako';

  @override
  String get promptCravingSubtitle => 'Kumalma kaagad';

  @override
  String get promptMotivationLabel => 'Kailangan ng motibasyon';

  @override
  String get promptMotivationSubtitle => 'Pampatag sa mahirap na sandali';

  @override
  String get promptSocialLabel => 'Sitwasyong sosyal';

  @override
  String get promptSocialSubtitle => 'Makisalamuha sa pagtitipon';

  @override
  String get promptSlippedLabel => 'Nagkamali ako';

  @override
  String get promptSlippedSubtitle => 'Walang panghuhusga, suporta lang';

  @override
  String get typeMessageHint => 'Mag-type ng mensahe...';

  @override
  String get editProfileTitle => 'I-edit ang Profile';

  @override
  String couldNotSaveProfile(String error) {
    return 'Hindi ma-save ang profile: $error';
  }

  @override
  String get heightCmLabel => 'Taas (cm)';

  @override
  String get weightKgLabel => 'Timbang (kg)';

  @override
  String get saveChangesLabel => 'I-save ang mga Pagbabago';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Mga Advanced na Insight at Analitika';

  @override
  String get featureUnlimitedJournal => 'Walang Limitasyong Entry sa Journal';

  @override
  String get featureUnlimitedChat => 'Walang Limitasyong Chat sa AI Coach';

  @override
  String get featureCommunityGroups => 'Eksklusibong Grupo sa Komunidad';

  @override
  String get featurePrioritySupport => 'Pangunahing Suporta mula sa Eksperto';

  @override
  String get featureThemePacks => 'Mapanlikhang Pack ng Tema';

  @override
  String get featureDataExport => 'Pag-export ng Data';

  @override
  String get featureAdFree => 'Karanasang Walang Ad';

  @override
  String get premiumMemberTitle => 'Miyembro ka ng Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'I-unlock ang Buo Mong Karanasan\nsa Paggaling';

  @override
  String get premiumMemberSubtitle =>
      'Salamat sa pagsuporta sa iyong paglalakbay — lahat ng premium na tampok sa ibaba ay naka-unlock na.';

  @override
  String get premiumJoinSubtitle =>
      'Makiisa sa libo-libong nagpapabilis ng kanilang paggaling gamit ang aming mga premium na tool at suporta.';

  @override
  String get monthlyPlanLabel => 'Buwanan';

  @override
  String get perMonthSuffix => '/buwan';

  @override
  String get cancelAnytimeLabel => 'Kanselahin anumang oras';

  @override
  String get yearlyPlanLabel => 'Taunan';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Sisingilin taun-taon sa halagang $amount';
  }

  @override
  String get bestValueLabel => 'Pinakamahusay na Halaga';

  @override
  String get alreadyPremiumLabel => 'Premium ka na ✓';

  @override
  String get startPremiumLabel => 'Simulan ang Premium';

  @override
  String get manageSubscriptionLabel =>
      'Pamahalaan o kanselahin mula sa mga setting ng subscription ng iyong device.';

  @override
  String get noCommitmentLabel => 'Walang kontrata. Kanselahin anumang oras.';

  @override
  String get continueFreePlanLabel => 'Magpatuloy sa Libreng Plan';

  @override
  String get backToHomeLabel => 'Bumalik sa Home';

  @override
  String get cancelPremiumLabel => 'Kanselahin ang Premium';

  @override
  String get cancelPremiumTitle => 'Kanselahin ang Premium?';

  @override
  String get cancelPremiumMessage =>
      'Mawawalan ka ng access sa walang limitasyong journal, chat sa coach, mga insight sa stats, at lingguhang ulat. Puwede kang mag-subscribe muli anumang oras.';

  @override
  String get keepPremiumLabel => 'Panatilihin ang Premium';

  @override
  String get nowPremiumMessage =>
      'Premium ka na ngayon! Masiyahan sa iyong buong karanasan sa paggaling.';

  @override
  String get premiumCancelledMessage =>
      'Nai-kansela ang Premium. Nagbalik ka sa libreng plan.';

  @override
  String get termsOfUseLabel => 'Mga Tuntunin sa Paggamit';

  @override
  String get navHomeLabel => 'Home';

  @override
  String get navStatsLabel => 'Stats';

  @override
  String get navJournalLabel => 'Journal';

  @override
  String get navBadgesLabel => 'Badges';

  @override
  String get navProfileLabel => 'Profile';

  @override
  String get recoveryGoalsTitle => 'Mga Layunin sa Paggaling';

  @override
  String get drinksPerWeekLabel => 'Drinks per week';

  @override
  String get quitReasonsLabel => 'Mga dahilan ng pagtigil';

  @override
  String get quitReasonsHelperText =>
      'Ihiwalay ang maramihang dahilan gamit ang kuwit.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Hindi ma-save ang mga layunin sa paggaling: $error';
  }

  @override
  String get goalHint => 'hal., Lubos na Pag-iwas';

  @override
  String get drinksPerWeekHint => 'hal., 12';

  @override
  String get quitReasonsHint => 'hal., Kalusugan, Pamilya, Pera';

  @override
  String get todaysPrompt => 'Paksang ngayong araw';

  @override
  String get defaultJournalPrompt => 'Ano ang naiisip mo ngayong araw?';

  @override
  String get aiJournalInsights => 'Mga insight sa AI journal';

  @override
  String get unlockJournalInsightsMessage =>
      'I-unlock ang mga lingguhang pattern, trend ng mood, at mga insight mula sa iyong mga entry sa journal.';

  @override
  String get notEnoughJournalData =>
      'Kulang pa sa data — sumulat ng ilang entry ngayong linggo at bumalik muli.';

  @override
  String get openEntry => 'Buksan';

  @override
  String get editEntry => 'I-edit';

  @override
  String get deleteEntry => 'Burahin';

  @override
  String get searchJournalEntries => 'Maghanap ng mga entry...';

  @override
  String get writeNewEntry => 'Sumulat ng bagong entry';

  @override
  String get recentEntries => 'Mga Bagong Entry';

  @override
  String get noJournalEntriesYet =>
      'Wala pang mga entry sa journal — isulat ang iyong unang pagninilay sa itaas.';

  @override
  String get noEntriesMatchFilters =>
      'Walang mga entry na tumutugma sa iyong mga filter.';

  @override
  String get weeklyJournalLimitReached => 'Naabot na ang lingguhang limitasyon';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Nagamit mo na ang lahat ng $limit libreng entry sa journal ngayong linggo. Mag-upgrade sa Premium para sa walang limitasyong mga entry.';
  }

  @override
  String get newEntry => 'Bagong entry';

  @override
  String get writeYourThoughts => 'Isulat ang iyong mga naiisip';

  @override
  String get saveEntry => 'I-save ang Entry';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining sa $limit libreng entry na lang ang natitira ngayong linggo';
  }

  @override
  String get deleteEntryQuestion => 'Burahin ang entry?';

  @override
  String get deleteEntryConfirmation =>
      'Permanenteng buburahin ang entry na ito. Hindi na ito mababawi.';

  @override
  String get journalEntryNotFound => 'Hindi natagpuan ang entry';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Maaaring nabura na ang entry sa journal na ito.';

  @override
  String get goBack => 'Bumalik';

  @override
  String get journalEntryTitle => 'Entry sa Journal';

  @override
  String get moodStruggling => 'Nakaharap sa pagsubok';

  @override
  String get moodUnwell => 'Hindi mabuti';

  @override
  String get moodNeutral => 'Katamtaman';

  @override
  String get whatHappenedToday => 'Ano ang nangyari ngayong araw?';

  @override
  String get trigger => 'Trigger';

  @override
  String get whatHelped => 'Ano ang nakatulong';

  @override
  String get whatIllTryNextTime => 'Ano ang susubukan ko sa susunod';

  @override
  String get journalPrivacyMessage =>
      'Ang iyong pagninilay ay pribado at naka-save sa iyong journal.';

  @override
  String get unlocked => 'Naka-unlock';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw na lang',
      one: '$count araw na lang',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count Araw';
  }

  @override
  String get firstReflection => 'Unang\nPagninilay';

  @override
  String get oneJournalEntry => '1 Entry sa Journal';

  @override
  String get openBook => 'Bukas na Aklat';

  @override
  String get tenJournalEntries => '10 Entry sa Journal';

  @override
  String get dedicatedWriter => 'Masisipag na\nManunulat';

  @override
  String get thirtyJournalEntries => '30 Entry sa Journal';

  @override
  String get firstConversation => 'Unang\nUsapan';

  @override
  String get oneAiCoachChat => '1 Chat sa AI Coach';

  @override
  String get keepTalking => 'Magpatuloy sa Pag-uusap';

  @override
  String get fiveConversations => '5 Usapan';

  @override
  String get coachCompanion => 'Kasamang\nCoach';

  @override
  String get twentyConversations => '20 Usapan';

  @override
  String get checkInHabit => 'Gawi sa\nCheck-In';

  @override
  String get sevenCheckIns => '7 Check-In';

  @override
  String get consistencyPro => 'Eksperto sa\nPagpapatuloy';

  @override
  String get thirtyCheckIns => '30 Check-In';

  @override
  String get dedicatedJourney => 'Nakatalagang\nPaglalakbay';

  @override
  String get hundredCheckIns => '100 Check-In';

  @override
  String get goalGetter => 'Panginoon ng Layunin';

  @override
  String get threeGoalsCompleted => '3 Natapos na Layunin';

  @override
  String get goalAchiever => 'Nagkamit ng\nLayunin';

  @override
  String get tenGoalsCompleted => '10 Natapos na Layunin';

  @override
  String get firstSavings => 'Unang\nNaipon';

  @override
  String get fiveHundredSaved => '\$500 Naipon';

  @override
  String get smartSaver => 'Matalinong Nag-iipon';

  @override
  String get oneThousandSaved => '\$1,000 Naipon';

  @override
  String get bigSaver => 'Malaking Nag-iipon';

  @override
  String get fiveThousandSaved => '\$5,000 Naipon';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current sa \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current sa $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Ipagpatuloy lang — naghihintay na ang iyong unang milestone!';

  @override
  String get badgesAndMilestones => 'Mga Badge at Milestone';

  @override
  String get yourMilestoneJourney => 'Ang Iyong Paglalakbay sa Milestone';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count milestone ang nakamit.\nI-tap para tingnan',
      one: '$count milestone ang nakamit.\nI-tap para tingnan',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Naka-unlock ka ng $unlocked sa $total na milestone sa iyong paglalakbay.';
  }

  @override
  String get remaining => 'Natitira';

  @override
  String get complete => 'Kumpleto';

  @override
  String get nextMilestone => 'Susunod na Milestone';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% na roon';
  }

  @override
  String get sobrietyMilestones => 'Mga Milestone sa Sobriety';

  @override
  String get journeyBadges => 'Mga Badge sa Paglalakbay';

  @override
  String get bronze => 'BRONSE';

  @override
  String get silver => 'PILAK';

  @override
  String get gold => 'GINTO';

  @override
  String get platinum => 'PLATINUM';

  @override
  String get diamond => 'DIAMANTE';

  @override
  String get analyzingYourJourney => 'Sinusuri ang Iyong Paglalakbay...';

  @override
  String get aiCreatingSanctuary =>
      'Gumagawa ang aming AI ng iyong personalized na tirahan.';

  @override
  String get understandingHabits => 'Inuunawa ang mga gawi...';

  @override
  String get calculatingBaseline => 'Kina-kalkula ang baseline...';

  @override
  String get personalizingPlan => 'Iniaangkop ang iyong plano...';

  @override
  String get finalizingSanctuary => 'Tinatapos ang iyong tirahan...';

  @override
  String get creatingYourPlan => 'Ginigawa ang iyong plano...';

  @override
  String get personalizedPlanError =>
      'Hindi namin magawa ang iyong personalized na plano. Pakisubukan muli.';

  @override
  String get retry => 'Subukan Ulit';

  @override
  String get breathInhale => 'HUMINGA NANG MALALIM';

  @override
  String get breathHold => 'PIGILAN';

  @override
  String get breathExhale => 'I-HIBO';

  @override
  String get breathDone => 'TAPOS NA';

  @override
  String get breathGreatJob => 'Napakahusay!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesyon ngayong araw',
      one: '$count sesyon ngayong araw',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Tapusin ang Pagsasanay';

  @override
  String get done => 'Tapos na';

  @override
  String get noCopingTipsYet => 'Wala pang mga tip sa pagharap';

  @override
  String get copingStrategiesWillAppear =>
      'Lalabas dito ang iyong mga personalized na diskarte kapag natapos na ang paggawa ng iyong plano sa paggaling.';

  @override
  String get strategiesTailoredToTriggers =>
      'Mga diskarteng nakatutok sa iyong mga trigger';

  @override
  String get cravingsPeakAndPass => 'Tumaas at lumilipas\nang paghahangad';

  @override
  String get rideTheWaveDescription =>
      'Karamihan sa paghahangad ay lumilipas sa loob ng 15 minuto. Hindi mo kailangang kumilos — sumabay lang sa amin.';

  @override
  String get stayWithIt => 'manatili rito';

  @override
  String get youMadeIt => 'nagtagumpay ka';

  @override
  String get readyWhenYouAre => 'handa na kapag handa ka na';

  @override
  String get rideItAgain => 'Sumabay muli';

  @override
  String get start15MinuteTimer => 'Simulan ang 15-Minutong Timer';

  @override
  String get rideTheWaveCompletedMessage =>
      'Nalagpasan mo ang alon. Tunay na lakas \'yan. 💪';

  @override
  String get myProgress => 'Aking Pag-unlad';

  @override
  String get weekLabel => 'Linggo';

  @override
  String get monthLabel => 'Buwan';

  @override
  String get allLabel => 'Lahat';

  @override
  String get daysSoberStatLabel => 'Mga araw na\nsober';

  @override
  String get savedStatLabel => 'Naipon';

  @override
  String get avoidedStatLabel => 'Naiwasan';

  @override
  String get moodTrends => 'Mga trend ng mood';

  @override
  String get cravingsPattern => 'Pattern ng paghahangad';

  @override
  String get unlockLabel => 'I-unlock';

  @override
  String get unlockFullStats => 'I-unlock ang buong stats';

  @override
  String get premiumStatsMessage =>
      'Ang mga trend ng mood at pattern ng paghahangad ay tampok sa Premium. Mag-upgrade para makita ang buong stats.';

  @override
  String get healthMilestonesWillAppear =>
      'Lalabas dito ang iyong mga milestone sa kalusugan.';

  @override
  String get healthMilestones => 'Mga milestone sa kalusugan';

  @override
  String dayNumber(int day) {
    return 'Araw $day';
  }

  @override
  String get soberLabel => 'Sober';

  @override
  String get slipLabel => 'Pagkakamali';

  @override
  String get noDataLabel => 'Walang data';

  @override
  String get milestone24Hours => '24 na Oras';

  @override
  String get milestoneOneWeek => 'Isang Linggo';

  @override
  String get milestoneOneMonth => 'Isang Buwan';

  @override
  String get milestoneThreeMonths => 'Tatlong Buwan';

  @override
  String get milestoneSixMonths => 'Anim na Buwan';

  @override
  String get milestoneOneYear => 'Isang Taon';

  @override
  String milestoneDayCount(int day) {
    return 'Milestone sa Araw $day';
  }

  @override
  String get maybeLaterLabel => 'Võib-olla hiljem';

  @override
  String get cancelLabel => 'Tühista';
}
