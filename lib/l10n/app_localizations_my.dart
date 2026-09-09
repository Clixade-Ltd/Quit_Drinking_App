// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get skip => 'ကျော်သွားရန်';

  @override
  String get continueButton => 'ဆက်လက်လုပ်ဆောင်ရန်';

  @override
  String get getStarted => 'စတင်ရန်';

  @override
  String get onboardingTitle1 => 'သင့်ဘဝကို စနစ်တကျထိန်းချုပ်ပါ';

  @override
  String get onboardingSubtitle1 =>
      'သင့်ခရီးလမ်းကို မှတ်တမ်းတင်ပါ၊ အောင်မြင်မှုတိုင်းကို အတူတကွဂုဏ်ပြုပြီး တစ်ရက်ထက်တစ်ရက် ပိုမိုကျန်းမာလာပါစေ။';

  @override
  String get onboardingTitle2 => 'သင့် AI ပြန်လည်ထူထောင်ရေး အဖော်မွန်';

  @override
  String get onboardingSubtitle2 =>
      'သင့်ခရီးလမ်းအတွက် သီးသန့်ရေးဆွဲထားသော လမ်းညွှန်ချက်များ၊ ကျန်းမာရေးဆိုင်ရာ အလေ့အကျင့်များ၊ ခွန်အားဖြစ်စေမည့် အမှတ်ရစရာများနှင့် တိုးတက်မှုအစီရင်ခံစာများကို ရယူပါ။';

  @override
  String get goodMorning => 'မင်္ဂလာနံနက်ခင်းပါ';

  @override
  String get goodAfternoon => 'မင်္ဂလာနေ့လယ်ခင်းပါ';

  @override
  String get goodEvening => 'မင်္ဂလာညနေခင်းပါ';

  @override
  String get goodNight => 'မင်္ဂလာညချမ်းပါ';

  @override
  String get embracingClarity =>
      'တစ်ရက်ပြီးတစ်ရက် ကြည်လင်ဆန်းသစ်သော စိတ်ဓာတ်ကို မွေးမြူပါ။';

  @override
  String get streakLabel => 'ရက်ဆက် တန်းစီမှု';

  @override
  String get goalLabel => 'ရည်မှန်းချက်';

  @override
  String daysStreak(int count) {
    return '$count ရက်';
  }

  @override
  String get premiumPlan => 'Premium အစီအစဉ်';

  @override
  String get premiumPlanSubtitle =>
      'သင့်ပြန်လည်ထူထောင်ရေး အတွေ့အကြုံ အပြည့်အဝကို ရယူပါ';

  @override
  String get accountAndSupport => 'အကောင့်နှင့် အကူအညီ';

  @override
  String get privacyPolicy => 'ကိုယ်ရေးအချက်အလက် မူဝါဒ';

  @override
  String get privacyPolicySubtitle =>
      'ဒေတာမျှဝေမှုနှင့် အကောင့်လုံခြုံရေးကို စီမံရန်';

  @override
  String get termsOfService => 'ဝန်ဆောင်မှု စည်းမျဉ်းများ';

  @override
  String get termsOfServiceSubtitle =>
      'မေးလေ့ရှိသော မေးခွန်းများ၊ ဆက်သွယ်ရန်နှင့် အရင်းအမြစ်များ';

  @override
  String get shareApp => 'အက်ပ်အား မျှဝေရန်';

  @override
  String get shareAppSubtitle => 'သင့်မိတ်ဆွေများနှင့် အက်ပ်ကို မျှဝေပါ';

  @override
  String get resetData => 'ဒေတာများ ပြန်စတင်ရန်';

  @override
  String get resetDataSubtitle =>
      'ဤစက်ပစ္စည်းပေါ်တွင် သိမ်းဆည်းထားသည်များကို ဖျက်ရန်';

  @override
  String get resetAllDataTitle => 'ဒေတာအားလုံးကို ပြန်စတင်မလား?';

  @override
  String get resetAllDataMessage =>
      'ဤလုပ်ဆောင်ချက်သည် စက်ပေါ်ရှိ ကိုယ်ရေးအချက်အလက်၊ ဂျာနယ်မှတ်တမ်းများနှင့် တိုးတက်မှု အားလုံးကို ဖျက်ပစ်မည်ဖြစ်ပြီး ပြန်လည်ရယူနိုင်မည် မဟုတ်ပါ။';

  @override
  String get cancel => 'မလုပ်တော့ပါ';

  @override
  String get reset => 'ပြန်စတင်ရန်';

  @override
  String get chooseFromGallery => 'ဓာတ်ပုံအရalbumမှ ရွေးချယ်ရန်';

  @override
  String get takePhoto => 'ဓာတ်ပုံရိုက်ရန်';

  @override
  String get removePhoto => 'ဓာတ်ပုံဖျက်ရန်';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ဓာတ်ပုံကို ပြင်ဆင်၍မရပါ: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ဓာတ်ပုံကို ဖျက်၍မရပါ: $error';
  }

  @override
  String get photoTooLarge =>
      'ဓာတ်ပုံအရွယ်အစားသည် သေးငယ်အောင်ပြုလုပ်ပြီးသည့်တိုင် ကြီးမားနေသေးပါ - အခြားဓာတ်ပုံတစ်ပုံ ပြောင်းသုံးကြည့်ပါ။';

  @override
  String get unableToLoadProfile => 'သင့်ပရိုဖိုင်ကို ဖွင့်၍မရပါ';

  @override
  String get pleaseTryAgain => 'ကျေးဇူးပြု၍ ပြန်လည်ကြိုးစားပါ။';

  @override
  String get tryAgain => 'ပြန်လည်ကြိုးစားရန်';

  @override
  String get profileNotFound => 'ပရိုဖိုင် ရှာမတွေ့ပါ';

  @override
  String get refresh => 'ပြန်လည်စတင်ပါ';

  @override
  String get noProfileDataFound =>
      'ဤစက်ပစ္စည်းပေါ်တွင် ပရိုဖိုင်ဒေတာ မရှိသေးပါ။';

  @override
  String couldNotResetData(String error) {
    return 'ဒေတာများ ပြန်စတင်၍ မရပါ: $error';
  }

  @override
  String get navHome => 'ပင်မစာမျက်နှာ';

  @override
  String get navStats => 'စာရင်းဇယား';

  @override
  String get navJournal => 'ဂျာနယ်';

  @override
  String get navBadges => 'တံဆိပ်များ';

  @override
  String get navProfile => 'ပရိုဖိုင်';

  @override
  String featureComingSoon(String feature) {
    return '$feature လုပ်ဆောင်ချက်ကို မကြာမီ ရရှိနိုင်တော့မည်။';
  }

  @override
  String get appWordmark => 'ကျန်းမာရေး';

  @override
  String get appTitle => 'အရက်သောက်ခြင်းကို ရပ်လိုက်ပါ';

  @override
  String get splashSubtitle =>
      'အရက်ကင်းစင်သော ဘဝတစ်ခုသို့ ရောက်ရှိရန်\nပထမဆုံး ခြေလှမ်းကို လှမ်းလိုက်ပါ';

  @override
  String get preparingJourney => 'သင့်ခရီးစဉ်ကို ပြင်ဆင်နေပါသည်';

  @override
  String get taskMorningMeditation =>
      'နံနက်ခင်း တရားဘာဝနာပွားများခြင်း (၁၀ မိနစ်)';

  @override
  String get taskReadChapter =>
      '\"The Sober Diaries\" စာအုပ်၏ အခန်း (၄) ကို ဖတ်ပါ';

  @override
  String get taskEveningJournal => 'ညနေခင်း ကျေးဇူးတင်လွှာ ဂျာနယ်';

  @override
  String get close => 'ပိတ်ရန်';

  @override
  String get youAreDoingGreat => 'သင် အလွန်ကောင်းမွန်စွာ လုပ်ဆောင်နေပါတယ်!';

  @override
  String get shareMilestone => 'အောင်မြင်မှု မိုင်တိုင်ကို မျှဝေရန်';

  @override
  String shareMilestoneMessage(int days) {
    return 'ကျွန်ုပ်ရဲ့ ပြန်လည်ထူထောင်ရေးခရီးစဉ် $days ရက်မြောက်နေ့သို့ ရောက်ရှိခဲ့ပါပြီ! 💪';
  }

  @override
  String get shareMilestoneSubject =>
      'ကျွန်ုပ်၏ ပြန်လည်ထူထောင်ရေး အောင်မြင်မှု မိုင်တိုင်';

  @override
  String get weeklyReportReadyTitle => 'သင့်အပတ်စဉ် အစီရင်ခံစာ အသင့်ဖြစ်ပါပြီ';

  @override
  String get weeklyReportReadySubtitle =>
      'သင့်အပတ်စဉ် တိုးတက်မှုကို ကြည့်ရှုရန် နှိပ်ပါ';

  @override
  String get howAreYouFeeling => 'သင် ဘယ်လိုခံစားနေရသလဲ?';

  @override
  String get moodTough => 'ခက်ခဲသည်';

  @override
  String get moodOkay => 'ပုံမှန်ပဲ';

  @override
  String get moodGood => 'ကောင်းမွန်သည်';

  @override
  String get moneySaved => 'စုဆောင်းမိသော ငွေပမာဏ';

  @override
  String get caloriesSaved => 'လျှော့ချနိုင်ခဲ့သော ကယ်လိုရီ';

  @override
  String get healthScore => 'ကျန်းမာရေး ရမှတ်';

  @override
  String get drinksAvoided => 'ရှောင်ကြဉ်ခဲ့သော သောက်စရာများ';

  @override
  String get estimated => 'ခန့်မှန်းခြေ';

  @override
  String get aiGenerated => 'AI မှ ဖန်တီးထားသည်';

  @override
  String get daysCapsLabel => 'ရက်များ';

  @override
  String get todaysMotivation => 'ဒီနေ့အတွက် ခွန်အားဖြည့်စကား';

  @override
  String get defaultMotivationQuote =>
      'သင်၏ ကတိကဝတ်ကို အောင်မြင်စွာ ထိန်းသိမ်းနိုင်ခဲ့ပါပြီ။ အပြုသဘောဆောင်သော အပြောင်းအလဲများကို ဆက်လက် ထိန်းသိမ်းသွားပါ။';

  @override
  String get talkToCoach => 'အကြံပေးနှင့် စကားပြောရန်';

  @override
  String get havingACraving => 'သောက်ချင်စိတ် ပေါ်ပေါက်နေပါသည်';

  @override
  String get unlockWeeklyReportsTitle => 'အပတ်စဉ် အစီရင်ခံစာများကို ရယူပါ';

  @override
  String get unlockWeeklyReportsMessage =>
      'အရက်ကင်းစင်သောရက်များ၊ စိတ်ခံစားမှုပုံစံများနှင့် AI ၏ အကြံပြုချက်များကို အပတ်စဉ် ကြည့်ရှုပါ။ သုံးစွဲရန် Premium သို့ အဆင့်မြှင့်ပါ။';

  @override
  String get maybeLater => 'နောက်မှ လုပ်ပါမည်';

  @override
  String get upgrade => 'အဆင့်မြှင့်ရန်';

  @override
  String get weeklyReportTitle => 'အပတ်စဉ် အစီရင်ခံစာ';

  @override
  String get weeklyReportsPremiumTitle =>
      'အပတ်စဉ် အစီရင်ခံစာများသည် Premium သုံးစွဲသူများအတွက်သာ ဖြစ်သည်';

  @override
  String get weeklyReportsPremiumMessage =>
      'အရက်ကင်းစင်သောရက်များ၊ စိတ်ခံစားမှု အပြောင်းအလဲများ၊ သောက်ချင်စိတ်များ နှင့် AI ၏ အကြံပြုချက်များကို အပတ်စဉ် ကြည့်ရှုပါ။';

  @override
  String get upgradeToPremium => 'Premium သို့ အဆင့်မြှင့်ရန်';

  @override
  String get couldNotGenerateReport =>
      'လက်ရှိတွင် အစီရင်ခံစာကို ထုတ်ယူ၍ မရသေးပါ။';

  @override
  String get tryAgainLower => 'ပြန်လည် ကြိုးစားရန်';

  @override
  String get statSoberDays => 'အရက်ကင်းစင်သော ရက်များ';

  @override
  String get statAvgMood => 'ပျမ်းမျှ စိတ်ခံစားမှု';

  @override
  String get statCravings => 'သောက်ချင်စိတ် ဖြစ်ပေါ်မှုများ';

  @override
  String get statMoneySaved => 'စုဆောင်းမိသော ငွေပမာဏ';

  @override
  String get coachFeedback => 'အကြံပေး၏ တုံ့ပြန်ချက်';

  @override
  String get journalInsights => 'ဂျာနယ်မှ သုံးသပ်ချက်များ';

  @override
  String get next => 'ရှေ့သို့';

  @override
  String get question1Title => 'သင့်ရည်မှန်းချက်က ဘာလဲ';

  @override
  String get question1Subtitle =>
      'သင့်အတွက် အရေးကြီးဆုံး ရည်မှန်းချက်ကို ရွေးချယ်ပါ';

  @override
  String get goalQuitCompletely => 'လုံးဝ ရပ်တန့်ရန်';

  @override
  String get goalReduceDrinking => 'သောက်သုံးမှုကို လျှော့ချရန်';

  @override
  String get goalTakeABreak => 'ခဏတာ အနားယူရန်';

  @override
  String get goalBuildHealthierHabits =>
      'ပိုမိုကျန်းမာသော အလေ့အကျင့်များ တည်ဆောက်ရန်';

  @override
  String get question3Title => 'သင့်နေ့စဉ် ပုံမှန်အလေ့အထကို ပြောပြပါ';

  @override
  String get drinksPerWeek => 'တစ်ပတ်လျှင် သောက်သုံးသော ပမာဏ';

  @override
  String get moneySpentPerWeek => 'တစ်ပတ်လျှင် ကုန်ကျစရိတ်';

  @override
  String get drinkingLevel => 'သောက်သုံးမှု အဆင့်';

  @override
  String get triggersLabel => 'တိုက်တွန်းစုံဆော်မှုများ';

  @override
  String get levelSocial => 'ပေါင်းသင်းဆက်ဆံရေး အဆင့်';

  @override
  String get levelRegular => 'ပုံမှန် အဆင့်';

  @override
  String get levelHeavy => 'အလွန်အကျွံ အဆင့်';

  @override
  String get levelDependent => 'စွဲလမ်းမှု အဆင့်';

  @override
  String get triggerStress => 'စိတ်ဖိစီးမှု';

  @override
  String get triggerLoneliness => 'တစ်ယောက်တည်း ပျင်းရိမှု';

  @override
  String get triggerHabit => 'အလေ့အထ';

  @override
  String get triggerSadness => 'ဝမ်းနည်းမှု';

  @override
  String get triggerAnger => 'ဒေါသထွက်မှု';

  @override
  String get triggerBoredom => 'ပျင်းရိမှု';

  @override
  String get triggerSocialPressure => 'ပေါင်းသင်းဆက်ဆံရေး ဖိအား';

  @override
  String get triggerCelebration => 'ပွဲလမ်းသဘင်များ';

  @override
  String get triggerSleepProblems => 'အိပ်မပျော်သော ပြဿနာများ';

  @override
  String get triggerWorkPressure => 'လုပ်ငန်းခွင် ဖိအား';

  @override
  String get question4Title => 'ဘာကြောင့် ပြောင်းလဲချင်တာလဲ?';

  @override
  String get question4Subtitle =>
      'သင့်အကြောင်းပြချက်က သင့်ကို ခွန်အားဖြစ်စေပါလိမ့်မည်။';

  @override
  String get reasonImproveHealth => 'ကျန်းမာရေး ပိုမိုကောင်းမွန်စေရန်';

  @override
  String get reasonSaveMoney => 'ငွေကြေး စုဆောင်းရန်';

  @override
  String get reasonFamily => 'မိသားစုအတွက်';

  @override
  String get reasonBetterSleep => 'ပိုမိုကောင်းမွန်စွာ အိပ်စက်နိုင်ရန်';

  @override
  String get reasonMentalClarity => 'စိတ်ဓာတ် ကြည်လင်ရှင်းလင်းစေရန်';

  @override
  String get reasonFitness => 'ခန္ဓာကိုယ် ကြံ့ခိုင်စေရန်';

  @override
  String get reasonSelfRespect => 'မိမိကိုယ်ကို လေးစားမှုရှိစေရန်';

  @override
  String get reasonCareer => 'အလုပ်အကိုင် တိုးတက်စေရန်';

  @override
  String get milestoneUnlockedLabel => 'မိုင်တိုင်တစ်ခု အောင်မြင်ခဲ့ပြီ';

  @override
  String incredibleNamePrefix(String name) {
    return 'အံ့ဩစရာပါပဲ၊ $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount စုဆောင်းနိုင်ခဲ့သည်';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count ကြိမ် ရှောင်ကြဉ်နိုင်ခဲ့သည်';
  }

  @override
  String get shareMyMilestone => 'ကျွန်ုပ်၏ မိုင်တိုင်ကို မျှဝေရန်';

  @override
  String get milestoneImageShareError =>
      'မိုင်တိုင်ပုံရိပ်ကို ဖန်တီး၍ မရပါ။ ကျေးဇူးပြု၍ ပြန်လည်ကြိုးစားပါ။';

  @override
  String get dailyCheckInTitle => 'နေ့စဉ် စစ်ဆေးချက်';

  @override
  String get howAreYouFeelingToday => 'ဒီနေ့ ဘယ်လိုခံစားရလဲ?';

  @override
  String get honestAnswerHelp =>
      'သင့်စိတ်ရင်းမှန်ဖြင့် ဖြေကြားချက်က သင့်ကို ပိုမိုကူညီပေးနိုင်ပါတယ်';

  @override
  String get didYouDrinkToday => 'ဒီနေ့ အရက်သောက်ခဲ့သလား?';

  @override
  String get noLabel => 'မသောက်ပါ';

  @override
  String get yesLabel => 'သောက်ခဲ့ပါသည်';

  @override
  String get cravingLevelNow => 'လက်ရှိ သောက်ချင်စိတ် မည်မျှရှိသနည်း?';

  @override
  String get anythingOnMind => 'စိတ်ထဲ၌ တစ်ခုခု ရင်ဖွင့်ချင်ပါသလား?';

  @override
  String get optionalLabel => '(စိတ်ကြိုက်)';

  @override
  String get dailyNoteHint =>
      'ဒီနေ့အကြောင်း၊ စိတ်ဆွေ့မှုများ၊ အောင်မြင်မှုများကို ရေးသားပါ...';

  @override
  String get alreadyCheckedInToday => 'ဒီနေ့အတွက် စစ်ဆေးပြီးပါပြီ';

  @override
  String get saveCheckIn => 'စစ်ဆေးချက်ကို သိမ်းဆည်းရန်';

  @override
  String get checkInsHelpTrack =>
      'နေ့စဉ် စစ်ဆေးချက်များသည် အချိန်နှင့်အမျှ သင့်တိုးတက်မှုကို မှတ်တမ်းတင်ပေးပါသည်';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'ဒီနေ့အတွက် စစ်ဆေးချက် ပြီးစီးသွားပါပြီ။';

  @override
  String get pleaseAnswerBothQuestions =>
      'ကျေးဇူးပြု၍ အထက်ပါ မေးခွန်းနှစ်ခုလုံးကို မဖြစ်မနေ ဖြေကြားပေးပါ';

  @override
  String get checkInSaved => 'စစ်ဆေးချက် သိမ်းဆည်းပြီးပါပြီ';

  @override
  String get cravingNone => 'လုံးဝမရှိပါ';

  @override
  String get cravingLow => 'နည်းနည်းရှိသည်';

  @override
  String get cravingMedium => 'သင့်တော်ရုံရှိသည်';

  @override
  String get cravingStrong => 'အလွန်ရှိသည်';

  @override
  String get moodBad => 'ဆိုးရွားသည်';

  @override
  String get moodLow => 'စိတ်ဓာတ်ကျသည်';

  @override
  String get moodGreat => 'အလွန်ကောင်းသည်';

  @override
  String get sosSupportTitle => 'SOS အရေးပေါ် ကူညီမှု';

  @override
  String notAloneMessage(String name) {
    return 'သင် တစ်ယောက်တည်း မဟုတ်ပါ၊ $name';
  }

  @override
  String get cravingsPassMessage =>
      'သောက်ချင်စိတ်ဆိုတာ ခဏတာပါ။ ဒီအချိန်ကို ကျော်လွှားနိုင်ဖို့ အောက်ပါအတိုင်း ပြုလုပ်ကြည့်ပါ။';

  @override
  String get breathingExercise => 'အသက်ရှူ လေ့ကျင့်ခန်း';

  @override
  String get breathingExerciseSubtitle =>
      'လမ်းညွှန်ချက်အတိုင်း 4-7-8 နည်းလမ်းကို ၂ မိနစ် ပြုလုပ်ပါ';

  @override
  String get rideTheWave => 'စိတ်ကို ထိန်းချုပ်ပါ';

  @override
  String get rideTheWaveSubtitle =>
      '၁၅ မိနစ် အချိန်သတ်မှတ်ချက် — သောက်ချင်စိတ်များ အမြဲတမ်း ပျောက်ကွယ်သွားပါလိမ့်မည်';

  @override
  String get copingTips => 'ရင်ဆိုင်ကျော်လွှားနည်း အကြံပြုချက်များ';

  @override
  String get copingTipsSubtitle => 'သင့်အတွက် သီးသန့် နည်းဗျူဟာများ';

  @override
  String get talkToAiCoach => 'AI အကြံပေးနှင့် စကားပြောရန်';

  @override
  String get talkToAiCoachSubtitle => 'သင့်အဖော်မွန်နှင့် စကားပြောဆိုပါ';

  @override
  String get callSomeone => 'တစ်ယောက်ယောက်ထံ ဖုန်းခေါ်ရန်';

  @override
  String get callSomeoneSubtitle => 'သင်ယုံကြည်ရသူထံ ဆက်သွယ်ပါ';

  @override
  String get contactsPermissionNeeded =>
      'ဖုန်းခေါ်ဆိုရန်အတွက် အဆက်အသွယ်Permission လိုအပ်ပါသည်။';

  @override
  String get beatenCravingsPrefix => 'သင်သည် သောက်ချင်စိတ်ကို ';

  @override
  String beatenCravingsCount(int count) {
    return '$count ကြိမ်';
  }

  @override
  String get beatenCravingsSuffix =>
      ' တိုင်အောင် ကျော်လွှားနိုင်ခဲ့ဖူးသည်။ အခုလည်း ထပ်မံ ကျော်လွှားနိုင်ပါသေးသည်။';

  @override
  String get tellUsAboutYourself => 'သင့်အကြောင်း ပြောပြပါ';

  @override
  String get detailsSubtitle =>
      'ဤအချက်အလက်များသည် သင့်ခရီးစဉ်ကို သီးသန့်ဖန်တီးပေးရန်နှင့် တိကျသော အချက်အလက်များ ထောက်ပံ့ပေးရန် ကူညီပေးပါသည်။';

  @override
  String get nameLabel => 'အမည်';

  @override
  String get nameHint => 'ဥပမာ - Alex Rivers';

  @override
  String get ageLabel => 'အသက်';

  @override
  String get ageHint => 'ဥပမာ - ၃၂';

  @override
  String get sexAssignedAtBirth => 'မွေးရာပါ လိင်';

  @override
  String get sexFemale => 'အမျိုးသမီး';

  @override
  String get sexMale => 'အမျိုးသား';

  @override
  String get heightLabel => 'အရပ်';

  @override
  String get weightLabel => 'ကိုယ်အလေးချိန်';

  @override
  String get heightHint => '၁၇၀';

  @override
  String get weightHint => '၇၀';

  @override
  String get dailyLimitReachedTitle => 'တစ်နေ့တာ ကန့်သတ်ချက် ပြည့်သွားပါပြီ';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'ဒီနေ့အတွက် အခမဲ့ စာတို $limit စာစောင်လုံးကို အသုံးပြုပြီးပါပြီ။ ကန့်သတ်ချက်မရှိ စကားပြောရန် Premium သို့ အဆင့်မြှင့်ပါ။';
  }

  @override
  String get coachConnectError =>
      'လက်ရှိတွင် ချိတ်ဆက်၍ မရပါ။ ခဏအကြာတွင် ပြန်လည်ကြိုးစားပါ။';

  @override
  String get clearConversationTitle => 'စကားပြောဆိုမှုများကို ဖျက်မလား?';

  @override
  String get clearConversationMessage =>
      'ဤလုပ်ဆောင်ချက်သည် သင့်အကြံပေးနှင့် ပြောဆိုထားသည့် မှတ်တမ်းများကို အပြီးတိုင် ဖျက်ပစ်မည်ဖြစ်သည်။';

  @override
  String get clearLabel => 'ဖျက်မည်';

  @override
  String get recoveryCoachTitle => 'ပြန်လည်ထူထောင်ရေး အကြံပေး';

  @override
  String get onlineLabel => 'လိုင်းပေါ်တွင်ရှိသည်';

  @override
  String get clearConversationMenuItem => 'စကားပြောဆိုမှု ဖျက်ရန်';

  @override
  String chatGreeting(String name) {
    return 'မင်္ဂလာပါ $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'သင် ခရီးစဉ်၏ $days ရက်မြောက်နေ့သို့ ရောက်ရှိနေပါပြီ။ စကားပြောချင်သည့် အချိန်တိုင်း ကျွန်ုပ် ရှိနေပေးပါမည်။';
  }

  @override
  String get quickPromptsLabel => 'အမြန် မေးခွန်းများ';

  @override
  String get promptCravingLabel => 'သောက်ချင်စိတ် ဖြစ်ပေါ်နေသည်';

  @override
  String get promptCravingSubtitle => 'စိတ်ကို အမြန် တည်ငြိမ်စေရန်';

  @override
  String get promptMotivationLabel => 'ခွန်အား လိုအပ်နေသည်';

  @override
  String get promptMotivationSubtitle => 'ခက်ခဲချိန်တွင် အားပေးစကား';

  @override
  String get promptSocialLabel => 'လူမှုရေး အခြေအနေ';

  @override
  String get promptSocialSubtitle => 'ပွဲလမ်းသဘင်များတွင် ပြုမူရန်';

  @override
  String get promptSlippedLabel => 'ကျွန်ုပ် မှားယွင်းသောက်သုံးမိသည်';

  @override
  String get promptSlippedSubtitle => 'အပြစ်တင်ခြင်းမရှိဘဲ ကူညီပေးမည်';

  @override
  String get typeMessageHint => 'စာတို ရေးသားပါ...';

  @override
  String get editProfileTitle => 'ပရိုဖိုင် ပြင်ဆင်ရန်';

  @override
  String couldNotSaveProfile(String error) {
    return 'ပရိုဖိုင် သိမ်းဆည်း၍ မရပါ: $error';
  }

  @override
  String get heightCmLabel => 'အရပ် (စင်တီမီတာ)';

  @override
  String get weightKgLabel => 'ကိုယ်အလေးချိန် (ကီလိုဂရမ်)';

  @override
  String get saveChangesLabel => 'ပြင်ဆင်ချက်များကို သိမ်းရန်';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights =>
      'အဆင့်မြင့် သုံးသပ်ချက်များနှင့် စာရင်းဇယားများ';

  @override
  String get featureUnlimitedJournal => 'ကန့်သတ်ချက်မရှိ ဂျာနယ် မှတ်တမ်းများ';

  @override
  String get featureUnlimitedChat =>
      'AI အကြံပေးနှင့် ကန့်သတ်ချက်မရှိ စကားပြောဆိုနိုင်မှု';

  @override
  String get featureCommunityGroups => 'သီးသန့် အသိုင်းအဝိုင်း အဖွဲ့များ';

  @override
  String get featurePrioritySupport => 'ဦးစားပေး ကျွမ်းကျင်သူ အကူအညီ';

  @override
  String get featureThemePacks => 'စိတ်ကြိုက် နောက်ခံပုံစံများ';

  @override
  String get featureDataExport => 'ဒေတာများ ထုတ်ယူနိုင်မှု';

  @override
  String get featureAdFree => 'ကြော်ငြာမပါသော အတွေ့အကြုံ';

  @override
  String get premiumMemberTitle => 'သင်သည် Premium အဖွဲ့ဝင်ဖြစ်ပါသည်';

  @override
  String get unlockFullRecoveryTitle =>
      'သင့်ပြန်လည်ထူထောင်ရေး အတွေ့အကြုံ\nအပြည့်အဝကို ရယူပါ';

  @override
  String get premiumMemberSubtitle =>
      'သင့်ပြန်လည်ထူထောင်ရေး ခရီးစဉ်ကို အားပေးသည့်အတွက် ကျေးဇူးတင်ပါသည် — အောက်ပါ Premium လုပ်ဆောင်ချက် အားလုံးကို အသုံးပြုနိုင်ပါပြီ။';

  @override
  String get premiumJoinSubtitle =>
      'ကျွန်ုပ်တို့၏ Premium ကိရိယာများနှင့် သီးသန့် ကူညီမှုများဖြင့်\nပြန်လည်ကျန်းမာရေးကို မြန်ဆန်စေနေသော\nလူပေါင်းထောင်ချီရှိသည့် အသိုင်းအဝိုင်းသို့ ဝင်ရောက်ပါ။';

  @override
  String get monthlyPlanLabel => 'တစ်လစာ';

  @override
  String get perMonthSuffix => '/လ';

  @override
  String get cancelAnytimeLabel => 'ကြိုက်သည့်အချိန်တွင် ပယ်ဖျက်နိုင်သည်';

  @override
  String get yearlyPlanLabel => 'တစ်နှစ်စာ';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'တစ်နှစ်လျှင် $amount ကျသင့်မည်';
  }

  @override
  String get bestValueLabel => 'အတန်ဆုံး အစီအစဉ်';

  @override
  String get alreadyPremiumLabel => 'သင်သည် Premium အသုံးပြုသူဖြစ်သည် ✓';

  @override
  String get startPremiumLabel => 'Premium စတင်ရန်';

  @override
  String get manageSubscriptionLabel =>
      'သင့်စက်၏ Subscription ဆက်တင်များမှတစ်ဆင့် စီမံခန့်ခွဲပါ သို့မဟုတ် ပယ်ဖျက်ပါ။';

  @override
  String get noCommitmentLabel =>
      'ရေရှည်ကတိကဝတ်ပြုရန် မလိုပါ။ ကြိုက်သည့်အချိန် ပယ်ဖျက်ပါ။';

  @override
  String get continueFreePlanLabel => 'အခမဲ့ အစီအစဉ်ဖြင့် ဆက်လက်သုံးမည်';

  @override
  String get backToHomeLabel => 'ပင်မစာမျက်နှာသို့ ပြန်သွားရန်';

  @override
  String get cancelPremiumLabel => 'Premium ပယ်ဖျက်ရန်';

  @override
  String get cancelPremiumTitle => 'Premium ကို ပယ်ဖျက်မလား?';

  @override
  String get cancelPremiumMessage =>
      'ကန့်သတ်ချက်မရှိ ဂျာနယ်မှတ်တမ်းများ၊ အကြံပေးနှင့် စကားပြောဆိုမှု၊ သုံးသပ်ချက်များနှင့် အပတ်စဉ် အစီရင်ခံစာများ အသုံးပြုခွင့် ဆုံးရှုံးပါမည်။ ကြိုက်သည့်အချိန် ပြန်လည်ဝယ်ယူနိုင်ပါသည်။';

  @override
  String get keepPremiumLabel => 'Premium ကို ဆက်လက်ထားရှိမည်';

  @override
  String get nowPremiumMessage =>
      'သင်သည် Premium ဖြစ်သွားပါပြီ! အတွေ့အကြုံ အပြည့်အဝကို ခံစားလိုက်ပါ။';

  @override
  String get premiumCancelledMessage =>
      'Premium ပယ်ဖျက်ပြီးပါပြီ။ အခမဲ့ အစီအစဉ်သို့ ပြန်ရောက်သွားပါပြီ။';

  @override
  String get termsOfUseLabel => 'အသုံးပြုမှု စည်းမျဉ်းများ';

  @override
  String get navHomeLabel => 'ပင်မ';

  @override
  String get navStatsLabel => 'စာရင်းဇယား';

  @override
  String get navJournalLabel => 'ဂျာနယ်';

  @override
  String get navBadgesLabel => 'တံဆိပ်များ';

  @override
  String get navProfileLabel => 'ပရိုဖိုင်';

  @override
  String get recoveryGoalsTitle => 'ပြန်လည်ထူထောင်ရေး ရည်မှန်းချက်များ';

  @override
  String get drinksPerWeekLabel => 'တစ်ပတ်လျှင် သောက်သုံးသော ပမာဏ';

  @override
  String get quitReasonsLabel => 'ဖြတ်ရသည့် အကြောင်းအရင်းများ';

  @override
  String get quitReasonsHelperText =>
      'အကြောင်းအရင်း အများအပြားကို ကော်မာ (,) ခြား၍ ရေးပါ။';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'ရည်မှန်းချက်များကို သိမ်းဆည်း၍ မရပါ: $error';
  }

  @override
  String get goalHint => 'ဥပမာ - လုံးဝဖြတ်ရန်';

  @override
  String get drinksPerWeekHint => 'ဥပမာ - ၁၂';

  @override
  String get quitReasonsHint => 'ဥပမာ - ကျန်းမာရေး၊ မိသားစု၊ ငွေကြေး';

  @override
  String get todaysPrompt => 'ဒီနေ့အတွက် ခေါင်းစဉ်';

  @override
  String get defaultJournalPrompt => 'ဒီနေ့ စိတ်ထဲမှာ ဘာတွေတွေးနေလဲ?';

  @override
  String get aiJournalInsights => 'AI ၏ ဂျာနယ် သုံးသပ်ချက်များ';

  @override
  String get unlockJournalInsightsMessage =>
      'သင့်ဂျာနယ် အချက်အလက်များမှတစ်ဆင့် အပတ်စဉ် ပုံစံများ၊ စိတ်ခံစားမှုများနှင့် သီးသန့် အကြံပြုချက်များကို ရယူပါ။';

  @override
  String get notEnoughJournalData =>
      'အချက်အလက် မလုံလောက်သေးပါ — ဒီအပတ်တွင် ဂျာနယ် အနည်းငယ် ရေးသားပြီး ပြန်လည်စစ်ဆေးပါ။';

  @override
  String get openEntry => 'ဖွင့်ရန်';

  @override
  String get editEntry => 'ပြင်ဆင်ရန်';

  @override
  String get deleteEntry => 'ဖျက်ရန်';

  @override
  String get searchJournalEntries => 'မှတ်တမ်းများ ရှာဖွေရန်...';

  @override
  String get writeNewEntry => 'မှတ်တမ်းအသစ် ရေးရန်';

  @override
  String get recentEntries => 'လတ်တလော မှတ်တမ်းများ';

  @override
  String get noJournalEntriesYet =>
      'ဂျာနယ် မှတ်တမ်းများ မရှိသေးပါ — အထက်တွင် သင့်အတွေးများကို စတင်ရေးသားပါ။';

  @override
  String get noEntriesMatchFilters =>
      'ရှာဖွေမှုနှင့် ကိုက်ညီသော မှတ်တမ်းမရှိပါ။';

  @override
  String get weeklyJournalLimitReached => 'တစ်ပတ်တာ ကန့်သတ်ချက် ပြည့်သွားပါပြီ';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'ဒီအပတ်အတွက် အခမဲ့ ဂျာနယ်မှတ်တမ်း $limit ခုလုံးကို အသုံးပြုပြီးပါပြီ။ ကန့်သတ်ချက်မရှိ သုံးရန် Premium သို့ အဆင့်မြှင့်ပါ။';
  }

  @override
  String get newEntry => 'မှတ်တမ်းအသစ်';

  @override
  String get writeYourThoughts => 'သင့်အတွေးများကို ရေးသားပါ';

  @override
  String get saveEntry => 'မှတ်တမ်း သိမ်းရန်';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'ဒီအပတ်အတွက် အခမဲ့ $limit ခုအနက် $remaining ခု ကျန်ရှိပါသေးသည်';
  }

  @override
  String get deleteEntryQuestion => 'မှတ်တမ်းကို ဖျက်မလား?';

  @override
  String get deleteEntryConfirmation =>
      'ဤမှတ်တမ်းကို အပြီးတိုင် ဖျက်ပစ်မည်ဖြစ်ပြီး ပြန်လည်ရယူနိုင်မည် မဟုတ်ပါ။';

  @override
  String get journalEntryNotFound => 'မှတ်တမ်း ရှာမတွေ့ပါ';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'ဤဂျာနယ်မှတ်တမ်း ဖျက်ဆီးခံရခြင်း ဖြစ်နိုင်ပါသည်။';

  @override
  String get goBack => 'နောက်သို့ ပြန်သွားရန်';

  @override
  String get journalEntryTitle => 'ဂျာနယ် မှတ်တမ်း';

  @override
  String get moodStruggling => 'ရုန်းကန်နေရသည်';

  @override
  String get moodUnwell => 'နေမကောင်းပါ';

  @override
  String get moodNeutral => 'မကောင်းမဆိုး';

  @override
  String get whatHappenedToday => 'ဒီနေ့ ဘာတွေဖြစ်ပျက်ခဲ့သလဲ?';

  @override
  String get trigger => 'တိုက်တွန်းဆွေ့ဆော်မှု';

  @override
  String get whatHelped => 'ဘာက ကူညီပေးခဲ့သလဲ';

  @override
  String get whatIllTryNextTime => 'နောက်တစ်ကြိမ်တွင် ဘာကို ကြိုးစားမလဲ';

  @override
  String get journalPrivacyMessage =>
      'သင့်စိတ်ကူးများသည် သီးသန့်ဖြစ်ပြီး သင့်ဂျာနယ်ထဲတွင် လုံခြုံစွာ သိမ်းဆည်းထားပါသည်။';

  @override
  String get unlocked => 'ရရှိပြီးပါပြီ';

  @override
  String daysLeft(int count) {
    return '$count ရက် ကျန်ရှိသေးသည်';
  }

  @override
  String daysCount(int count) {
    return '$count ရက်';
  }

  @override
  String get firstReflection => 'ပထမဆုံး\nဆင်ခြင်သုံးသပ်မှု';

  @override
  String get oneJournalEntry => 'ဂျာနယ်မှတ်တမ်း ၁ ခု';

  @override
  String get openBook => 'စာအုပ်တစ်အုပ်';

  @override
  String get tenJournalEntries => 'ဂျာနယ်မှတ်တမ်း ၁၀ ခု';

  @override
  String get dedicatedWriter => 'ဇွဲရှိသော\nစာရေးသူ';

  @override
  String get thirtyJournalEntries => 'ဂျာနယ်မှတ်တမ်း ၃၀';

  @override
  String get firstConversation => 'ပထမဆုံး\nစကားပြောဆိုမှု';

  @override
  String get oneAiCoachChat => 'AI အကြံပေး စကားပြောဆိုမှု ၁ ခု';

  @override
  String get keepTalking => 'ဆက်လက်ပြောဆိုပါ';

  @override
  String get fiveConversations => 'စကားပြောဆိုမှု ၅ ကြိမ်';

  @override
  String get coachCompanion => 'အကြံပေး\nအဖော်မွန်';

  @override
  String get twentyConversations => 'စကားပြောဆိုမှု ၂၀';

  @override
  String get checkInHabit => 'စစ်ဆေးမှု\nအလေ့အကျင့်';

  @override
  String get sevenCheckIns => 'စစ်ဆေးမှု ၇ ကြိမ်';

  @override
  String get consistencyPro => 'မှန်မှန်ပြုလုပ်သူ\nကျွမ်းကျင်သူ';

  @override
  String get thirtyCheckIns => 'စစ်ဆေးမှု ၃၀';

  @override
  String get dedicatedJourney => 'ဇွဲရှိသော\nခရီးစဉ်';

  @override
  String get hundredCheckIns => 'စစ်ဆေးမှု ၁၀၀';

  @override
  String get goalGetter => 'ရည်မှန်းချက် အကောင်အထည်ဖော်သူ';

  @override
  String get threeGoalsCompleted => 'ရည်မှန်းချက် ၃ ခု ပြီးစီးခဲ့သည်';

  @override
  String get goalAchiever => 'ရည်မှန်းချက်\nအောင်မြင်သူ';

  @override
  String get tenGoalsCompleted => 'ရည်မှန်းချက် ၁၀ ခု ပြီးစီးခဲ့သည်';

  @override
  String get firstSavings => 'ပထမဆုံး\nစုဆောင်းငွေ';

  @override
  String get fiveHundredSaved => '\$500 စုဆောင်းနိုင်ခဲ့သည်';

  @override
  String get smartSaver => 'ပါးနပ်သော စုဆောင်းသူ';

  @override
  String get oneThousandSaved => '\$1,000 စုဆောင်းနိုင်ခဲ့သည်';

  @override
  String get bigSaver => 'ငွေပမာဏအမြောက်အမြား စုဆောင်းသူ';

  @override
  String get fiveThousandSaved => '\$5,000 စုဆောင်းနိုင်ခဲ့သည်';

  @override
  String currencyProgress(String current, String target) {
    return '\$$target တွင် \$$current';
  }

  @override
  String countProgress(int current, int target) {
    return '$target တွင် $current';
  }

  @override
  String get firstMilestoneWaiting =>
      'ဆက်လက်ကြိုးစားပါ — သင့်ရဲ့ ပထမဆုံး အောင်မြင်မှု မိုင်တိုင်က စောင့်ကြိုနေပါတယ်!';

  @override
  String get badgesAndMilestones =>
      'တံဆိပ်များနှင့် အောင်မြင်မှု မိုင်တိုင်များ';

  @override
  String get yourMilestoneJourney => 'သင့်အောင်မြင်မှု မိုင်တိုင် ခရီးစဉ်';

  @override
  String milestonesAchieved(int count) {
    return 'အောင်မြင်မှု မိုင်တိုင် $count ခု ရရှိခဲ့ပြီးပါပြီ။\nကြည့်ရှုရန် နှိပ်ပါ';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'သင်သည် ခရီးစဉ်၏ မိုင်တိုင် $total ခုအနက် $unlocked ခုကို ရရှိခဲ့ပြီးပါပြီ။';
  }

  @override
  String get remaining => 'ကျန်ရှိနေသေးသော';

  @override
  String get complete => 'ပြီးစီးပါပြီ';

  @override
  String get nextMilestone => 'နောက်ထပ် မိုင်တိုင်';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% ရောက်ရှိပါပြီ';
  }

  @override
  String get sobrietyMilestones => 'အရက်ကင်းစင်မှု အောင်မြင်မှု မိုင်တိုင်များ';

  @override
  String get journeyBadges => 'ခရီးစဉ် တံဆိပ်များ';

  @override
  String get bronze => 'ကြေးတံဆိပ်';

  @override
  String get silver => 'ငွေတံဆိပ်';

  @override
  String get gold => 'ရွှေတံဆိပ်';

  @override
  String get platinum => 'ပလက်တီနမ်တံဆိပ်';

  @override
  String get diamond => 'စိန်တံဆိပ်';

  @override
  String get analyzingYourJourney => 'သင့်ခရီးစဉ်ကို သုံးသပ်နေပါသည်...';

  @override
  String get aiCreatingSanctuary =>
      'ကျွန်ုပ်တို့၏ AI က သင့်အတွက် သီးသန့်နေရာတစ်ခု ဖန်တီးပေးနေပါသည်။';

  @override
  String get understandingHabits => 'အလေ့အကျင့်များကို လေ့လာနေပါသည်...';

  @override
  String get calculatingBaseline =>
      'သင့်အခြေခံအချက်အလက်များကို တွက်ချက်နေပါသည်...';

  @override
  String get personalizingPlan => 'သင့်အစီအစဉ်ကို သီးသန့်ပြင်ဆင်နေပါသည်...';

  @override
  String get finalizingSanctuary => 'သင့်နေရာကို အပြီးသတ် ပြင်ဆင်နေပါသည်...';

  @override
  String get creatingYourPlan => 'သင့်အစီအစဉ်ကို ဖန်တီးနေပါသည်...';

  @override
  String get personalizedPlanError =>
      'သင့်အတွက် သီးသန့်အစီအစဉ်ကို မဖန်တီးနိုင်ခဲ့ပါ။ ကျေးဇူးပြု၍ ပြန်လည်ကြိုးစားပါ။';

  @override
  String get retry => 'ပြန်လည်ကြိုးစားရန်';

  @override
  String get breathInhale => 'ရှူသွင်းပါ';

  @override
  String get breathHold => 'အသက်အောင့်ထားပါ';

  @override
  String get breathExhale => 'ရှူထုတ်ပါ';

  @override
  String get breathDone => 'ပြီးပါပြီ';

  @override
  String get breathGreatJob => 'အလွန်ကောင်းမွန်ပါသည်!';

  @override
  String breathSessionsToday(int count) {
    return 'ဒီနေ့အတွက် လေ့ကျင့်မှု $count ကြိမ်';
  }

  @override
  String get endExercise => 'လေ့ကျင့်ခန်း အဆုံးသတ်ရန်';

  @override
  String get done => 'ပြီးပြီ';

  @override
  String get noCopingTipsYet =>
      'ရင်ဆိုင်ကျော်လွှားနည်း အကြံပြုချက်များ မရှိသေးပါ';

  @override
  String get copingStrategiesWillAppear =>
      'သင့်အစီအစဉ် ရေးဆွဲပြီးစီးပါက သင့်အတွက် သီးသန့် နည်းဗျူဟာများ ဤနေရာတွင် ပေါ်လာပါမည်။';

  @override
  String get strategiesTailoredToTriggers =>
      'သင့်စိတ်ဆွေ့မှုများနှင့် ကိုက်ညီသော နည်းဗျူဟာများ';

  @override
  String get cravingsPeakAndPass =>
      'သောက်ချင်စိတ်များသည် အမြင့်ဆုံးသို့ ရောက်ရှိပြီးမှ\nပြန်လည် ပျောက်ကွယ်သွားတတ်သည်';

  @override
  String get rideTheWaveDescription =>
      'သောက်ချင်စိတ် အများစုသည် ၁၅ မိနစ်အတွင်း ပျောက်ကွယ်သွားပါသည်။ သင် ဘာမှလိုက်လုပ်စရာ မလိုပါ — ကျွန်ုပ်တို့နှင့်အတူ သည်းခံကျော်လွှားလိုက်ပါ။';

  @override
  String get stayWithIt => 'ကြံ့ကြံ့ခံပါ';

  @override
  String get youMadeIt => 'သင် အောင်မြင်သွားပါပြီ';

  @override
  String get readyWhenYouAre => 'သင် အသင့်ဖြစ်သည့်အချိန်တွင် စတင်ပါ';

  @override
  String get rideItAgain => 'နောက်တစ်ကြိမ် ကြိုးစားရန်';

  @override
  String get start15MinuteTimer => '၁၅ မိနစ် အချိန်သတ်မှတ်ချက် စတင်ရန်';

  @override
  String get rideTheWaveCompletedMessage =>
      'သင် စိတ်ကို ထိန်းချုပ်နိုင်ခဲ့ပါပြီ။ ဒါဟာ တကယ့် ခွန်အားပါပဲ။ 💪';

  @override
  String get myProgress => 'ကျွန်ုပ်၏ တိုးတက်မှု';

  @override
  String get weekLabel => 'အပတ်';

  @override
  String get monthLabel => 'လ';

  @override
  String get allLabel => 'အားလုံး';

  @override
  String get daysSoberStatLabel => 'အရက်ကင်းစင်သော\nရက်များ';

  @override
  String get savedStatLabel => 'စုဆောင်းမိသော';

  @override
  String get avoidedStatLabel => 'ရှောင်ကြဉ်ခဲ့သော';

  @override
  String get moodTrends => 'စိတ်ခံစားမှု အပြောင်းအလဲများ';

  @override
  String get cravingsPattern => 'သောက်ချင်စိတ် ပုံစံများ';

  @override
  String get unlockLabel => 'ရယူရန်';

  @override
  String get unlockFullStats => 'စာရင်းဇယား အပြည့်အဝကို ရယူပါ';

  @override
  String get premiumStatsMessage =>
      'စိတ်ခံစားမှု အပြောင်းအလဲနှင့် သောက်ချင်စိတ် ပုံစံများသည် Premium အင်္ဂါရပ်များ ဖြစ်သည်။ အပြည့်အဝ ကြည့်ရှုရန် အဆင့်မြှင့်ပါ။';

  @override
  String get healthMilestonesWillAppear =>
      'သင့်ကျန်းမာရေးဆိုင်ရာ အောင်မြင်မှု မိုင်တိုင်များ ဤနေရာတွင် ပေါ်လာပါမည်။';

  @override
  String get healthMilestones => 'ကျန်းမာရေးဆိုင်ရာ မိုင်တိုင်များ';

  @override
  String dayNumber(int day) {
    return '$day ရက်မြောက်နေ့';
  }

  @override
  String get soberLabel => 'အရက်ကင်းစင်သည်';

  @override
  String get slipLabel => 'မှားယွင်းသောက်သုံးမိသည်';

  @override
  String get noDataLabel => 'ဒေတာမရှိပါ';

  @override
  String get milestone24Hours => '၂၄ နာရီ';

  @override
  String get milestoneOneWeek => 'တစ်ပတ်';

  @override
  String get milestoneOneMonth => 'တစ်လ';

  @override
  String get milestoneThreeMonths => 'သုံးလ';

  @override
  String get milestoneSixMonths => 'ခြောက်လ';

  @override
  String get milestoneOneYear => 'တစ်နှစ်';

  @override
  String milestoneDayCount(int day) {
    return '$day ရက်မြောက် အောင်မြင်မှု မိုင်တိုင်';
  }

  @override
  String get maybeLaterLabel => 'နောက်မှ ဖြစ်နိုင်သည်';

  @override
  String get cancelLabel => 'ပယ်ဖျက်ရန်';
}
