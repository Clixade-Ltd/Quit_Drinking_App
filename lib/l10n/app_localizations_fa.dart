// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get skip => 'رد کردن';

  @override
  String get continueButton => 'ادامه';

  @override
  String get getStarted => 'شروع کنید';

  @override
  String get onboardingTitle1 => 'کنترل زندگی خود را در دست بگیرید';

  @override
  String get onboardingSubtitle1 =>
      'مسیر خود را دنبال کنید، هر موفقیت را جشن بگیرید و هر روز سالم‌تر شوید.';

  @override
  String get onboardingTitle2 => 'همراه هوش مصنوعی شما در مسیر بهبودی';

  @override
  String get onboardingSubtitle2 =>
      'راهنمایی شخصی‌سازی‌شده، عادت‌های سالم، یادآوری‌های انگیزشی و گزارش‌های پیشرفت متناسب با مسیر شما دریافت کنید.';

  @override
  String get goodMorning => 'صبح بخیر';

  @override
  String get goodAfternoon => 'بعدازظهر بخیر';

  @override
  String get goodEvening => 'عصر بخیر';

  @override
  String get goodNight => 'شب بخیر';

  @override
  String get embracingClarity => 'هر روز، یک قدم به سوی شفافیت بیشتر.';

  @override
  String get streakLabel => 'تداوم';

  @override
  String get goalLabel => 'هدف';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: '$count روز',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'طرح پریمیوم';

  @override
  String get premiumPlanSubtitle => 'تمام تجربه بهبودی خود را فعال کنید';

  @override
  String get accountAndSupport => 'حساب کاربری و پشتیبانی';

  @override
  String get privacyPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get privacyPolicySubtitle =>
      'مدیریت اشتراک‌گذاری داده‌ها و امنیت حساب';

  @override
  String get termsOfService => 'شرایط استفاده از خدمات';

  @override
  String get termsOfServiceSubtitle => 'سؤالات متداول، تماس با ما و منابع';

  @override
  String get shareApp => 'اشتراک‌گذاری برنامه';

  @override
  String get shareAppSubtitle => 'برنامه را با دوستان خود به اشتراک بگذارید';

  @override
  String get resetData => 'بازنشانی داده‌ها';

  @override
  String get resetDataSubtitle =>
      'تمام اطلاعات ذخیره‌شده در این دستگاه را پاک کنید';

  @override
  String get resetAllDataTitle => 'همه داده‌ها بازنشانی شوند؟';

  @override
  String get resetAllDataMessage =>
      'این کار همه اطلاعات ذخیره‌شده در این دستگاه، از جمله پروفایل، نوشته‌های ژورنال و پیشرفت شما را پاک می‌کند و قابل بازگشت نیست.';

  @override
  String get cancel => 'لغو';

  @override
  String get reset => 'بازنشانی';

  @override
  String get chooseFromGallery => 'انتخاب از گالری';

  @override
  String get takePhoto => 'گرفتن عکس';

  @override
  String get removePhoto => 'حذف عکس';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'امکان به‌روزرسانی عکس وجود نداشت: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'امکان حذف عکس وجود نداشت: $error';
  }

  @override
  String get photoTooLarge =>
      'این عکس حتی پس از فشرده‌سازی نیز بسیار بزرگ است — لطفاً عکس دیگری انتخاب کنید.';

  @override
  String get unableToLoadProfile => 'امکان بارگذاری پروفایل شما وجود ندارد';

  @override
  String get pleaseTryAgain => 'لطفاً دوباره تلاش کنید.';

  @override
  String get tryAgain => 'دوباره تلاش کنید';

  @override
  String get profileNotFound => 'پروفایل پیدا نشد';

  @override
  String get refresh => 'تازه‌سازی';

  @override
  String get noProfileDataFound =>
      'هنوز اطلاعات پروفایلی روی این دستگاه پیدا نشد.';

  @override
  String couldNotResetData(String error) {
    return 'امکان بازنشانی داده‌ها وجود نداشت: $error';
  }

  @override
  String get navHome => 'خانه';

  @override
  String get navStats => 'آمار';

  @override
  String get navJournal => 'ژورنال';

  @override
  String get navBadges => 'نشان‌ها';

  @override
  String get navProfile => 'پروفایل';

  @override
  String featureComingSoon(String feature) {
    return '$feature به‌زودی در دسترس خواهد بود.';
  }

  @override
  String get appWordmark => 'سلامت';

  @override
  String get appTitle => 'ترک الکل';

  @override
  String get splashSubtitle =>
      'اولین قدم را به سوی یک\nزندگی بدون الکل بردارید';

  @override
  String get preparingJourney => 'در حال آماده‌سازی\nمسیر شما';

  @override
  String get taskMorningMeditation => 'مدیتیشن صبحگاهی (۱۰ دقیقه)';

  @override
  String get taskReadChapter => 'فصل چهارم «خاطرات هوشیاری» را بخوانید';

  @override
  String get taskEveningJournal => 'ژورنال قدردانی شبانه';

  @override
  String get close => 'بستن';

  @override
  String get youAreDoingGreat => 'عالی پیش می‌روید!';

  @override
  String get shareMilestone => 'اشتراک‌گذاری نقطه عطف';

  @override
  String shareMilestoneMessage(int days) {
    return 'امروز روز $days مسیر بهبودی من است! 💪';
  }

  @override
  String get shareMilestoneSubject => 'نقطه عطف من در مسیر بهبودی';

  @override
  String get weeklyReportReadyTitle => 'گزارش هفتگی شما آماده است';

  @override
  String get weeklyReportReadySubtitle =>
      'برای مشاهده عملکرد این هفته ضربه بزنید';

  @override
  String get howAreYouFeeling => 'چه احساسی دارید؟';

  @override
  String get moodTough => 'سخت';

  @override
  String get moodOkay => 'خوب';

  @override
  String get moodGood => 'خوب';

  @override
  String get moneySaved => 'پول پس‌اندازشده';

  @override
  String get caloriesSaved => 'کالری ذخیره‌شده';

  @override
  String get healthScore => 'امتیاز سلامتی';

  @override
  String get drinksAvoided => 'نوشیدنی‌های اجتناب‌شده';

  @override
  String get estimated => 'تخمینی';

  @override
  String get aiGenerated => 'تولیدشده توسط هوش مصنوعی';

  @override
  String get daysCapsLabel => 'روز';

  @override
  String get todaysMotivation => 'انگیزه امروز';

  @override
  String get defaultMotivationQuote =>
      'شما با موفقیت به تعهد خود پایبند مانده‌اید. به مسیر تغییر مثبت ادامه دهید.';

  @override
  String get talkToCoach => 'گفت‌وگو با مربی';

  @override
  String get havingACraving => 'هوس نوشیدن دارم';

  @override
  String get unlockWeeklyReportsTitle => 'گزارش‌های هفتگی را فعال کنید';

  @override
  String get unlockWeeklyReportsMessage =>
      'هر هفته روزهای بدون الکل، روند خلق‌وخو و بازخورد شخصی‌سازی‌شده هوش مصنوعی خود را ببینید. برای فعال‌سازی به پریمیوم ارتقا دهید.';

  @override
  String get maybeLater => 'شاید بعداً';

  @override
  String get upgrade => 'ارتقا';

  @override
  String get weeklyReportTitle => 'گزارش هفتگی';

  @override
  String get weeklyReportsPremiumTitle => 'گزارش‌های هفتگی ویژگی پریمیوم هستند';

  @override
  String get weeklyReportsPremiumMessage =>
      'هر هفته روزهای بدون الکل، روند خلق‌وخو، هوس‌ها و بازخورد شخصی‌سازی‌شده هوش مصنوعی را ببینید.';

  @override
  String get upgradeToPremium => 'ارتقا به پریمیوم';

  @override
  String get couldNotGenerateReport =>
      'در حال حاضر امکان تولید گزارش شما وجود ندارد.';

  @override
  String get tryAgainLower => 'دوباره تلاش کنید';

  @override
  String get statSoberDays => 'روزهای بدون الکل';

  @override
  String get statAvgMood => 'میانگین خلق‌وخو';

  @override
  String get statCravings => 'هوس‌ها';

  @override
  String get statMoneySaved => 'پول پس‌اندازشده';

  @override
  String get coachFeedback => 'بازخورد مربی';

  @override
  String get journalInsights => 'بینش‌های ژورنال';

  @override
  String get next => 'بعدی';

  @override
  String get question1Title => 'هدف شما چیست؟';

  @override
  String get question1Subtitle =>
      'هدفی را انتخاب کنید که\nبیشترین اهمیت را برای شما دارد';

  @override
  String get goalQuitCompletely => 'ترک کامل';

  @override
  String get goalReduceDrinking => 'کاهش مصرف الکل';

  @override
  String get goalTakeABreak => 'یک وقفه';

  @override
  String get goalBuildHealthierHabits => 'ایجاد عادت‌های سالم‌تر';

  @override
  String get question3Title => 'درباره\nروتین خود بگویید';

  @override
  String get drinksPerWeek => 'نوشیدنی در هفته';

  @override
  String get moneySpentPerWeek => 'هزینه هفتگی';

  @override
  String get drinkingLevel => 'سطح مصرف الکل';

  @override
  String get triggersLabel => 'محرک‌ها';

  @override
  String get levelSocial => 'اجتماعی';

  @override
  String get levelRegular => 'منظم';

  @override
  String get levelHeavy => 'زیاد';

  @override
  String get levelDependent => 'وابسته';

  @override
  String get triggerStress => 'استرس';

  @override
  String get triggerLoneliness => 'تنهایی';

  @override
  String get triggerHabit => 'عادت';

  @override
  String get triggerSadness => 'غم';

  @override
  String get triggerAnger => 'خشم';

  @override
  String get triggerBoredom => 'بی‌حوصلگی';

  @override
  String get triggerSocialPressure => 'فشار اجتماعی';

  @override
  String get triggerCelebration => 'جشن';

  @override
  String get triggerSleepProblems => 'مشکلات خواب';

  @override
  String get triggerWorkPressure => 'فشار کاری';

  @override
  String get question4Title => 'چرا می‌خواهید تغییر کنید؟';

  @override
  String get question4Subtitle => 'دلیل شما به ایجاد انگیزه کمک خواهد کرد.';

  @override
  String get reasonImproveHealth => 'بهبود سلامتی';

  @override
  String get reasonSaveMoney => 'صرفه‌جویی در پول';

  @override
  String get reasonFamily => 'خانواده';

  @override
  String get reasonBetterSleep => 'خواب بهتر';

  @override
  String get reasonMentalClarity => 'شفافیت ذهنی';

  @override
  String get reasonFitness => 'تناسب اندام';

  @override
  String get reasonSelfRespect => 'احترام به خود';

  @override
  String get reasonCareer => 'شغل';

  @override
  String get milestoneUnlockedLabel => 'نقطه عطف فعال شد';

  @override
  String incredibleNamePrefix(String name) {
    return 'فوق‌العاده‌ای، $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount پس‌انداز شد';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count مورد اجتانب شد';
  }

  @override
  String get shareMyMilestone => 'اشتراک‌گذاری نقطه عطف من';

  @override
  String get milestoneImageShareError =>
      'ایجاد تصویر نقطه عطف ممکن نبود. لطفاً دوباره تلاش کنید.';

  @override
  String get dailyCheckInTitle => 'ثبت روزانه';

  @override
  String get howAreYouFeelingToday => 'امروز چه احساسی دارید؟';

  @override
  String get honestAnswerHelp =>
      'پاسخ صادقانه شما به ما کمک می‌کند بهتر از شما حمایت کنیم';

  @override
  String get didYouDrinkToday => 'امروز نوشیدنی الکلی مصرف کردید؟';

  @override
  String get noLabel => 'خیر';

  @override
  String get yesLabel => 'بله';

  @override
  String get cravingLevelNow => 'سطح هوس در حال حاضر چقدر است؟';

  @override
  String get anythingOnMind => 'چیزی در ذهن دارید؟';

  @override
  String get optionalLabel => '(اختیاری)';

  @override
  String get dailyNoteHint => 'درباره روزتان، محرک‌ها، موفقیت‌ها بنویسید...';

  @override
  String get alreadyCheckedInToday => 'امروز قبلاً ثبت روزانه انجام داده‌اید';

  @override
  String get saveCheckIn => 'ذخیره ثبت روزانه';

  @override
  String get checkInsHelpTrack =>
      'ثبت‌های روزانه به پیگیری پیشرفت شما در طول زمان کمک می‌کنند';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'شما قبلاً ثبت روزانه امروز را انجام داده‌اید.';

  @override
  String get pleaseAnswerBothQuestions =>
      'لطفاً ابتدا به هر دو سؤال بالا پاسخ دهید';

  @override
  String get checkInSaved => 'ثبت روزانه ذخیره شد';

  @override
  String get cravingNone => 'هیچ';

  @override
  String get cravingLow => 'کم';

  @override
  String get cravingMedium => 'متوسط';

  @override
  String get cravingStrong => 'شدید';

  @override
  String get moodBad => 'بد';

  @override
  String get moodLow => 'پایین';

  @override
  String get moodGreat => 'عالی';

  @override
  String get sosSupportTitle => 'پشتیبانی SOS';

  @override
  String notAloneMessage(String name) {
    return 'تنها نیستید، $name';
  }

  @override
  String get cravingsPassMessage =>
      'هوس‌ها می‌گذرند. یکی از گزینه‌های زیر را انتخاب کنید تا از این لحظه عبور کنید.';

  @override
  String get breathingExercise => 'تمرین تنفس';

  @override
  String get breathingExerciseSubtitle =>
      'تکنیک هدایت‌شده ۴-۷-۸، به مدت ۲ دقیقه';

  @override
  String get rideTheWave => 'با موج همراه شوید';

  @override
  String get rideTheWaveSubtitle => 'تایمر ۱۵ دقیقه‌ای — هوس‌ها همیشه می‌گذرند';

  @override
  String get copingTips => 'نکات مقابله‌ای';

  @override
  String get copingTipsSubtitle => 'راهبردهای شخصی‌سازی‌شده برای محرک‌های شما';

  @override
  String get talkToAiCoach => 'گفت‌وگو با مربی هوش مصنوعی';

  @override
  String get talkToAiCoachSubtitle => 'با همراه بهبودی خود چت کنید';

  @override
  String get callSomeone => 'تماس با یک نفر';

  @override
  String get callSomeoneSubtitle => 'با فرد مورد اعتماد خود تماس بگیرید';

  @override
  String get contactsPermissionNeeded =>
      'برای تماس با یک مخاطب، اجازه دسترسی به مخاطبین لازم است.';

  @override
  String get beatenCravingsPrefix => 'تا کنون بر هوس‌ها ';

  @override
  String beatenCravingsCount(int count) {
    return '$count بار';
  }

  @override
  String get beatenCravingsSuffix => ' غلبه کرده‌اید. دوباره هم می‌توانید.';

  @override
  String get tellUsAboutYourself => 'درباره خودتان بگویید';

  @override
  String get detailsSubtitle =>
      'این اطلاعات به ما کمک می‌کند مسیر بهبودی شما را شخصی‌سازی کنیم و بینش‌های دقیقی ارائه دهیم.';

  @override
  String get nameLabel => 'نام';

  @override
  String get nameHint => 'مثلاً الکس ریورز';

  @override
  String get ageLabel => 'سن';

  @override
  String get ageHint => 'مثلاً ۳۲';

  @override
  String get sexAssignedAtBirth => 'جنسیت تعیین‌شده هنگام تولد';

  @override
  String get sexFemale => 'زن';

  @override
  String get sexMale => 'مرد';

  @override
  String get heightLabel => 'قد';

  @override
  String get weightLabel => 'وزن';

  @override
  String get heightHint => '۱۷۰';

  @override
  String get weightHint => '۷۰';

  @override
  String get dailyLimitReachedTitle => 'محدودیت روزانه به پایان رسید';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'شما تمام $limit پیام رایگان امروز را استفاده کرده‌اید. برای چت نامحدود با مربی به پریمیوم ارتقا دهید.';
  }

  @override
  String get coachConnectError =>
      'در حال حاضر نتوانستم متصل شوم. لطفاً لحظه‌ای دیگر دوباره تلاش کنید.';

  @override
  String get clearConversationTitle => 'گفت‌وگو پاک شود؟';

  @override
  String get clearConversationMessage =>
      'تاریخچه چت شما با مربی برای همیشه حذف خواهد شد.';

  @override
  String get clearLabel => 'پاک کردن';

  @override
  String get recoveryCoachTitle => 'مربی بهبودی';

  @override
  String get onlineLabel => 'آنلاین';

  @override
  String get clearConversationMenuItem => 'پاک کردن گفت‌وگو';

  @override
  String chatGreeting(String name) {
    return 'سلام $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'شما در روز $days مسیر خود هستید. هر زمان بخواهید درباره مسائل صحبت کنید، من اینجا هستم.';
  }

  @override
  String get quickPromptsLabel => 'پیشنهادهای سریع';

  @override
  String get promptCravingLabel => 'هوس نوشیدن دارم';

  @override
  String get promptCravingSubtitle => 'سریع آرام و متمرکز شوید';

  @override
  String get promptMotivationLabel => 'به انگیزه نیاز دارم';

  @override
  String get promptMotivationSubtitle => 'وقتی سخت است، یک تقویت انگیزشی';

  @override
  String get promptSocialLabel => 'موقعیت اجتماعی';

  @override
  String get promptSocialSubtitle => 'یک دورهمی را مدیریت کنید';

  @override
  String get promptSlippedLabel => 'لغزش کردم';

  @override
  String get promptSlippedSubtitle => 'بدون قضاوت، فقط حمایت';

  @override
  String get typeMessageHint => 'پیامی بنویسید...';

  @override
  String get editProfileTitle => 'ویرایش پروفایل';

  @override
  String couldNotSaveProfile(String error) {
    return 'امکان ذخیره پروفایل وجود نداشت: $error';
  }

  @override
  String get heightCmLabel => 'قد (سانتی‌متر)';

  @override
  String get weightKgLabel => 'وزن (کیلوگرم)';

  @override
  String get saveChangesLabel => 'ذخیره تغییرات';

  @override
  String get premiumBadgeLabel => 'پریمیوم';

  @override
  String get featureAdvancedInsights => 'بینش‌ها و تحلیل‌های پیشرفته';

  @override
  String get featureUnlimitedJournal => 'نوشته‌های نامحدود ژورنال';

  @override
  String get featureUnlimitedChat => 'چت نامحدود با مربی هوش مصنوعی';

  @override
  String get featureCommunityGroups => 'گروه‌های اختصاصی جامعه';

  @override
  String get featurePrioritySupport => 'پشتیبانی تخصصی اولویت‌دار';

  @override
  String get featureThemePacks => 'بسته‌های تم سفارشی';

  @override
  String get featureDataExport => 'خروجی داده‌ها';

  @override
  String get featureAdFree => 'تجربه بدون تبلیغات';

  @override
  String get premiumMemberTitle => 'شما عضو پریمیوم هستید';

  @override
  String get unlockFullRecoveryTitle => 'تمام تجربه بهبودی خود را\nفعال کنید';

  @override
  String get premiumMemberSubtitle =>
      'از حمایت شما در مسیر بهبودی متشکریم — تمام قابلیت‌های پریمیوم زیر فعال هستند.';

  @override
  String get premiumJoinSubtitle =>
      'به جامعه‌ای متشکل از هزاران نفر بپیوندید که با ابزارهای پریمیوم و پشتیبانی شخصی‌سازی‌شده،\nمسیر بهبودی خود را سریع‌تر می‌کنند.';

  @override
  String get monthlyPlanLabel => 'ماهانه';

  @override
  String get perMonthSuffix => '/ماه';

  @override
  String get cancelAnytimeLabel => 'هر زمان لغو کنید';

  @override
  String get yearlyPlanLabel => 'سالانه';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'سالانه به مبلغ $amount صورتحساب می‌شود';
  }

  @override
  String get bestValueLabel => 'بهترین ارزش';

  @override
  String get alreadyPremiumLabel => 'شما پریمیوم هستید ✓';

  @override
  String get startPremiumLabel => 'شروع پریمیوم';

  @override
  String get manageSubscriptionLabel =>
      'مدیریت یا لغو اشتراک از تنظیمات اشتراک دستگاه شما.';

  @override
  String get noCommitmentLabel => 'بدون تعهد. هر زمان خواستید لغو کنید.';

  @override
  String get continueFreePlanLabel => 'ادامه با طرح رایگان';

  @override
  String get backToHomeLabel => 'بازگشت به خانه';

  @override
  String get cancelPremiumLabel => 'لغو پریمیوم';

  @override
  String get cancelPremiumTitle => 'پریمیوم لغو شود؟';

  @override
  String get cancelPremiumMessage =>
      'دسترسی به نوشته‌های نامحدود ژورنال، چت نامحدود با مربی، بینش‌های آماری و گزارش‌های هفتگی را از دست خواهید داد. هر زمان می‌توانید دوباره مشترک شوید.';

  @override
  String get keepPremiumLabel => 'حفظ پریمیوم';

  @override
  String get nowPremiumMessage =>
      'اکنون پریمیوم هستید! از تمام تجربه بهبودی خود لذت ببرید.';

  @override
  String get premiumCancelledMessage =>
      'پریمیوم لغو شد. به طرح رایگان بازگشتید.';

  @override
  String get termsOfUseLabel => 'شرایط استفاده';

  @override
  String get navHomeLabel => 'خانه';

  @override
  String get navStatsLabel => 'آمار';

  @override
  String get navJournalLabel => 'ژورنال';

  @override
  String get navBadgesLabel => 'نشان‌ها';

  @override
  String get navProfileLabel => 'پروفایل';

  @override
  String get recoveryGoalsTitle => 'اهداف بهبودی';

  @override
  String get drinksPerWeekLabel => 'نوشیدنی در هفته';

  @override
  String get quitReasonsLabel => 'دلایل ترک';

  @override
  String get quitReasonsHelperText => 'چند دلیل را با کاما از هم جدا کنید.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'امکان ذخیره اهداف بهبودی وجود نداشت: $error';
  }

  @override
  String get goalHint => 'مثلاً ترک کامل';

  @override
  String get drinksPerWeekHint => 'مثلاً ۱۲';

  @override
  String get quitReasonsHint => 'مثلاً سلامتی، خانواده، پول';

  @override
  String get todaysPrompt => 'پرسش امروز';

  @override
  String get defaultJournalPrompt => 'امروز چه چیزی در ذهن شماست؟';

  @override
  String get aiJournalInsights => 'بینش‌های هوش مصنوعی از ژورنال';

  @override
  String get unlockJournalInsightsMessage =>
      'الگوهای هفتگی، روند خلق‌وخو و بینش‌های شخصی‌سازی‌شده از نوشته‌های ژورنال خود را فعال کنید.';

  @override
  String get notEnoughJournalData =>
      'هنوز داده کافی وجود ندارد — این هفته چند نوشته بنویسید و دوباره بررسی کنید.';

  @override
  String get openEntry => 'باز کردن';

  @override
  String get editEntry => 'ویرایش';

  @override
  String get deleteEntry => 'حذف';

  @override
  String get searchJournalEntries => 'جست‌وجوی نوشته‌ها...';

  @override
  String get writeNewEntry => 'نوشتن نوشته جدید';

  @override
  String get recentEntries => 'نوشته‌های اخیر';

  @override
  String get noJournalEntriesYet =>
      'هنوز نوشته‌ای در ژورنال وجود ندارد — اولین یادداشت خود را در بالا بنویسید.';

  @override
  String get noEntriesMatchFilters =>
      'هیچ نوشته‌ای با فیلترهای شما مطابقت ندارد.';

  @override
  String get weeklyJournalLimitReached => 'محدودیت هفتگی به پایان رسید';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'شما تمام $limit نوشته رایگان این هفته را استفاده کرده‌اید. برای نوشته‌های نامحدود به پریمیوم ارتقا دهید.';
  }

  @override
  String get newEntry => 'نوشته جدید';

  @override
  String get writeYourThoughts => 'افکار خود را بنویسید';

  @override
  String get saveEntry => 'ذخیره نوشته';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining از $limit نوشته رایگان این هفته باقی مانده';
  }

  @override
  String get deleteEntryQuestion => 'نوشته حذف شود؟';

  @override
  String get deleteEntryConfirmation =>
      'این نوشته برای همیشه حذف خواهد شد. این کار قابل بازگشت نیست.';

  @override
  String get journalEntryNotFound => 'نوشته پیدا نشد';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'ممکن است این نوشته ژورنال حذف شده باشد.';

  @override
  String get goBack => 'بازگشت';

  @override
  String get journalEntryTitle => 'نوشته ژورنال';

  @override
  String get moodStruggling => 'درگیر';

  @override
  String get moodUnwell => 'حال نامساعد';

  @override
  String get moodNeutral => 'خنثی';

  @override
  String get whatHappenedToday => 'امروز چه اتفاقی افتاد؟';

  @override
  String get trigger => 'محرک';

  @override
  String get whatHelped => 'چه چیزی کمک کرد';

  @override
  String get whatIllTryNextTime => 'دفعه بعد چه چیزی را امتحان خواهم کرد';

  @override
  String get journalPrivacyMessage =>
      'یادداشت شما خصوصی است و در ژورنال شما ذخیره می‌شود.';

  @override
  String get unlocked => 'فعال‌شده';

  @override
  String daysLeft(int count) {
    return '$count روز باقی مانده';
  }

  @override
  String daysCount(int count) {
    return '$count روز';
  }

  @override
  String get firstReflection => 'اولین\nتأمل';

  @override
  String get oneJournalEntry => '۱ نوشته ژورنال';

  @override
  String get openBook => 'باز کردن کتاب';

  @override
  String get tenJournalEntries => '۱۰ نوشته ژورنال';

  @override
  String get dedicatedWriter => 'نویسنده\nمتعهد';

  @override
  String get thirtyJournalEntries => '۳۰ نوشته ژورنال';

  @override
  String get firstConversation => 'اولین\nگفت‌وگو';

  @override
  String get oneAiCoachChat => '۱ چت مربی هوش مصنوعی';

  @override
  String get keepTalking => 'به گفت‌وگو ادامه دهید';

  @override
  String get fiveConversations => '۵ گفت‌وگو';

  @override
  String get coachCompanion => 'همراه\nمربی';

  @override
  String get twentyConversations => '۲۰ گفت‌وگو';

  @override
  String get checkInHabit => 'عادت ثبت\nروزانه';

  @override
  String get sevenCheckIns => '۷ ثبت روزانه';

  @override
  String get consistencyPro => 'حرفه‌ای\nدر تداوم';

  @override
  String get thirtyCheckIns => '۳۰ ثبت روزانه';

  @override
  String get dedicatedJourney => 'مسیر\nمتعهدانه';

  @override
  String get hundredCheckIns => '۱۰۰ ثبت روزانه';

  @override
  String get goalGetter => 'هدف‌گرا';

  @override
  String get threeGoalsCompleted => '۳ هدف تکمیل‌شده';

  @override
  String get goalAchiever => 'دستاورد\nاهداف';

  @override
  String get tenGoalsCompleted => '۱۰ هدف تکمیل‌شده';

  @override
  String get firstSavings => 'اولین\nپس‌انداز';

  @override
  String get fiveHundredSaved => '\$۵۰۰ پس‌انداز شد';

  @override
  String get smartSaver => 'پس‌اندازکننده هوشمند';

  @override
  String get oneThousandSaved => '\$۱٬۰۰۰ پس‌انداز شد';

  @override
  String get bigSaver => 'پس‌اندازکننده بزرگ';

  @override
  String get fiveThousandSaved => '\$۵٬۰۰۰ پس‌انداز شد';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current از \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current از $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'ادامه دهید — اولین نقطه عطف شما منتظر شماست!';

  @override
  String get badgesAndMilestones => 'نشان‌ها و نقاط عطف';

  @override
  String get yourMilestoneJourney => 'مسیر نقاط عطف شما';

  @override
  String milestonesAchieved(int count) {
    return '$count نقطه عطف به دست آمده است.\nبرای مشاهده ضربه بزنید';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'شما $unlocked مورد از $total نقطه عطف مسیر خود را فعال کرده‌اید.';
  }

  @override
  String get remaining => 'باقی‌مانده';

  @override
  String get complete => 'تکمیل‌شده';

  @override
  String get nextMilestone => 'نقطه عطف بعدی';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% پیشرفت';
  }

  @override
  String get sobrietyMilestones => 'نقاط عطف هوشیاری';

  @override
  String get journeyBadges => 'نشان‌های مسیر';

  @override
  String get bronze => 'برنز';

  @override
  String get silver => 'نقره‌ای';

  @override
  String get gold => 'طلایی';

  @override
  String get platinum => 'پلاتینیوم';

  @override
  String get diamond => 'الماس';

  @override
  String get analyzingYourJourney => 'در حال تحلیل مسیر شما...';

  @override
  String get aiCreatingSanctuary =>
      'هوش مصنوعی ما در حال ایجاد فضای بهبودی شخصی شماست.';

  @override
  String get understandingHabits => 'در حال شناخت عادت‌ها...';

  @override
  String get calculatingBaseline => 'در حال محاسبه وضعیت پایه شما...';

  @override
  String get personalizingPlan => 'در حال شخصی‌سازی برنامه شما...';

  @override
  String get finalizingSanctuary => 'در حال نهایی‌سازی فضای بهبودی شما...';

  @override
  String get creatingYourPlan => 'در حال ایجاد برنامه شما...';

  @override
  String get personalizedPlanError =>
      'نتوانستیم برنامه شخصی‌سازی‌شده شما را ایجاد کنیم. لطفاً دوباره تلاش کنید.';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get breathInhale => 'دم';

  @override
  String get breathHold => 'حبس';

  @override
  String get breathExhale => 'بازدم';

  @override
  String get breathDone => 'تمام';

  @override
  String get breathGreatJob => 'عالی بود!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count جلسه امروز',
      one: '$count جلسه امروز',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'پایان تمرین';

  @override
  String get done => 'انجام شد';

  @override
  String get noCopingTipsYet => 'هنوز نکته مقابله‌ای وجود ندارد';

  @override
  String get copingStrategiesWillAppear =>
      'پس از تکمیل تولید برنامه بهبودی شما، راهبردهای شخصی‌سازی‌شده مقابله‌ای اینجا نمایش داده خواهند شد.';

  @override
  String get strategiesTailoredToTriggers => 'راهبردهای متناسب با محرک‌های شما';

  @override
  String get cravingsPeakAndPass => 'هوس‌ها اوج می‌گیرند\nو می‌گذرند';

  @override
  String get rideTheWaveDescription =>
      'بیشتر هوس‌ها ظرف ۱۵ دقیقه می‌گذرند. لازم نیست بر اساس آن عمل کنید — فقط همراه ما از آن عبور کنید.';

  @override
  String get stayWithIt => 'ادامه دهید';

  @override
  String get youMadeIt => 'موفق شدید';

  @override
  String get readyWhenYouAre => 'هر وقت آماده بودید';

  @override
  String get rideItAgain => 'دوباره همراه موج شوید';

  @override
  String get start15MinuteTimer => 'شروع تایمر ۱۵ دقیقه‌ای';

  @override
  String get rideTheWaveCompletedMessage =>
      'شما از این موج عبور کردید. این قدرت واقعی است. 💪';

  @override
  String get myProgress => 'پیشرفت من';

  @override
  String get weekLabel => 'هفته';

  @override
  String get monthLabel => 'ماه';

  @override
  String get allLabel => 'همه';

  @override
  String get daysSoberStatLabel => 'روزهای\nبدون الکل';

  @override
  String get savedStatLabel => 'پس‌انداز';

  @override
  String get avoidedStatLabel => 'اجتانب‌شده';

  @override
  String get moodTrends => 'روند خلق‌وخو';

  @override
  String get cravingsPattern => 'الگوی هوس‌ها';

  @override
  String get unlockLabel => 'فعال‌سازی';

  @override
  String get unlockFullStats => 'فعال‌سازی آمار کامل';

  @override
  String get premiumStatsMessage =>
      'روند خلق‌وخو و الگوهای هوس از ویژگی‌های پریمیوم هستند. برای مشاهده آمار کامل ارتقا دهید.';

  @override
  String get healthMilestonesWillAppear =>
      'نقاط عطف سلامتی شما اینجا نمایش داده خواهند شد.';

  @override
  String get healthMilestones => 'نقاط عطف سلامتی';

  @override
  String dayNumber(int day) {
    return 'روز $day';
  }

  @override
  String get soberLabel => 'بدون الکل';

  @override
  String get slipLabel => 'لغزش';

  @override
  String get noDataLabel => 'بدون داده';

  @override
  String get milestone24Hours => '۲۴ ساعت';

  @override
  String get milestoneOneWeek => 'یک هفته';

  @override
  String get milestoneOneMonth => 'یک ماه';

  @override
  String get milestoneThreeMonths => 'سه ماه';

  @override
  String get milestoneSixMonths => 'شش ماه';

  @override
  String get milestoneOneYear => 'یک سال';

  @override
  String milestoneDayCount(int day) {
    return 'نقطه عطف روز $day';
  }

  @override
  String get maybeLaterLabel => 'شاید بعداً';

  @override
  String get cancelLabel => 'لغو';
}
