// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get skip => 'چھوڑیں';

  @override
  String get continueButton => 'جاری رکھیں';

  @override
  String get getStarted => 'شروع کریں';

  @override
  String get onboardingTitle1 => 'اپنی زندگی کا کنٹرول سنبھالیں';

  @override
  String get onboardingSubtitle1 =>
      'اپنے سفر کا حساب رکھیں، ہر کامیابی کا جشن منائیں اور دن بہ دن صحت مند بنیں۔';

  @override
  String get onboardingTitle2 => 'آپ کا AI ریکوری ساتھی';

  @override
  String get onboardingSubtitle2 =>
      'اپنے سفر کے مطابق ذاتی رہنمائی، صحت مند عادتیں، تحریکی یاد دہانیاں اور پیشرفت رپورٹس حاصل کریں۔';

  @override
  String get goodMorning => 'صبح بخیر';

  @override
  String get goodAfternoon => 'سہ پہر بخیر';

  @override
  String get goodEvening => 'شام بخیر';

  @override
  String get goodNight => 'شب بخیر';

  @override
  String get embracingClarity => 'ہر دن ایک قدم، ذہنی شفافیت کی طرف۔';

  @override
  String get streakLabel => 'تسلسل';

  @override
  String get goalLabel => 'ہدف';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن',
      one: '$count دن',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'پریمیئم پلان';

  @override
  String get premiumPlanSubtitle => 'مکمل ریکوری کے تجربے کو انلاک کریں';

  @override
  String get accountAndSupport => 'اکاؤنٹ اور سپورٹ';

  @override
  String get privacyPolicy => 'رازداری کی پالیسی';

  @override
  String get privacyPolicySubtitle =>
      'ڈیٹا شیئرنگ اور اکاؤنٹ کی سیکیورٹی کو منظم کریں';

  @override
  String get termsOfService => 'سروس کی شرائط';

  @override
  String get termsOfServiceSubtitle =>
      'اکثر پوچھے گئے سوالات، ہم سے رابطہ کریں اور وسائل';

  @override
  String get shareApp => 'ایپ شیئر کریں';

  @override
  String get shareAppSubtitle => 'اپنے دوستوں کے ساتھ ایپ شیئر کریں';

  @override
  String get resetData => 'ڈیٹا ری سیٹ کریں';

  @override
  String get resetDataSubtitle => 'اس ڈیوائس پر محفوظ شدہ تمام ڈیٹا مٹائیں';

  @override
  String get resetAllDataTitle => 'تمام ڈیٹا ری سیٹ کریں؟';

  @override
  String get resetAllDataMessage =>
      'یہ اس ڈیوائس پر محفوظ تمام معلومات — پروفائل، جریدے کے اندراجات، اور پیشرفت — کو پاک کر دے گا اور اسے واپس نہیں لایا جا سکتا۔';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get reset => 'ری سیٹ کریں';

  @override
  String get chooseFromGallery => 'گیلری سے منتخب کریں';

  @override
  String get takePhoto => 'تصویر لیں';

  @override
  String get removePhoto => 'تصویر ہٹائیں';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'تصویر اپ ڈیٹ نہیں ہو سکی: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'تصویر نہیں ہٹائی جا سکی: $error';
  }

  @override
  String get photoTooLarge =>
      'یہ تصویر سائز میں بہت بڑی ہے — براہ کرم کوئی دوسری تصویر منتخب کریں۔';

  @override
  String get unableToLoadProfile => 'آپ کی پروفائل لوڈ کرنے میں ناکامی';

  @override
  String get pleaseTryAgain => 'براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get tryAgain => 'دوبارہ کوشش کریں';

  @override
  String get profileNotFound => 'پروفائل نہیں ملی';

  @override
  String get refresh => 'ریفریش کریں';

  @override
  String get noProfileDataFound =>
      'اس ڈیوائس پر ابھی تک کوئی پروفائل ڈیٹا نہیں ملا۔';

  @override
  String couldNotResetData(String error) {
    return 'ڈیٹا ری سیٹ نہیں ہو سکا: $error';
  }

  @override
  String get navHome => 'ہوم';

  @override
  String get navStats => 'اعداد و شمار';

  @override
  String get navJournal => 'جریدہ';

  @override
  String get navBadges => 'بیجز';

  @override
  String get navProfile => 'پروفائل';

  @override
  String featureComingSoon(String feature) {
    return '$feature جلد دستیاب ہو گا۔';
  }

  @override
  String get appWordmark => 'ویلنیس';

  @override
  String get appTitle => 'شراب نوشی ترک کریں';

  @override
  String get splashSubtitle => 'شراب سے پاک زندگی کی طرف\nپہلا قدم اٹھائیں';

  @override
  String get preparingJourney => 'آپ کا سفر\nتیار کیا جا رہا ہے';

  @override
  String get taskMorningMeditation => 'صبح کی مراقبہ (10 منٹ)';

  @override
  String get taskReadChapter => '\"The Sober Diaries\" کا باب 4 پڑھیں';

  @override
  String get taskEveningJournal => 'شام کا شکرگزاری کا جریدہ';

  @override
  String get close => 'بند کریں';

  @override
  String get youAreDoingGreat => 'آپ بہت اچھا کر رہے ہیں!';

  @override
  String get shareMilestone => 'سنگ میل شیئر کریں';

  @override
  String shareMilestoneMessage(int days) {
    return 'میں اپنے ریکوری کے سفر کے $days ویں دن پر ہوں! 💪';
  }

  @override
  String get shareMilestoneSubject => 'میرا ریکوری کا سنگ میل';

  @override
  String get weeklyReportReadyTitle => 'آپ کی ہفتہ وار رپورٹ تیار ہے';

  @override
  String get weeklyReportReadySubtitle =>
      'یہ دیکھنے کے لیے ٹیپ کریں کہ آپ کا ہفتہ کیسا گزرا';

  @override
  String get howAreYouFeeling => 'آپ کیسا محسوس کر رہے ہیں؟';

  @override
  String get moodTough => 'مشکل';

  @override
  String get moodOkay => 'مناسب';

  @override
  String get moodGood => 'اچھا';

  @override
  String get moneySaved => 'بچائے گئے پیسے';

  @override
  String get caloriesSaved => 'بچائی گئی کیلوریز';

  @override
  String get healthScore => 'صحت کا اسکور';

  @override
  String get drinksAvoided => 'پرہیز کی گئی ڈرنکس';

  @override
  String get estimated => 'تخمینہ شدہ';

  @override
  String get aiGenerated => 'AI کی تیار کردہ';

  @override
  String get daysCapsLabel => 'دن';

  @override
  String get todaysMotivation => 'آج کی تحریک';

  @override
  String get defaultMotivationQuote =>
      'آپ نے اپنے عزم کو کامیابی سے برقرار رکھا ہے۔ مثبت تبدیلی کے اس سفر کو جاری رکھیں۔';

  @override
  String get talkToCoach => 'کوچ سے بات کریں';

  @override
  String get havingACraving => 'شدید طلب ہو رہی ہے';

  @override
  String get unlockWeeklyReportsTitle => 'ہفتہ وار رپورٹس انلاک کریں';

  @override
  String get unlockWeeklyReportsMessage =>
      'ہر ہفتے اپنے پاک دن، موڈ کے رجحانات، اور AI کی ذاتی رائے دیکھیں۔ انلاک کرنے کے لیے پریمیئم پر اپ گریڈ کریں۔';

  @override
  String get maybeLater => 'شاید بعد میں';

  @override
  String get upgrade => 'اپ گریڈ کریں';

  @override
  String get weeklyReportTitle => 'ہفتہ وار رپورٹ';

  @override
  String get weeklyReportsPremiumTitle => 'ہفتہ وار رپورٹس پریمیئم خصوصیت ہیں';

  @override
  String get weeklyReportsPremiumMessage =>
      'ہر ہفتے اپنے پاک دن، موڈ کے رجحانات، طلب کا پیٹرن، اور AI کی ذاتی رائے دیکھیں۔';

  @override
  String get upgradeToPremium => 'پریمیئم پر اپ گریڈ کریں';

  @override
  String get couldNotGenerateReport => 'اس وقت آپ کی رپورٹ تیار نہیں ہو سکی۔';

  @override
  String get tryAgainLower => 'دوبارہ کوشش کریں';

  @override
  String get statSoberDays => 'پاک دن';

  @override
  String get statAvgMood => 'اوسط موڈ';

  @override
  String get statCravings => 'طلب کا احساس';

  @override
  String get statMoneySaved => 'بچائے گئے پیسے';

  @override
  String get coachFeedback => 'کوچ کی رائے';

  @override
  String get journalInsights => 'جریدے کی بصیرت';

  @override
  String get next => 'آگے';

  @override
  String get question1Title => 'آپ کا ہدف کیا ہے؟';

  @override
  String get question1Subtitle =>
      'وہ ہدف منتخب کریں جو آپ کے لیے\nسب سے زیادہ اہم ہے';

  @override
  String get goalQuitCompletely => 'مکمل طور پر چھوڑنا';

  @override
  String get goalReduceDrinking => 'پینا کم کرنا';

  @override
  String get goalTakeABreak => 'کچھ عرصے کا وقفہ لینا';

  @override
  String get goalBuildHealthierHabits => 'صحت مند عادتیں اپنا نا';

  @override
  String get question3Title => 'ہمیں اپنے معمولات کے\nبارے میں بتائیں';

  @override
  String get drinksPerWeek => 'فی ہفتہ ڈرنکس';

  @override
  String get moneySpentPerWeek => 'فی ہفتہ خرچ کی رقم';

  @override
  String get drinkingLevel => 'پینے کی سطح';

  @override
  String get triggersLabel => 'محرکات (Triggers)';

  @override
  String get levelSocial => 'سماجی';

  @override
  String get levelRegular => 'باقاعدہ';

  @override
  String get levelHeavy => 'زیادہ';

  @override
  String get levelDependent => 'منحصر/عادی';

  @override
  String get triggerStress => 'تناؤ';

  @override
  String get triggerLoneliness => 'تنہائی';

  @override
  String get triggerHabit => 'عادت';

  @override
  String get triggerSadness => 'وداسی';

  @override
  String get triggerAnger => 'غصہ';

  @override
  String get triggerBoredom => 'بوریت';

  @override
  String get triggerSocialPressure => 'سماجی دباؤ';

  @override
  String get triggerCelebration => 'جشن';

  @override
  String get triggerSleepProblems => 'نیند کے مسائل';

  @override
  String get triggerWorkPressure => 'کام کا دباؤ';

  @override
  String get question4Title => 'آپ تبدیلی کیوں چاہتے ہیں؟';

  @override
  String get question4Subtitle => 'آپ کی وجہ آپ کو متحرک رکھنے میں مدد کرے گی۔';

  @override
  String get reasonImproveHealth => 'صحت کو بہتر بنانا';

  @override
  String get reasonSaveMoney => 'پیسے بچانا';

  @override
  String get reasonFamily => 'خاندان کے لیے';

  @override
  String get reasonBetterSleep => 'بہتر نیند';

  @override
  String get reasonMentalClarity => 'ذہنی شفافیت';

  @override
  String get reasonFitness => 'فٹنس';

  @override
  String get reasonSelfRespect => 'خود داری';

  @override
  String get reasonCareer => 'کیریئر';

  @override
  String get milestoneUnlockedLabel => 'سنگ میل حاصل ہو گیا';

  @override
  String incredibleNamePrefix(String name) {
    return 'زبردست، $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount کی بچت';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count ڈرنکس سے پرہیز';
  }

  @override
  String get shareMyMilestone => 'میرا سنگ میل شیئر کریں';

  @override
  String get milestoneImageShareError =>
      'سنگ میل کی تصویر نہیں بن سکی۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get dailyCheckInTitle => 'روزانہ کا جائزہ';

  @override
  String get howAreYouFeelingToday => 'آج آپ کیسا محسوس کر رہے ہیں؟';

  @override
  String get honestAnswerHelp =>
      'آپ کا سچا جواب ہمیں آپ کی بہتر مدد کرنے میں مدد دیتا ہے';

  @override
  String get didYouDrinkToday => 'کیا آپ نے آج شراب پی؟';

  @override
  String get noLabel => 'نہیں';

  @override
  String get yesLabel => 'ہاں';

  @override
  String get cravingLevelNow => 'اس وقت طلب کی سطح کیا ہے؟';

  @override
  String get anythingOnMind => 'کیا ذہن میں کوئی بات ہے؟';

  @override
  String get optionalLabel => '(اختیاری)';

  @override
  String get dailyNoteHint =>
      'اپنے دن، محرکات یا کامیابیوں کے بارے میں لکھیں...';

  @override
  String get alreadyCheckedInToday => 'آج کا جائزہ مکمل ہو چکا ہے';

  @override
  String get saveCheckIn => 'جائزہ محفوظ کریں';

  @override
  String get checkInsHelpTrack =>
      'روزانہ کا جائزہ وقت کے ساتھ آپ کی پیشرفت کو ٹریک کرنے میں مدد کرتا ہے';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'آپ آج کا جائزہ پہلے ہی مکمل کر چکے ہیں۔';

  @override
  String get pleaseAnswerBothQuestions =>
      'براہ کرم پہلے اوپر دیے گئے دونوں سوالات کے جواب دیں';

  @override
  String get checkInSaved => 'جائزہ محفوظ ہو گیا';

  @override
  String get cravingNone => 'بالکل نہیں';

  @override
  String get cravingLow => 'کم';

  @override
  String get cravingMedium => 'درمیانی';

  @override
  String get cravingStrong => 'شدید';

  @override
  String get moodBad => 'خراب';

  @override
  String get moodLow => 'کمزور';

  @override
  String get moodGreat => 'بہت اچھا';

  @override
  String get sosSupportTitle => 'SOS مدد';

  @override
  String notAloneMessage(String name) {
    return 'آپ اکیلے نہیں ہیں، $name';
  }

  @override
  String get cravingsPassMessage =>
      'طلب کے لمحے گزر جاتے ہیں۔ اس وقت پر قابو پانے کے لیے نیچے سے کچھ منتخب کریں۔';

  @override
  String get breathingExercise => 'سانس کی مشق';

  @override
  String get breathingExerciseSubtitle => 'رہنمائی کے ساتھ 4-7-8 تکنیک، 2 منٹ';

  @override
  String get rideTheWave => 'طلب کی لہر پر قابو پائیں';

  @override
  String get rideTheWaveSubtitle =>
      '15 منٹ کا ٹائمر — طلب ہمیشہ ختم ہو جاتی ہے';

  @override
  String get copingTips => 'قابو پانے کی تجاویز';

  @override
  String get copingTipsSubtitle => 'آپ کے محرکات کے مطابق ذاتی حکمت عملی';

  @override
  String get talkToAiCoach => 'AI کوچ سے بات کریں';

  @override
  String get talkToAiCoachSubtitle => 'اپنے ریکوری کے ساتھی سے چیٹ کریں';

  @override
  String get callSomeone => 'کسی کو کال کریں';

  @override
  String get callSomeoneSubtitle => 'اپنے قابل اعتماد فرد سے رابطہ کریں';

  @override
  String get contactsPermissionNeeded =>
      'رابطے کو کال کرنے کے لیے کانٹیکٹس کی اجازت ضروری ہے۔';

  @override
  String get beatenCravingsPrefix => 'آپ پہلے بھی ';

  @override
  String beatenCravingsCount(int count) {
    return '$count بار';
  }

  @override
  String get beatenCravingsSuffix =>
      ' طلب کو شکست دے چکے ہیں۔ آپ یہ دوبارہ کر سکتے ہیں۔';

  @override
  String get tellUsAboutYourself => 'ہمیں اپنے بارے میں بتائیں';

  @override
  String get detailsSubtitle =>
      'یہ معلومات آپ کے ریکوری کے سفر کو ذاتی بنانے اور درست بصیرت فراہم کرنے میں ہماری مدد کرتی ہے۔';

  @override
  String get nameLabel => 'نام';

  @override
  String get nameHint => 'مثلاً، علی خان';

  @override
  String get ageLabel => 'عمر';

  @override
  String get ageHint => 'مثلاً، 32';

  @override
  String get sexAssignedAtBirth => 'پیدائشی جنس';

  @override
  String get sexFemale => 'خاتون';

  @override
  String get sexMale => 'مرد';

  @override
  String get heightLabel => 'قد';

  @override
  String get weightLabel => 'وزن';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'روزانہ کی حد ختم ہو گئی';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'آپ نے آج کے تمام $limit مفت پیغامات استعمال کر لیے ہیں۔ نامحدود کوچ چیٹ کے لیے پریمیئم پر اپ گریڈ کریں۔';
  }

  @override
  String get coachConnectError =>
      'میں اس وقت رابطہ قائم نہیں کر سکا۔ براہ کرم کچھ دیر بعد دوبارہ کوشش کریں۔';

  @override
  String get clearConversationTitle => 'گفتگو صاف کریں؟';

  @override
  String get clearConversationMessage =>
      'یہ آپ کی کوچ چیٹ کی ہسٹری کو مستقل طور پر ہٹا دے گا۔';

  @override
  String get clearLabel => 'صاف کریں';

  @override
  String get recoveryCoachTitle => 'ریکوری کوچ';

  @override
  String get onlineLabel => 'آن لائن';

  @override
  String get clearConversationMenuItem => 'گفتگو صاف کریں';

  @override
  String chatGreeting(String name) {
    return 'سلام $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'آپ اپنے سفر کے $days ویں دن پر ہیں۔ جب بھی آپ بات کرنا چاہیں میں موجود ہوں۔';
  }

  @override
  String get quickPromptsLabel => 'فوری سوالات';

  @override
  String get promptCravingLabel => 'شدید طلب ہو رہی ہے';

  @override
  String get promptCravingSubtitle => 'فوری طور پر حواس بحال کریں';

  @override
  String get promptMotivationLabel => 'حوصلہ افزائی کی ضرورت ہے';

  @override
  String get promptMotivationSubtitle => 'مشکل وقت میں ہمت';

  @override
  String get promptSocialLabel => 'سماجی صورتحال';

  @override
  String get promptSocialSubtitle => 'کسی تقریب کا سامنا کریں';

  @override
  String get promptSlippedLabel => 'مجھ سے غلطی ہو گئی';

  @override
  String get promptSlippedSubtitle => 'کوئی تنقید نہیں، صرف سپورٹ';

  @override
  String get typeMessageHint => 'پیغام تحریر کریں...';

  @override
  String get editProfileTitle => 'پروفائل ایڈٹ کریں';

  @override
  String couldNotSaveProfile(String error) {
    return 'پروفائل محفوظ نہیں ہو سکی: $error';
  }

  @override
  String get heightCmLabel => 'قد (سینٹی میٹر)';

  @override
  String get weightKgLabel => 'وزن (کلوگرام)';

  @override
  String get saveChangesLabel => 'تبدیلیاں محفوظ کریں';

  @override
  String get premiumBadgeLabel => 'پریمیئم';

  @override
  String get featureAdvancedInsights => 'تفصیلی بصیرت اور اعداد و شمار';

  @override
  String get featureUnlimitedJournal => 'نامحدود جریدے کے اندراجات';

  @override
  String get featureUnlimitedChat => 'AI کوچ کے ساتھ نامحدود چیٹ';

  @override
  String get featureCommunityGroups => 'خصوصی کمیونٹی گروپس';

  @override
  String get featurePrioritySupport => 'ترجیحی ماہرین کی سپورٹ';

  @override
  String get featureThemePacks => 'کسٹم تھیم بکس';

  @override
  String get featureDataExport => 'ڈیٹا ایکسپورٹ';

  @override
  String get featureAdFree => 'اشتہارات سے پاک تجربہ';

  @override
  String get premiumMemberTitle => 'آپ پریمیئم ممبر ہیں';

  @override
  String get unlockFullRecoveryTitle =>
      'اپنے مکمل ریکوری کے تجربے کو\nانلاک کریں';

  @override
  String get premiumMemberSubtitle =>
      'اپنے ریکوری کے سفر کو سپورٹ کرنے کا شکریہ — نیچے دی گئی تمام پریمیئم خصوصیات انلاک ہیں۔';

  @override
  String get premiumJoinSubtitle =>
      'ہزاروں افراد کی کمیونٹی میں شامل ہوں جو ہمارے پریمیئم ٹولز اور ذاتی سپورٹ کے ساتھ اپنی بحالی کو تیز کر رہے ہیں۔';

  @override
  String get monthlyPlanLabel => 'ماہانہ';

  @override
  String get perMonthSuffix => '/ماہ';

  @override
  String get cancelAnytimeLabel => 'کسی بھی وقت منسوخ کریں';

  @override
  String get yearlyPlanLabel => 'سالانہ';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'سالانہ بل $amount';
  }

  @override
  String get bestValueLabel => 'بہترین قیمت';

  @override
  String get alreadyPremiumLabel => 'آپ پریمیئم پر ہیں ✓';

  @override
  String get startPremiumLabel => 'پریمیئم شروع کریں';

  @override
  String get manageSubscriptionLabel =>
      'اپنی ڈیوائس کی سبسکرپشن سیٹنگز سے انتظام یا منسوخ کریں۔';

  @override
  String get noCommitmentLabel => 'کوئی پابندی نہیں۔ کسی بھی وقت منسوخ کریں۔';

  @override
  String get continueFreePlanLabel => 'مفت پلان کے ساتھ جاری رکھیں';

  @override
  String get backToHomeLabel => 'ہوم پر واپس جائیں';

  @override
  String get cancelPremiumLabel => 'پریمیئم منسوخ کریں';

  @override
  String get cancelPremiumTitle => 'پریمیئم منسوخ کریں؟';

  @override
  String get cancelPremiumMessage =>
      'آپ نامحدود جریدے کے اندراجات، کوچ چیٹ، اعداد و شمار اور ہفتہ وار رپورٹس تک رسائی کھو دیں گے۔ آپ کسی بھی وقت دوبارہ سبسکرائب کر سکتے ہیں۔';

  @override
  String get keepPremiumLabel => 'پریمیئم رکھیں';

  @override
  String get nowPremiumMessage =>
      'آپ اب پریمیئم ممبر ہیں! اپنے مکمل ریکوری کے تجربے کا لطف اٹھائیں۔';

  @override
  String get premiumCancelledMessage =>
      'پریمیئم منسوخ کر دیا گیا ہے۔ آپ واپس مفت پلان پر ہیں۔';

  @override
  String get termsOfUseLabel => 'استعمال کی شرائط';

  @override
  String get navHomeLabel => 'ہوم';

  @override
  String get navStatsLabel => 'اعداد و شمار';

  @override
  String get navJournalLabel => 'جریدہ';

  @override
  String get navBadgesLabel => 'بیجز';

  @override
  String get navProfileLabel => 'پروفائل';

  @override
  String get recoveryGoalsTitle => 'ریکوری کے اہداف';

  @override
  String get drinksPerWeekLabel => 'فی ہفتہ ڈرنکس';

  @override
  String get quitReasonsLabel => 'چھوڑنے کی وجوہات';

  @override
  String get quitReasonsHelperText => 'متعدد وجوہات کو کاما (،) سے الگ کریں۔';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'ریکوری کے اہداف محفوظ نہیں ہو سکے: $error';
  }

  @override
  String get goalHint => 'مثلاً، مکمل پرہیز';

  @override
  String get drinksPerWeekHint => 'مثلاً، 12';

  @override
  String get quitReasonsHint => 'مثلاً، صحت، خاندان، پیسہ';

  @override
  String get todaysPrompt => 'آج کا سوال';

  @override
  String get defaultJournalPrompt => 'آج آپ کے ذہن میں کیا ہے؟';

  @override
  String get aiJournalInsights => 'AI جریدے کی بصیرت';

  @override
  String get unlockJournalInsightsMessage =>
      'اپنے جریدے کے اندراجات سے ہفتہ وار پیٹرنز، موڈ کے رجحانات اور ذاتی بصیرت انلاک کریں۔';

  @override
  String get notEnoughJournalData =>
      'ابھی کافی ڈیٹا موجود نہیں ہے — اس ہفتے چند تحریریں لکھیں اور دوبارہ چیک کریں۔';

  @override
  String get openEntry => 'کھولیں';

  @override
  String get editEntry => 'ایڈٹ کریں';

  @override
  String get deleteEntry => 'مٹائیں';

  @override
  String get searchJournalEntries => 'تحریریں تلاش کریں...';

  @override
  String get writeNewEntry => 'نئی تحریر لکھیں';

  @override
  String get recentEntries => 'حالیہ تحریریں';

  @override
  String get noJournalEntriesYet =>
      'ابھی تک جریدے میں کوئی تحریر نہیں ہے — اوپر اپنا پہلا خیال لکھیں۔';

  @override
  String get noEntriesMatchFilters =>
      'آپ کے فلٹرز سے کوئی تحریر مطابقت نہیں رکھتی۔';

  @override
  String get weeklyJournalLimitReached => 'ہفتہ وار حد ختم ہو گئی';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'آپ نے اس ہفتے کے تمام $limit مفت اندراجات استعمال کر لیے ہیں۔ نامحدود اندراجات کے لیے پریمیئم پر اپ گریڈ کریں۔';
  }

  @override
  String get newEntry => 'نئی تحریر';

  @override
  String get writeYourThoughts => 'اپنے خیالات لکھیں';

  @override
  String get saveEntry => 'تحریر محفوظ کریں';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'اس ہفتے $limit میں سے $remaining مفت تحریریں باقی ہیں';
  }

  @override
  String get deleteEntryQuestion => 'تحریر مٹائیں؟';

  @override
  String get deleteEntryConfirmation =>
      'یہ تحریر مستقل طور پر مٹا دی جائے گی۔ اس عمل کو واپس نہیں لایا جا سکتا۔';

  @override
  String get journalEntryNotFound => 'تحریر نہیں ملی';

  @override
  String get journalEntryMayHaveBeenDeleted => 'یہ تحریر شاید مٹا دی گئی ہے۔';

  @override
  String get goBack => 'واپس جائیں';

  @override
  String get journalEntryTitle => 'جریدے کی تحریر';

  @override
  String get moodStruggling => 'مشکل میں';

  @override
  String get moodUnwell => 'طبیعت خراب';

  @override
  String get moodNeutral => 'درمیانہ';

  @override
  String get whatHappenedToday => 'آج کیا ہوا؟';

  @override
  String get trigger => 'محرک (Trigger)';

  @override
  String get whatHelped => 'کس چیز سے مدد ملی';

  @override
  String get whatIllTryNextTime => 'اگلی بار میں کیا کوشش کروں گا/گی';

  @override
  String get journalPrivacyMessage =>
      'آپ کا خیال نجی ہے اور آپ کے جریدے میں محفوظ ہے۔';

  @override
  String get unlocked => 'انلاک ہو گیا';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دن باقی',
      one: '$count دن باقی',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count دن';
  }

  @override
  String get firstReflection => 'پہلا\nخود جائزہ';

  @override
  String get oneJournalEntry => '1 جریدے کا اندراج';

  @override
  String get openBook => 'کھلی کتاب';

  @override
  String get tenJournalEntries => '10 جریدے کے اندراجات';

  @override
  String get dedicatedWriter => 'پختہ\nمصنف';

  @override
  String get thirtyJournalEntries => '30 جریدے کے اندراجات';

  @override
  String get firstConversation => 'پہلی\nگفتگو';

  @override
  String get oneAiCoachChat => '1 AI کوچ چیٹ';

  @override
  String get keepTalking => 'بات جاری رکھیں';

  @override
  String get fiveConversations => '5 گفتگوئیں';

  @override
  String get coachCompanion => 'کوچ کا\nساتھی';

  @override
  String get twentyConversations => '20 گفتگوئیں';

  @override
  String get checkInHabit => 'جائزے کی\nعادت';

  @override
  String get sevenCheckIns => '7 روزانہ جائزے';

  @override
  String get consistencyPro => 'تسلسل کے\nماہر';

  @override
  String get thirtyCheckIns => '30 روزانہ جائزے';

  @override
  String get dedicatedJourney => 'مخلصانہ\nسفر';

  @override
  String get hundredCheckIns => '100 روزانہ جائزے';

  @override
  String get goalGetter => 'ہدف حاصل کنندہ';

  @override
  String get threeGoalsCompleted => '3 اہداف مکمل';

  @override
  String get goalAchiever => 'اہداف کے\nفاتح';

  @override
  String get tenGoalsCompleted => '10 اہداف مکمل';

  @override
  String get firstSavings => 'پہلی\nبچت';

  @override
  String get fiveHundredSaved => '\$500 بچائے';

  @override
  String get smartSaver => 'سمارٹ سیور';

  @override
  String get oneThousandSaved => '\$1,000 بچائے';

  @override
  String get bigSaver => 'بڑے بچت کنندہ';

  @override
  String get fiveThousandSaved => '\$5,000 بچائے';

  @override
  String currencyProgress(String current, String target) {
    return '\$$target میں سے \$$current';
  }

  @override
  String countProgress(int current, int target) {
    return '$target میں سے $current';
  }

  @override
  String get firstMilestoneWaiting =>
      'جاری رکھیں — آپ کا پہلا سنگ میل آپ کا منتظر ہے!';

  @override
  String get badgesAndMilestones => 'بیجز اور سنگ میل';

  @override
  String get yourMilestoneJourney => 'آپ کا سنگ میل کا سفر';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سنگ میل حاصل ہوئے۔\ndیکھنے کے لیے ٹیپ کریں',
      one: '$count سنگ میل حاصل ہوا۔\ndیکھنے کے لیے ٹیپ کریں',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'آپ نے اپنے سفر میں $total میں سے $unlocked سنگ میل انلاک کر لیے ہیں۔';
  }

  @override
  String get remaining => 'باقی';

  @override
  String get complete => 'مکمل';

  @override
  String get nextMilestone => 'اگلا سنگ میل';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% مکمل';
  }

  @override
  String get sobrietyMilestones => 'پاکیزگی کے سنگ میل';

  @override
  String get journeyBadges => 'سفر کے بیجز';

  @override
  String get bronze => 'کانسی (BRONZE)';

  @override
  String get silver => 'چاندی (SILVER)';

  @override
  String get gold => 'سونا (GOLD)';

  @override
  String get platinum => 'پلیٹینم (PLATINUM)';

  @override
  String get diamond => 'ہیرا (DIAMOND)';

  @override
  String get analyzingYourJourney => 'آپ کے سفر کا تجزیہ کیا جا رہا ہے...';

  @override
  String get aiCreatingSanctuary =>
      'ہمارا AI آپ کا ذاتی پرسکون گوشہ تیار کر رہا ہے۔';

  @override
  String get understandingHabits => 'عادتوں کو سمجھا جا رہا ہے...';

  @override
  String get calculatingBaseline =>
      'آپ کی شروعاتی سطح کا حساب لگایا جا رہا ہے...';

  @override
  String get personalizingPlan => 'آپ کا پلان ذاتی نوعیت کا بنایا جا رہا ہے...';

  @override
  String get finalizingSanctuary => 'آپ کا گوشہ حتمی شکل پا رہا ہے...';

  @override
  String get creatingYourPlan => 'آپ کا پلان تیار کیا جا رہا ہے...';

  @override
  String get personalizedPlanError =>
      'ہم آپ کا ذاتی پلان تیار نہیں کر سکے۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get breathInhale => 'سانس اندر کھینچیں';

  @override
  String get breathHold => 'سانس روکیں';

  @override
  String get breathExhale => 'سانس باہر نکالیں';

  @override
  String get breathDone => 'مکمل';

  @override
  String get breathGreatJob => 'بہت عمدہ!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آج $count سیشنز',
      one: 'آج $count سیشن',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'مشق ختم کریں';

  @override
  String get done => 'مکمل';

  @override
  String get noCopingTipsYet => 'ابھی کوئی تجاویز نہیں ہیں';

  @override
  String get copingStrategiesWillAppear =>
      'آپ کا ریکوری پلان مکمل ہونے کے بعد قابو پانے کی ذاتی حکمت عملی یہاں ظاہر ہوگی۔';

  @override
  String get strategiesTailoredToTriggers => 'آپ کے محرکات کے مطابق حکمت عملی';

  @override
  String get cravingsPeakAndPass =>
      'طلب کا عروج ہوتا ہے\nاور پھر ختم ہو جاتی ہے';

  @override
  String get rideTheWaveDescription =>
      'زیادہ تر طلب کے لمحے 15 منٹ میں گزر جاتے ہیں۔ آپ کو اس پر عمل کرنے کی ضرورت نہیں — بس ہمارے ساتھ صبر رکھیں۔';

  @override
  String get stayWithIt => 'صبر سے کام لیں';

  @override
  String get youMadeIt => 'آپ نے کر دکھایا';

  @override
  String get readyWhenYouAre => 'جب آپ تیار ہوں';

  @override
  String get rideItAgain => 'دوبارہ کوشش کریں';

  @override
  String get start15MinuteTimer => '15 منٹ کا ٹائمر شروع کریں';

  @override
  String get rideTheWaveCompletedMessage =>
      'آپ نے اس مشکل لمحے پر قابو پا لیا۔ یہ حقیقی طاقت ہے۔ 💪';

  @override
  String get myProgress => 'میری پیشرفت';

  @override
  String get weekLabel => 'ہفتہ';

  @override
  String get monthLabel => 'مہینہ';

  @override
  String get allLabel => 'تمام';

  @override
  String get daysSoberStatLabel => 'پاک\nدن';

  @override
  String get savedStatLabel => 'بچت';

  @override
  String get avoidedStatLabel => 'پرہیز';

  @override
  String get moodTrends => 'موڈ کے رجحانات';

  @override
  String get cravingsPattern => 'طلب کے پیٹرنز';

  @override
  String get unlockLabel => 'انلاک کریں';

  @override
  String get unlockFullStats => 'مکمل اعداد و شمار انلاک کریں';

  @override
  String get premiumStatsMessage =>
      'موڈ کے رجحانات اور طلب کے پیٹرنز پریمیئم خصوصیات ہیں۔ تمام اعداد و شمار دیکھنے کے لیے اپ گریڈ کریں۔';

  @override
  String get healthMilestonesWillAppear =>
      'آپ کی صحت کے سنگ میل یہاں ظاہر ہوں گے۔';

  @override
  String get healthMilestones => 'صحت کے سنگ میل';

  @override
  String dayNumber(int day) {
    return 'دن $day';
  }

  @override
  String get soberLabel => 'پاک';

  @override
  String get slipLabel => 'غلطی';

  @override
  String get noDataLabel => 'کوئی ڈیٹا نہیں';

  @override
  String get milestone24Hours => '24 گھنٹے';

  @override
  String get milestoneOneWeek => 'ایک ہفتہ';

  @override
  String get milestoneOneMonth => 'ایک مہینہ';

  @override
  String get milestoneThreeMonths => 'تین مہینے';

  @override
  String get milestoneSixMonths => 'چھ مہینے';

  @override
  String get milestoneOneYear => 'ایک سال';

  @override
  String milestoneDayCount(int day) {
    return 'دن $day کا سنگ میل';
  }

  @override
  String get maybeLaterLabel => 'شاید بعد میں';

  @override
  String get cancelLabel => 'منسوخ کریں';
}
