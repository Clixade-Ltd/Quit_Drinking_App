// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get skip => 'Bỏ qua';

  @override
  String get continueButton => 'Tiếp tục';

  @override
  String get getStarted => 'Bắt đầu';

  @override
  String get onboardingTitle1 => 'Làm chủ cuộc sống của bạn';

  @override
  String get onboardingSubtitle1 =>
      'Theo dõi hành trình, ăn mừng mọi thành tựu và trở nên khỏe mạnh hơn từng ngày.';

  @override
  String get onboardingTitle2 =>
      'Người bạn đồng hành AI trong hành trình phục hồi';

  @override
  String get onboardingSubtitle2 =>
      'Nhận hướng dẫn cá nhân hóa, thói quen lành mạnh, lời nhắc tạo động lực và báo cáo tiến trình được thiết kế cho hành trình của bạn.';

  @override
  String get goodMorning => 'Chào buổi sáng';

  @override
  String get goodAfternoon => 'Chào buổi chiều';

  @override
  String get goodEvening => 'Chào buổi tối';

  @override
  String get goodNight => 'Chúc ngủ ngon';

  @override
  String get embracingClarity => 'Đón nhận sự sáng suốt, từng ngày một.';

  @override
  String get streakLabel => 'CHUỖI NGÀY';

  @override
  String get goalLabel => 'Mục tiêu';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ngày',
      one: '$count ngày',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Gói Premium';

  @override
  String get premiumPlanSubtitle => 'Mở khóa toàn bộ trải nghiệm phục hồi';

  @override
  String get accountAndSupport => 'TÀI KHOẢN & HỖ TRỢ';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get privacyPolicySubtitle =>
      'Quản lý chia sẻ dữ liệu và bảo mật tài khoản';

  @override
  String get termsOfService => 'Điều khoản dịch vụ';

  @override
  String get termsOfServiceSubtitle =>
      'Câu hỏi thường gặp, liên hệ và tài nguyên';

  @override
  String get shareApp => 'Chia sẻ ứng dụng';

  @override
  String get shareAppSubtitle => 'Chia sẻ ứng dụng với bạn bè';

  @override
  String get resetData => 'Đặt lại dữ liệu';

  @override
  String get resetDataSubtitle => 'Xóa mọi thứ đã lưu trên thiết bị này';

  @override
  String get resetAllDataTitle => 'Đặt lại tất cả dữ liệu?';

  @override
  String get resetAllDataMessage =>
      'Thao tác này sẽ xóa mọi thứ được lưu trên thiết bị — hồ sơ, nhật ký và tiến trình — và không thể hoàn tác.';

  @override
  String get cancel => 'Hủy';

  @override
  String get reset => 'Đặt lại';

  @override
  String get chooseFromGallery => 'Chọn từ thư viện';

  @override
  String get takePhoto => 'Chụp ảnh';

  @override
  String get removePhoto => 'Xóa ảnh';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Không thể cập nhật ảnh: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Không thể xóa ảnh: $error';
  }

  @override
  String get photoTooLarge =>
      'Ảnh quá lớn ngay cả sau khi nén — vui lòng thử ảnh khác.';

  @override
  String get unableToLoadProfile => 'Không thể tải hồ sơ của bạn';

  @override
  String get pleaseTryAgain => 'Vui lòng thử lại.';

  @override
  String get tryAgain => 'Thử lại';

  @override
  String get profileNotFound => 'Không tìm thấy hồ sơ';

  @override
  String get refresh => 'Làm mới';

  @override
  String get noProfileDataFound =>
      'Chưa tìm thấy dữ liệu hồ sơ trên thiết bị này.';

  @override
  String couldNotResetData(String error) {
    return 'Không thể đặt lại dữ liệu: $error';
  }

  @override
  String get navHome => 'Trang chủ';

  @override
  String get navStats => 'Thống kê';

  @override
  String get navJournal => 'Nhật ký';

  @override
  String get navBadges => 'Huy hiệu';

  @override
  String get navProfile => 'Hồ sơ';

  @override
  String featureComingSoon(String feature) {
    return '$feature sẽ sớm khả dụng.';
  }

  @override
  String get appWordmark => 'SỨC KHỎE';

  @override
  String get appTitle => 'Cai rượu';

  @override
  String get splashSubtitle =>
      'Bước đầu tiên hướng tới\ncuộc sống không có rượu';

  @override
  String get preparingJourney => 'Đang chuẩn bị\nhành trình của bạn';

  @override
  String get taskMorningMeditation => 'Thiền buổi sáng (10 phút)';

  @override
  String get taskReadChapter => 'Đọc Chương 4 của \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Nhật ký biết ơn buổi tối';

  @override
  String get close => 'Đóng';

  @override
  String get youAreDoingGreat => 'Bạn đang làm rất tốt!';

  @override
  String get shareMilestone => 'Chia sẻ cột mốc';

  @override
  String shareMilestoneMessage(int days) {
    return 'Tôi đang ở ngày thứ $days trong hành trình phục hồi! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Cột mốc phục hồi của tôi';

  @override
  String get weeklyReportReadyTitle => 'Báo cáo hàng tuần của bạn đã sẵn sàng';

  @override
  String get weeklyReportReadySubtitle => 'Nhấn để xem tuần vừa qua của bạn';

  @override
  String get howAreYouFeeling => 'Bạn cảm thấy thế nào?';

  @override
  String get moodTough => 'Khó khăn';

  @override
  String get moodOkay => 'Ổn';

  @override
  String get moodGood => 'Tốt';

  @override
  String get moneySaved => 'Tiền tiết kiệm';

  @override
  String get caloriesSaved => 'Calo tiết kiệm';

  @override
  String get healthScore => 'Điểm sức khỏe';

  @override
  String get drinksAvoided => 'Đồ uống đã tránh';

  @override
  String get estimated => 'Ước tính';

  @override
  String get aiGenerated => 'Được tạo bởi AI';

  @override
  String get daysCapsLabel => 'NGÀY';

  @override
  String get todaysMotivation => 'Động lực hôm nay';

  @override
  String get defaultMotivationQuote =>
      'Bạn đã thành công trong việc giữ vững cam kết của mình. Hãy tiếp tục đón nhận làn sóng thay đổi tích cực.';

  @override
  String get talkToCoach => 'Nói chuyện với huấn luyện viên';

  @override
  String get havingACraving => 'Tôi đang thèm rượu';

  @override
  String get unlockWeeklyReportsTitle => 'Mở khóa báo cáo hàng tuần';

  @override
  String get unlockWeeklyReportsMessage =>
      'Xem số ngày không uống rượu, xu hướng tâm trạng và phản hồi AI cá nhân hóa mỗi tuần. Nâng cấp lên Premium để mở khóa.';

  @override
  String get maybeLater => 'Để sau';

  @override
  String get upgrade => 'Nâng cấp';

  @override
  String get weeklyReportTitle => 'Báo cáo hàng tuần';

  @override
  String get weeklyReportsPremiumTitle =>
      'Báo cáo hàng tuần là tính năng Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Xem số ngày không uống rượu, xu hướng tâm trạng, cơn thèm và phản hồi AI cá nhân hóa mỗi tuần.';

  @override
  String get upgradeToPremium => 'Nâng cấp lên Premium';

  @override
  String get couldNotGenerateReport => 'Không thể tạo báo cáo của bạn lúc này.';

  @override
  String get tryAgainLower => 'Thử lại';

  @override
  String get statSoberDays => 'Ngày không uống rượu';

  @override
  String get statAvgMood => 'Tâm trạng TB';

  @override
  String get statCravings => 'Cơn thèm';

  @override
  String get statMoneySaved => 'Tiền tiết kiệm';

  @override
  String get coachFeedback => 'Phản hồi từ huấn luyện viên';

  @override
  String get journalInsights => 'Thông tin từ nhật ký';

  @override
  String get next => 'Tiếp theo';

  @override
  String get question1Title => 'Mục tiêu của bạn là gì';

  @override
  String get question1Subtitle => 'Chọn mục tiêu quan trọng\nnhất với bạn';

  @override
  String get goalQuitCompletely => 'Bỏ rượu hoàn toàn';

  @override
  String get goalReduceDrinking => 'Giảm uống rượu';

  @override
  String get goalTakeABreak => 'Tạm nghỉ';

  @override
  String get goalBuildHealthierHabits => 'Xây dựng thói quen lành mạnh hơn';

  @override
  String get question3Title => 'Hãy cho chúng tôi biết về\nthói quen của bạn';

  @override
  String get drinksPerWeek => 'Số đồ uống mỗi tuần';

  @override
  String get moneySpentPerWeek => 'Chi tiêu mỗi tuần';

  @override
  String get drinkingLevel => 'Mức độ uống';

  @override
  String get triggersLabel => 'Tác nhân kích hoạt';

  @override
  String get levelSocial => 'Xã giao';

  @override
  String get levelRegular => 'Thường xuyên';

  @override
  String get levelHeavy => 'Nhiều';

  @override
  String get levelDependent => 'Phụ thuộc';

  @override
  String get triggerStress => 'Căng thẳng';

  @override
  String get triggerLoneliness => 'Cô đơn';

  @override
  String get triggerHabit => 'Thói quen';

  @override
  String get triggerSadness => 'Buồn bã';

  @override
  String get triggerAnger => 'Tức giận';

  @override
  String get triggerBoredom => 'Chán nản';

  @override
  String get triggerSocialPressure => 'Áp lực xã hội';

  @override
  String get triggerCelebration => 'Ăn mừng';

  @override
  String get triggerSleepProblems => 'Vấn đề về giấc ngủ';

  @override
  String get triggerWorkPressure => 'Áp lực công việc';

  @override
  String get question4Title => 'Tại sao bạn muốn thay đổi?';

  @override
  String get question4Subtitle => 'Lý do của bạn sẽ giúp duy trì động lực.';

  @override
  String get reasonImproveHealth => 'Cải thiện sức khỏe';

  @override
  String get reasonSaveMoney => 'Tiết kiệm tiền';

  @override
  String get reasonFamily => 'Gia đình';

  @override
  String get reasonBetterSleep => 'Ngủ ngon hơn';

  @override
  String get reasonMentalClarity => 'Tinh thần minh mẫn';

  @override
  String get reasonFitness => 'Thể chất';

  @override
  String get reasonSelfRespect => 'Tôn trọng bản thân';

  @override
  String get reasonCareer => 'Sự nghiệp';

  @override
  String get milestoneUnlockedLabel => 'ĐÃ MỞ KHÓA CỘT MỐC';

  @override
  String incredibleNamePrefix(String name) {
    return 'Tuyệt vời, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'Đã tiết kiệm $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'Đã tránh $count';
  }

  @override
  String get shareMyMilestone => 'Chia sẻ cột mốc của tôi';

  @override
  String get milestoneImageShareError =>
      'Không thể tạo hình ảnh cột mốc. Vui lòng thử lại.';

  @override
  String get dailyCheckInTitle => 'Check-in hàng ngày';

  @override
  String get howAreYouFeelingToday => 'Hôm nay bạn cảm thấy thế nào?';

  @override
  String get honestAnswerHelp =>
      'Câu trả lời chân thật giúp chúng tôi hỗ trợ bạn tốt hơn';

  @override
  String get didYouDrinkToday => 'Hôm nay bạn có uống rượu không?';

  @override
  String get noLabel => 'Không';

  @override
  String get yesLabel => 'Có';

  @override
  String get cravingLevelNow => 'Mức độ thèm rượu ngay lúc này?';

  @override
  String get anythingOnMind => 'Bạn đang suy nghĩ điều gì?';

  @override
  String get optionalLabel => '(không bắt buộc)';

  @override
  String get dailyNoteHint =>
      'Viết về ngày hôm nay, tác nhân kích hoạt, thành công...';

  @override
  String get alreadyCheckedInToday => 'Bạn đã check-in hôm nay';

  @override
  String get saveCheckIn => 'Lưu check-in';

  @override
  String get checkInsHelpTrack =>
      'Check-in giúp theo dõi tiến trình của bạn theo thời gian';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Bạn đã hoàn thành check-in hôm nay.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Vui lòng trả lời cả hai câu hỏi trên trước';

  @override
  String get checkInSaved => 'Đã lưu check-in';

  @override
  String get cravingNone => 'Không có';

  @override
  String get cravingLow => 'Thấp';

  @override
  String get cravingMedium => 'Trung bình';

  @override
  String get cravingStrong => 'Mạnh';

  @override
  String get moodBad => 'Tệ';

  @override
  String get moodLow => 'Không tốt';

  @override
  String get moodGreat => 'Tuyệt vời';

  @override
  String get sosSupportTitle => 'Hỗ trợ SOS';

  @override
  String notAloneMessage(String name) {
    return 'Bạn không cô đơn, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Cơn thèm sẽ qua. Chọn một điều bên dưới để giúp bạn vượt qua khoảnh khắc này.';

  @override
  String get breathingExercise => 'Bài tập thở';

  @override
  String get breathingExerciseSubtitle => 'Kỹ thuật 4-7-8 có hướng dẫn, 2 phút';

  @override
  String get rideTheWave => 'Vượt qua cơn thèm';

  @override
  String get rideTheWaveSubtitle => 'Hẹn giờ 15 phút — cơn thèm luôn qua đi';

  @override
  String get copingTips => 'Mẹo đối phó';

  @override
  String get copingTipsSubtitle =>
      'Chiến lược cá nhân hóa cho các tác nhân của bạn';

  @override
  String get talkToAiCoach => 'Nói chuyện với AI coach';

  @override
  String get talkToAiCoachSubtitle =>
      'Trò chuyện với người đồng hành phục hồi của bạn';

  @override
  String get callSomeone => 'Gọi cho ai đó';

  @override
  String get callSomeoneSubtitle => 'Liên hệ với người đáng tin cậy';

  @override
  String get contactsPermissionNeeded =>
      'Cần quyền truy cập danh bạ để gọi cho một liên hệ.';

  @override
  String get beatenCravingsPrefix => 'Bạn đã vượt qua cơn thèm ';

  @override
  String beatenCravingsCount(int count) {
    return '$count lần';
  }

  @override
  String get beatenCravingsSuffix => ' trước đây. Bạn có thể làm lại.';

  @override
  String get tellUsAboutYourself => 'Hãy cho chúng tôi biết về bạn';

  @override
  String get detailsSubtitle =>
      'Thông tin này giúp chúng tôi cá nhân hóa hành trình phục hồi và cung cấp thông tin chính xác.';

  @override
  String get nameLabel => 'Tên';

  @override
  String get nameHint => 'ví dụ: Alex Rivers';

  @override
  String get ageLabel => 'Tuổi';

  @override
  String get ageHint => 'ví dụ: 32';

  @override
  String get sexAssignedAtBirth => 'Giới tính khi sinh';

  @override
  String get sexFemale => 'Nữ';

  @override
  String get sexMale => 'Nam';

  @override
  String get heightLabel => 'Chiều cao';

  @override
  String get weightLabel => 'Cân nặng';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Đã đạt giới hạn hàng ngày';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Bạn đã sử dụng hết $limit tin nhắn miễn phí hôm nay. Nâng cấp lên Premium để trò chuyện không giới hạn với coach.';
  }

  @override
  String get coachConnectError =>
      'Tôi không thể kết nối lúc này. Vui lòng thử lại sau một lát.';

  @override
  String get clearConversationTitle => 'Xóa cuộc trò chuyện?';

  @override
  String get clearConversationMessage =>
      'Thao tác này sẽ xóa vĩnh viễn lịch sử trò chuyện với coach.';

  @override
  String get clearLabel => 'Xóa';

  @override
  String get recoveryCoachTitle => 'Coach phục hồi';

  @override
  String get onlineLabel => 'Trực tuyến';

  @override
  String get clearConversationMenuItem => 'Xóa cuộc trò chuyện';

  @override
  String chatGreeting(String name) {
    return 'Xin chào $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Bạn đang ở ngày thứ $days trong hành trình của mình. Tôi luôn ở đây khi bạn muốn chia sẻ.';
  }

  @override
  String get quickPromptsLabel => 'GỢI Ý NHANH';

  @override
  String get promptCravingLabel => 'Đang thèm rượu';

  @override
  String get promptCravingSubtitle => 'Lấy lại bình tĩnh nhanh chóng';

  @override
  String get promptMotivationLabel => 'Cần động lực';

  @override
  String get promptMotivationSubtitle => 'Một chút động lực khi khó khăn';

  @override
  String get promptSocialLabel => 'Tình huống xã hội';

  @override
  String get promptSocialSubtitle => 'Xử lý một buổi gặp mặt';

  @override
  String get promptSlippedLabel => 'Tôi đã lỡ uống';

  @override
  String get promptSlippedSubtitle => 'Không phán xét, chỉ hỗ trợ';

  @override
  String get typeMessageHint => 'Nhập tin nhắn...';

  @override
  String get editProfileTitle => 'Chỉnh sửa hồ sơ';

  @override
  String couldNotSaveProfile(String error) {
    return 'Không thể lưu hồ sơ: $error';
  }

  @override
  String get heightCmLabel => 'Chiều cao (cm)';

  @override
  String get weightKgLabel => 'Cân nặng (kg)';

  @override
  String get saveChangesLabel => 'Lưu thay đổi';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Phân tích & thông tin chuyên sâu';

  @override
  String get featureUnlimitedJournal => 'Nhật ký không giới hạn';

  @override
  String get featureUnlimitedChat => 'Trò chuyện không giới hạn với AI Coach';

  @override
  String get featureCommunityGroups => 'Nhóm cộng đồng độc quyền';

  @override
  String get featurePrioritySupport => 'Hỗ trợ chuyên gia ưu tiên';

  @override
  String get featureThemePacks => 'Bộ giao diện tùy chỉnh';

  @override
  String get featureDataExport => 'Xuất dữ liệu';

  @override
  String get featureAdFree => 'Trải nghiệm không quảng cáo';

  @override
  String get premiumMemberTitle => 'Bạn là thành viên Premium';

  @override
  String get unlockFullRecoveryTitle => 'Mở khóa toàn bộ\ntrải nghiệm phục hồi';

  @override
  String get premiumMemberSubtitle =>
      'Cảm ơn bạn đã ủng hộ hành trình phục hồi — mọi tính năng Premium bên dưới đều đã được mở khóa.';

  @override
  String get premiumJoinSubtitle =>
      'Tham gia cộng đồng hàng nghìn người đang\nđẩy nhanh hành trình chữa lành với các công cụ\nPremium và hỗ trợ cá nhân hóa của chúng tôi.';

  @override
  String get monthlyPlanLabel => 'Hàng tháng';

  @override
  String get perMonthSuffix => '/tháng';

  @override
  String get cancelAnytimeLabel => 'Hủy bất cứ lúc nào';

  @override
  String get yearlyPlanLabel => 'Hàng năm';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Thanh toán hàng năm $amount';
  }

  @override
  String get bestValueLabel => 'Giá trị tốt nhất';

  @override
  String get alreadyPremiumLabel => 'Bạn đã là Premium ✓';

  @override
  String get startPremiumLabel => 'Bắt đầu Premium';

  @override
  String get manageSubscriptionLabel =>
      'Quản lý hoặc hủy trong cài đặt đăng ký của thiết bị.';

  @override
  String get noCommitmentLabel => 'Không cam kết. Hủy bất cứ lúc nào.';

  @override
  String get continueFreePlanLabel => 'Tiếp tục với gói miễn phí';

  @override
  String get backToHomeLabel => 'Về trang chủ';

  @override
  String get cancelPremiumLabel => 'Hủy Premium';

  @override
  String get cancelPremiumTitle => 'Hủy Premium?';

  @override
  String get cancelPremiumMessage =>
      'Bạn sẽ mất quyền truy cập vào nhật ký không giới hạn, trò chuyện không giới hạn với coach, thông tin thống kê và báo cáo hàng tuần. Bạn có thể đăng ký lại bất cứ lúc nào.';

  @override
  String get keepPremiumLabel => 'Giữ Premium';

  @override
  String get nowPremiumMessage =>
      'Bạn đã trở thành Premium! Hãy tận hưởng toàn bộ trải nghiệm phục hồi.';

  @override
  String get premiumCancelledMessage =>
      'Premium đã được hủy. Bạn đã trở lại gói miễn phí.';

  @override
  String get termsOfUseLabel => 'Điều khoản sử dụng';

  @override
  String get navHomeLabel => 'Trang chủ';

  @override
  String get navStatsLabel => 'Thống kê';

  @override
  String get navJournalLabel => 'Nhật ký';

  @override
  String get navBadgesLabel => 'Huy hiệu';

  @override
  String get navProfileLabel => 'Hồ sơ';

  @override
  String get recoveryGoalsTitle => 'Mục tiêu phục hồi';

  @override
  String get drinksPerWeekLabel => 'Đồ uống mỗi tuần';

  @override
  String get quitReasonsLabel => 'Lý do bỏ rượu';

  @override
  String get quitReasonsHelperText => 'Phân tách nhiều lý do bằng dấu phẩy.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Không thể lưu mục tiêu phục hồi: $error';
  }

  @override
  String get goalHint => 'ví dụ: Cai hoàn toàn';

  @override
  String get drinksPerWeekHint => 'ví dụ: 12';

  @override
  String get quitReasonsHint => 'ví dụ: Sức khỏe, Gia đình, Tiền bạc';

  @override
  String get todaysPrompt => 'Câu hỏi hôm nay';

  @override
  String get defaultJournalPrompt => 'Hôm nay bạn đang nghĩ gì?';

  @override
  String get aiJournalInsights => 'Thông tin chuyên sâu từ AI';

  @override
  String get unlockJournalInsightsMessage =>
      'Mở khóa các xu hướng hàng tuần, xu hướng tâm trạng và thông tin cá nhân hóa từ các mục nhật ký của bạn.';

  @override
  String get notEnoughJournalData =>
      'Chưa đủ dữ liệu — hãy viết vài mục trong tuần này rồi quay lại.';

  @override
  String get openEntry => 'Mở';

  @override
  String get editEntry => 'Chỉnh sửa';

  @override
  String get deleteEntry => 'Xóa';

  @override
  String get searchJournalEntries => 'Tìm kiếm nhật ký...';

  @override
  String get writeNewEntry => 'Viết mục mới';

  @override
  String get recentEntries => 'Mục gần đây';

  @override
  String get noJournalEntriesYet =>
      'Chưa có mục nhật ký — hãy viết phản hồi đầu tiên ở phía trên.';

  @override
  String get noEntriesMatchFilters =>
      'Không có mục nào phù hợp với bộ lọc của bạn.';

  @override
  String get weeklyJournalLimitReached => 'Đã đạt giới hạn hàng tuần';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Bạn đã sử dụng hết $limit mục nhật ký miễn phí trong tuần này. Nâng cấp lên Premium để có mục không giới hạn.';
  }

  @override
  String get newEntry => 'Mục mới';

  @override
  String get writeYourThoughts => 'Viết suy nghĩ của bạn';

  @override
  String get saveEntry => 'Lưu mục';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Còn $remaining trên $limit mục miễn phí trong tuần này';
  }

  @override
  String get deleteEntryQuestion => 'Xóa mục?';

  @override
  String get deleteEntryConfirmation =>
      'Mục này sẽ bị xóa vĩnh viễn. Không thể hoàn tác.';

  @override
  String get journalEntryNotFound => 'Không tìm thấy mục';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Mục nhật ký này có thể đã bị xóa.';

  @override
  String get goBack => 'Quay lại';

  @override
  String get journalEntryTitle => 'Mục nhật ký';

  @override
  String get moodStruggling => 'Đang khó khăn';

  @override
  String get moodUnwell => 'Không ổn';

  @override
  String get moodNeutral => 'Bình thường';

  @override
  String get whatHappenedToday => 'Hôm nay đã xảy ra chuyện gì?';

  @override
  String get trigger => 'Tác nhân';

  @override
  String get whatHelped => 'Điều gì đã giúp';

  @override
  String get whatIllTryNextTime => 'Lần sau tôi sẽ thử gì';

  @override
  String get journalPrivacyMessage =>
      'Những chia sẻ của bạn là riêng tư và được lưu trong nhật ký.';

  @override
  String get unlocked => 'Đã mở khóa';

  @override
  String daysLeft(int count) {
    return 'Còn $count ngày';
  }

  @override
  String daysCount(int count) {
    return '$count ngày';
  }

  @override
  String get firstReflection => 'Lần suy ngẫm\nđầu tiên';

  @override
  String get oneJournalEntry => '1 mục nhật ký';

  @override
  String get openBook => 'Mở sách';

  @override
  String get tenJournalEntries => '10 mục nhật ký';

  @override
  String get dedicatedWriter => 'Người viết\nchăm chỉ';

  @override
  String get thirtyJournalEntries => '30 mục nhật ký';

  @override
  String get firstConversation => 'Cuộc trò chuyện\nđầu tiên';

  @override
  String get oneAiCoachChat => '1 cuộc trò chuyện với AI Coach';

  @override
  String get keepTalking => 'Tiếp tục trò chuyện';

  @override
  String get fiveConversations => '5 cuộc trò chuyện';

  @override
  String get coachCompanion => 'Người đồng hành\nCoach';

  @override
  String get twentyConversations => '20 cuộc trò chuyện';

  @override
  String get checkInHabit => 'Thói quen\ncheck-in';

  @override
  String get sevenCheckIns => '7 lần check-in';

  @override
  String get consistencyPro => 'Chuyên gia\nkiên trì';

  @override
  String get thirtyCheckIns => '30 lần check-in';

  @override
  String get dedicatedJourney => 'Hành trình\nkiên định';

  @override
  String get hundredCheckIns => '100 lần check-in';

  @override
  String get goalGetter => 'Người chinh phục mục tiêu';

  @override
  String get threeGoalsCompleted => 'Hoàn thành 3 mục tiêu';

  @override
  String get goalAchiever => 'Người đạt\nmục tiêu';

  @override
  String get tenGoalsCompleted => 'Hoàn thành 10 mục tiêu';

  @override
  String get firstSavings => 'Khoản tiết kiệm\nđầu tiên';

  @override
  String get fiveHundredSaved => 'Đã tiết kiệm \$500';

  @override
  String get smartSaver => 'Người tiết kiệm thông minh';

  @override
  String get oneThousandSaved => 'Đã tiết kiệm \$1.000';

  @override
  String get bigSaver => 'Người tiết kiệm lớn';

  @override
  String get fiveThousandSaved => 'Đã tiết kiệm \$5.000';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current trên \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current trên $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Hãy tiếp tục — cột mốc đầu tiên đang chờ bạn!';

  @override
  String get badgesAndMilestones => 'Huy hiệu & Cột mốc';

  @override
  String get yourMilestoneJourney => 'Hành trình cột mốc của bạn';

  @override
  String milestonesAchieved(int count) {
    return 'Đã đạt $count cột mốc.\nNhấn để xem';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Bạn đã mở khóa $unlocked trên tổng số $total cột mốc trong hành trình.';
  }

  @override
  String get remaining => 'Còn lại';

  @override
  String get complete => 'Hoàn thành';

  @override
  String get nextMilestone => 'Cột mốc tiếp theo';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · đã đạt $percent%';
  }

  @override
  String get sobrietyMilestones => 'Cột mốc không uống rượu';

  @override
  String get journeyBadges => 'Huy hiệu hành trình';

  @override
  String get bronze => 'ĐỒNG';

  @override
  String get silver => 'BẠC';

  @override
  String get gold => 'VÀNG';

  @override
  String get platinum => 'BẠCH KIM';

  @override
  String get diamond => 'KIM CƯƠNG';

  @override
  String get analyzingYourJourney => 'Đang phân tích hành trình của bạn...';

  @override
  String get aiCreatingSanctuary =>
      'AI đang tạo không gian phục hồi cá nhân hóa cho bạn.';

  @override
  String get understandingHabits => 'Đang tìm hiểu thói quen...';

  @override
  String get calculatingBaseline => 'Đang tính toán mức cơ sở của bạn...';

  @override
  String get personalizingPlan => 'Đang cá nhân hóa kế hoạch...';

  @override
  String get finalizingSanctuary => 'Đang hoàn thiện không gian phục hồi...';

  @override
  String get creatingYourPlan => 'Đang tạo kế hoạch của bạn...';

  @override
  String get personalizedPlanError =>
      'Chúng tôi không thể tạo kế hoạch cá nhân hóa của bạn. Vui lòng thử lại.';

  @override
  String get retry => 'Thử lại';

  @override
  String get breathInhale => 'HÍT VÀO';

  @override
  String get breathHold => 'GIỮ';

  @override
  String get breathExhale => 'THỞ RA';

  @override
  String get breathDone => 'XONG';

  @override
  String get breathGreatJob => 'Làm tốt lắm!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count phiên hôm nay',
      one: '$count phiên hôm nay',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Kết thúc bài tập';

  @override
  String get done => 'Xong';

  @override
  String get noCopingTipsYet => 'Chưa có mẹo đối phó';

  @override
  String get copingStrategiesWillAppear =>
      'Các chiến lược đối phó cá nhân hóa sẽ xuất hiện ở đây sau khi kế hoạch phục hồi của bạn hoàn tất.';

  @override
  String get strategiesTailoredToTriggers =>
      'Chiến lược phù hợp với tác nhân của bạn';

  @override
  String get cravingsPeakAndPass => 'Cơn thèm đạt đỉnh\nrồi qua đi';

  @override
  String get rideTheWaveDescription =>
      'Hầu hết cơn thèm sẽ qua trong vòng 15 phút. Bạn không cần hành động theo nó — chỉ cần vượt qua cùng chúng tôi.';

  @override
  String get stayWithIt => 'tiếp tục';

  @override
  String get youMadeIt => 'bạn đã làm được';

  @override
  String get readyWhenYouAre => 'sẵn sàng khi bạn sẵn sàng';

  @override
  String get rideItAgain => 'Vượt qua lần nữa';

  @override
  String get start15MinuteTimer => 'Bắt đầu hẹn giờ 15 phút';

  @override
  String get rideTheWaveCompletedMessage =>
      'Bạn đã vượt qua cơn thèm. Đó là sức mạnh thực sự. 💪';

  @override
  String get myProgress => 'Tiến trình của tôi';

  @override
  String get weekLabel => 'Tuần';

  @override
  String get monthLabel => 'Tháng';

  @override
  String get allLabel => 'Tất cả';

  @override
  String get daysSoberStatLabel => 'Ngày\nkhông uống';

  @override
  String get savedStatLabel => 'Đã tiết kiệm';

  @override
  String get avoidedStatLabel => 'Đã tránh';

  @override
  String get moodTrends => 'Xu hướng tâm trạng';

  @override
  String get cravingsPattern => 'Mô hình cơn thèm';

  @override
  String get unlockLabel => 'Mở khóa';

  @override
  String get unlockFullStats => 'Mở khóa toàn bộ thống kê';

  @override
  String get premiumStatsMessage =>
      'Xu hướng tâm trạng và mô hình cơn thèm là tính năng Premium. Nâng cấp để xem toàn bộ thống kê.';

  @override
  String get healthMilestonesWillAppear =>
      'Các cột mốc sức khỏe của bạn sẽ xuất hiện ở đây.';

  @override
  String get healthMilestones => 'Cột mốc sức khỏe';

  @override
  String dayNumber(int day) {
    return 'Ngày $day';
  }

  @override
  String get soberLabel => 'Không uống';

  @override
  String get slipLabel => 'Trượt ngã';

  @override
  String get noDataLabel => 'Không có dữ liệu';

  @override
  String get milestone24Hours => '24 giờ';

  @override
  String get milestoneOneWeek => 'Một tuần';

  @override
  String get milestoneOneMonth => 'Một tháng';

  @override
  String get milestoneThreeMonths => 'Ba tháng';

  @override
  String get milestoneSixMonths => 'Sáu tháng';

  @override
  String get milestoneOneYear => 'Một năm';

  @override
  String milestoneDayCount(int day) {
    return 'Cột mốc ngày $day';
  }

  @override
  String get maybeLaterLabel => 'Có lẽ để sau';

  @override
  String get cancelLabel => 'Hủy';
}
