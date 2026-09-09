// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get skip => 'वगळा';

  @override
  String get continueButton => 'सुरू ठेवा';

  @override
  String get getStarted => 'सुरुवात करा';

  @override
  String get onboardingTitle1 => 'तुमच्या जीवनावर नियंत्रण मिळवा';

  @override
  String get onboardingSubtitle1 =>
      'तुमचा प्रवास नोंदवा, प्रत्येक यशाचा आनंद साजरा करा आणि दिवसेंदिवस अधिक निरोगी व्हा.';

  @override
  String get onboardingTitle2 => 'तुमचा AI रिकव्हरी साथीदार';

  @override
  String get onboardingSubtitle2 =>
      'तुमच्या प्रवासानुसार तयार केलेले वैयक्तिक मार्गदर्शन, निरोगी सवयी, प्रेरणादायी स्मरणपत्रे आणि प्रगती अहवाल मिळवा.';

  @override
  String get goodMorning => 'शुभ सकाळ';

  @override
  String get goodAfternoon => 'शुभ दुपार';

  @override
  String get goodEvening => 'शुभ संध्याकाळ';

  @override
  String get goodNight => 'शुभ रात्री';

  @override
  String get embracingClarity => 'दररोज थोडी अधिक स्पष्टता मिळवत पुढे चला.';

  @override
  String get streakLabel => 'सलग दिवस';

  @override
  String get goalLabel => 'ध्येय';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवस',
      one: '$count दिवस',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'प्रीमियम प्लॅन';

  @override
  String get premiumPlanSubtitle => 'तुमचा संपूर्ण रिकव्हरी अनुभव अनलॉक करा';

  @override
  String get accountAndSupport => 'खाते आणि सहाय्य';

  @override
  String get privacyPolicy => 'गोपनीयता धोरण';

  @override
  String get privacyPolicySubtitle =>
      'डेटा शेअरिंग आणि खात्याची सुरक्षितता व्यवस्थापित करा';

  @override
  String get termsOfService => 'सेवा अटी';

  @override
  String get termsOfServiceSubtitle =>
      'वारंवार विचारले जाणारे प्रश्न, आमच्याशी संपर्क आणि संसाधने';

  @override
  String get shareApp => 'अॅप शेअर करा';

  @override
  String get shareAppSubtitle => 'तुमच्या मित्रांसोबत अॅप शेअर करा';

  @override
  String get resetData => 'डेटा रीसेट करा';

  @override
  String get resetDataSubtitle => 'या डिव्हाइसवर जतन केलेले सर्व काही हटवा';

  @override
  String get resetAllDataTitle => 'सर्व डेटा रीसेट करायचा?';

  @override
  String get resetAllDataMessage =>
      'यामुळे या डिव्हाइसवर जतन केलेले प्रोफाइल, जर्नल नोंदी आणि प्रगती यासह सर्व काही हटवले जाईल — आणि ही कृती पूर्ववत करता येणार नाही.';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get reset => 'रीसेट करा';

  @override
  String get chooseFromGallery => 'गॅलरीमधून निवडा';

  @override
  String get takePhoto => 'फोटो काढा';

  @override
  String get removePhoto => 'फोटो काढून टाका';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'फोटो अपडेट करता आला नाही: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'फोटो काढून टाकता आला नाही: $error';
  }

  @override
  String get photoTooLarge =>
      'कॉम्प्रेस केल्यानंतरही हा फोटो खूप मोठा आहे — कृपया दुसरा फोटो वापरून पाहा.';

  @override
  String get unableToLoadProfile => 'तुमचे प्रोफाइल लोड करता आले नाही';

  @override
  String get pleaseTryAgain => 'कृपया पुन्हा प्रयत्न करा.';

  @override
  String get tryAgain => 'पुन्हा प्रयत्न करा';

  @override
  String get profileNotFound => 'प्रोफाइल सापडले नाही';

  @override
  String get refresh => 'रिफ्रेश करा';

  @override
  String get noProfileDataFound =>
      'या डिव्हाइसवर अद्याप कोणताही प्रोफाइल डेटा सापडला नाही.';

  @override
  String couldNotResetData(String error) {
    return 'डेटा रीसेट करता आला नाही: $error';
  }

  @override
  String get navHome => 'होम';

  @override
  String get navStats => 'आकडेवारी';

  @override
  String get navJournal => 'जर्नल';

  @override
  String get navBadges => 'बॅज';

  @override
  String get navProfile => 'प्रोफाइल';

  @override
  String featureComingSoon(String feature) {
    return '$feature लवकरच उपलब्ध होईल.';
  }

  @override
  String get appWordmark => 'कल्याण';

  @override
  String get appTitle => 'दारू पिणे सोडा';

  @override
  String get splashSubtitle => 'दारूमुक्त जीवनाकडे\nपहिले पाऊल टाका';

  @override
  String get preparingJourney => 'तुमचा प्रवास\nतयार करत आहे';

  @override
  String get taskMorningMeditation => 'सकाळचे ध्यान (10 मिनिटे)';

  @override
  String get taskReadChapter => '\"द सोबर डायरीज\" मधील अध्याय 4 वाचा';

  @override
  String get taskEveningJournal => 'संध्याकाळचे कृतज्ञता जर्नल';

  @override
  String get close => 'बंद करा';

  @override
  String get youAreDoingGreat => 'तुम्ही खूप छान करत आहात!';

  @override
  String get shareMilestone => 'यश शेअर करा';

  @override
  String shareMilestoneMessage(int days) {
    return 'माझ्या रिकव्हरी प्रवासाचा मी $days व्या दिवशी आहे! 💪';
  }

  @override
  String get shareMilestoneSubject => 'माझे रिकव्हरी यश';

  @override
  String get weeklyReportReadyTitle => 'तुमचा साप्ताहिक अहवाल तयार आहे';

  @override
  String get weeklyReportReadySubtitle =>
      'तुमचा आठवडा कसा गेला ते पाहण्यासाठी टॅप करा';

  @override
  String get howAreYouFeeling => 'तुम्हाला कसे वाटत आहे?';

  @override
  String get moodTough => 'कठीण';

  @override
  String get moodOkay => 'ठीक';

  @override
  String get moodGood => 'चांगले';

  @override
  String get moneySaved => 'वाचवलेले पैसे';

  @override
  String get caloriesSaved => 'वाचवलेल्या कॅलरी';

  @override
  String get healthScore => 'आरोग्य गुण';

  @override
  String get drinksAvoided => 'टाळलेली पेये';

  @override
  String get estimated => 'अंदाजे';

  @override
  String get aiGenerated => 'AI द्वारे तयार केलेले';

  @override
  String get daysCapsLabel => 'दिवस';

  @override
  String get todaysMotivation => 'आजची प्रेरणा';

  @override
  String get defaultMotivationQuote =>
      'तुम्ही तुमची बांधिलकी यशस्वीपणे टिकवून ठेवली आहे. सकारात्मक बदलाच्या या प्रवाहात पुढे जात राहा.';

  @override
  String get talkToCoach => 'कोचशी बोला';

  @override
  String get havingACraving => 'मला दारूची इच्छा होत आहे';

  @override
  String get unlockWeeklyReportsTitle => 'साप्ताहिक अहवाल अनलॉक करा';

  @override
  String get unlockWeeklyReportsMessage =>
      'दर आठवड्याला तुमचे दारूमुक्त दिवस, मूडमधील बदल आणि वैयक्तिक AI अभिप्राय पहा. अनलॉक करण्यासाठी Premium वर अपग्रेड करा.';

  @override
  String get maybeLater => 'कदाचित नंतर';

  @override
  String get upgrade => 'अपग्रेड करा';

  @override
  String get weeklyReportTitle => 'साप्ताहिक अहवाल';

  @override
  String get weeklyReportsPremiumTitle =>
      'साप्ताहिक अहवाल हे Premium वैशिष्ट्य आहे';

  @override
  String get weeklyReportsPremiumMessage =>
      'दर आठवड्याला तुमचे दारूमुक्त दिवस, मूडमधील बदल, दारूची इच्छा आणि वैयक्तिक AI अभिप्राय पहा.';

  @override
  String get upgradeToPremium => 'Premium वर अपग्रेड करा';

  @override
  String get couldNotGenerateReport => 'आत्ता तुमचा अहवाल तयार करता आला नाही.';

  @override
  String get tryAgainLower => 'पुन्हा प्रयत्न करा';

  @override
  String get statSoberDays => 'दारूमुक्त दिवस';

  @override
  String get statAvgMood => 'सरासरी मूड';

  @override
  String get statCravings => 'दारूची इच्छा';

  @override
  String get statMoneySaved => 'वाचवलेले पैसे';

  @override
  String get coachFeedback => 'कोचचा अभिप्राय';

  @override
  String get journalInsights => 'जर्नलमधील माहिती';

  @override
  String get next => 'पुढे';

  @override
  String get question1Title => 'तुमचे ध्येय काय आहे';

  @override
  String get question1Subtitle => 'तुमच्यासाठी सर्वात महत्त्वाचे\nध्येय निवडा';

  @override
  String get goalQuitCompletely => 'पूर्णपणे सोडा';

  @override
  String get goalReduceDrinking => 'दारूचे सेवन कमी करा';

  @override
  String get goalTakeABreak => 'थोडा ब्रेक घ्या';

  @override
  String get goalBuildHealthierHabits => 'निरोगी सवयी तयार करा';

  @override
  String get question3Title => 'तुमच्या\nदिनचर्येबद्दल सांगा';

  @override
  String get drinksPerWeek => 'दर आठवड्याला पेये';

  @override
  String get moneySpentPerWeek => 'दर आठवड्याला खर्च होणारे पैसे';

  @override
  String get drinkingLevel => 'दारू पिण्याची पातळी';

  @override
  String get triggersLabel => 'ट्रिगर्स';

  @override
  String get levelSocial => 'सामाजिक';

  @override
  String get levelRegular => 'नियमित';

  @override
  String get levelHeavy => 'जास्त';

  @override
  String get levelDependent => 'अवलंबून';

  @override
  String get triggerStress => 'तणाव';

  @override
  String get triggerLoneliness => 'एकटेपणा';

  @override
  String get triggerHabit => 'सवय';

  @override
  String get triggerSadness => 'दुःख';

  @override
  String get triggerAnger => 'राग';

  @override
  String get triggerBoredom => 'कंटाळा';

  @override
  String get triggerSocialPressure => 'सामाजिक दबाव';

  @override
  String get triggerCelebration => 'उत्सव';

  @override
  String get triggerSleepProblems => 'झोपेच्या समस्या';

  @override
  String get triggerWorkPressure => 'कामाचा ताण';

  @override
  String get question4Title => 'तुम्हाला बदल का करायचा आहे?';

  @override
  String get question4Subtitle =>
      'तुमचे कारण तुम्हाला प्रेरित राहण्यास मदत करेल.';

  @override
  String get reasonImproveHealth => 'माझे आरोग्य सुधारा';

  @override
  String get reasonSaveMoney => 'पैसे वाचवा';

  @override
  String get reasonFamily => 'कुटुंब';

  @override
  String get reasonBetterSleep => 'चांगली झोप';

  @override
  String get reasonMentalClarity => 'मानसिक स्पष्टता';

  @override
  String get reasonFitness => 'फिटनेस';

  @override
  String get reasonSelfRespect => 'स्वाभिमान';

  @override
  String get reasonCareer => 'करिअर';

  @override
  String get milestoneUnlockedLabel => 'यश अनलॉक झाले';

  @override
  String incredibleNamePrefix(String name) {
    return 'अप्रतिम, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount वाचवले';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count टाळले';
  }

  @override
  String get shareMyMilestone => 'माझे यश शेअर करा';

  @override
  String get milestoneImageShareError =>
      'यशाची प्रतिमा तयार करता आली नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get dailyCheckInTitle => 'दैनिक चेक-इन';

  @override
  String get howAreYouFeelingToday => 'आज तुम्हाला कसे वाटत आहे?';

  @override
  String get honestAnswerHelp =>
      'तुमचे प्रामाणिक उत्तर आम्हाला तुम्हाला अधिक चांगले समर्थन देण्यास मदत करते';

  @override
  String get didYouDrinkToday => 'तुम्ही आज दारू प्यायलात का?';

  @override
  String get noLabel => 'नाही';

  @override
  String get yesLabel => 'होय';

  @override
  String get cravingLevelNow => 'आत्ता दारूची इच्छा किती आहे?';

  @override
  String get anythingOnMind => 'तुमच्या मनात काही आहे का?';

  @override
  String get optionalLabel => '(पर्यायी)';

  @override
  String get dailyNoteHint => 'तुमचा दिवस, ट्रिगर्स, यश याबद्दल लिहा...';

  @override
  String get alreadyCheckedInToday => 'आज आधीच चेक-इन केले आहे';

  @override
  String get saveCheckIn => 'चेक-इन जतन करा';

  @override
  String get checkInsHelpTrack =>
      'चेक-इनमुळे कालांतराने तुमची प्रगती नोंदवता येते';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'तुम्ही आजचा चेक-इन आधीच पूर्ण केला आहे.';

  @override
  String get pleaseAnswerBothQuestions =>
      'कृपया आधी वरील दोन्ही प्रश्नांची उत्तरे द्या';

  @override
  String get checkInSaved => 'चेक-इन जतन केले';

  @override
  String get cravingNone => 'काहीही नाही';

  @override
  String get cravingLow => 'कमी';

  @override
  String get cravingMedium => 'मध्यम';

  @override
  String get cravingStrong => 'जास्त';

  @override
  String get moodBad => 'वाईट';

  @override
  String get moodLow => 'कमी';

  @override
  String get moodGreat => 'उत्तम';

  @override
  String get sosSupportTitle => 'SOS सहाय्य';

  @override
  String notAloneMessage(String name) {
    return 'तुम्ही एकटे नाही आहात, $name';
  }

  @override
  String get cravingsPassMessage =>
      'दारूची इच्छा निघून जाते. हा क्षण पार करण्यासाठी खालीलपैकी काहीतरी निवडा.';

  @override
  String get breathingExercise => 'श्वसन व्यायाम';

  @override
  String get breathingExerciseSubtitle => 'मार्गदर्शित 4-7-8 तंत्र, 2 मिनिटे';

  @override
  String get rideTheWave => 'लाटेसोबत पुढे चला';

  @override
  String get rideTheWaveSubtitle =>
      '15 मिनिटांचा टाइमर — दारूची इच्छा नेहमी कमी होते';

  @override
  String get copingTips => 'सामना करण्याच्या टिप्स';

  @override
  String get copingTipsSubtitle => 'तुमच्या ट्रिगर्ससाठी वैयक्तिक रणनीती';

  @override
  String get talkToAiCoach => 'AI कोचशी बोला';

  @override
  String get talkToAiCoachSubtitle => 'तुमच्या रिकव्हरी साथीदाराशी चॅट करा';

  @override
  String get callSomeone => 'कोणाला तरी कॉल करा';

  @override
  String get callSomeoneSubtitle => 'तुमच्या विश्वासातील व्यक्तीशी संपर्क साधा';

  @override
  String get contactsPermissionNeeded =>
      'एखाद्या संपर्काला कॉल करण्यासाठी Contacts ची परवानगी आवश्यक आहे.';

  @override
  String get beatenCravingsPrefix => 'तुम्ही दारूच्या इच्छेवर ';

  @override
  String beatenCravingsCount(int count) {
    return '$count वेळा मात केली आहे';
  }

  @override
  String get beatenCravingsSuffix => ' आधी. तुम्ही पुन्हा करू शकता.';

  @override
  String get tellUsAboutYourself => 'तुमच्याबद्दल आम्हाला सांगा';

  @override
  String get detailsSubtitle =>
      'ही माहिती तुमचा रिकव्हरी प्रवास वैयक्तिक करण्यास आणि अचूक माहिती देण्यास मदत करते.';

  @override
  String get nameLabel => 'नाव';

  @override
  String get nameHint => 'उदा., Alex Rivers';

  @override
  String get ageLabel => 'वय';

  @override
  String get ageHint => 'उदा., 32';

  @override
  String get sexAssignedAtBirth => 'जन्मावेळी निश्चित केलेले लिंग';

  @override
  String get sexFemale => 'स्त्री';

  @override
  String get sexMale => 'पुरुष';

  @override
  String get heightLabel => 'उंची';

  @override
  String get weightLabel => 'वजन';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'दैनिक मर्यादा पूर्ण झाली';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'आजचे सर्व $limit मोफत संदेश तुम्ही वापरले आहेत. अमर्यादित कोच चॅटसाठी Premium वर अपग्रेड करा.';
  }

  @override
  String get coachConnectError =>
      'आत्ता कनेक्ट करता आले नाही. कृपया थोड्या वेळाने पुन्हा प्रयत्न करा.';

  @override
  String get clearConversationTitle => 'संभाषण साफ करायचे?';

  @override
  String get clearConversationMessage =>
      'यामुळे तुमचा कोच चॅट इतिहास कायमचा हटवला जाईल.';

  @override
  String get clearLabel => 'साफ करा';

  @override
  String get recoveryCoachTitle => 'रिकव्हरी कोच';

  @override
  String get onlineLabel => 'ऑनलाइन';

  @override
  String get clearConversationMenuItem => 'संभाषण साफ करा';

  @override
  String chatGreeting(String name) {
    return 'हाय $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'तुमच्या प्रवासाचा हा $days वा दिवस आहे. तुम्हाला काही बोलायचे असेल तेव्हा मी इथे आहे.';
  }

  @override
  String get quickPromptsLabel => 'जलद पर्याय';

  @override
  String get promptCravingLabel => 'दारूची इच्छा होत आहे';

  @override
  String get promptCravingSubtitle => 'लवकर स्वतःला स्थिर करा';

  @override
  String get promptMotivationLabel => 'प्रेरणा हवी आहे';

  @override
  String get promptMotivationSubtitle => 'कठीण वेळी थोडी प्रेरणा';

  @override
  String get promptSocialLabel => 'सामाजिक परिस्थिती';

  @override
  String get promptSocialSubtitle => 'मेळाव्यात परिस्थिती हाताळा';

  @override
  String get promptSlippedLabel => 'माझ्याकडून चूक झाली';

  @override
  String get promptSlippedSubtitle => 'कोणताही न्याय नाही, फक्त समर्थन';

  @override
  String get typeMessageHint => 'संदेश टाइप करा...';

  @override
  String get editProfileTitle => 'प्रोफाइल संपादित करा';

  @override
  String couldNotSaveProfile(String error) {
    return 'प्रोफाइल जतन करता आले नाही: $error';
  }

  @override
  String get heightCmLabel => 'उंची (cm)';

  @override
  String get weightKgLabel => 'वजन (kg)';

  @override
  String get saveChangesLabel => 'बदल जतन करा';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'प्रगत इनसाइट्स आणि विश्लेषण';

  @override
  String get featureUnlimitedJournal => 'अमर्यादित जर्नल नोंदी';

  @override
  String get featureUnlimitedChat => 'AI कोचसोबत अमर्यादित चॅट';

  @override
  String get featureCommunityGroups => 'विशेष कम्युनिटी ग्रुप्स';

  @override
  String get featurePrioritySupport => 'प्राधान्य तज्ज्ञ सहाय्य';

  @override
  String get featureThemePacks => 'कस्टम थीम पॅक्स';

  @override
  String get featureDataExport => 'डेटा एक्सपोर्ट';

  @override
  String get featureAdFree => 'जाहिरातमुक्त अनुभव';

  @override
  String get premiumMemberTitle => 'तुम्ही Premium सदस्य आहात';

  @override
  String get unlockFullRecoveryTitle =>
      'तुमचा संपूर्ण रिकव्हरी\nअनुभव अनलॉक करा';

  @override
  String get premiumMemberSubtitle =>
      'तुमच्या रिकव्हरी प्रवासाला पाठिंबा दिल्याबद्दल धन्यवाद — खालील सर्व Premium वैशिष्ट्ये अनलॉक झाली आहेत.';

  @override
  String get premiumJoinSubtitle =>
      'आमच्या Premium साधनांसह आणि वैयक्तिक सहाय्यासह\nआपला उपचाराचा प्रवास जलद करणाऱ्या\nहजारो लोकांच्या समुदायात सामील व्हा.';

  @override
  String get monthlyPlanLabel => 'मासिक';

  @override
  String get perMonthSuffix => '/महिना';

  @override
  String get cancelAnytimeLabel => 'कधीही रद्द करा';

  @override
  String get yearlyPlanLabel => 'वार्षिक';

  @override
  String billedAnnuallyLabel(String amount) {
    return '$amount इतके वार्षिक बिल आकारले जाईल';
  }

  @override
  String get bestValueLabel => 'सर्वोत्तम मूल्य';

  @override
  String get alreadyPremiumLabel => 'तुम्ही Premium आहात ✓';

  @override
  String get startPremiumLabel => 'Premium सुरू करा';

  @override
  String get manageSubscriptionLabel =>
      'तुमच्या डिव्हाइसच्या सबस्क्रिप्शन सेटिंग्जमधून व्यवस्थापित करा किंवा रद्द करा.';

  @override
  String get noCommitmentLabel => 'कोणतीही बांधिलकी नाही. कधीही रद्द करा.';

  @override
  String get continueFreePlanLabel => 'मोफत प्लॅनसह सुरू ठेवा';

  @override
  String get backToHomeLabel => 'होमवर परत जा';

  @override
  String get cancelPremiumLabel => 'Premium रद्द करा';

  @override
  String get cancelPremiumTitle => 'Premium रद्द करायचे?';

  @override
  String get cancelPremiumMessage =>
      'तुमचा अमर्यादित जर्नल नोंदी, अमर्यादित कोच चॅट, आकडेवारी इनसाइट्स आणि साप्ताहिक अहवालांचा प्रवेश गमवाल. तुम्ही कधीही पुन्हा सबस्क्राइब करू शकता.';

  @override
  String get keepPremiumLabel => 'Premium सुरू ठेवा';

  @override
  String get nowPremiumMessage =>
      'तुम्ही आता Premium आहात! तुमचा संपूर्ण रिकव्हरी अनुभव आनंदाने वापरा.';

  @override
  String get premiumCancelledMessage =>
      'Premium रद्द केले. तुम्ही पुन्हा मोफत प्लॅनवर आहात.';

  @override
  String get termsOfUseLabel => 'वापराच्या अटी';

  @override
  String get navHomeLabel => 'होम';

  @override
  String get navStatsLabel => 'आकडेवारी';

  @override
  String get navJournalLabel => 'जर्नल';

  @override
  String get navBadgesLabel => 'बॅज';

  @override
  String get navProfileLabel => 'प्रोफाइल';

  @override
  String get recoveryGoalsTitle => 'रिकव्हरीची ध्येये';

  @override
  String get drinksPerWeekLabel => 'दर आठवड्याला पेये';

  @override
  String get quitReasonsLabel => 'सोडण्याची कारणे';

  @override
  String get quitReasonsHelperText =>
      'एकापेक्षा जास्त कारणे स्वल्पविरामाने वेगळी करा.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'रिकव्हरीची ध्येये जतन करता आली नाहीत: $error';
  }

  @override
  String get goalHint => 'उदा., पूर्णपणे दारू सोडणे';

  @override
  String get drinksPerWeekHint => 'उदा., 12';

  @override
  String get quitReasonsHint => 'उदा., आरोग्य, कुटुंब, पैसे';

  @override
  String get todaysPrompt => 'आजचा प्रश्न';

  @override
  String get defaultJournalPrompt => 'आज तुमच्या मनात काय आहे?';

  @override
  String get aiJournalInsights => 'AI जर्नल इनसाइट्स';

  @override
  String get unlockJournalInsightsMessage =>
      'तुमच्या जर्नल नोंदींमधून साप्ताहिक नमुने, मूडमधील बदल आणि वैयक्तिक इनसाइट्स अनलॉक करा.';

  @override
  String get notEnoughJournalData =>
      'अद्याप पुरेसा डेटा नाही — या आठवड्यात काही नोंदी लिहा आणि पुन्हा तपासा.';

  @override
  String get openEntry => 'उघडा';

  @override
  String get editEntry => 'संपादित करा';

  @override
  String get deleteEntry => 'हटवा';

  @override
  String get searchJournalEntries => 'नोंदी शोधा...';

  @override
  String get writeNewEntry => 'नवीन नोंद लिहा';

  @override
  String get recentEntries => 'अलीकडील नोंदी';

  @override
  String get noJournalEntriesYet =>
      'अद्याप जर्नल नोंदी नाहीत — वर तुमचे पहिले चिंतन लिहा.';

  @override
  String get noEntriesMatchFilters =>
      'तुमच्या फिल्टर्सशी जुळणाऱ्या नोंदी नाहीत.';

  @override
  String get weeklyJournalLimitReached => 'साप्ताहिक मर्यादा पूर्ण झाली';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'या आठवड्यातील सर्व $limit मोफत जर्नल नोंदी तुम्ही वापरल्या आहेत. अमर्यादित नोंदींसाठी Premium वर अपग्रेड करा.';
  }

  @override
  String get newEntry => 'नवीन नोंद';

  @override
  String get writeYourThoughts => 'तुमचे विचार लिहा';

  @override
  String get saveEntry => 'नोंद जतन करा';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'या आठवड्यात $limit मोफत नोंदींपैकी $remaining बाकी';
  }

  @override
  String get deleteEntryQuestion => 'नोंद हटवायची?';

  @override
  String get deleteEntryConfirmation =>
      'ही नोंद कायमची हटवली जाईल. ही कृती पूर्ववत करता येणार नाही.';

  @override
  String get journalEntryNotFound => 'नोंद सापडली नाही';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'ही जर्नल नोंद हटवली गेली असण्याची शक्यता आहे.';

  @override
  String get goBack => 'मागे जा';

  @override
  String get journalEntryTitle => 'जर्नल नोंद';

  @override
  String get moodStruggling => 'संघर्ष करत आहे';

  @override
  String get moodUnwell => 'अस्वस्थ';

  @override
  String get moodNeutral => 'तटस्थ';

  @override
  String get whatHappenedToday => 'आज काय घडले?';

  @override
  String get trigger => 'ट्रिगर';

  @override
  String get whatHelped => 'कशामुळे मदत झाली';

  @override
  String get whatIllTryNextTime => 'पुढच्या वेळी मी काय प्रयत्न करेन';

  @override
  String get journalPrivacyMessage =>
      'तुमचे चिंतन खाजगी आहे आणि तुमच्या जर्नलमध्ये जतन केले जाते.';

  @override
  String get unlocked => 'अनलॉक केले';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '',
    );
    return '$count दिवस$_temp0 बाकी';
  }

  @override
  String daysCount(int count) {
    return '$count दिवस';
  }

  @override
  String get firstReflection => 'पहिले\nचिंतन';

  @override
  String get oneJournalEntry => '1 जर्नल नोंद';

  @override
  String get openBook => 'पुस्तक उघडा';

  @override
  String get tenJournalEntries => '10 जर्नल नोंदी';

  @override
  String get dedicatedWriter => 'समर्पित\nलेखक';

  @override
  String get thirtyJournalEntries => '30 जर्नल नोंदी';

  @override
  String get firstConversation => 'पहिले\nसंभाषण';

  @override
  String get oneAiCoachChat => '1 AI कोच चॅट';

  @override
  String get keepTalking => 'बोलत राहा';

  @override
  String get fiveConversations => '5 संभाषणे';

  @override
  String get coachCompanion => 'कोच\nसाथीदार';

  @override
  String get twentyConversations => '20 संभाषणे';

  @override
  String get checkInHabit => 'चेक-इन\nसवय';

  @override
  String get sevenCheckIns => '7 चेक-इन्स';

  @override
  String get consistencyPro => 'सातत्याचा\nतज्ज्ञ';

  @override
  String get thirtyCheckIns => '30 चेक-इन्स';

  @override
  String get dedicatedJourney => 'समर्पित\nप्रवास';

  @override
  String get hundredCheckIns => '100 चेक-इन्स';

  @override
  String get goalGetter => 'ध्येय साध्य करणारा';

  @override
  String get threeGoalsCompleted => '3 ध्येये पूर्ण';

  @override
  String get goalAchiever => 'ध्येय\nसाध्यकर्ता';

  @override
  String get tenGoalsCompleted => '10 ध्येये पूर्ण';

  @override
  String get firstSavings => 'पहिली\nबचत';

  @override
  String get fiveHundredSaved => '\$500 वाचवले';

  @override
  String get smartSaver => 'हुशार बचतकर्ता';

  @override
  String get oneThousandSaved => '\$1,000 वाचवले';

  @override
  String get bigSaver => 'मोठा बचतकर्ता';

  @override
  String get fiveThousandSaved => '\$5,000 वाचवले';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current पैकी \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$target पैकी $current';
  }

  @override
  String get firstMilestoneWaiting =>
      'पुढे जात राहा — तुमचे पहिले यश तुमची वाट पाहत आहे!';

  @override
  String get badgesAndMilestones => 'बॅज आणि यश';

  @override
  String get yourMilestoneJourney => 'तुमचा यशाचा प्रवास';

  @override
  String milestonesAchieved(int count) {
    return '$count यश मिळवले.\nपाहण्यासाठी टॅप करा';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'तुमच्या प्रवासातील एकूण $total यशांपैकी $unlocked तुम्ही अनलॉक केली आहेत.';
  }

  @override
  String get remaining => 'बाकी';

  @override
  String get complete => 'पूर्ण';

  @override
  String get nextMilestone => 'पुढील यश';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% पूर्ण';
  }

  @override
  String get sobrietyMilestones => 'दारूमुक्तीची यशे';

  @override
  String get journeyBadges => 'प्रवासाचे बॅज';

  @override
  String get bronze => 'कांस्य';

  @override
  String get silver => 'चांदी';

  @override
  String get gold => 'सोने';

  @override
  String get platinum => 'प्लॅटिनम';

  @override
  String get diamond => 'हिरा';

  @override
  String get analyzingYourJourney => 'तुमच्या प्रवासाचे विश्लेषण करत आहे...';

  @override
  String get aiCreatingSanctuary =>
      'आमचे AI तुमच्यासाठी वैयक्तिक रिकव्हरी जागा तयार करत आहे.';

  @override
  String get understandingHabits => 'सवयी समजून घेत आहे...';

  @override
  String get calculatingBaseline => 'तुमची मूलभूत पातळी मोजत आहे...';

  @override
  String get personalizingPlan => 'तुमचा प्लॅन वैयक्तिक करत आहे...';

  @override
  String get finalizingSanctuary => 'तुमची रिकव्हरी जागा अंतिम करत आहे...';

  @override
  String get creatingYourPlan => 'तुमचा प्लॅन तयार करत आहे...';

  @override
  String get personalizedPlanError =>
      'तुमचा वैयक्तिक प्लॅन तयार करता आला नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get breathInhale => 'श्वास घ्या';

  @override
  String get breathHold => 'थांबा';

  @override
  String get breathExhale => 'श्वास सोडा';

  @override
  String get breathDone => 'पूर्ण';

  @override
  String get breathGreatJob => 'छान केले!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सत्रे आज',
      one: '$count सत्र आज',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'व्यायाम समाप्त करा';

  @override
  String get done => 'पूर्ण';

  @override
  String get noCopingTipsYet => 'अद्याप सामना करण्याच्या टिप्स नाहीत';

  @override
  String get copingStrategiesWillAppear =>
      'तुमचा रिकव्हरी प्लॅन तयार झाल्यावर तुमच्यासाठी वैयक्तिक सामना करण्याच्या रणनीती येथे दिसतील.';

  @override
  String get strategiesTailoredToTriggers =>
      'तुमच्या ट्रिगर्सनुसार तयार केलेल्या रणनीती';

  @override
  String get cravingsPeakAndPass => 'दारूची इच्छा वाढते\nआणि कमी होते';

  @override
  String get rideTheWaveDescription =>
      'बहुतेक दारूच्या इच्छा 15 मिनिटांत कमी होतात. त्यावर कृती करण्याची गरज नाही — आमच्यासोबत तो क्षण पार करा.';

  @override
  String get stayWithIt => 'टिकून राहा';

  @override
  String get youMadeIt => 'तुम्ही यशस्वी झालात';

  @override
  String get readyWhenYouAre => 'तुम्ही तयार असाल तेव्हा';

  @override
  String get rideItAgain => 'पुन्हा सामना करा';

  @override
  String get start15MinuteTimer => '15 मिनिटांचा टाइमर सुरू करा';

  @override
  String get rideTheWaveCompletedMessage =>
      'तुम्ही ती लाट पार केली. हीच खरी ताकद आहे. 💪';

  @override
  String get myProgress => 'माझी प्रगती';

  @override
  String get weekLabel => 'आठवडा';

  @override
  String get monthLabel => 'महिना';

  @override
  String get allLabel => 'सर्व';

  @override
  String get daysSoberStatLabel => 'दारूमुक्त\nदिवस';

  @override
  String get savedStatLabel => 'वाचवले';

  @override
  String get avoidedStatLabel => 'टाळले';

  @override
  String get moodTrends => 'मूडमधील बदल';

  @override
  String get cravingsPattern => 'दारूच्या इच्छेचा नमुना';

  @override
  String get unlockLabel => 'अनलॉक करा';

  @override
  String get unlockFullStats => 'संपूर्ण आकडेवारी अनलॉक करा';

  @override
  String get premiumStatsMessage =>
      'मूडमधील बदल आणि दारूच्या इच्छेचे नमुने ही Premium वैशिष्ट्ये आहेत. तुमची संपूर्ण आकडेवारी पाहण्यासाठी अपग्रेड करा.';

  @override
  String get healthMilestonesWillAppear => 'तुमची आरोग्यविषयक यशे येथे दिसतील.';

  @override
  String get healthMilestones => 'आरोग्यविषयक यशे';

  @override
  String dayNumber(int day) {
    return 'दिवस $day';
  }

  @override
  String get soberLabel => 'दारूमुक्त';

  @override
  String get slipLabel => 'चूक झाली';

  @override
  String get noDataLabel => 'डेटा नाही';

  @override
  String get milestone24Hours => '24 तास';

  @override
  String get milestoneOneWeek => 'एक आठवडा';

  @override
  String get milestoneOneMonth => 'एक महिना';

  @override
  String get milestoneThreeMonths => 'तीन महिने';

  @override
  String get milestoneSixMonths => 'सहा महिने';

  @override
  String get milestoneOneYear => 'एक वर्ष';

  @override
  String milestoneDayCount(int day) {
    return 'दिवस $day चे यश';
  }

  @override
  String get maybeLaterLabel => 'कदाचित नंतर';

  @override
  String get cancelLabel => 'रद्द करा';
}
