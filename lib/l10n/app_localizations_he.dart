// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get skip => 'דלג';

  @override
  String get continueButton => 'המשך';

  @override
  String get getStarted => 'להתחיל';

  @override
  String get onboardingTitle1 => 'קח שליטה על חייך';

  @override
  String get onboardingSubtitle1 =>
      'עקוב אחר המסע שלך, חגוג כל הישג והפוך לבריא יותר יום אחר יום.';

  @override
  String get onboardingTitle2 => 'מלווה ההחלמה שלך מבוסס AI';

  @override
  String get onboardingSubtitle2 =>
      'קבל הנחיה מותאמת אישית, הרגלים בריאים, תזכורות מוטיבציה ודוחות התקדמות.';

  @override
  String get goodMorning => 'בוקר טוב';

  @override
  String get goodAfternoon => 'צהריים טובים';

  @override
  String get goodEvening => 'ערב טוב';

  @override
  String get goodNight => 'לילה טוב';

  @override
  String get embracingClarity => 'מפנימים את הצלילות, יום אחר יום.';

  @override
  String get streakLabel => 'רצף';

  @override
  String get goalLabel => 'מטרה';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ימים',
      one: 'יום $count',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'תכנית פרימיום';

  @override
  String get premiumPlanSubtitle => 'פתח את חוויית ההחלמה המלאה שלך';

  @override
  String get accountAndSupport => 'חשבון ותמיכה';

  @override
  String get privacyPolicy => 'מדיניות פרטיות';

  @override
  String get privacyPolicySubtitle => 'ניהול שיתוף נתונים ואבטחת חשבון';

  @override
  String get termsOfService => 'תנאי שירות';

  @override
  String get termsOfServiceSubtitle => 'שאלות נפוצות, יצירת קשר ומשאבים';

  @override
  String get shareApp => 'שתף אפליקציה';

  @override
  String get shareAppSubtitle => 'שתף את האפליקציה עם חברים';

  @override
  String get resetData => 'איפוס נתונים';

  @override
  String get resetDataSubtitle => 'מחק את כל מה ששמור במכשיר זה';

  @override
  String get resetAllDataTitle => 'לאפס את כל הנתונים?';

  @override
  String get resetAllDataMessage =>
      'פעולה זו תמחק את כל מה ששמור במכשיר זה (פרופיל, יומן והתקדמות) ולא ניתן לבטלה.';

  @override
  String get cancel => 'ביטול';

  @override
  String get reset => 'איפוס';

  @override
  String get chooseFromGallery => 'בחר מהגלריה';

  @override
  String get takePhoto => 'צלם תמונה';

  @override
  String get removePhoto => 'הסר תמונה';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'לא ניתן היה לעדכן את התמונה: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'לא ניתן היה להסיר את התמונה: $error';
  }

  @override
  String get photoTooLarge =>
      'התמונה גדולה מדי גם לאחר דחיסה — נסה תמונה אחרת.';

  @override
  String get unableToLoadProfile => 'לא ניתן לטעון את הפרופיל שלך';

  @override
  String get pleaseTryAgain => 'אנא נסה שוב.';

  @override
  String get tryAgain => 'נסה שוב';

  @override
  String get profileNotFound => 'הפרופיל לא נמצא';

  @override
  String get refresh => 'רענן';

  @override
  String get noProfileDataFound => 'עדיין לא נמצאו נתוני פרופיל במכשיר זה.';

  @override
  String couldNotResetData(String error) {
    return 'לא ניתן היה לאפס נתונים: $error';
  }

  @override
  String get navHome => 'בית';

  @override
  String get navStats => 'סטטיסטיקה';

  @override
  String get navJournal => 'יומן';

  @override
  String get navBadges => 'הישגים';

  @override
  String get navProfile => 'פרופיל';

  @override
  String featureComingSoon(String feature) {
    return 'התכונה $feature תהיה זמינה בקרוב.';
  }

  @override
  String get appWordmark => 'רווחה';

  @override
  String get appTitle => 'הפסיקו לשתות';

  @override
  String get splashSubtitle => 'קח את הצעד הראשון לקראת\nחיים ללא אלכוהול';

  @override
  String get preparingJourney => 'מכין את\nהמסע שלך';

  @override
  String get taskMorningMeditation => 'מדיטציית בוקר (10 דק\')';

  @override
  String get taskReadChapter => 'קרא את פרק 4 מ-\"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'יומן תודות לערב';

  @override
  String get close => 'סגור';

  @override
  String get youAreDoingGreat => 'אתה עושה עבודה מצוינת!';

  @override
  String get shareMilestone => 'שתף אבן דרך';

  @override
  String shareMilestoneMessage(int days) {
    return 'אני ביום ה-$days למסע ההחלמה שלי! 💪';
  }

  @override
  String get shareMilestoneSubject => 'אבן הדרך שלי בהחלמה';

  @override
  String get weeklyReportReadyTitle => 'הדוח השבועי שלך מוכן';

  @override
  String get weeklyReportReadySubtitle => 'לחץ לצפייה בסיכום השבוע שלך';

  @override
  String get howAreYouFeeling => 'איך אתה מרגיש?';

  @override
  String get moodTough => 'קשה';

  @override
  String get moodOkay => 'בסדר';

  @override
  String get moodGood => 'טוב';

  @override
  String get moneySaved => 'כסף שנחסך';

  @override
  String get caloriesSaved => 'קלוריות שנחסכו';

  @override
  String get healthScore => 'מדד בריאות';

  @override
  String get drinksAvoided => 'משקאות שנמנעו';

  @override
  String get estimated => 'מוערך';

  @override
  String get aiGenerated => 'נוצר על ידי AI';

  @override
  String get daysCapsLabel => 'ימים';

  @override
  String get todaysMotivation => 'המוטיבציה של היום';

  @override
  String get defaultMotivationQuote =>
      'שמרת בהצלחה על ההתחייבות שלך. המשך לרכוב על גל השינוי החיובי.';

  @override
  String get talkToCoach => 'דבר עם המאמן';

  @override
  String get havingACraving => 'יש לי חשק (Craving)';

  @override
  String get unlockWeeklyReportsTitle => 'פתיחת דוחות שבועיים';

  @override
  String get unlockWeeklyReportsMessage =>
      'צפה בימים הנקיים שלך, במגמות מצב הרוח ובמשוב AI מדי שבוע. שדרג לפרימיום.';

  @override
  String get maybeLater => 'אולי מאוחר יותר';

  @override
  String get upgrade => 'שדרג';

  @override
  String get weeklyReportTitle => 'דוח שבועי';

  @override
  String get weeklyReportsPremiumTitle => 'דוחות שבועיים הם תכונת פרימיום';

  @override
  String get weeklyReportsPremiumMessage =>
      'עקוב אחר הימים הנקיים שלך, מצב הרוח והדחפים עם משוב מותאם אישית.';

  @override
  String get upgradeToPremium => 'שדרג לפרימיום';

  @override
  String get couldNotGenerateReport => 'לא ניתן היה ליצור את הדוח כעת.';

  @override
  String get tryAgainLower => 'נסה שוב';

  @override
  String get statSoberDays => 'ימים נקיים';

  @override
  String get statAvgMood => 'מצב רוח ממוצע';

  @override
  String get statCravings => 'חשקים/דחפים';

  @override
  String get statMoneySaved => 'כסף שנחסך';

  @override
  String get coachFeedback => 'משוב המאמן';

  @override
  String get journalInsights => 'תובנות מהיומן';

  @override
  String get next => 'הבא';

  @override
  String get question1Title => 'מה המטרה שלך?';

  @override
  String get question1Subtitle => 'בחר את המטרה החשובה לך ביותר';

  @override
  String get goalQuitCompletely => 'להפסיק לחלוטין';

  @override
  String get goalReduceDrinking => 'להפחית שתייה';

  @override
  String get goalTakeABreak => 'לקחת הפסקה';

  @override
  String get goalBuildHealthierHabits => 'לבנות הרגלים בריאים יותר';

  @override
  String get question3Title => 'ספר לנו על\nהשגרה שלך';

  @override
  String get drinksPerWeek => 'משקאות בשבוע';

  @override
  String get moneySpentPerWeek => 'כסף שהוצא בשבוע';

  @override
  String get drinkingLevel => 'רמת שתייה';

  @override
  String get triggersLabel => 'טריגרים';

  @override
  String get levelSocial => 'חברתי';

  @override
  String get levelRegular => 'סדיר';

  @override
  String get levelHeavy => 'גבוהה';

  @override
  String get levelDependent => 'תלותי';

  @override
  String get triggerStress => 'לחץ (סטרס)';

  @override
  String get triggerLoneliness => 'בדידות';

  @override
  String get triggerHabit => 'הרגל';

  @override
  String get triggerSadness => 'עצב';

  @override
  String get triggerAnger => 'כעס';

  @override
  String get triggerBoredom => 'שעמום';

  @override
  String get triggerSocialPressure => 'לחץ חברתי';

  @override
  String get triggerCelebration => 'חגיגה';

  @override
  String get triggerSleepProblems => 'בעיות שינה';

  @override
  String get triggerWorkPressure => 'לחץ בעבודה';

  @override
  String get question4Title => 'למה אתה רוצה לשנות?';

  @override
  String get question4Subtitle => 'הסיבה שלך תסייע לשמור על מוטיבציה.';

  @override
  String get reasonImproveHealth => 'לשפר את הבריאות';

  @override
  String get reasonSaveMoney => 'לחסוך כסף';

  @override
  String get reasonFamily => 'משפחה';

  @override
  String get reasonBetterSleep => 'שינה טובה יותר';

  @override
  String get reasonMentalClarity => 'בהירות מנטלית';

  @override
  String get reasonFitness => 'כושר גופני';

  @override
  String get reasonSelfRespect => 'כבוד עצמי';

  @override
  String get reasonCareer => 'קריירה';

  @override
  String get milestoneUnlockedLabel => 'אבן דרך נפתחה';

  @override
  String incredibleNamePrefix(String name) {
    return 'מדהים, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'נחסכו $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'נמנעו $count';
  }

  @override
  String get shareMyMilestone => 'שתף את אבן הדרך שלי';

  @override
  String get milestoneImageShareError =>
      'לא ניתן היה ליצור תמונה של אבן הדרך. נסה שוב.';

  @override
  String get dailyCheckInTitle => 'דיווח יומי';

  @override
  String get howAreYouFeelingToday => 'איך אתה מרגיש היום?';

  @override
  String get honestAnswerHelp => 'התשובה הכנה שלך עוזרת לנו לתמוך בך טוב יותר';

  @override
  String get didYouDrinkToday => 'שתית אלכוהול היום?';

  @override
  String get noLabel => 'לא';

  @override
  String get yesLabel => 'כן';

  @override
  String get cravingLevelNow => 'מהי רמת הדחף כעת?';

  @override
  String get anythingOnMind => 'משהו שתרצה לשתף?';

  @override
  String get optionalLabel => '(רשות)';

  @override
  String get dailyNoteHint => 'כתוב על היום שלך, הטריגרים או ההצלחות...';

  @override
  String get alreadyCheckedInToday => 'כבר דיווחת היום';

  @override
  String get saveCheckIn => 'שמור דיווח';

  @override
  String get checkInsHelpTrack => 'דיווחים עוזרים לעקוב אחר ההתקדמות לאורך זמן';

  @override
  String get alreadyCompletedTodayCheckIn => 'כבר השלמת את הדיווח היומי להיום.';

  @override
  String get pleaseAnswerBothQuestions => 'אנא ענה תחילה על שתי השאלות למעלה';

  @override
  String get checkInSaved => 'הדיווח נשמר';

  @override
  String get cravingNone => 'ללא';

  @override
  String get cravingLow => 'נמוך';

  @override
  String get cravingMedium => 'בינוני';

  @override
  String get cravingStrong => 'חזק';

  @override
  String get moodBad => 'רע';

  @override
  String get moodLow => 'ירוד';

  @override
  String get moodGreat => 'מעולה';

  @override
  String get sosSupportTitle => 'תמיכת SOS';

  @override
  String notAloneMessage(String name) {
    return 'אתה לא לבד, $name';
  }

  @override
  String get cravingsPassMessage =>
      'הדחף יעבור. בחר אפשרות למטה שתעזור לך ברגע זה.';

  @override
  String get breathingExercise => 'תרגיל נשימה';

  @override
  String get breathingExerciseSubtitle => 'טכניקת 4-7-8 מודרכת, 2 דקות';

  @override
  String get rideTheWave => 'לרכוב על הגל';

  @override
  String get rideTheWaveSubtitle => 'טיימר של 15 דקות — הדחף תמיד עובר';

  @override
  String get copingTips => 'טיפים להתמודדות';

  @override
  String get copingTipsSubtitle => 'אסטרטגיות מותאמות אישית לטריגרים שלך';

  @override
  String get talkToAiCoach => 'דבר עם מאמן AI';

  @override
  String get talkToAiCoachSubtitle => 'שוחח עם מלווה ההחלמה שלך';

  @override
  String get callSomeone => 'תתקשר למישהו';

  @override
  String get callSomeoneSubtitle => 'צור קשר עם איש קשר מהימן';

  @override
  String get contactsPermissionNeeded => 'נדרשת הרשאת אנשי קשר כדי לבצע שיחה.';

  @override
  String get beatenCravingsPrefix => 'התגברת על הדחף ';

  @override
  String beatenCravingsCount(int count) {
    return '$count פעמים';
  }

  @override
  String get beatenCravingsSuffix => ' בעבר. אתה יכול לעשות זאת שוב.';

  @override
  String get tellUsAboutYourself => 'ספר לנו על עצמך';

  @override
  String get detailsSubtitle =>
      'מידע זה עוזר לנו להתאים אישית את תהליך ההחלמה שלך.';

  @override
  String get nameLabel => 'שם';

  @override
  String get nameHint => 'למשל, אלכס';

  @override
  String get ageLabel => 'גיל';

  @override
  String get ageHint => 'למשל, 32';

  @override
  String get sexAssignedAtBirth => 'מין בלידה';

  @override
  String get sexFemale => 'נקבה';

  @override
  String get sexMale => 'זכר';

  @override
  String get heightLabel => 'גובה';

  @override
  String get weightLabel => 'משקל';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'הגעת למגבלה היומית';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'ניצלת את כל $limit ההודעות החינמיות להיום. שדרג לפרימיום לשיחה ללא הגבלה.';
  }

  @override
  String get coachConnectError => 'לא ניתן להתחבר כעת. אנא נסה שוב בעוד רגע.';

  @override
  String get clearConversationTitle => 'לנקות את השיחה?';

  @override
  String get clearConversationMessage =>
      'פעולה זו תמחק לצמיתות את היסטוריית השיחה עם המאמן.';

  @override
  String get clearLabel => 'נקה';

  @override
  String get recoveryCoachTitle => 'מאמן החלמה';

  @override
  String get onlineLabel => 'מחובר';

  @override
  String get clearConversationMenuItem => 'נקה שיחה';

  @override
  String chatGreeting(String name) {
    return 'היי $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'אתה ביום ה-$days למסע שלך. אני כאן בכל עת שתרצה לדבר.';
  }

  @override
  String get quickPromptsLabel => 'הצעות מהירות';

  @override
  String get promptCravingLabel => 'יש לי דחף חזק';

  @override
  String get promptCravingSubtitle => 'להירגע במהירות';

  @override
  String get promptMotivationLabel => 'צריך מוטיבציה';

  @override
  String get promptMotivationSubtitle => 'חיזוק לרגעים קשים';

  @override
  String get promptSocialLabel => 'סיטואציה חברתית';

  @override
  String get promptSocialSubtitle => 'איך להתמודד במפגש';

  @override
  String get promptSlippedLabel => 'מעדתי/שתיתי';

  @override
  String get promptSlippedSubtitle => 'ללא שיפוטיות, רק תמיכה';

  @override
  String get typeMessageHint => 'קלד הודעה...';

  @override
  String get editProfileTitle => 'עריכת פרופיל';

  @override
  String couldNotSaveProfile(String error) {
    return 'לא ניתן לשמור את הפרופיל: $error';
  }

  @override
  String get heightCmLabel => 'גובה (ס\"מ)';

  @override
  String get weightKgLabel => 'משקל (ק\"ג)';

  @override
  String get saveChangesLabel => 'שמור שינויים';

  @override
  String get premiumBadgeLabel => 'פרימיום';

  @override
  String get featureAdvancedInsights => 'ניתוחים וסטטיסטיקות מתקדמות';

  @override
  String get featureUnlimitedJournal => 'רשומות יומן ללא הגבלה';

  @override
  String get featureUnlimitedChat => 'שיחה ללא הגבלה עם מאמן AI';

  @override
  String get featureCommunityGroups => 'קבוצות קהילה בלעדיות';

  @override
  String get featurePrioritySupport => 'תמיכה בעדיפות גבוהה';

  @override
  String get featureThemePacks => 'ערכות עיצוב מותאמות אישית';

  @override
  String get featureDataExport => 'ייצוא נתונים';

  @override
  String get featureAdFree => 'חוויה ללא פרסומות';

  @override
  String get premiumMemberTitle => 'אתה חבר פרימיום';

  @override
  String get unlockFullRecoveryTitle => 'פתח את חוויית\nההחלמה המלאה שלך';

  @override
  String get premiumMemberSubtitle =>
      'תודה על התמיכה — כל תכונות הפרימיום פתוחות עבורך.';

  @override
  String get premiumJoinSubtitle =>
      'הצטרף לאלפים שמאיצים את תהליך ההחלמה שלהם.';

  @override
  String get monthlyPlanLabel => 'חודשי';

  @override
  String get perMonthSuffix => '/חודש';

  @override
  String get cancelAnytimeLabel => 'ביטול בכל עת';

  @override
  String get yearlyPlanLabel => 'שנתי';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'חיוב שנתי בסך $amount';
  }

  @override
  String get bestValueLabel => 'המשתלם ביותר';

  @override
  String get alreadyPremiumLabel => 'אתה כבר פרימיום ✓';

  @override
  String get startPremiumLabel => 'התחל פרימיום';

  @override
  String get manageSubscriptionLabel =>
      'ניהול או ביטול דרך הגדרות המנוי במכשיר שלך.';

  @override
  String get noCommitmentLabel => 'ללא התחייבות. ביטול בכל עת.';

  @override
  String get continueFreePlanLabel => 'המשך עם התכנית החינמית';

  @override
  String get backToHomeLabel => 'בחזרה לבית';

  @override
  String get cancelPremiumLabel => 'בטל פרימיום';

  @override
  String get cancelPremiumTitle => 'לבטל את הפרימיום?';

  @override
  String get cancelPremiumMessage =>
      'תאבד את הגישה ליומן ללא הגבלה, צ\'אט מורחב ודוחות שבועיים.';

  @override
  String get keepPremiumLabel => 'שמור על הפרימיום';

  @override
  String get nowPremiumMessage => 'אתה כעת בפרימיום! תהנה מהחוויה המלאה.';

  @override
  String get premiumCancelledMessage => 'הפרימיום בוטל. חזרת לתכנית החינמית.';

  @override
  String get termsOfUseLabel => 'תנאי שימוש';

  @override
  String get navHomeLabel => 'בית';

  @override
  String get navStatsLabel => 'סטטיסטיקה';

  @override
  String get navJournalLabel => 'יומן';

  @override
  String get navBadgesLabel => 'הישגים';

  @override
  String get navProfileLabel => 'פרופיל';

  @override
  String get recoveryGoalsTitle => 'מטרות החלמה';

  @override
  String get drinksPerWeekLabel => 'משקאות בשבוע';

  @override
  String get quitReasonsLabel => 'סיבות להפסקה';

  @override
  String get quitReasonsHelperText => 'הפרד בין סיבות מרובות באמצעות פסיק.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'לא ניתן היה לשמור מטרות: $error';
  }

  @override
  String get goalHint => 'למשל, הינזרות מוחלטת';

  @override
  String get drinksPerWeekHint => 'למשל, 12';

  @override
  String get quitReasonsHint => 'למשל, בריאות, משפחה, כסף';

  @override
  String get todaysPrompt => 'הנושא של היום';

  @override
  String get defaultJournalPrompt => 'על מה אתה חושב היום?';

  @override
  String get aiJournalInsights => 'תובנות יומן מ-AI';

  @override
  String get unlockJournalInsightsMessage =>
      'פתח דפוסים שבועיים ומגמות מצב רוח מהיומן שלך.';

  @override
  String get notEnoughJournalData =>
      'אין עדיין מספיק נתונים — כתוב כמה רשומות השבוע.';

  @override
  String get openEntry => 'פתח';

  @override
  String get editEntry => 'ערוך';

  @override
  String get deleteEntry => 'מחק';

  @override
  String get searchJournalEntries => 'חפש ברשומות...';

  @override
  String get writeNewEntry => 'כתוב רשומה חדשה';

  @override
  String get recentEntries => 'רשומות אחרונות';

  @override
  String get noJournalEntriesYet => 'אין עדיין רשומות ביומן.';

  @override
  String get noEntriesMatchFilters => 'אין רשומות התואמות לסינון.';

  @override
  String get weeklyJournalLimitReached => 'הגעת למגבלה השבועית';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'ניצלת את כל $limit הרשומות החינמיות לשבוע זה.';
  }

  @override
  String get newEntry => 'רשומה חדשה';

  @override
  String get writeYourThoughts => 'כתוב את מחשבותיך';

  @override
  String get saveEntry => 'שמור רשומה';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'נותרו $remaining מתוך $limit רשומות חינמיות השבוע';
  }

  @override
  String get deleteEntryQuestion => 'למחוק את הרשומה?';

  @override
  String get deleteEntryConfirmation => 'רשומה זו תימחק לצמיתות.';

  @override
  String get journalEntryNotFound => 'רשומה לא נמצאה';

  @override
  String get journalEntryMayHaveBeenDeleted => 'ייתכן שרשומה זו נמחקה.';

  @override
  String get goBack => 'חזור חזרה';

  @override
  String get journalEntryTitle => 'רשומת יומן';

  @override
  String get moodStruggling => 'מתמודד';

  @override
  String get moodUnwell => 'לא טוב';

  @override
  String get moodNeutral => 'ניטרלי';

  @override
  String get whatHappenedToday => 'מה קרה היום?';

  @override
  String get trigger => 'טריגר';

  @override
  String get whatHelped => 'מה עזר';

  @override
  String get whatIllTryNextTime => 'מה אנסה בפעם הבאה';

  @override
  String get journalPrivacyMessage => 'המחשבות שלך פרטיות ושמורות בבטחה.';

  @override
  String get unlocked => 'נפתח';

  @override
  String daysLeft(int count) {
    return 'נותרו $count ימים';
  }

  @override
  String daysCount(int count) {
    return '$count ימים';
  }

  @override
  String get firstReflection => 'מחשבה\nראשונה';

  @override
  String get oneJournalEntry => 'רשומת יומן 1';

  @override
  String get openBook => 'ספר פתוח';

  @override
  String get tenJournalEntries => '10 רשומות יומן';

  @override
  String get dedicatedWriter => 'כותב\nמסור';

  @override
  String get thirtyJournalEntries => '30 רשומות יומן';

  @override
  String get firstConversation => 'שיחה\nראשונה';

  @override
  String get oneAiCoachChat => 'שיחת מאמן 1';

  @override
  String get keepTalking => 'להמשיך לדבר';

  @override
  String get fiveConversations => '5 שיחות';

  @override
  String get coachCompanion => 'מלווה\nאישי';

  @override
  String get twentyConversations => '20 שיחות';

  @override
  String get checkInHabit => 'הרגל\nדיווח';

  @override
  String get sevenCheckIns => '7 דיווחים';

  @override
  String get consistencyPro => 'מקצוען\nעקביות';

  @override
  String get thirtyCheckIns => '30 דיווחים';

  @override
  String get dedicatedJourney => 'מסע\nמסור';

  @override
  String get hundredCheckIns => '100 דיווחים';

  @override
  String get goalGetter => 'משיג מטרות';

  @override
  String get threeGoalsCompleted => '3 מטרות הושלמו';

  @override
  String get goalAchiever => 'מגשים\nמטרות';

  @override
  String get tenGoalsCompleted => '10 מטרות הושלמו';

  @override
  String get firstSavings => 'חיסכון\nראשון';

  @override
  String get fiveHundredSaved => '\$500 נחסכו';

  @override
  String get smartSaver => 'חוסך חכם';

  @override
  String get oneThousandSaved => '\$1,000 נחסכו';

  @override
  String get bigSaver => 'חוסך גדול';

  @override
  String get fiveThousandSaved => '\$5,000 נחסכו';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current מתוך \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current מתוך $target';
  }

  @override
  String get firstMilestoneWaiting => 'המשך כך — אבן הדרך הראשונה שלך מחכה לך!';

  @override
  String get badgesAndMilestones => 'תגים ואבני דרך';

  @override
  String get yourMilestoneJourney => 'מסע אבני הדרך שלך';

  @override
  String milestonesAchieved(int count) {
    return 'הושגו $count אבני דרך.\nלחץ לצפייה';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'פתחת $unlocked מתוך $total אבני דרך במסע שלך.';
  }

  @override
  String get remaining => 'נותרו';

  @override
  String get complete => 'הושלם';

  @override
  String get nextMilestone => 'אבן הדרך הבאה';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% הושלמו';
  }

  @override
  String get sobrietyMilestones => 'אבני דרך בניקיון';

  @override
  String get journeyBadges => 'תגי המסע';

  @override
  String get bronze => 'ארד';

  @override
  String get silver => 'כסף';

  @override
  String get gold => 'זהב';

  @override
  String get platinum => 'פלטינה';

  @override
  String get diamond => 'יהלום';

  @override
  String get analyzingYourJourney => 'מנתח את המסע שלך...';

  @override
  String get aiCreatingSanctuary => 'ה-AI יוצר את המרחב האישי שלך.';

  @override
  String get understandingHabits => 'מבין את ההרגלים...';

  @override
  String get calculatingBaseline => 'מחשב קו בסיס...';

  @override
  String get personalizingPlan => 'מתאים אישית את התכנית...';

  @override
  String get finalizingSanctuary => 'משלים את הכנת המרחב...';

  @override
  String get creatingYourPlan => 'יוצר את התכנית שלך...';

  @override
  String get personalizedPlanError =>
      'לא ניתן היה ליצור את התכנית המותאמת. נסה שוב.';

  @override
  String get retry => 'נסה שוב';

  @override
  String get breathInhale => 'שאַף';

  @override
  String get breathHold => 'החזק';

  @override
  String get breathExhale => 'נַשֵׁף';

  @override
  String get breathDone => 'סיום';

  @override
  String get breathGreatJob => 'עבודה מצוינת!';

  @override
  String breathSessionsToday(int count) {
    return '$count סשנים היום';
  }

  @override
  String get endExercise => 'סים תרגיל';

  @override
  String get done => 'בוצע';

  @override
  String get noCopingTipsYet => 'אין עדיין טיפים';

  @override
  String get copingStrategiesWillAppear =>
      'האסטרטגיות שלך יופיעו כאן לאחר סיום יצירת התכנית.';

  @override
  String get strategiesTailoredToTriggers => 'אסטרטגיות המותאמות לטריגרים שלך';

  @override
  String get cravingsPeakAndPass => 'הדחפים עולים\nועוברים';

  @override
  String get rideTheWaveDescription =>
      'רוב הדחפים עוברים תוך 15 דקות. אין צורך לפעול לפיהם — פשוט רכב על הגל איתנו.';

  @override
  String get stayWithIt => 'הישאר עם זה';

  @override
  String get youMadeIt => 'עשית זאת';

  @override
  String get readyWhenYouAre => 'מוכן כשאתה מוכן';

  @override
  String get rideItAgain => 'רכב שוב';

  @override
  String get start15MinuteTimer => 'התחל טיימר ל-15 דקות';

  @override
  String get rideTheWaveCompletedMessage => 'רכבת על הגל. זו עוצמה אמיתית. 💪';

  @override
  String get myProgress => 'ההתקדמות שלי';

  @override
  String get weekLabel => 'שבוע';

  @override
  String get monthLabel => 'חודש';

  @override
  String get allLabel => 'הכל';

  @override
  String get daysSoberStatLabel => 'ימים\nנקיים';

  @override
  String get savedStatLabel => 'נחסך';

  @override
  String get avoidedStatLabel => 'נמנעו';

  @override
  String get moodTrends => 'מגמות מצב רוח';

  @override
  String get cravingsPattern => 'דפוסי דחפים';

  @override
  String get unlockLabel => 'פתיחה';

  @override
  String get unlockFullStats => 'פתיחת נתונים מלאים';

  @override
  String get premiumStatsMessage =>
      'מגמות מצב רוח ודפוסי דחפים הן תכונות פרימיום.';

  @override
  String get healthMilestonesWillAppear =>
      'אבני הדרך הבריאותיות שלך יופיעו כאן.';

  @override
  String get healthMilestones => 'אבני דרך בריאותיות';

  @override
  String dayNumber(int day) {
    return 'יום $day';
  }

  @override
  String get soberLabel => 'נקי';

  @override
  String get slipLabel => 'מעידה';

  @override
  String get noDataLabel => 'אין נתונים';

  @override
  String get milestone24Hours => '24 שעות';

  @override
  String get milestoneOneWeek => 'שבוע אחד';

  @override
  String get milestoneOneMonth => 'חודש אחד';

  @override
  String get milestoneThreeMonths => 'שלושה חודשים';

  @override
  String get milestoneSixMonths => 'שישה חודשים';

  @override
  String get milestoneOneYear => 'שנה אחת';

  @override
  String milestoneDayCount(int day) {
    return 'אבן דרך ליום $day';
  }

  @override
  String get maybeLaterLabel => 'אולי מאוחר יותר';

  @override
  String get cancelLabel => 'ביטול';
}
