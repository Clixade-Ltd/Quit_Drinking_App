// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get skip => 'تخطي';

  @override
  String get continueButton => 'متابعة';

  @override
  String get getStarted => 'ابدأ الآن';

  @override
  String get onboardingTitle1 => 'تحكم في حياتك';

  @override
  String get onboardingSubtitle1 =>
      'تتبع رحلتك، احتفل بكل إنجاز، وكن أكثر صحة يومًا بعد يوم.';

  @override
  String get onboardingTitle2 => 'رفيقك الذكي في رحلة التعافي';

  @override
  String get onboardingSubtitle2 =>
      'احصل على إرشادات مخصصة، وعادات صحية، وتذكيرات تحفيزية، وتقارير تقدم مصممة خصيصًا لرحلتك.';

  @override
  String get goodMorning => 'صباح الخير';

  @override
  String get goodAfternoon => 'طاب نهارك';

  @override
  String get goodEvening => 'مساء الخير';

  @override
  String get goodNight => 'تصبح على خير';

  @override
  String get embracingClarity => 'احتضان الوضوح، يومًا بعد يوم.';

  @override
  String get streakLabel => 'التتابع';

  @override
  String get goalLabel => 'الهدف';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم',
      many: '$count يومًا',
      few: '$count أيام',
      two: 'يومان',
      one: 'يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'الخطة المميزة';

  @override
  String get premiumPlanSubtitle => 'افتح تجربة التعافي الكاملة الخاصة بك';

  @override
  String get accountAndSupport => 'الحساب والدعم';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get privacyPolicySubtitle => 'إدارة مشاركة البيانات وأمان الحساب';

  @override
  String get termsOfService => 'شروط الخدمة';

  @override
  String get termsOfServiceSubtitle => 'الأسئلة الشائعة، تواصل معنا، والموارد';

  @override
  String get shareApp => 'شارك التطبيق';

  @override
  String get shareAppSubtitle => 'شارك التطبيق مع أصدقائك';

  @override
  String get resetData => 'إعادة تعيين البيانات';

  @override
  String get resetDataSubtitle => 'مسح كل ما تم حفظه على هذا الجهاز';

  @override
  String get resetAllDataTitle => 'إعادة تعيين جميع البيانات؟';

  @override
  String get resetAllDataMessage =>
      'سيؤدي هذا إلى مسح كل ما تم حفظه على هذا الجهاز - الملف الشخصي، وتدوينات اليوميات، والتقدم - ولا يمكن التراجع عن ذلك.';

  @override
  String get cancel => 'إلغاء';

  @override
  String get reset => 'إعادة تعيين';

  @override
  String get chooseFromGallery => 'اختر من المعرض';

  @override
  String get takePhoto => 'التقط صورة';

  @override
  String get removePhoto => 'إزالة الصورة';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'تعذر تحديث الصورة: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'تعذر إزالة الصورة: $error';
  }

  @override
  String get photoTooLarge =>
      'هذه الصورة كبيرة جدًا حتى بعد الضغط - يرجى تجربة صورة أخرى.';

  @override
  String get unableToLoadProfile => 'تعذر تحميل ملفك الشخصي';

  @override
  String get pleaseTryAgain => 'يرجى المحاولة مرة أخرى.';

  @override
  String get tryAgain => 'حاول مرة أخرى';

  @override
  String get profileNotFound => 'الملف الشخصي غير موجود';

  @override
  String get refresh => 'تحديث';

  @override
  String get noProfileDataFound =>
      'لم يتم العثور على بيانات الملف الشخصي على هذا الجهاز بعد.';

  @override
  String couldNotResetData(String error) {
    return 'تعذر إعادة تعيين البيانات: $error';
  }

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navStats => 'الإحصائيات';

  @override
  String get navJournal => 'اليوميات';

  @override
  String get navBadges => 'الشارات';

  @override
  String get navProfile => 'الملف الشخصي';

  @override
  String featureComingSoon(String feature) {
    return '$feature ستكون متاحة قريبًا.';
  }

  @override
  String get appWordmark => 'العافية';

  @override
  String get appTitle => 'الإقلاع عن الشرب';

  @override
  String get splashSubtitle => 'اتخذ الخطوة الأولى نحو\nحياة خالية من الكحول';

  @override
  String get preparingJourney => 'نُجهّز\nرحلتك';

  @override
  String get taskMorningMeditation => 'تأمل صباحي (10 دقائق)';

  @override
  String get taskReadChapter => 'اقرأ الفصل الرابع من \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'يوميات الامتنان المسائية';

  @override
  String get close => 'إغلاق';

  @override
  String get youAreDoingGreat => 'أنت تبلي بلاءً حسنًا!';

  @override
  String get shareMilestone => 'شارك الإنجاز';

  @override
  String shareMilestoneMessage(int days) {
    return 'أنا في اليوم $days من رحلة تعافي! 💪';
  }

  @override
  String get shareMilestoneSubject => 'إنجازي في التعافي';

  @override
  String get weeklyReportReadyTitle => 'تقريرك الأسبوعي جاهز';

  @override
  String get weeklyReportReadySubtitle => 'اضغط لمعرفة كيف كان أسبوعك';

  @override
  String get howAreYouFeeling => 'كيف تشعر؟';

  @override
  String get moodTough => 'صعب';

  @override
  String get moodOkay => 'مقبول';

  @override
  String get moodGood => 'جيد';

  @override
  String get moneySaved => 'المال الموفر';

  @override
  String get caloriesSaved => 'السعرات الموفرة';

  @override
  String get healthScore => 'درجة الصحة';

  @override
  String get drinksAvoided => 'المشروبات المتجنبة';

  @override
  String get estimated => 'تقديري';

  @override
  String get aiGenerated => 'من الذكاء الاصطناعي';

  @override
  String get daysCapsLabel => 'أيام';

  @override
  String get todaysMotivation => 'تحفيز اليوم';

  @override
  String get defaultMotivationQuote =>
      'لقد حافظت بنجاح على التزامك. استمر في ركوب موجة التغيير الإيجابي.';

  @override
  String get talkToCoach => 'تحدث مع المدرب';

  @override
  String get havingACraving => 'أشعر برغبة شديدة';

  @override
  String get unlockWeeklyReportsTitle => 'افتح التقارير الأسبوعية';

  @override
  String get unlockWeeklyReportsMessage =>
      'شاهد أيام تعافيك، اتجاهات مزاجك، وملاحظات مخصصة من الذكاء الاصطناعي كل أسبوع. قم بالترقية إلى بريميوم للفتح.';

  @override
  String get maybeLater => 'ربما لاحقًا';

  @override
  String get upgrade => 'ترقية';

  @override
  String get weeklyReportTitle => 'التقرير الأسبوعي';

  @override
  String get weeklyReportsPremiumTitle => 'التقارير الأسبوعية ميزة مميزة';

  @override
  String get weeklyReportsPremiumMessage =>
      'شاهد أيام تعافيك، اتجاهات مزاجك، الرغبات الشديدة، وملاحظات مخصصة من الذكاء الاصطناعي كل أسبوع.';

  @override
  String get upgradeToPremium => 'الترقية إلى بريميوم';

  @override
  String get couldNotGenerateReport => 'تعذر إنشاء تقريرك الآن.';

  @override
  String get tryAgainLower => 'حاول مرة أخرى';

  @override
  String get statSoberDays => 'أيام التعافي';

  @override
  String get statAvgMood => 'متوسط المزاج';

  @override
  String get statCravings => 'الرغبات الشديدة';

  @override
  String get statMoneySaved => 'المال الموفر';

  @override
  String get coachFeedback => 'ملاحظات المدرب';

  @override
  String get journalInsights => 'رؤى اليوميات';

  @override
  String get next => 'التالي';

  @override
  String get question1Title => 'ما هو هدفك';

  @override
  String get question1Subtitle => 'اختر الهدف الأكثر أهمية\nبالنسبة لك';

  @override
  String get goalQuitCompletely => 'الإقلاع تمامًا';

  @override
  String get goalReduceDrinking => 'تقليل الشرب';

  @override
  String get goalTakeABreak => 'أخذ استراحة';

  @override
  String get goalBuildHealthierHabits => 'بناء عادات أكثر صحة';

  @override
  String get question3Title => 'أخبرنا عن\nروتينك';

  @override
  String get drinksPerWeek => 'المشروبات في الأسبوع';

  @override
  String get moneySpentPerWeek => 'المال المُنفق أسبوعيًا';

  @override
  String get drinkingLevel => 'مستوى الشرب';

  @override
  String get triggersLabel => 'المحفزات';

  @override
  String get levelSocial => 'اجتماعي';

  @override
  String get levelRegular => 'منتظم';

  @override
  String get levelHeavy => 'شديد';

  @override
  String get levelDependent => 'معتمد';

  @override
  String get triggerStress => 'التوتر';

  @override
  String get triggerLoneliness => 'الوحدة';

  @override
  String get triggerHabit => 'العادة';

  @override
  String get triggerSadness => 'الحزن';

  @override
  String get triggerAnger => 'الغضب';

  @override
  String get triggerBoredom => 'الملل';

  @override
  String get triggerSocialPressure => 'الضغط الاجتماعي';

  @override
  String get triggerCelebration => 'الاحتفال';

  @override
  String get triggerSleepProblems => 'مشاكل النوم';

  @override
  String get triggerWorkPressure => 'ضغط العمل';

  @override
  String get question4Title => 'لماذا تريد التغيير؟';

  @override
  String get question4Subtitle => 'سيساعدك سببك على التحفيز.';

  @override
  String get reasonImproveHealth => 'تحسين صحتي';

  @override
  String get reasonSaveMoney => 'توفير المال';

  @override
  String get reasonFamily => 'العائلة';

  @override
  String get reasonBetterSleep => 'نوم أفضل';

  @override
  String get reasonMentalClarity => 'الوضوح الذهني';

  @override
  String get reasonFitness => 'اللياقة البدنية';

  @override
  String get reasonSelfRespect => 'احترام الذات';

  @override
  String get reasonCareer => 'المسيرة المهنية';

  @override
  String get milestoneUnlockedLabel => 'الإنجاز مفتوح';

  @override
  String incredibleNamePrefix(String name) {
    return 'رائع، $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount تم توفيرها';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count تم تجنبها';
  }

  @override
  String get shareMyMilestone => 'شارك إنجازي';

  @override
  String get milestoneImageShareError =>
      'تعذر إنشاء صورة الإنجاز. حاول مرة أخرى.';

  @override
  String get dailyCheckInTitle => 'تسجيل الدخول اليومي';

  @override
  String get howAreYouFeelingToday => 'كيف تشعر اليوم؟';

  @override
  String get honestAnswerHelp => 'إجابتك الصادقة تساعدنا على دعمك بشكل أفضل';

  @override
  String get didYouDrinkToday => 'هل شربت اليوم؟';

  @override
  String get noLabel => 'لا';

  @override
  String get yesLabel => 'نعم';

  @override
  String get cravingLevelNow => 'مستوى الرغبة الشديدة الآن؟';

  @override
  String get anythingOnMind => 'هل يشغل بالك شيء؟';

  @override
  String get optionalLabel => '(اختياري)';

  @override
  String get dailyNoteHint => 'اكتب عن يومك، محفزاتك، إنجازاتك...';

  @override
  String get alreadyCheckedInToday => 'تم تسجيل الدخول اليوم بالفعل';

  @override
  String get saveCheckIn => 'حفظ تسجيل الدخول';

  @override
  String get checkInsHelpTrack => 'تسجيلات الدخول تساعد في تتبع تقدمك مع الوقت';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'لقد أكملت بالفعل تسجيل دخول اليوم.';

  @override
  String get pleaseAnswerBothQuestions =>
      'يرجى الإجابة على السؤالين أعلاه أولاً';

  @override
  String get checkInSaved => 'تم حفظ تسجيل الدخول';

  @override
  String get cravingNone => 'لا شيء';

  @override
  String get cravingLow => 'منخفض';

  @override
  String get cravingMedium => 'متوسط';

  @override
  String get cravingStrong => 'قوي';

  @override
  String get moodBad => 'سيء';

  @override
  String get moodLow => 'منخفض';

  @override
  String get moodGreat => 'رائع';

  @override
  String get sosSupportTitle => 'دعم الطوارئ';

  @override
  String notAloneMessage(String name) {
    return 'لست وحدك، $name';
  }

  @override
  String get cravingsPassMessage =>
      'الرغبة الشديدة تزول. اختر شيئًا أدناه لمساعدتك خلال هذه اللحظة.';

  @override
  String get breathingExercise => 'تمرين التنفس';

  @override
  String get breathingExerciseSubtitle => 'تقنية 4-7-8 الموجهة، دقيقتان';

  @override
  String get rideTheWave => 'تجاوز الرغبة';

  @override
  String get rideTheWaveSubtitle =>
      'مؤقت 15 دقيقة — الرغبة الشديدة تزول دائمًا';

  @override
  String get copingTips => 'نصائح للتأقلم';

  @override
  String get copingTipsSubtitle => 'استراتيجيات مخصصة لمحفزاتك';

  @override
  String get talkToAiCoach => 'تحدث مع مدرب الذكاء الاصطناعي';

  @override
  String get talkToAiCoachSubtitle => 'تحدث مع رفيقك في التعافي';

  @override
  String get callSomeone => 'اتصل بشخص ما';

  @override
  String get callSomeoneSubtitle => 'تواصل مع جهة اتصال موثوقة';

  @override
  String get contactsPermissionNeeded =>
      'إذن جهات الاتصال مطلوب للاتصال بجهة اتصال.';

  @override
  String get beatenCravingsPrefix => 'لقد تغلبت على الرغبة الشديدة ';

  @override
  String beatenCravingsCount(int count) {
    return '$count مرة';
  }

  @override
  String get beatenCravingsSuffix => ' من قبل. يمكنك فعل ذلك مرة أخرى.';

  @override
  String get tellUsAboutYourself => 'أخبرنا عن نفسك';

  @override
  String get detailsSubtitle =>
      'تساعدنا هذه المعلومات على تخصيص رحلة تعافيك وتقديم رؤى دقيقة.';

  @override
  String get nameLabel => 'الاسم';

  @override
  String get nameHint => 'مثال: أليكس ريفرز';

  @override
  String get ageLabel => 'العمر';

  @override
  String get ageHint => 'مثال: 32';

  @override
  String get sexAssignedAtBirth => 'الجنس عند الولادة';

  @override
  String get sexFemale => 'أنثى';

  @override
  String get sexMale => 'ذكر';

  @override
  String get heightLabel => 'الطول';

  @override
  String get weightLabel => 'الوزن';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'تم الوصول إلى الحد اليومي';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'لقد استخدمت جميع رسائلك المجانية البالغة $limit اليوم. قم بالترقية إلى Premium للحصول على محادثة غير محدودة مع المدرب.';
  }

  @override
  String get coachConnectError => 'تعذر الاتصال الآن. حاول مرة أخرى بعد قليل.';

  @override
  String get clearConversationTitle => 'مسح المحادثة؟';

  @override
  String get clearConversationMessage =>
      'سيؤدي هذا إلى إزالة سجل محادثة المدرب نهائيًا.';

  @override
  String get clearLabel => 'مسح';

  @override
  String get recoveryCoachTitle => 'مدرب التعافي';

  @override
  String get onlineLabel => 'متصل';

  @override
  String get clearConversationMenuItem => 'مسح المحادثة';

  @override
  String chatGreeting(String name) {
    return 'مرحبًا $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'أنت في اليوم $days من رحلتك. أنا هنا كلما أردت التحدث.';
  }

  @override
  String get quickPromptsLabel => 'اقتراحات سريعة';

  @override
  String get promptCravingLabel => 'أشعر برغبة شديدة';

  @override
  String get promptCravingSubtitle => 'استعد توازنك، بسرعة';

  @override
  String get promptMotivationLabel => 'أحتاج إلى تحفيز';

  @override
  String get promptMotivationSubtitle => 'دفعة عندما يصعب الأمر';

  @override
  String get promptSocialLabel => 'موقف اجتماعي';

  @override
  String get promptSocialSubtitle => 'تعامل مع تجمع';

  @override
  String get promptSlippedLabel => 'لقد انتكست';

  @override
  String get promptSlippedSubtitle => 'بدون حكم، فقط دعم';

  @override
  String get typeMessageHint => 'اكتب رسالة...';

  @override
  String get editProfileTitle => 'تعديل الملف الشخصي';

  @override
  String couldNotSaveProfile(String error) {
    return 'تعذر حفظ الملف الشخصي: $error';
  }

  @override
  String get heightCmLabel => 'الطول (سم)';

  @override
  String get weightKgLabel => 'الوزن (كغ)';

  @override
  String get saveChangesLabel => 'حفظ التغييرات';

  @override
  String get premiumBadgeLabel => 'بريميوم';

  @override
  String get featureAdvancedInsights => 'رؤى وتحليلات متقدمة';

  @override
  String get featureUnlimitedJournal => 'إدخالات يومية غير محدودة';

  @override
  String get featureUnlimitedChat =>
      'محادثة غير محدودة مع مدرب الذكاء الاصطناعي';

  @override
  String get featureCommunityGroups => 'مجموعات مجتمعية حصرية';

  @override
  String get featurePrioritySupport => 'دعم خبير ذو أولوية';

  @override
  String get featureThemePacks => 'حزم سمات مخصصة';

  @override
  String get featureDataExport => 'تصدير البيانات';

  @override
  String get featureAdFree => 'تجربة بدون إعلانات';

  @override
  String get premiumMemberTitle => 'أنت عضو بريميوم';

  @override
  String get unlockFullRecoveryTitle => 'افتح تجربتك الكاملة\nللتعافي';

  @override
  String get premiumMemberSubtitle =>
      'شكرًا لدعمك رحلة تعافيك — جميع ميزات بريميوم أدناه مفتوحة.';

  @override
  String get premiumJoinSubtitle =>
      'انضم إلى مجتمع من الآلاف الذين\nيسرّعون رحلة شفائهم بأدواتنا\nالمتميزة والدعم الشخصي.';

  @override
  String get monthlyPlanLabel => 'شهري';

  @override
  String get perMonthSuffix => '/شهر';

  @override
  String get cancelAnytimeLabel => 'إلغاء في أي وقت';

  @override
  String get yearlyPlanLabel => 'سنوي';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'يُحاسب سنويًا بمبلغ $amount';
  }

  @override
  String get bestValueLabel => 'أفضل قيمة';

  @override
  String get alreadyPremiumLabel => 'أنت بريميوم ✓';

  @override
  String get startPremiumLabel => 'ابدأ بريميوم';

  @override
  String get manageSubscriptionLabel =>
      'إدارة أو إلغاء الاشتراك من إعدادات جهازك.';

  @override
  String get noCommitmentLabel => 'بدون التزام. إلغاء في أي وقت.';

  @override
  String get continueFreePlanLabel => 'المتابعة بالخطة المجانية';

  @override
  String get backToHomeLabel => 'العودة إلى الرئيسية';

  @override
  String get cancelPremiumLabel => 'إلغاء بريميوم';

  @override
  String get cancelPremiumTitle => 'إلغاء بريميوم؟';

  @override
  String get cancelPremiumMessage =>
      'ستفقد الوصول إلى الإدخالات اليومية غير المحدودة، ومحادثة المدرب غير المحدودة، ورؤى الإحصائيات، والتقارير الأسبوعية. يمكنك الاشتراك مرة أخرى في أي وقت.';

  @override
  String get keepPremiumLabel => 'الاحتفاظ ببريميوم';

  @override
  String get nowPremiumMessage =>
      'أنت الآن بريميوم! استمتع بتجربة تعافيك الكاملة.';

  @override
  String get premiumCancelledMessage =>
      'تم إلغاء بريميوم. أنت الآن في الخطة المجانية.';

  @override
  String get termsOfUseLabel => 'شروط الاستخدام';

  @override
  String get navHomeLabel => 'الرئيسية';

  @override
  String get navStatsLabel => 'الإحصائيات';

  @override
  String get navJournalLabel => 'اليوميات';

  @override
  String get navBadgesLabel => 'الأوسمة';

  @override
  String get navProfileLabel => 'الملف الشخصي';

  @override
  String get recoveryGoalsTitle => 'أهداف التعافي';

  @override
  String get drinksPerWeekLabel => 'المشروبات أسبوعيًا';

  @override
  String get quitReasonsLabel => 'أسباب الإقلاع';

  @override
  String get quitReasonsHelperText => 'افصل بين الأسباب المتعددة بفاصلة.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'تعذر حفظ أهداف التعافي: $error';
  }

  @override
  String get goalHint => 'مثال: الامتناع التام';

  @override
  String get drinksPerWeekHint => 'مثال: 12';

  @override
  String get quitReasonsHint => 'مثال: الصحة، العائلة، المال';

  @override
  String get todaysPrompt => 'موجه اليوم';

  @override
  String get defaultJournalPrompt => 'ما الذي يشغل بالك اليوم؟';

  @override
  String get aiJournalInsights => 'رؤى اليوميات من الذكاء الاصطناعي';

  @override
  String get unlockJournalInsightsMessage =>
      'اكتشف الأنماط الأسبوعية، واتجاهات المزاج، والرؤى المخصصة من إدخالات يومياتك.';

  @override
  String get notEnoughJournalData =>
      'لا توجد بيانات كافية بعد — اكتب بعض الإدخالات هذا الأسبوع وتحقق مرة أخرى.';

  @override
  String get openEntry => 'فتح';

  @override
  String get editEntry => 'تعديل';

  @override
  String get deleteEntry => 'حذف';

  @override
  String get searchJournalEntries => 'البحث في الإدخالات...';

  @override
  String get writeNewEntry => 'كتابة إدخال جديد';

  @override
  String get recentEntries => 'الإدخالات الأخيرة';

  @override
  String get noJournalEntriesYet =>
      'لا توجد إدخالات في اليوميات بعد — اكتب تأملك الأول أعلاه.';

  @override
  String get noEntriesMatchFilters => 'لا توجد إدخالات تطابق عوامل التصفية.';

  @override
  String get weeklyJournalLimitReached => 'تم الوصول إلى الحد الأسبوعي';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'لقد استخدمت جميع إدخالات اليوميات المجانية البالغة $limit هذا الأسبوع. قم بالترقية إلى Premium للحصول على إدخالات غير محدودة.';
  }

  @override
  String get newEntry => 'إدخال جديد';

  @override
  String get writeYourThoughts => 'اكتب أفكارك';

  @override
  String get saveEntry => 'حفظ الإدخال';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'متبقي $remaining من أصل $limit إدخالات مجانية هذا الأسبوع';
  }

  @override
  String get deleteEntryQuestion => 'حذف الإدخال؟';

  @override
  String get deleteEntryConfirmation =>
      'سيتم حذف هذا الإدخال نهائيًا. لا يمكن التراجع عن ذلك.';

  @override
  String get journalEntryNotFound => 'الإدخال غير موجود';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'ربما تم حذف إدخال اليوميات هذا.';

  @override
  String get goBack => 'العودة';

  @override
  String get journalEntryTitle => 'إدخال اليوميات';

  @override
  String get moodStruggling => 'أشعر بصعوبة';

  @override
  String get moodUnwell => 'لست بخير';

  @override
  String get moodNeutral => 'محايد';

  @override
  String get whatHappenedToday => 'ماذا حدث اليوم؟';

  @override
  String get trigger => 'المحفز';

  @override
  String get whatHelped => 'ما الذي ساعدك؟';

  @override
  String get whatIllTryNextTime => 'ما سأجربه في المرة القادمة';

  @override
  String get journalPrivacyMessage => 'تأملك خاص ومحفوظ في يومياتك.';

  @override
  String get unlocked => 'تم الفتح';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ًا',
      one: '',
    );
    return 'متبقي $count يوم$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count يومًا';
  }

  @override
  String get firstReflection => 'أول\nتأمل';

  @override
  String get oneJournalEntry => 'إدخال واحد في اليوميات';

  @override
  String get openBook => 'كتاب مفتوح';

  @override
  String get tenJournalEntries => '10 إدخالات في اليوميات';

  @override
  String get dedicatedWriter => 'كاتب\nملتزم';

  @override
  String get thirtyJournalEntries => '30 إدخالًا في اليوميات';

  @override
  String get firstConversation => 'أول\nمحادثة';

  @override
  String get oneAiCoachChat => 'محادثة واحدة مع مدرب الذكاء الاصطناعي';

  @override
  String get keepTalking => 'واصل الحديث';

  @override
  String get fiveConversations => '5 محادثات';

  @override
  String get coachCompanion => 'رفيق\nالمدرب';

  @override
  String get twentyConversations => '20 محادثة';

  @override
  String get checkInHabit => 'عادة\nتسجيل الوصول';

  @override
  String get sevenCheckIns => '7 تسجيلات وصول';

  @override
  String get consistencyPro => 'محترف\nالاستمرارية';

  @override
  String get thirtyCheckIns => '30 تسجيل وصول';

  @override
  String get dedicatedJourney => 'رحلة\nملتزمة';

  @override
  String get hundredCheckIns => '100 تسجيل وصول';

  @override
  String get goalGetter => 'صائد الأهداف';

  @override
  String get threeGoalsCompleted => '3 أهداف مكتملة';

  @override
  String get goalAchiever => 'محقق\nالأهداف';

  @override
  String get tenGoalsCompleted => '10 أهداف مكتملة';

  @override
  String get firstSavings => 'أول\nمدخرات';

  @override
  String get fiveHundredSaved => 'تم توفير 500 دولار';

  @override
  String get smartSaver => 'مدخر ذكي';

  @override
  String get oneThousandSaved => 'تم توفير 1,000 دولار';

  @override
  String get bigSaver => 'مدخر كبير';

  @override
  String get fiveThousandSaved => 'تم توفير 5,000 دولار';

  @override
  String currencyProgress(String current, String target) {
    return '$current من $target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current من $target';
  }

  @override
  String get firstMilestoneWaiting => 'استمر — إنجازك الأول في انتظارك!';

  @override
  String get badgesAndMilestones => 'الشارات والإنجازات';

  @override
  String get yourMilestoneJourney => 'رحلة إنجازاتك';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ات',
      one: '',
    );
    return 'تم تحقيق $count إنجاز$_temp0.\nاضغط للعرض';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'لقد فتحت $unlocked من أصل $total إنجازات في رحلتك.';
  }

  @override
  String get remaining => 'متبقي';

  @override
  String get complete => 'مكتمل';

  @override
  String get nextMilestone => 'الإنجاز التالي';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% من الطريق';
  }

  @override
  String get sobrietyMilestones => 'إنجازات التعافي';

  @override
  String get journeyBadges => 'شارات الرحلة';

  @override
  String get bronze => 'برونزي';

  @override
  String get silver => 'فضي';

  @override
  String get gold => 'ذهبي';

  @override
  String get platinum => 'بلاتيني';

  @override
  String get diamond => 'ماسي';

  @override
  String get analyzingYourJourney => 'جارٍ تحليل رحلتك...';

  @override
  String get aiCreatingSanctuary =>
      'يقوم الذكاء الاصطناعي بإنشاء خطة التعافي الشخصية الخاصة بك.';

  @override
  String get understandingHabits => 'جارٍ فهم عاداتك...';

  @override
  String get calculatingBaseline => 'جارٍ حساب خط الأساس الخاص بك...';

  @override
  String get personalizingPlan => 'جارٍ تخصيص خطتك...';

  @override
  String get finalizingSanctuary => 'جارٍ إنهاء خطة التعافي الخاصة بك...';

  @override
  String get creatingYourPlan => 'جارٍ إنشاء خطتك...';

  @override
  String get personalizedPlanError =>
      'تعذر إنشاء خطة التعافي الشخصية الخاصة بك. يرجى المحاولة مرة أخرى.';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get breathInhale => 'شهيق';

  @override
  String get breathHold => 'احبس';

  @override
  String get breathExhale => 'زفير';

  @override
  String get breathDone => 'تم';

  @override
  String get breathGreatJob => 'أحسنت!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count جلسات اليوم',
      one: '$count جلسة اليوم',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'إنهاء التمرين';

  @override
  String get done => 'تم';

  @override
  String get noCopingTipsYet => 'لا توجد نصائح للتعامل بعد';

  @override
  String get copingStrategiesWillAppear =>
      'ستظهر استراتيجيات التعامل المخصصة لك هنا بمجرد الانتهاء من إنشاء خطة التعافي الخاصة بك.';

  @override
  String get strategiesTailoredToTriggers => 'استراتيجيات مخصصة لمحفزاتك';

  @override
  String get cravingsPeakAndPass => 'تبلغ الرغبات ذروتها\nثم تمر';

  @override
  String get rideTheWaveDescription =>
      'تمر معظم الرغبات خلال 15 دقيقة. لا يتعين عليك الاستجابة لها — فقط تجاوزها معنا.';

  @override
  String get stayWithIt => 'استمر';

  @override
  String get youMadeIt => 'لقد نجحت';

  @override
  String get readyWhenYouAre => 'جاهز عندما تكون';

  @override
  String get rideItAgain => 'كررها مرة أخرى';

  @override
  String get start15MinuteTimer => 'ابدأ مؤقت 15 دقيقة';

  @override
  String get rideTheWaveCompletedMessage =>
      'لقد تجاوزت الرغبة. هذه قوة حقيقية. 💪';

  @override
  String get myProgress => 'تقدمي';

  @override
  String get weekLabel => 'أسبوع';

  @override
  String get monthLabel => 'شهر';

  @override
  String get allLabel => 'الكل';

  @override
  String get daysSoberStatLabel => 'أيام\nبدون كحول';

  @override
  String get savedStatLabel => 'المدخر';

  @override
  String get avoidedStatLabel => 'تم تجنبه';

  @override
  String get moodTrends => 'اتجاهات المزاج';

  @override
  String get cravingsPattern => 'نمط الرغبات';

  @override
  String get unlockLabel => 'فتح';

  @override
  String get unlockFullStats => 'فتح الإحصائيات الكاملة';

  @override
  String get premiumStatsMessage =>
      'اتجاهات المزاج وأنماط الرغبات من ميزات Premium. قم بالترقية لرؤية إحصائياتك الكاملة.';

  @override
  String get healthMilestonesWillAppear => 'ستظهر إنجازاتك الصحية هنا.';

  @override
  String get healthMilestones => 'الإنجازات الصحية';

  @override
  String dayNumber(int day) {
    return 'اليوم $day';
  }

  @override
  String get soberLabel => 'بدون كحول';

  @override
  String get slipLabel => 'انتكاس';

  @override
  String get noDataLabel => 'لا توجد بيانات';

  @override
  String get milestone24Hours => '24 ساعة';

  @override
  String get milestoneOneWeek => 'أسبوع واحد';

  @override
  String get milestoneOneMonth => 'شهر واحد';

  @override
  String get milestoneThreeMonths => 'ثلاثة أشهر';

  @override
  String get milestoneSixMonths => 'ستة أشهر';

  @override
  String get milestoneOneYear => 'سنة واحدة';

  @override
  String milestoneDayCount(int day) {
    return 'إنجاز اليوم $day';
  }

  @override
  String get maybeLaterLabel => 'ربما لاحقًا';

  @override
  String get cancelLabel => 'إلغاء';
}
