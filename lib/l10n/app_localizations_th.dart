// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get skip => 'ข้าม';

  @override
  String get continueButton => 'ดำเนินการต่อ';

  @override
  String get getStarted => 'เริ่มต้น';

  @override
  String get onboardingTitle1 => 'ควบคุมชีวิตของคุณ';

  @override
  String get onboardingSubtitle1 =>
      'ติดตามเส้นทางของคุณ เฉลิมฉลองทุกความสำเร็จ และมีสุขภาพที่ดีขึ้นทีละวัน';

  @override
  String get onboardingTitle2 => 'เพื่อนคู่ใจ AI เพื่อการฟื้นฟูของคุณ';

  @override
  String get onboardingSubtitle2 =>
      'รับคำแนะนำเฉพาะบุคคล นิสัยที่ดีต่อสุขภาพ การแจ้งเตือนสร้างแรงจูงใจ และรายงานความก้าวหน้าที่ออกแบบมาเพื่อเส้นทางของคุณ';

  @override
  String get goodMorning => 'สวัสดีตอนเช้า';

  @override
  String get goodAfternoon => 'สวัสดีตอนบ่าย';

  @override
  String get goodEvening => 'สวัสดีตอนเย็น';

  @override
  String get goodNight => 'ราตรีสวัสดิ์';

  @override
  String get embracingClarity => 'ก้าวสู่ความชัดเจนทีละวัน';

  @override
  String get streakLabel => 'ต่อเนื่อง';

  @override
  String get goalLabel => 'เป้าหมาย';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วัน',
      one: '$count วัน',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'แผน Premium';

  @override
  String get premiumPlanSubtitle => 'ปลดล็อกประสบการณ์การฟื้นฟูอย่างเต็มรูปแบบ';

  @override
  String get accountAndSupport => 'บัญชีและการสนับสนุน';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get privacyPolicySubtitle =>
      'จัดการการแชร์ข้อมูลและความปลอดภัยของบัญชี';

  @override
  String get termsOfService => 'ข้อกำหนดการใช้บริการ';

  @override
  String get termsOfServiceSubtitle =>
      'คำถามที่พบบ่อย ติดต่อเรา และแหล่งข้อมูล';

  @override
  String get shareApp => 'แชร์แอป';

  @override
  String get shareAppSubtitle => 'แชร์แอปกับเพื่อนของคุณ';

  @override
  String get resetData => 'รีเซ็ตข้อมูล';

  @override
  String get resetDataSubtitle => 'ลบทุกอย่างที่บันทึกไว้ในอุปกรณ์นี้';

  @override
  String get resetAllDataTitle => 'รีเซ็ตข้อมูลทั้งหมดหรือไม่?';

  @override
  String get resetAllDataMessage =>
      'การดำเนินการนี้จะลบทุกอย่างที่บันทึกไว้ในอุปกรณ์นี้ ทั้งโปรไฟล์ รายการบันทึก และความก้าวหน้า และไม่สามารถยกเลิกได้';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get reset => 'รีเซ็ต';

  @override
  String get chooseFromGallery => 'เลือกจากแกลเลอรี';

  @override
  String get takePhoto => 'ถ่ายรูป';

  @override
  String get removePhoto => 'ลบรูป';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ไม่สามารถอัปเดตรูปได้: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ไม่สามารถลบรูปได้: $error';
  }

  @override
  String get photoTooLarge =>
      'รูปนี้มีขนาดใหญ่เกินไปแม้หลังจากบีบอัดแล้ว โปรดลองใช้รูปอื่น';

  @override
  String get unableToLoadProfile => 'ไม่สามารถโหลดโปรไฟล์ของคุณได้';

  @override
  String get pleaseTryAgain => 'โปรดลองอีกครั้ง';

  @override
  String get tryAgain => 'ลองอีกครั้ง';

  @override
  String get profileNotFound => 'ไม่พบโปรไฟล์';

  @override
  String get refresh => 'รีเฟรช';

  @override
  String get noProfileDataFound => 'ยังไม่พบข้อมูลโปรไฟล์ในอุปกรณ์นี้';

  @override
  String couldNotResetData(String error) {
    return 'ไม่สามารถรีเซ็ตข้อมูลได้: $error';
  }

  @override
  String get navHome => 'หน้าหลัก';

  @override
  String get navStats => 'สถิติ';

  @override
  String get navJournal => 'บันทึก';

  @override
  String get navBadges => 'เหรียญรางวัล';

  @override
  String get navProfile => 'โปรไฟล์';

  @override
  String featureComingSoon(String feature) {
    return '$feature จะพร้อมใช้งานเร็ว ๆ นี้';
  }

  @override
  String get appWordmark => 'สุขภาพดี';

  @override
  String get appTitle => 'เลิกดื่ม';

  @override
  String get splashSubtitle => 'ก้าวแรกสู่ชีวิตที่\nปราศจากแอลกอฮอล์';

  @override
  String get preparingJourney => 'กำลังเตรียม\nเส้นทางของคุณ';

  @override
  String get taskMorningMeditation => 'สมาธิยามเช้า (10 นาที)';

  @override
  String get taskReadChapter => 'อ่านบทที่ 4 ของ \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'บันทึกความขอบคุณยามเย็น';

  @override
  String get close => 'ปิด';

  @override
  String get youAreDoingGreat => 'คุณทำได้ยอดเยี่ยมมาก!';

  @override
  String get shareMilestone => 'แชร์ความสำเร็จ';

  @override
  String shareMilestoneMessage(int days) {
    return 'วันนี้ฉันอยู่ในวันที่ $days ของเส้นทางการฟื้นฟู! 💪';
  }

  @override
  String get shareMilestoneSubject => 'ความสำเร็จบนเส้นทางการฟื้นฟูของฉัน';

  @override
  String get weeklyReportReadyTitle => 'รายงานประจำสัปดาห์ของคุณพร้อมแล้ว';

  @override
  String get weeklyReportReadySubtitle =>
      'แตะเพื่อดูว่าสัปดาห์ของคุณเป็นอย่างไรบ้าง';

  @override
  String get howAreYouFeeling => 'คุณรู้สึกอย่างไร?';

  @override
  String get moodTough => 'ยากลำบาก';

  @override
  String get moodOkay => 'โอเค';

  @override
  String get moodGood => 'ดี';

  @override
  String get moneySaved => 'เงินที่ประหยัดได้';

  @override
  String get caloriesSaved => 'แคลอรีที่ประหยัดได้';

  @override
  String get healthScore => 'คะแนนสุขภาพ';

  @override
  String get drinksAvoided => 'เครื่องดื่มที่หลีกเลี่ยงได้';

  @override
  String get estimated => 'โดยประมาณ';

  @override
  String get aiGenerated => 'สร้างโดย AI';

  @override
  String get daysCapsLabel => 'วัน';

  @override
  String get todaysMotivation => 'แรงบันดาลใจวันนี้';

  @override
  String get defaultMotivationQuote =>
      'คุณรักษาคำมั่นสัญญาของตัวเองได้สำเร็จ เดินหน้าต่อไปบนคลื่นแห่งการเปลี่ยนแปลงเชิงบวก';

  @override
  String get talkToCoach => 'คุยกับโค้ช';

  @override
  String get havingACraving => 'ฉันกำลังอยากดื่ม';

  @override
  String get unlockWeeklyReportsTitle => 'ปลดล็อกรายงานประจำสัปดาห์';

  @override
  String get unlockWeeklyReportsMessage =>
      'ดูวันที่ปราศจากแอลกอฮอล์ แนวโน้มอารมณ์ และคำแนะนำจาก AI เฉพาะบุคคลทุกสัปดาห์ อัปเกรดเป็น Premium เพื่อปลดล็อก';

  @override
  String get maybeLater => 'ไว้ทีหลัง';

  @override
  String get upgrade => 'อัปเกรด';

  @override
  String get weeklyReportTitle => 'รายงานประจำสัปดาห์';

  @override
  String get weeklyReportsPremiumTitle =>
      'รายงานประจำสัปดาห์เป็นฟีเจอร์ Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'ดูวันที่ปราศจากแอลกอฮอล์ แนวโน้มอารมณ์ ความอยากดื่ม และคำแนะนำจาก AI เฉพาะบุคคลทุกสัปดาห์';

  @override
  String get upgradeToPremium => 'อัปเกรดเป็น Premium';

  @override
  String get couldNotGenerateReport => 'ไม่สามารถสร้างรายงานของคุณได้ในขณะนี้';

  @override
  String get tryAgainLower => 'ลองอีกครั้ง';

  @override
  String get statSoberDays => 'วันที่ไม่ดื่ม';

  @override
  String get statAvgMood => 'อารมณ์เฉลี่ย';

  @override
  String get statCravings => 'ความอยากดื่ม';

  @override
  String get statMoneySaved => 'เงินที่ประหยัดได้';

  @override
  String get coachFeedback => 'คำแนะนำจากโค้ช';

  @override
  String get journalInsights => 'ข้อมูลเชิงลึกจากบันทึก';

  @override
  String get next => 'ถัดไป';

  @override
  String get question1Title => 'เป้าหมายของคุณคืออะไร';

  @override
  String get question1Subtitle => 'เลือกเป้าหมายที่สำคัญ\nที่สุดสำหรับคุณ';

  @override
  String get goalQuitCompletely => 'เลิกดื่มโดยสิ้นเชิง';

  @override
  String get goalReduceDrinking => 'ลดการดื่ม';

  @override
  String get goalTakeABreak => 'พักจากการดื่ม';

  @override
  String get goalBuildHealthierHabits => 'สร้างนิสัยที่ดีต่อสุขภาพ';

  @override
  String get question3Title => 'เล่าให้เราฟังเกี่ยวกับ\nกิจวัตรของคุณ';

  @override
  String get drinksPerWeek => 'จำนวนเครื่องดื่มต่อสัปดาห์';

  @override
  String get moneySpentPerWeek => 'เงินที่ใช้ต่อสัปดาห์';

  @override
  String get drinkingLevel => 'ระดับการดื่ม';

  @override
  String get triggersLabel => 'สิ่งกระตุ้น';

  @override
  String get levelSocial => 'เข้าสังคม';

  @override
  String get levelRegular => 'เป็นประจำ';

  @override
  String get levelHeavy => 'หนัก';

  @override
  String get levelDependent => 'พึ่งพา';

  @override
  String get triggerStress => 'ความเครียด';

  @override
  String get triggerLoneliness => 'ความเหงา';

  @override
  String get triggerHabit => 'ความเคยชิน';

  @override
  String get triggerSadness => 'ความเศร้า';

  @override
  String get triggerAnger => 'ความโกรธ';

  @override
  String get triggerBoredom => 'ความเบื่อ';

  @override
  String get triggerSocialPressure => 'แรงกดดันทางสังคม';

  @override
  String get triggerCelebration => 'การเฉลิมฉลอง';

  @override
  String get triggerSleepProblems => 'ปัญหาการนอนหลับ';

  @override
  String get triggerWorkPressure => 'แรงกดดันจากงาน';

  @override
  String get question4Title => 'ทำไมคุณถึงอยากเปลี่ยนแปลง?';

  @override
  String get question4Subtitle => 'เหตุผลของคุณจะช่วยสร้างแรงจูงใจให้คุณ';

  @override
  String get reasonImproveHealth => 'ปรับปรุงสุขภาพ';

  @override
  String get reasonSaveMoney => 'ประหยัดเงิน';

  @override
  String get reasonFamily => 'ครอบครัว';

  @override
  String get reasonBetterSleep => 'นอนหลับได้ดีขึ้น';

  @override
  String get reasonMentalClarity => 'ความปลอดโปร่งทางจิตใจ';

  @override
  String get reasonFitness => 'สมรรถภาพร่างกาย';

  @override
  String get reasonSelfRespect => 'เคารพตัวเอง';

  @override
  String get reasonCareer => 'อาชีพ';

  @override
  String get milestoneUnlockedLabel => 'ปลดล็อกความสำเร็จแล้ว';

  @override
  String incredibleNamePrefix(String name) {
    return 'ยอดเยี่ยมมาก $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'ประหยัดได้ $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'หลีกเลี่ยงได้ $count';
  }

  @override
  String get shareMyMilestone => 'แชร์ความสำเร็จของฉัน';

  @override
  String get milestoneImageShareError =>
      'ไม่สามารถสร้างรูปภาพความสำเร็จได้ โปรดลองอีกครั้ง';

  @override
  String get dailyCheckInTitle => 'เช็กอินประจำวัน';

  @override
  String get howAreYouFeelingToday => 'วันนี้คุณรู้สึกอย่างไร?';

  @override
  String get honestAnswerHelp =>
      'คำตอบที่จริงใจของคุณช่วยให้เราสนับสนุนคุณได้ดียิ่งขึ้น';

  @override
  String get didYouDrinkToday => 'วันนี้คุณดื่มหรือไม่?';

  @override
  String get noLabel => 'ไม่';

  @override
  String get yesLabel => 'ใช่';

  @override
  String get cravingLevelNow => 'ตอนนี้คุณอยากดื่มมากแค่ไหน?';

  @override
  String get anythingOnMind => 'มีอะไรอยู่ในใจของคุณไหม?';

  @override
  String get optionalLabel => '(ไม่บังคับ)';

  @override
  String get dailyNoteHint => 'เขียนเกี่ยวกับวันนี้ สิ่งกระตุ้น ความสำเร็จ...';

  @override
  String get alreadyCheckedInToday => 'คุณเช็กอินวันนี้แล้ว';

  @override
  String get saveCheckIn => 'บันทึกเช็กอิน';

  @override
  String get checkInsHelpTrack =>
      'การเช็กอินช่วยติดตามความก้าวหน้าของคุณในระยะยาว';

  @override
  String get alreadyCompletedTodayCheckIn => 'คุณทำเช็กอินวันนี้เสร็จแล้ว';

  @override
  String get pleaseAnswerBothQuestions => 'โปรดตอบคำถามทั้งสองข้อด้านบนก่อน';

  @override
  String get checkInSaved => 'บันทึกเช็กอินแล้ว';

  @override
  String get cravingNone => 'ไม่มี';

  @override
  String get cravingLow => 'ต่ำ';

  @override
  String get cravingMedium => 'ปานกลาง';

  @override
  String get cravingStrong => 'มาก';

  @override
  String get moodBad => 'แย่';

  @override
  String get moodLow => 'ไม่ค่อยดี';

  @override
  String get moodGreat => 'ดีมาก';

  @override
  String get sosSupportTitle => 'ความช่วยเหลือ SOS';

  @override
  String notAloneMessage(String name) {
    return 'คุณไม่ได้อยู่คนเดียว $name';
  }

  @override
  String get cravingsPassMessage =>
      'ความอยากดื่มจะผ่านไป เลือกสิ่งใดสิ่งหนึ่งด้านล่างเพื่อช่วยให้คุณผ่านช่วงเวลานี้';

  @override
  String get breathingExercise => 'แบบฝึกหัดการหายใจ';

  @override
  String get breathingExerciseSubtitle =>
      'เทคนิค 4-7-8 พร้อมคำแนะนำ ใช้เวลา 2 นาที';

  @override
  String get rideTheWave => 'โต้คลื่นความอยาก';

  @override
  String get rideTheWaveSubtitle =>
      'จับเวลา 15 นาที — ความอยากดื่มจะผ่านไปเสมอ';

  @override
  String get copingTips => 'เคล็ดลับรับมือ';

  @override
  String get copingTipsSubtitle => 'กลยุทธ์เฉพาะบุคคลสำหรับสิ่งกระตุ้นของคุณ';

  @override
  String get talkToAiCoach => 'คุยกับโค้ช AI';

  @override
  String get talkToAiCoachSubtitle => 'แชตกับเพื่อนคู่ใจในการฟื้นฟูของคุณ';

  @override
  String get callSomeone => 'โทรหาใครสักคน';

  @override
  String get callSomeoneSubtitle => 'ติดต่อผู้ติดต่อที่คุณไว้วางใจ';

  @override
  String get contactsPermissionNeeded =>
      'จำเป็นต้องอนุญาตให้เข้าถึงรายชื่อผู้ติดต่อเพื่อโทรหาผู้ติดต่อ';

  @override
  String get beatenCravingsPrefix => 'คุณเอาชนะความอยากดื่มมาแล้ว ';

  @override
  String beatenCravingsCount(int count) {
    return '$count ครั้ง';
  }

  @override
  String get beatenCravingsSuffix => ' คุณทำได้อีกครั้ง';

  @override
  String get tellUsAboutYourself => 'บอกเราเกี่ยวกับตัวคุณ';

  @override
  String get detailsSubtitle =>
      'ข้อมูลนี้ช่วยให้เราปรับเส้นทางการฟื้นฟูของคุณให้เหมาะกับคุณและให้ข้อมูลเชิงลึกที่แม่นยำ';

  @override
  String get nameLabel => 'ชื่อ';

  @override
  String get nameHint => 'เช่น Alex Rivers';

  @override
  String get ageLabel => 'อายุ';

  @override
  String get ageHint => 'เช่น 32';

  @override
  String get sexAssignedAtBirth => 'เพศที่กำหนดเมื่อแรกเกิด';

  @override
  String get sexFemale => 'หญิง';

  @override
  String get sexMale => 'ชาย';

  @override
  String get heightLabel => 'ส่วนสูง';

  @override
  String get weightLabel => 'น้ำหนัก';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'ถึงขีดจำกัดรายวันแล้ว';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'คุณใช้ข้อความฟรีครบ $limit ข้อความสำหรับวันนี้แล้ว อัปเกรดเป็น Premium เพื่อแชตกับโค้ชได้ไม่จำกัด';
  }

  @override
  String get coachConnectError =>
      'ไม่สามารถเชื่อมต่อได้ในขณะนี้ โปรดลองอีกครั้งในอีกสักครู่';

  @override
  String get clearConversationTitle => 'ล้างการสนทนาหรือไม่?';

  @override
  String get clearConversationMessage =>
      'การดำเนินการนี้จะลบประวัติการแชตกับโค้ชของคุณอย่างถาวร';

  @override
  String get clearLabel => 'ล้าง';

  @override
  String get recoveryCoachTitle => 'โค้ชการฟื้นฟู';

  @override
  String get onlineLabel => 'ออนไลน์';

  @override
  String get clearConversationMenuItem => 'ล้างการสนทนา';

  @override
  String chatGreeting(String name) {
    return 'สวัสดี $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'คุณอยู่ในวันที่ $days ของเส้นทางของคุณ ฉันอยู่ที่นี่เสมอเมื่อคุณต้องการพูดคุย';
  }

  @override
  String get quickPromptsLabel => 'หัวข้อด่วน';

  @override
  String get promptCravingLabel => 'กำลังอยากดื่ม';

  @override
  String get promptCravingSubtitle => 'ตั้งสติอย่างรวดเร็ว';

  @override
  String get promptMotivationLabel => 'ต้องการแรงจูงใจ';

  @override
  String get promptMotivationSubtitle => 'กำลังใจเมื่อช่วงเวลานั้นยาก';

  @override
  String get promptSocialLabel => 'สถานการณ์ทางสังคม';

  @override
  String get promptSocialSubtitle => 'รับมือกับงานสังสรรค์';

  @override
  String get promptSlippedLabel => 'ฉันพลาด';

  @override
  String get promptSlippedSubtitle => 'ไม่มีการตัดสิน มีเพียงการสนับสนุน';

  @override
  String get typeMessageHint => 'พิมพ์ข้อความ...';

  @override
  String get editProfileTitle => 'แก้ไขโปรไฟล์';

  @override
  String couldNotSaveProfile(String error) {
    return 'ไม่สามารถบันทึกโปรไฟล์ได้: $error';
  }

  @override
  String get heightCmLabel => 'ส่วนสูง (ซม.)';

  @override
  String get weightKgLabel => 'น้ำหนัก (กก.)';

  @override
  String get saveChangesLabel => 'บันทึกการเปลี่ยนแปลง';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'ข้อมูลเชิงลึกและการวิเคราะห์ขั้นสูง';

  @override
  String get featureUnlimitedJournal => 'บันทึกไดอารี่ไม่จำกัด';

  @override
  String get featureUnlimitedChat => 'แชตกับโค้ช AI ไม่จำกัด';

  @override
  String get featureCommunityGroups => 'กลุ่มชุมชนพิเศษ';

  @override
  String get featurePrioritySupport => 'การสนับสนุนจากผู้เชี่ยวชาญแบบเร่งด่วน';

  @override
  String get featureThemePacks => 'ชุดธีมที่กำหนดเอง';

  @override
  String get featureDataExport => 'ส่งออกข้อมูล';

  @override
  String get featureAdFree => 'ประสบการณ์ไร้โฆษณา';

  @override
  String get premiumMemberTitle => 'คุณเป็นสมาชิก Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'ปลดล็อกประสบการณ์\nการฟื้นฟูอย่างเต็มรูปแบบ';

  @override
  String get premiumMemberSubtitle =>
      'ขอบคุณที่สนับสนุนเส้นทางการฟื้นฟูของคุณ — ฟีเจอร์ Premium ทั้งหมดด้านล่างปลดล็อกแล้ว';

  @override
  String get premiumJoinSubtitle =>
      'เข้าร่วมชุมชนของผู้คนหลายพันคนที่กำลัง\nเร่งเส้นทางการเยียวยาด้วยเครื่องมือ Premium\nและการสนับสนุนเฉพาะบุคคลของเรา';

  @override
  String get monthlyPlanLabel => 'รายเดือน';

  @override
  String get perMonthSuffix => '/เดือน';

  @override
  String get cancelAnytimeLabel => 'ยกเลิกได้ทุกเมื่อ';

  @override
  String get yearlyPlanLabel => 'รายปี';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'เรียกเก็บเงินรายปี $amount';
  }

  @override
  String get bestValueLabel => 'คุ้มค่าที่สุด';

  @override
  String get alreadyPremiumLabel => 'คุณเป็น Premium แล้ว ✓';

  @override
  String get startPremiumLabel => 'เริ่ม Premium';

  @override
  String get manageSubscriptionLabel =>
      'จัดการหรือยกเลิกผ่านการตั้งค่าการสมัครสมาชิกของอุปกรณ์';

  @override
  String get noCommitmentLabel => 'ไม่มีข้อผูกมัด ยกเลิกได้ทุกเมื่อ';

  @override
  String get continueFreePlanLabel => 'ใช้แผนฟรีต่อ';

  @override
  String get backToHomeLabel => 'กลับหน้าหลัก';

  @override
  String get cancelPremiumLabel => 'ยกเลิก Premium';

  @override
  String get cancelPremiumTitle => 'ยกเลิก Premium หรือไม่?';

  @override
  String get cancelPremiumMessage =>
      'คุณจะสูญเสียสิทธิ์เข้าถึงบันทึกไดอารี่ไม่จำกัด แชตกับโค้ชไม่จำกัด ข้อมูลเชิงลึกจากสถิติ และรายงานประจำสัปดาห์ คุณสามารถสมัครสมาชิกใหม่ได้ทุกเมื่อ';

  @override
  String get keepPremiumLabel => 'ใช้ Premium ต่อ';

  @override
  String get nowPremiumMessage =>
      'ตอนนี้คุณเป็น Premium แล้ว! เพลิดเพลินกับประสบการณ์การฟื้นฟูอย่างเต็มรูปแบบ';

  @override
  String get premiumCancelledMessage =>
      'ยกเลิก Premium แล้ว คุณกลับมาใช้แผนฟรี';

  @override
  String get termsOfUseLabel => 'ข้อกำหนดการใช้งาน';

  @override
  String get navHomeLabel => 'หน้าหลัก';

  @override
  String get navStatsLabel => 'สถิติ';

  @override
  String get navJournalLabel => 'บันทึก';

  @override
  String get navBadgesLabel => 'เหรียญรางวัล';

  @override
  String get navProfileLabel => 'โปรไฟล์';

  @override
  String get recoveryGoalsTitle => 'เป้าหมายการฟื้นฟู';

  @override
  String get drinksPerWeekLabel => 'เครื่องดื่มต่อสัปดาห์';

  @override
  String get quitReasonsLabel => 'เหตุผลที่เลิกดื่ม';

  @override
  String get quitReasonsHelperText => 'แยกหลายเหตุผลด้วยเครื่องหมายจุลภาค';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'ไม่สามารถบันทึกเป้าหมายการฟื้นฟูได้: $error';
  }

  @override
  String get goalHint => 'เช่น งดดื่มโดยสิ้นเชิง';

  @override
  String get drinksPerWeekHint => 'เช่น 12';

  @override
  String get quitReasonsHint => 'เช่น สุขภาพ, ครอบครัว, เงิน';

  @override
  String get todaysPrompt => 'คำถามวันนี้';

  @override
  String get defaultJournalPrompt => 'วันนี้คุณกำลังคิดอะไรอยู่?';

  @override
  String get aiJournalInsights => 'ข้อมูลเชิงลึกจาก AI';

  @override
  String get unlockJournalInsightsMessage =>
      'ปลดล็อกรูปแบบรายสัปดาห์ แนวโน้มอารมณ์ และข้อมูลเชิงลึกเฉพาะบุคคลจากบันทึกของคุณ';

  @override
  String get notEnoughJournalData =>
      'ยังมีข้อมูลไม่เพียงพอ — เขียนบันทึกสักสองสามรายการในสัปดาห์นี้แล้วกลับมาดูอีกครั้ง';

  @override
  String get openEntry => 'เปิด';

  @override
  String get editEntry => 'แก้ไข';

  @override
  String get deleteEntry => 'ลบ';

  @override
  String get searchJournalEntries => 'ค้นหาบันทึก...';

  @override
  String get writeNewEntry => 'เขียนบันทึกใหม่';

  @override
  String get recentEntries => 'บันทึกล่าสุด';

  @override
  String get noJournalEntriesYet =>
      'ยังไม่มีบันทึก — เขียนการสะท้อนความคิดครั้งแรกของคุณด้านบน';

  @override
  String get noEntriesMatchFilters => 'ไม่มีบันทึกที่ตรงกับตัวกรองของคุณ';

  @override
  String get weeklyJournalLimitReached => 'ถึงขีดจำกัดรายสัปดาห์แล้ว';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'คุณใช้บันทึกฟรีครบ $limit รายการสำหรับสัปดาห์นี้แล้ว อัปเกรดเป็น Premium เพื่อเขียนบันทึกได้ไม่จำกัด';
  }

  @override
  String get newEntry => 'บันทึกใหม่';

  @override
  String get writeYourThoughts => 'เขียนความคิดของคุณ';

  @override
  String get saveEntry => 'บันทึก';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'เหลือบันทึกฟรี $remaining จาก $limit รายการในสัปดาห์นี้';
  }

  @override
  String get deleteEntryQuestion => 'ลบบันทึกหรือไม่?';

  @override
  String get deleteEntryConfirmation =>
      'บันทึกนี้จะถูกลบอย่างถาวรและไม่สามารถยกเลิกได้';

  @override
  String get journalEntryNotFound => 'ไม่พบบันทึก';

  @override
  String get journalEntryMayHaveBeenDeleted => 'บันทึกนี้อาจถูกลบไปแล้ว';

  @override
  String get goBack => 'ย้อนกลับ';

  @override
  String get journalEntryTitle => 'บันทึก';

  @override
  String get moodStruggling => 'กำลังลำบาก';

  @override
  String get moodUnwell => 'ไม่สบายใจ';

  @override
  String get moodNeutral => 'เป็นกลาง';

  @override
  String get whatHappenedToday => 'วันนี้เกิดอะไรขึ้น?';

  @override
  String get trigger => 'สิ่งกระตุ้น';

  @override
  String get whatHelped => 'อะไรช่วยได้บ้าง';

  @override
  String get whatIllTryNextTime => 'ครั้งหน้าฉันจะลองอะไร';

  @override
  String get journalPrivacyMessage =>
      'การสะท้อนความคิดของคุณเป็นส่วนตัวและบันทึกไว้ในไดอารี่';

  @override
  String get unlocked => 'ปลดล็อกแล้ว';

  @override
  String daysLeft(int count) {
    return 'เหลืออีก $count วัน';
  }

  @override
  String daysCount(int count) {
    return '$count วัน';
  }

  @override
  String get firstReflection => 'การสะท้อน\nความคิดครั้งแรก';

  @override
  String get oneJournalEntry => 'บันทึก 1 รายการ';

  @override
  String get openBook => 'เปิดหนังสือ';

  @override
  String get tenJournalEntries => 'บันทึก 10 รายการ';

  @override
  String get dedicatedWriter => 'นักเขียน\nผู้มุ่งมั่น';

  @override
  String get thirtyJournalEntries => 'บันทึก 30 รายการ';

  @override
  String get firstConversation => 'การสนทนา\nครั้งแรก';

  @override
  String get oneAiCoachChat => 'แชตกับโค้ช AI 1 ครั้ง';

  @override
  String get keepTalking => 'พูดคุยต่อไป';

  @override
  String get fiveConversations => 'สนทนา 5 ครั้ง';

  @override
  String get coachCompanion => 'เพื่อนคู่ใจ\nของโค้ช';

  @override
  String get twentyConversations => 'สนทนา 20 ครั้ง';

  @override
  String get checkInHabit => 'นิสัย\nการเช็กอิน';

  @override
  String get sevenCheckIns => 'เช็กอิน 7 ครั้ง';

  @override
  String get consistencyPro => 'มืออาชีพด้าน\nความสม่ำเสมอ';

  @override
  String get thirtyCheckIns => 'เช็กอิน 30 ครั้ง';

  @override
  String get dedicatedJourney => 'เส้นทาง\nผู้มุ่งมั่น';

  @override
  String get hundredCheckIns => 'เช็กอิน 100 ครั้ง';

  @override
  String get goalGetter => 'ผู้พิชิตเป้าหมาย';

  @override
  String get threeGoalsCompleted => 'บรรลุ 3 เป้าหมาย';

  @override
  String get goalAchiever => 'ผู้บรรลุ\nเป้าหมาย';

  @override
  String get tenGoalsCompleted => 'บรรลุ 10 เป้าหมาย';

  @override
  String get firstSavings => 'การออม\nครั้งแรก';

  @override
  String get fiveHundredSaved => 'ประหยัดได้ \$500';

  @override
  String get smartSaver => 'นักออมอัจฉริยะ';

  @override
  String get oneThousandSaved => 'ประหยัดได้ \$1,000';

  @override
  String get bigSaver => 'นักออมตัวยง';

  @override
  String get fiveThousandSaved => 'ประหยัดได้ \$5,000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current จาก \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current จาก $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'เดินหน้าต่อไป — ความสำเร็จแรกของคุณกำลังรออยู่!';

  @override
  String get badgesAndMilestones => 'เหรียญรางวัลและความสำเร็จ';

  @override
  String get yourMilestoneJourney => 'เส้นทางความสำเร็จของคุณ';

  @override
  String milestonesAchieved(int count) {
    return 'บรรลุความสำเร็จ $count รายการแล้ว\nแตะเพื่อดู';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'คุณปลดล็อกความสำเร็จ $unlocked จากทั้งหมด $total รายการบนเส้นทางของคุณ';
  }

  @override
  String get remaining => 'เหลือ';

  @override
  String get complete => 'เสร็จสมบูรณ์';

  @override
  String get nextMilestone => 'ความสำเร็จถัดไป';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · ถึงแล้ว $percent%';
  }

  @override
  String get sobrietyMilestones => 'ความสำเร็จในการไม่ดื่ม';

  @override
  String get journeyBadges => 'เหรียญรางวัลเส้นทาง';

  @override
  String get bronze => 'บรอนซ์';

  @override
  String get silver => 'เงิน';

  @override
  String get gold => 'ทอง';

  @override
  String get platinum => 'แพลทินัม';

  @override
  String get diamond => 'เพชร';

  @override
  String get analyzingYourJourney => 'กำลังวิเคราะห์เส้นทางของคุณ...';

  @override
  String get aiCreatingSanctuary =>
      'AI ของเรากำลังสร้างพื้นที่ปลอดภัยเฉพาะสำหรับคุณ';

  @override
  String get understandingHabits => 'กำลังทำความเข้าใจพฤติกรรม...';

  @override
  String get calculatingBaseline => 'กำลังคำนวณข้อมูลพื้นฐานของคุณ...';

  @override
  String get personalizingPlan => 'กำลังปรับแผนให้เหมาะกับคุณ...';

  @override
  String get finalizingSanctuary =>
      'กำลังเตรียมพื้นที่ปลอดภัยของคุณให้เสร็จสมบูรณ์...';

  @override
  String get creatingYourPlan => 'กำลังสร้างแผนของคุณ...';

  @override
  String get personalizedPlanError =>
      'เราไม่สามารถสร้างแผนเฉพาะบุคคลของคุณได้ โปรดลองอีกครั้ง';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get breathInhale => 'หายใจเข้า';

  @override
  String get breathHold => 'กลั้นหายใจ';

  @override
  String get breathExhale => 'หายใจออก';

  @override
  String get breathDone => 'เสร็จสิ้น';

  @override
  String get breathGreatJob => 'ทำได้ดีมาก!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ครั้งวันนี้',
      one: '$count ครั้งวันนี้',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'จบการฝึก';

  @override
  String get done => 'เสร็จสิ้น';

  @override
  String get noCopingTipsYet => 'ยังไม่มีเคล็ดลับรับมือ';

  @override
  String get copingStrategiesWillAppear =>
      'กลยุทธ์รับมือเฉพาะบุคคลของคุณจะแสดงที่นี่เมื่อแผนการฟื้นฟูสร้างเสร็จแล้ว';

  @override
  String get strategiesTailoredToTriggers =>
      'กลยุทธ์ที่ปรับให้เหมาะกับสิ่งกระตุ้นของคุณ';

  @override
  String get cravingsPeakAndPass => 'ความอยากดื่มถึงจุดสูงสุด\nแล้วผ่านไป';

  @override
  String get rideTheWaveDescription =>
      'ความอยากดื่มส่วนใหญ่จะผ่านไปภายใน 15 นาที คุณไม่จำเป็นต้องทำตามความอยาก แค่ปล่อยให้มันผ่านไปพร้อมกับเรา';

  @override
  String get stayWithIt => 'อดทนต่อไป';

  @override
  String get youMadeIt => 'คุณทำได้แล้ว';

  @override
  String get readyWhenYouAre => 'พร้อมเมื่อคุณพร้อม';

  @override
  String get rideItAgain => 'โต้คลื่นอีกครั้ง';

  @override
  String get start15MinuteTimer => 'เริ่มจับเวลา 15 นาที';

  @override
  String get rideTheWaveCompletedMessage =>
      'คุณโต้คลื่นความอยากผ่านมาได้ นั่นคือความแข็งแกร่งที่แท้จริง 💪';

  @override
  String get myProgress => 'ความก้าวหน้าของฉัน';

  @override
  String get weekLabel => 'สัปดาห์';

  @override
  String get monthLabel => 'เดือน';

  @override
  String get allLabel => 'ทั้งหมด';

  @override
  String get daysSoberStatLabel => 'วันที่\nไม่ดื่ม';

  @override
  String get savedStatLabel => 'ประหยัดได้';

  @override
  String get avoidedStatLabel => 'หลีกเลี่ยงได้';

  @override
  String get moodTrends => 'แนวโน้มอารมณ์';

  @override
  String get cravingsPattern => 'รูปแบบความอยากดื่ม';

  @override
  String get unlockLabel => 'ปลดล็อก';

  @override
  String get unlockFullStats => 'ปลดล็อกสถิติทั้งหมด';

  @override
  String get premiumStatsMessage =>
      'แนวโน้มอารมณ์และรูปแบบความอยากดื่มเป็นฟีเจอร์ Premium อัปเกรดเพื่อดูสถิติทั้งหมดของคุณ';

  @override
  String get healthMilestonesWillAppear =>
      'ความสำเร็จด้านสุขภาพของคุณจะแสดงที่นี่';

  @override
  String get healthMilestones => 'ความสำเร็จด้านสุขภาพ';

  @override
  String dayNumber(int day) {
    return 'วันที่ $day';
  }

  @override
  String get soberLabel => 'ไม่ดื่ม';

  @override
  String get slipLabel => 'พลาด';

  @override
  String get noDataLabel => 'ไม่มีข้อมูล';

  @override
  String get milestone24Hours => '24 ชั่วโมง';

  @override
  String get milestoneOneWeek => 'หนึ่งสัปดาห์';

  @override
  String get milestoneOneMonth => 'หนึ่งเดือน';

  @override
  String get milestoneThreeMonths => 'สามเดือน';

  @override
  String get milestoneSixMonths => 'หกเดือน';

  @override
  String get milestoneOneYear => 'หนึ่งปี';

  @override
  String milestoneDayCount(int day) {
    return 'ความสำเร็จวันที่ $day';
  }

  @override
  String get maybeLaterLabel => 'อาจจะทีหลัง';

  @override
  String get cancelLabel => 'ยกเลิก';
}
