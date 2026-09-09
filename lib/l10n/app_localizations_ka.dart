// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get skip => 'გამოტოვება';

  @override
  String get continueButton => 'გაგრძელება';

  @override
  String get getStarted => 'დაწყება';

  @override
  String get onboardingTitle1 => 'მართეთ თქვენი ცხოვრება';

  @override
  String get onboardingSubtitle1 =>
      'ადევნეთ თვალი თქვენს გზას, აღნიშნეთ თითოეული მიღწევა და გახდით უფრო ჯანსაღი დღითიდღე.';

  @override
  String get onboardingTitle2 => 'თქვენი AI აღდგენის ასისტენტი';

  @override
  String get onboardingSubtitle2 =>
      'მიიღეთ პერსონალიზებული რჩევები, ჯანსაღი ჩვევები, მოტივაციის შეხსენებები და პროგრესის ანგარიშები.';

  @override
  String get goodMorning => 'დილა მშვიდობისა';

  @override
  String get goodAfternoon => 'დღე მშვიდობისა';

  @override
  String get goodEvening => 'საღამო მშვიდობისა';

  @override
  String get goodNight => 'ღამე მშვიდობისა';

  @override
  String get embracingClarity => 'სიცხადისკენ, ნაბიჯ-ნაბიჯ.';

  @override
  String get streakLabel => 'სერია';

  @override
  String get goalLabel => 'მიზანი';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count დღე',
      one: '$count დღე',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'პრემიუმ გეგმა';

  @override
  String get premiumPlanSubtitle => 'გახსენით აღდგენის სრული გამოცდილება';

  @override
  String get accountAndSupport => 'ანგარიში და მხარდაჭერა';

  @override
  String get privacyPolicy => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get privacyPolicySubtitle =>
      'მონაცემთა გაზიარებისა და უსაფრთხოების მართვა';

  @override
  String get termsOfService => 'მომსახურების პირობები';

  @override
  String get termsOfServiceSubtitle =>
      'ხშირად დასმული კითხვები, კონტაქტი და რესურსები';

  @override
  String get shareApp => 'აპლიკაციის გაზიარება';

  @override
  String get shareAppSubtitle => 'გაუზიარეთ აპლიკაცია მეგობრებს';

  @override
  String get resetData => 'მონაცემების განულება';

  @override
  String get resetDataSubtitle =>
      'ამ მოწყობილობაზე შენახული ყველა მონაცემის წაშლა';

  @override
  String get resetAllDataTitle => 'გსურთ ყველა მონაცემის განულება?';

  @override
  String get resetAllDataMessage =>
      'ეს წაშლის ამ მოწყობილობაზე შენახულ ყველაფერს — პროფილს, დღიურის ჩანაწერებსა და პროგრესს. მოქმედების გაუქმება შეუძლებელია.';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get reset => 'განულება';

  @override
  String get chooseFromGallery => 'გალერეიდან არჩევა';

  @override
  String get takePhoto => 'ფოტოს გადაღება';

  @override
  String get removePhoto => 'ფოტოს წაშლა';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ფოტოს განახლება ვერ მოხერხდა: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ფოტოს წაშლა ვერ მოხერხდა: $error';
  }

  @override
  String get photoTooLarge =>
      'ფოტო ძალიან დიდია შეკუმშვის შემდეგაც — გთხოვთ სცადოთ სხვა.';

  @override
  String get unableToLoadProfile => 'პროფილის ჩატვირთვა ვერ მოხერხდა';

  @override
  String get pleaseTryAgain => 'გთხოვთ სცადოთ ხელახლა.';

  @override
  String get tryAgain => 'ხელახლა ცდა';

  @override
  String get profileNotFound => 'პროფილი ვერ მოიძებნა';

  @override
  String get refresh => 'განახლება';

  @override
  String get noProfileDataFound =>
      'ამ მოწყობილობაზე პროფილის მონაცემები ჯერ არ არის.';

  @override
  String couldNotResetData(String error) {
    return 'მონაცემების განულება ვერ მოხერხდა: $error';
  }

  @override
  String get navHome => 'მთავარი';

  @override
  String get navStats => 'სტატისტიკა';

  @override
  String get navJournal => 'დღიური';

  @override
  String get navBadges => 'ნიშნები';

  @override
  String get navProfile => 'პროფილი';

  @override
  String featureComingSoon(String feature) {
    return '$feature მალე იქნება ხელმისაწვდომი.';
  }

  @override
  String get appWordmark => 'კეთილდღეობა';

  @override
  String get appTitle => 'შეწყვიტეთ სასმელის მიღება';

  @override
  String get splashSubtitle =>
      'გადადგით პირველი ნაბიჯი\nალკოჰოლისგან თავისუფალი ცხოვრებისკენ';

  @override
  String get preparingJourney => 'მზადდება თქვენი\nმოგზაურობა';

  @override
  String get taskMorningMeditation => 'დილის მედიტაცია (10წთ)';

  @override
  String get taskReadChapter =>
      'წაიკითხეთ მე-4 თავი წიგნიდან \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'საღამოს მადლიერების დღიური';

  @override
  String get close => 'დახურვა';

  @override
  String get youAreDoingGreat => 'ყოჩაღ, შესანიშნავად აგრძელებთ!';

  @override
  String get shareMilestone => 'მიღწევის გაზიარება';

  @override
  String shareMilestoneMessage(int days) {
    return 'მე უკვე $days დღეა აღდგენის გზაზე ვარ! 💪';
  }

  @override
  String get shareMilestoneSubject => 'ჩემი აღდგენის მიღწევა';

  @override
  String get weeklyReportReadyTitle => 'თქვენი ყოველკვირეული ანგარიში მზადაა';

  @override
  String get weeklyReportReadySubtitle =>
      'შეეხეთ, რომ ნახოთ როგორ ჩაიარა კვირამ';

  @override
  String get howAreYouFeeling => 'როგორ გრძნობთ თავს?';

  @override
  String get moodTough => 'რთულად';

  @override
  String get moodOkay => 'ნორმალური';

  @override
  String get moodGood => 'კარგი';

  @override
  String get moneySaved => 'დაზოგილი ფული';

  @override
  String get caloriesSaved => 'დაზოგილი კალორიები';

  @override
  String get healthScore => 'ჯანმრთელობის ქულა';

  @override
  String get drinksAvoided => 'არიდებული სასმელი';

  @override
  String get estimated => 'დაახლოებითი';

  @override
  String get aiGenerated => 'AI-ის მიერ გენერირებული';

  @override
  String get daysCapsLabel => 'დღე';

  @override
  String get todaysMotivation => 'დღევანდელი მოტივაცია';

  @override
  String get defaultMotivationQuote =>
      'თქვენ წარმატებით ინარჩუნებთ პირობას. განაგრძეთ პოზიტიური ცვლილებების ტალღაზე სვლა.';

  @override
  String get talkToCoach => 'მწვრთნელთან დალაპარაკება';

  @override
  String get havingACraving => 'სურვილი მაწუხებს';

  @override
  String get unlockWeeklyReportsTitle => 'ყოველკვირეული ანგარიშების გახსნა';

  @override
  String get unlockWeeklyReportsMessage =>
      'იხილეთ ფხიზელი დღეები, განწყობის ტენდენციები და AI-ის რჩევები ყოველ კვირას. გადადით პრემიუმზე.';

  @override
  String get maybeLater => 'მოგვიანებით';

  @override
  String get upgrade => 'განახლება';

  @override
  String get weeklyReportTitle => 'ყოველკვირეული ანგარიში';

  @override
  String get weeklyReportsPremiumTitle =>
      'ყოველკვირეული ანგარიშები პრემიუმ ფუნქციაა';

  @override
  String get weeklyReportsPremiumMessage =>
      'ადევნეთ თვალი ფხიზელ დღეებს, განწყობას, ლტოლვასა და პერსონალიზებულ AI უკუკავშირს.';

  @override
  String get upgradeToPremium => 'პრემიუმზე გადასვლა';

  @override
  String get couldNotGenerateReport =>
      'ამჟამად ანგარიშის გენერირება ვერ მოხერხდა.';

  @override
  String get tryAgainLower => 'სცადეთ ხელახლა';

  @override
  String get statSoberDays => 'ფხიზელი დღეები';

  @override
  String get statAvgMood => 'საშუალო განწყობა';

  @override
  String get statCravings => 'ლტოლვის შემთხვევები';

  @override
  String get statMoneySaved => 'დაზოგილი თანხა';

  @override
  String get coachFeedback => 'მწვრთნელის რჩევა';

  @override
  String get journalInsights => 'დღიურის ანალიზი';

  @override
  String get next => 'შემდეგი';

  @override
  String get question1Title => 'რა არის თქვენი მიზანი';

  @override
  String get question1Subtitle =>
      'აირჩიეთ თქვენთვის ყველაზე მნიშვნელოვანი მიზანი';

  @override
  String get goalQuitCompletely => 'სრულიად თავის დანებება';

  @override
  String get goalReduceDrinking => 'სმის შემცირება';

  @override
  String get goalTakeABreak => 'პაუზის აღება';

  @override
  String get goalBuildHealthierHabits => 'ჯანსაღი ჩვევების ჩამოყალიბება';

  @override
  String get question3Title => 'გვიამბეთ თქვენი\nრუტინის შესახებ';

  @override
  String get drinksPerWeek => 'სასმელი კვირაში';

  @override
  String get moneySpentPerWeek => 'დახარჯული თანხა კვირაში';

  @override
  String get drinkingLevel => 'სმის დონე';

  @override
  String get triggersLabel => 'ტრიგერები';

  @override
  String get levelSocial => 'სოციალური';

  @override
  String get levelRegular => 'რეგულარული';

  @override
  String get levelHeavy => 'მაღალი';

  @override
  String get levelDependent => 'დამოკიდებული';

  @override
  String get triggerStress => 'სტრესი';

  @override
  String get triggerLoneliness => 'მარტოობა';

  @override
  String get triggerHabit => 'ჩვევა';

  @override
  String get triggerSadness => 'სიბრაზე/მოწყენილობა';

  @override
  String get triggerAnger => 'ბრაზი';

  @override
  String get triggerBoredom => 'მოწყენილობა';

  @override
  String get triggerSocialPressure => 'სოციალური ზეწოლა';

  @override
  String get triggerCelebration => 'აღნიშვნა';

  @override
  String get triggerSleepProblems => 'ძილის პრობლემები';

  @override
  String get triggerWorkPressure => 'სამუშაო სტრესი';

  @override
  String get question4Title => 'რატომ გსურთ ცვლილება?';

  @override
  String get question4Subtitle =>
      'თქვენი მიზეზი დაგეხმარებათ მოტივაციის შენარჩუნებაში.';

  @override
  String get reasonImproveHealth => 'ჯანმრთელობის გაუმჯობესება';

  @override
  String get reasonSaveMoney => 'ფულის დაზოგვა';

  @override
  String get reasonFamily => 'ოჯახი';

  @override
  String get reasonBetterSleep => 'უკეთესი ძილი';

  @override
  String get reasonMentalClarity => 'გონების სიცხადე';

  @override
  String get reasonFitness => 'ფიზიკური ფორმა';

  @override
  String get reasonSelfRespect => 'თვითპატივისცემა';

  @override
  String get reasonCareer => 'კარიერა';

  @override
  String get milestoneUnlockedLabel => 'მიღწევა გახსნილია';

  @override
  String incredibleNamePrefix(String name) {
    return 'შესანიშნავია, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'დაზოგილია $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'არიდებულია $count';
  }

  @override
  String get shareMyMilestone => 'ჩემი მიღწევის გაზიარება';

  @override
  String get milestoneImageShareError =>
      'მიღწევის ფოტოს შექმნა ვერ მოხერხდა. გთხოვთ სცადოთ ხელახლა.';

  @override
  String get dailyCheckInTitle => 'ყოველდღიური შემოწმება';

  @override
  String get howAreYouFeelingToday => 'როგორ გრძნობთ თავს დღეს?';

  @override
  String get honestAnswerHelp =>
      'გულწრფელი პასუხი დაგვეხმარება უკეთ მხარდაჭერაში';

  @override
  String get didYouDrinkToday => 'დალიეთ დღეს?';

  @override
  String get noLabel => 'არა';

  @override
  String get yesLabel => 'დიახ';

  @override
  String get cravingLevelNow => 'ლტოლვის დონე ამჟამად?';

  @override
  String get anythingOnMind => 'რაიმე ხომ არ გაწუხებთ?';

  @override
  String get optionalLabel => '(არასავალდებულო)';

  @override
  String get dailyNoteHint =>
      'დაწერეთ თქვენს დღეზე, ტრიგერებზე, გამარჯვებებზე...';

  @override
  String get alreadyCheckedInToday => 'დღევანდელი შემოწმება უკვე გავლილია';

  @override
  String get saveCheckIn => 'შენახვა';

  @override
  String get checkInsHelpTrack =>
      'შემოწმებები ეხმარება პროგრესის თვალყურის დევნებას';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'თქვენ უკვე გაიარეთ დღევანდელი შემოწმება.';

  @override
  String get pleaseAnswerBothQuestions => 'გთხოვთ ჯერ უპასუხოთ ორსავე კითხვას';

  @override
  String get checkInSaved => 'შემოწმება შენახულია';

  @override
  String get cravingNone => 'არანაირი';

  @override
  String get cravingLow => 'დაბალი';

  @override
  String get cravingMedium => 'საშუალო';

  @override
  String get cravingStrong => 'ძლიერი';

  @override
  String get moodBad => 'ცუდი';

  @override
  String get moodLow => 'დაბალი';

  @override
  String get moodGreat => 'შესანიშნავი';

  @override
  String get sosSupportTitle => 'SOS მხარდაჭერა';

  @override
  String notAloneMessage(String name) {
    return 'თქვენ მარტო არ ხართ, $name';
  }

  @override
  String get cravingsPassMessage =>
      'ლტოლვა გაივლის. აირჩიეთ რამე ქვემოთ მოცემულიდან ამ მომენტის გადასალახად.';

  @override
  String get breathingExercise => 'სუნთქვითი ვარჯიში';

  @override
  String get breathingExerciseSubtitle => 'მართული 4-7-8 ტექნიკა, 2 წუთი';

  @override
  String get rideTheWave => 'გადაუარეთ ტალღას';

  @override
  String get rideTheWaveSubtitle =>
      '15-წუთიანი ტაიმერი — ლტოლვა ყოველთვის გადის';

  @override
  String get copingTips => 'გამკლავების რჩევები';

  @override
  String get copingTipsSubtitle => 'პერსონალიზებული სტრატეგიები ტრიგერებისთვის';

  @override
  String get talkToAiCoach => 'დაელაპარაკეთ AI მწვრთნელს';

  @override
  String get talkToAiCoachSubtitle => 'ესაუბრეთ თქვენს ასისტენტს';

  @override
  String get callSomeone => 'დაურეკეთ ვინმეს';

  @override
  String get callSomeoneSubtitle => 'დაუკავშირდით სანდო კონტაქტს';

  @override
  String get contactsPermissionNeeded =>
      'კონტაქტთან დასაკავშირებლად საჭიროა ნებართვა.';

  @override
  String get beatenCravingsPrefix => 'თქვენ დაძლიეთ ლტოლვა ';

  @override
  String beatenCravingsCount(int count) {
    return '$count-ჯერ';
  }

  @override
  String get beatenCravingsSuffix => ' მანამდეც. ახლაც შეძლებთ.';

  @override
  String get tellUsAboutYourself => 'გვიამბეთ თქვენს შესახებ';

  @override
  String get detailsSubtitle =>
      'ეს ინფორმაცია ეხმარება აღდგენის პროცესის პერსონალიზაციას.';

  @override
  String get nameLabel => 'სახელი';

  @override
  String get nameHint => 'მაგ., ალექსი';

  @override
  String get ageLabel => 'ასაკი';

  @override
  String get ageHint => 'მაგ., 32';

  @override
  String get sexAssignedAtBirth => 'სქესი დაბადებისას';

  @override
  String get sexFemale => 'მდედრობითი';

  @override
  String get sexMale => 'მამრობითი';

  @override
  String get heightLabel => 'სიმაღლე';

  @override
  String get weightLabel => 'წონა';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'დღიური ლიმიტი ამოიწურა';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'თქვენ გამოიყენეთ დღევანდელი $limit უფასო შეტყობინება. გადადით პრემიუმზე ულიმიტო ჩატისთვის.';
  }

  @override
  String get coachConnectError =>
      'დაკავშირება ვერ მოხერხდა. სცადეთ ცოტა ხანში.';

  @override
  String get clearConversationTitle => 'გსურთ საუბრის გასუფთავება?';

  @override
  String get clearConversationMessage =>
      'ეს სამუდამოდ წაშლის მწვრთნელთან ჩატის ისტორიას.';

  @override
  String get clearLabel => 'გასუფთავება';

  @override
  String get recoveryCoachTitle => 'აღდგენის მწვრთნელი';

  @override
  String get onlineLabel => 'ონლაინშია';

  @override
  String get clearConversationMenuItem => 'საუბრის გასუფთავება';

  @override
  String chatGreeting(String name) {
    return 'გამარჯობა $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'თქვენი მოგზაურობის მე-$days დღეა. აქ ვარ, როცა საუბარი მოგინდებათ.';
  }

  @override
  String get quickPromptsLabel => 'სწრაფი კითხვები';

  @override
  String get promptCravingLabel => 'მაქვს ლტოლვის შეგრძნება';

  @override
  String get promptCravingSubtitle => 'დამშვიდება, სწრაფად';

  @override
  String get promptMotivationLabel => 'მჭირდება მოტივაცია';

  @override
  String get promptMotivationSubtitle => 'მხარდაჭერა რთულ დროს';

  @override
  String get promptSocialLabel => 'სოციალური სიტუაცია';

  @override
  String get promptSocialSubtitle => 'როგორ მოვიქცეთ წვეულებაზე';

  @override
  String get promptSlippedLabel => 'შევცდი/დავლიე';

  @override
  String get promptSlippedSubtitle => 'განსჯის გარეშე, მხარდაჭერა';

  @override
  String get typeMessageHint => 'ჩაწერეთ შეტყობინება...';

  @override
  String get editProfileTitle => 'პროფილის რედაქტირება';

  @override
  String couldNotSaveProfile(String error) {
    return 'პროფილის შენახვა ვერ მოხერხდა: $error';
  }

  @override
  String get heightCmLabel => 'სიმაღლე (სმ)';

  @override
  String get weightKgLabel => 'წონა (კგ)';

  @override
  String get saveChangesLabel => 'ცვლილებების შენახვა';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'დეტალური ანალიტიკა';

  @override
  String get featureUnlimitedJournal => 'ულიმიტო ჩანაწერები დღიურში';

  @override
  String get featureUnlimitedChat => 'ულიმიტო ჩატი AI მწვრთნელთან';

  @override
  String get featureCommunityGroups => 'ექსკლუზიური ჯგუფები';

  @override
  String get featurePrioritySupport => 'პრიორიტეტული მხარდაჭერა';

  @override
  String get featureThemePacks => 'თემების პაკეტები';

  @override
  String get featureDataExport => 'მონაცემთა ექსპორტი';

  @override
  String get featureAdFree => 'გამოცდილება რეკლამების გარეშე';

  @override
  String get premiumMemberTitle => 'თქვენ ხართ პრემიუმ წევრი';

  @override
  String get unlockFullRecoveryTitle => 'გახსენით აღდგენის სრული\nგამოცდილება';

  @override
  String get premiumMemberSubtitle =>
      'გმადლობთ მხარდაჭერისთვის — ყველა პრემიუმ ფუნქცია გახსნილია.';

  @override
  String get premiumJoinSubtitle =>
      'შეუერთდით ათასობით მომხმარებელს, რომლებიც აჩქარებენ აღდგენის პროცესს პრემიუმ ინსტრუმენტებით.';

  @override
  String get monthlyPlanLabel => 'ყოველთვიური';

  @override
  String get perMonthSuffix => '/თვე';

  @override
  String get cancelAnytimeLabel => 'გაუქმება ნებისმიერ დროს';

  @override
  String get yearlyPlanLabel => 'წლიური';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'წლიური გადასახადი: $amount';
  }

  @override
  String get bestValueLabel => 'საუკეთესო ფასი';

  @override
  String get alreadyPremiumLabel => 'თქვენ უკვე პრემიუმი ხართ ✓';

  @override
  String get startPremiumLabel => 'პრემიუმის დაწყება';

  @override
  String get manageSubscriptionLabel =>
      'მართეთ ან გააუქმეთ თქვენი მოწყობილობის პარამეტრებიდან.';

  @override
  String get noCommitmentLabel =>
      'ვალდებულების გარეშე. გააუქმეთ ნებისმიერ დროს.';

  @override
  String get continueFreePlanLabel => 'უფასო გეგმით გაგრძელება';

  @override
  String get backToHomeLabel => 'მთავარზე დაბრუნება';

  @override
  String get cancelPremiumLabel => 'პრემიუმის გაუქმება';

  @override
  String get cancelPremiumTitle => 'გსურთ პრემიუმის გაუქმება?';

  @override
  String get cancelPremiumMessage =>
      'თქვენ დაკარგავთ წვდომას ულიმიტო დღიურზე, ჩატზე და ყოველკვირეულ ანგარიშებზე.';

  @override
  String get keepPremiumLabel => 'პრემიუმის დატოვება';

  @override
  String get nowPremiumMessage => 'თქვენ უკვე პრემიუმ წევრი ხართ!';

  @override
  String get premiumCancelledMessage =>
      'პრემიუმი გაუქმებულია. დაბრუნდით უფასო გეგმაზე.';

  @override
  String get termsOfUseLabel => 'გამოყენების პირობები';

  @override
  String get navHomeLabel => 'მთავარი';

  @override
  String get navStatsLabel => 'სტატისტიკა';

  @override
  String get navJournalLabel => 'დღიური';

  @override
  String get navBadgesLabel => 'ნიშნები';

  @override
  String get navProfileLabel => 'პროფილი';

  @override
  String get recoveryGoalsTitle => 'აღდგენის მიზნები';

  @override
  String get drinksPerWeekLabel => 'სასმელი კვირაში';

  @override
  String get quitReasonsLabel => 'თავის დანებების მიზეზები';

  @override
  String get quitReasonsHelperText => 'გამოყავით რამდენიმე მიზეზი მძიმით.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'მიზნების შენახვა ვერ მოხერხდა: $error';
  }

  @override
  String get goalHint => 'მაგ., სრული აბსტინენცია';

  @override
  String get drinksPerWeekHint => 'მაგ., 12';

  @override
  String get quitReasonsHint => 'მაგ., ჯანმრთელობა, ოჯახი';

  @override
  String get todaysPrompt => 'დღევანდელი თემა';

  @override
  String get defaultJournalPrompt => 'რაზე ფიქრობთ დღეს?';

  @override
  String get aiJournalInsights => 'დღიურის AI ანალიზი';

  @override
  String get unlockJournalInsightsMessage =>
      'გახსენით კვირის ტენდენციები და პერსონალიზებული ანალიზი დღიურის ჩანაწერებიდან.';

  @override
  String get notEnoughJournalData =>
      'ჯერ არ არის საკმარისი მონაცემები — გააკეთეთ რამდენიმე ჩანაწერი ამ კვირაში.';

  @override
  String get openEntry => 'გახსნა';

  @override
  String get editEntry => 'რედაქტირება';

  @override
  String get deleteEntry => 'წაშლა';

  @override
  String get searchJournalEntries => 'ძებნა...';

  @override
  String get writeNewEntry => 'ახალი ჩანაწერი';

  @override
  String get recentEntries => 'ბოლო ჩანაწერები';

  @override
  String get noJournalEntriesYet =>
      'ჩანაწერები ჯერ არ არის — დაწერეთ პირველი ფიქრები ზემოთ.';

  @override
  String get noEntriesMatchFilters =>
      'ფილტრის შესაბამისი ჩანაწერი ვერ მოიძებნა.';

  @override
  String get weeklyJournalLimitReached => 'კვირის ლიმიტი ამოიწურა';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'თქვენ გამოიყენეთ ამ კვირის $limit უფასო ჩანაწერი. გადადით პრემიუმზე ულიმიტო ჩანაწერებისთვის.';
  }

  @override
  String get newEntry => 'ახალი ჩანაწერი';

  @override
  String get writeYourThoughts => 'ჩაწერეთ თქვენი ფიქრები';

  @override
  String get saveEntry => 'ჩანაწერის შენახვა';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'დარჩენილია $remaining / $limit უფასო ჩანაწერი ამ კვირაში';
  }

  @override
  String get deleteEntryQuestion => 'წაიშალოს ჩანაწერი?';

  @override
  String get deleteEntryConfirmation =>
      'ეს ჩანაწერი სამუდამოდ წაიშლება. მოქმედების გაუქმება შეუძლებელია.';

  @override
  String get journalEntryNotFound => 'ჩანაწერი ვერ მოიძებნა';

  @override
  String get journalEntryMayHaveBeenDeleted => 'ეს ჩანაწერი შესაძლოა წაშლილია.';

  @override
  String get goBack => 'უკან დაბრუნება';

  @override
  String get journalEntryTitle => 'დღიურის ჩანაწერი';

  @override
  String get moodStruggling => 'მიჭირს';

  @override
  String get moodUnwell => 'ცუდად';

  @override
  String get moodNeutral => 'ნეიტრალურად';

  @override
  String get whatHappenedToday => 'რა მოხდა დღეს?';

  @override
  String get trigger => 'ტრიგერი';

  @override
  String get whatHelped => 'რა დაგეხმარათ';

  @override
  String get whatIllTryNextTime => 'რას ვცდი შემდეგ ჯერზე';

  @override
  String get journalPrivacyMessage =>
      'თქვენი ფიქრები კონფიდენციალურია და ინახება დღიურში.';

  @override
  String get unlocked => 'გახსნილია';

  @override
  String daysLeft(int count) {
    return 'დარჩენილია $count დღე';
  }

  @override
  String daysCount(int count) {
    return '$count დღე';
  }

  @override
  String get firstReflection => 'პირველი\nფიქრები';

  @override
  String get oneJournalEntry => '1 ჩანაწერი დღიურში';

  @override
  String get openBook => 'ღია წიგნი';

  @override
  String get tenJournalEntries => '10 ჩანაწერი დღიურში';

  @override
  String get dedicatedWriter => 'ერთგული\nმწერალი';

  @override
  String get thirtyJournalEntries => '30 ჩანაწერი დღიურში';

  @override
  String get firstConversation => 'პირველი\nსაუბარი';

  @override
  String get oneAiCoachChat => '1 ჩატი AI მწვრთნელთან';

  @override
  String get keepTalking => 'განაგრძეთ საუბარი';

  @override
  String get fiveConversations => '5 საუბარი';

  @override
  String get coachCompanion => 'მწვრთნელის\nთანამგზავრი';

  @override
  String get twentyConversations => '20 საუბარი';

  @override
  String get checkInHabit => 'შემოწმების\nჩვევა';

  @override
  String get sevenCheckIns => '7 შემოწმება';

  @override
  String get consistencyPro => 'სტაბილურობის\nოსტატი';

  @override
  String get thirtyCheckIns => '30 შემოწმება';

  @override
  String get dedicatedJourney => 'ერთგული\nმგზავრი';

  @override
  String get hundredCheckIns => '100 შემოწმება';

  @override
  String get goalGetter => 'მიზნისმსახველი';

  @override
  String get threeGoalsCompleted => '3 მიღწეული მიზანი';

  @override
  String get goalAchiever => 'მიზნის\nმიმღწევი';

  @override
  String get tenGoalsCompleted => '10 მიღწეული მიზანი';

  @override
  String get firstSavings => 'პირველი\nდანაზოგი';

  @override
  String get fiveHundredSaved => '\$500 დაზოგილია';

  @override
  String get smartSaver => 'ჭკვიანი დამზოგველი';

  @override
  String get oneThousandSaved => '\$1,000 დაზოგილია';

  @override
  String get bigSaver => 'დიდი დამზოგველი';

  @override
  String get fiveThousandSaved => '\$5,000 დაზოგილია';

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
      'განაგრძეთ — თქვენი პირველი მიღწევა გელოდებათ!';

  @override
  String get badgesAndMilestones => 'ნიშნები და მიღწევები';

  @override
  String get yourMilestoneJourney => 'თქვენი მიღწევების გზა';

  @override
  String milestonesAchieved(int count) {
    return 'მიღწეულია $count ეტაპი.\nშეეხეთ სანახავად';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'თქვენ გახსენით $unlocked / $total მიღწევა.';
  }

  @override
  String get remaining => 'დარჩენილია';

  @override
  String get complete => 'დასრულებულია';

  @override
  String get nextMilestone => 'შემდეგი მიღწევა';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% შესრულებულია';
  }

  @override
  String get sobrietyMilestones => 'სიფხიზლის ეტაპები';

  @override
  String get journeyBadges => 'გზის ნიშნები';

  @override
  String get bronze => 'ბრინჯაო';

  @override
  String get silver => 'ვერცხლი';

  @override
  String get gold => 'ოქრო';

  @override
  String get platinum => 'პლატინა';

  @override
  String get diamond => 'ალმასი';

  @override
  String get analyzingYourJourney => 'თქვენი გზის ანალიზი...';

  @override
  String get aiCreatingSanctuary => 'AI ქმნის თქვენს პერსონალურ სივრცეს.';

  @override
  String get understandingHabits => 'ჩვევების გაანალიზება...';

  @override
  String get calculatingBaseline => 'საწყისი მონაცემების გამოთვლა...';

  @override
  String get personalizingPlan => 'გეგმის პერსონალიზაცია...';

  @override
  String get finalizingSanctuary => 'სივრცის მომზადების დასრულება...';

  @override
  String get creatingYourPlan => 'გეგმის შექმნა...';

  @override
  String get personalizedPlanError =>
      'პერსონალიზებული გეგმის შექმნა ვერ მოხერხდა. სცადეთ ხელახლა.';

  @override
  String get retry => 'ხელახლა ცდა';

  @override
  String get breathInhale => 'ჩაისუნთქეთ';

  @override
  String get breathHold => 'შეიკავეთ';

  @override
  String get breathExhale => 'ამოისუნთქეთ';

  @override
  String get breathDone => 'დასრულებულია';

  @override
  String get breathGreatJob => 'შესანიშნავი ნამუშევარია!';

  @override
  String breathSessionsToday(int count) {
    return 'დღეს ჩატარდა $count სესია';
  }

  @override
  String get endExercise => 'ვარჯიშის დასრულება';

  @override
  String get done => 'მზადაა';

  @override
  String get noCopingTipsYet => 'რჩევები ჯერ არ არის';

  @override
  String get copingStrategiesWillAppear =>
      'პერსონალიზებული სტრატეგიები გამოჩნდება გეგმის შექმნის შემდეგ.';

  @override
  String get strategiesTailoredToTriggers =>
      'თქვენს ტრიგერებზე მორგებული სტრატეგიები';

  @override
  String get cravingsPeakAndPass => 'ლტოლვა იმატებს\nდა მცირდება';

  @override
  String get rideTheWaveDescription =>
      'ლტოლვის უმეტესობა 15 წუთში გადის. არ არის საჭირო აყოლა — უბრალოდ გადაუარეთ მას ჩვენთან ერთად.';

  @override
  String get stayWithIt => 'გაძელით';

  @override
  String get youMadeIt => 'თქვენ ეს შეძელით';

  @override
  String get readyWhenYouAre => 'მზად ვართ, როცა ისურვებთ';

  @override
  String get rideItAgain => 'ხელახლა ცდა';

  @override
  String get start15MinuteTimer => '15-წუთიანი ტაიმერის ჩართვა';

  @override
  String get rideTheWaveCompletedMessage =>
      'თქვენ გადაუარეთ ტალღას. ეს ნამდვილი სიმტკიცეა. 💪';

  @override
  String get myProgress => 'ჩემი პროგრესი';

  @override
  String get weekLabel => 'კვირა';

  @override
  String get monthLabel => 'თვე';

  @override
  String get allLabel => 'ყველა';

  @override
  String get daysSoberStatLabel => 'ფხიზელი\nდღე';

  @override
  String get savedStatLabel => 'დაზოგილია';

  @override
  String get avoidedStatLabel => 'არიდებულია';

  @override
  String get moodTrends => 'განწყობის ტენდენციები';

  @override
  String get cravingsPattern => 'ლტოლვის დინამიკა';

  @override
  String get unlockLabel => 'გახსნა';

  @override
  String get unlockFullStats => 'სრული სტატისტიკის გახსნა';

  @override
  String get premiumStatsMessage =>
      'განწყობისა და ლტოლვის სტატისტიკა პრემიუმ ფუნქციაა.';

  @override
  String get healthMilestonesWillAppear =>
      'ჯანმრთელობის ეტაპები გამოჩნდება აქ.';

  @override
  String get healthMilestones => 'ჯანმრთელობის ეტაპები';

  @override
  String dayNumber(int day) {
    return 'დღე $day';
  }

  @override
  String get soberLabel => 'ფხიზელი';

  @override
  String get slipLabel => 'შეცდომა';

  @override
  String get noDataLabel => 'მონაცემები არ არის';

  @override
  String get milestone24Hours => '24 საათი';

  @override
  String get milestoneOneWeek => 'ერთი კვირა';

  @override
  String get milestoneOneMonth => 'ერთი თვე';

  @override
  String get milestoneThreeMonths => 'სამი თვე';

  @override
  String get milestoneSixMonths => 'ექვი თვე';

  @override
  String get milestoneOneYear => 'ერთი წელი';

  @override
  String milestoneDayCount(int day) {
    return 'მე-$day დღის მიღწევა';
  }

  @override
  String get maybeLaterLabel => 'ალბათ მოგვიანებით';

  @override
  String get cancelLabel => 'გაუქმება';
}
