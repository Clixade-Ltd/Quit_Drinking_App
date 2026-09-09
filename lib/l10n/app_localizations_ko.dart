// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get skip => '건너뛰기';

  @override
  String get continueButton => '계속';

  @override
  String get getStarted => '시작하기';

  @override
  String get onboardingTitle1 => '삶을 주도적으로 관리하세요';

  @override
  String get onboardingSubtitle1 => '여정을 기록하고, 모든 성취를 축하하며, 하루하루 더 건강해지세요.';

  @override
  String get onboardingTitle2 => '당신의 AI 회복 동반자';

  @override
  String get onboardingSubtitle2 =>
      '당신의 여정에 맞춘 개인 맞춤형 안내, 건강한 습관, 동기 부여 알림 및 진행 상황 보고서를 받아보세요.';

  @override
  String get goodMorning => '좋은 아침이에요';

  @override
  String get goodAfternoon => '좋은 오후예요';

  @override
  String get goodEvening => '좋은 저녁이에요';

  @override
  String get goodNight => '안녕히 주무세요';

  @override
  String get embracingClarity => '하루하루 더 맑은 삶을 받아들이세요.';

  @override
  String get streakLabel => '연속 기록';

  @override
  String get goalLabel => '목표';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일',
      one: '$count일',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => '프리미엄 플랜';

  @override
  String get premiumPlanSubtitle => '완전한 회복 경험을 잠금 해제하세요';

  @override
  String get accountAndSupport => '계정 및 지원';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get privacyPolicySubtitle => '데이터 공유 및 계정 보안 관리';

  @override
  String get termsOfService => '서비스 약관';

  @override
  String get termsOfServiceSubtitle => '자주 묻는 질문, 문의 및 리소스';

  @override
  String get shareApp => '앱 공유';

  @override
  String get shareAppSubtitle => '친구들과 앱을 공유하세요';

  @override
  String get resetData => '데이터 초기화';

  @override
  String get resetDataSubtitle => '이 기기에 저장된 모든 내용을 삭제합니다';

  @override
  String get resetAllDataTitle => '모든 데이터를 초기화할까요?';

  @override
  String get resetAllDataMessage =>
      '이 기기에 저장된 프로필, 일지 기록 및 진행 상황이 모두 삭제되며 되돌릴 수 없습니다.';

  @override
  String get cancel => '취소';

  @override
  String get reset => '초기화';

  @override
  String get chooseFromGallery => '갤러리에서 선택';

  @override
  String get takePhoto => '사진 촬영';

  @override
  String get removePhoto => '사진 삭제';

  @override
  String couldNotUpdatePhoto(String error) {
    return '사진을 업데이트할 수 없습니다: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return '사진을 삭제할 수 없습니다: $error';
  }

  @override
  String get photoTooLarge => '압축한 후에도 사진이 너무 큽니다. 다른 사진을 선택해 주세요.';

  @override
  String get unableToLoadProfile => '프로필을 불러올 수 없습니다';

  @override
  String get pleaseTryAgain => '다시 시도해 주세요.';

  @override
  String get tryAgain => '다시 시도';

  @override
  String get profileNotFound => '프로필을 찾을 수 없습니다';

  @override
  String get refresh => '새로고침';

  @override
  String get noProfileDataFound => '아직 이 기기에서 프로필 데이터를 찾을 수 없습니다.';

  @override
  String couldNotResetData(String error) {
    return '데이터를 초기화할 수 없습니다: $error';
  }

  @override
  String get navHome => '홈';

  @override
  String get navStats => '통계';

  @override
  String get navJournal => '일지';

  @override
  String get navBadges => '배지';

  @override
  String get navProfile => '프로필';

  @override
  String featureComingSoon(String feature) {
    return '$feature 기능은 곧 제공될 예정입니다.';
  }

  @override
  String get appWordmark => '웰니스';

  @override
  String get appTitle => '금주';

  @override
  String get splashSubtitle => '알코올 없는 삶을 향한\n첫걸음을 시작하세요';

  @override
  String get preparingJourney => '여정을\n준비하고 있습니다';

  @override
  String get taskMorningMeditation => '아침 명상 (10분)';

  @override
  String get taskReadChapter => '\"The Sober Diaries\" 4장 읽기';

  @override
  String get taskEveningJournal => '저녁 감사 일지';

  @override
  String get close => '닫기';

  @override
  String get youAreDoingGreat => '정말 잘하고 있어요!';

  @override
  String get shareMilestone => '마일스톤 공유';

  @override
  String shareMilestoneMessage(int days) {
    return '회복 여정 $days일 차예요! 💪';
  }

  @override
  String get shareMilestoneSubject => '나의 회복 마일스톤';

  @override
  String get weeklyReportReadyTitle => '주간 보고서가 준비되었습니다';

  @override
  String get weeklyReportReadySubtitle => '이번 주를 어떻게 보냈는지 확인하세요';

  @override
  String get howAreYouFeeling => '기분이 어떠세요?';

  @override
  String get moodTough => '힘들어요';

  @override
  String get moodOkay => '괜찮음';

  @override
  String get moodGood => '좋음';

  @override
  String get moneySaved => '절약한 금액';

  @override
  String get caloriesSaved => '절약한 칼로리';

  @override
  String get healthScore => '건강 점수';

  @override
  String get drinksAvoided => '피한 음주량';

  @override
  String get estimated => '예상';

  @override
  String get aiGenerated => 'AI 생성';

  @override
  String get daysCapsLabel => '일';

  @override
  String get todaysMotivation => '오늘의 동기 부여';

  @override
  String get defaultMotivationQuote =>
      '당신은 자신의 결심을 성공적으로 지켜냈습니다. 긍정적인 변화의 흐름을 계속 이어가세요.';

  @override
  String get talkToCoach => '코치와 대화하기';

  @override
  String get havingACraving => '술이 마시고 싶어요';

  @override
  String get unlockWeeklyReportsTitle => '주간 보고서 잠금 해제';

  @override
  String get unlockWeeklyReportsMessage =>
      '매주 금주 일수, 기분 변화 및 개인 맞춤형 AI 피드백을 확인하세요. 프리미엄으로 업그레이드하여 잠금을 해제하세요.';

  @override
  String get maybeLater => '나중에';

  @override
  String get upgrade => '업그레이드';

  @override
  String get weeklyReportTitle => '주간 보고서';

  @override
  String get weeklyReportsPremiumTitle => '주간 보고서는 프리미엄 기능입니다';

  @override
  String get weeklyReportsPremiumMessage =>
      '매주 금주 일수, 기분 변화, 음주 욕구 및 개인 맞춤형 AI 피드백을 확인하세요.';

  @override
  String get upgradeToPremium => '프리미엄으로 업그레이드';

  @override
  String get couldNotGenerateReport => '지금은 보고서를 생성할 수 없습니다.';

  @override
  String get tryAgainLower => '다시 시도';

  @override
  String get statSoberDays => '금주 일수';

  @override
  String get statAvgMood => '평균 기분';

  @override
  String get statCravings => '음주 욕구';

  @override
  String get statMoneySaved => '절약한 금액';

  @override
  String get coachFeedback => '코치 피드백';

  @override
  String get journalInsights => '일지 인사이트';

  @override
  String get next => '다음';

  @override
  String get question1Title => '당신의 목표는 무엇인가요?';

  @override
  String get question1Subtitle => '당신에게 가장 중요한\n목표를 선택하세요';

  @override
  String get goalQuitCompletely => '완전히 끊기';

  @override
  String get goalReduceDrinking => '음주 줄이기';

  @override
  String get goalTakeABreak => '잠시 쉬기';

  @override
  String get goalBuildHealthierHabits => '더 건강한 습관 만들기';

  @override
  String get question3Title => '당신의\n일상에 대해 알려주세요';

  @override
  String get drinksPerWeek => '주당 음주량';

  @override
  String get moneySpentPerWeek => '주당 지출 금액';

  @override
  String get drinkingLevel => '음주 수준';

  @override
  String get triggersLabel => '유발 요인';

  @override
  String get levelSocial => '사회적 음주';

  @override
  String get levelRegular => '규칙적';

  @override
  String get levelHeavy => '과음';

  @override
  String get levelDependent => '의존';

  @override
  String get triggerStress => '스트레스';

  @override
  String get triggerLoneliness => '외로움';

  @override
  String get triggerHabit => '습관';

  @override
  String get triggerSadness => '슬픔';

  @override
  String get triggerAnger => '분노';

  @override
  String get triggerBoredom => '지루함';

  @override
  String get triggerSocialPressure => '사회적 압박';

  @override
  String get triggerCelebration => '축하';

  @override
  String get triggerSleepProblems => '수면 문제';

  @override
  String get triggerWorkPressure => '업무 압박';

  @override
  String get question4Title => '왜 변화하고 싶으신가요?';

  @override
  String get question4Subtitle => '당신의 이유가 동기를 유지하는 데 도움이 됩니다.';

  @override
  String get reasonImproveHealth => '건강 개선';

  @override
  String get reasonSaveMoney => '돈 절약';

  @override
  String get reasonFamily => '가족';

  @override
  String get reasonBetterSleep => '더 나은 수면';

  @override
  String get reasonMentalClarity => '정신적 명료함';

  @override
  String get reasonFitness => '체력';

  @override
  String get reasonSelfRespect => '자기 존중';

  @override
  String get reasonCareer => '커리어';

  @override
  String get milestoneUnlockedLabel => '마일스톤 달성';

  @override
  String incredibleNamePrefix(String name) {
    return '대단해요, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount 절약';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count회 피함';
  }

  @override
  String get shareMyMilestone => '내 마일스톤 공유';

  @override
  String get milestoneImageShareError => '마일스톤 이미지를 만들 수 없습니다. 다시 시도해 주세요.';

  @override
  String get dailyCheckInTitle => '일일 체크인';

  @override
  String get howAreYouFeelingToday => '오늘 기분이 어떠세요?';

  @override
  String get honestAnswerHelp => '솔직한 답변은 더 나은 지원을 제공하는 데 도움이 됩니다';

  @override
  String get didYouDrinkToday => '오늘 술을 마셨나요?';

  @override
  String get noLabel => '아니요';

  @override
  String get yesLabel => '예';

  @override
  String get cravingLevelNow => '지금 음주 욕구가 어느 정도인가요?';

  @override
  String get anythingOnMind => '마음에 걸리는 일이 있나요?';

  @override
  String get optionalLabel => '(선택 사항)';

  @override
  String get dailyNoteHint => '오늘 하루, 유발 요인, 잘해낸 일 등을 적어보세요...';

  @override
  String get alreadyCheckedInToday => '오늘 이미 체크인했습니다';

  @override
  String get saveCheckIn => '체크인 저장';

  @override
  String get checkInsHelpTrack => '체크인은 시간에 따른 진행 상황을 추적하는 데 도움이 됩니다';

  @override
  String get alreadyCompletedTodayCheckIn => '오늘의 체크인을 이미 완료했습니다.';

  @override
  String get pleaseAnswerBothQuestions => '먼저 위의 두 질문에 모두 답변해 주세요';

  @override
  String get checkInSaved => '체크인이 저장되었습니다';

  @override
  String get cravingNone => '없음';

  @override
  String get cravingLow => '낮음';

  @override
  String get cravingMedium => '보통';

  @override
  String get cravingStrong => '강함';

  @override
  String get moodBad => '나쁨';

  @override
  String get moodLow => '우울함';

  @override
  String get moodGreat => '아주 좋음';

  @override
  String get sosSupportTitle => 'SOS 지원';

  @override
  String notAloneMessage(String name) {
    return '혼자가 아니에요, $name';
  }

  @override
  String get cravingsPassMessage =>
      '음주 욕구는 지나갑니다. 이 순간을 이겨내는 데 도움이 될 방법을 아래에서 선택하세요.';

  @override
  String get breathingExercise => '호흡 운동';

  @override
  String get breathingExerciseSubtitle => '4-7-8 가이드 기법, 2분';

  @override
  String get rideTheWave => '파도 타기';

  @override
  String get rideTheWaveSubtitle => '15분 타이머 — 음주 욕구는 항상 지나갑니다';

  @override
  String get copingTips => '대처 방법';

  @override
  String get copingTipsSubtitle => '당신의 유발 요인에 맞춘 개인 전략';

  @override
  String get talkToAiCoach => 'AI 코치와 대화';

  @override
  String get talkToAiCoachSubtitle => '회복 동반자와 채팅하세요';

  @override
  String get callSomeone => '누군가에게 전화';

  @override
  String get callSomeoneSubtitle => '신뢰할 수 있는 연락처에 연락하세요';

  @override
  String get contactsPermissionNeeded => '연락처에 전화하려면 연락처 권한이 필요합니다.';

  @override
  String get beatenCravingsPrefix => '음주 욕구를 이겨낸 횟수: ';

  @override
  String beatenCravingsCount(int count) {
    return '$count회';
  }

  @override
  String get beatenCravingsSuffix => ' 이전에도 해냈어요. 다시 할 수 있습니다.';

  @override
  String get tellUsAboutYourself => '당신에 대해 알려주세요';

  @override
  String get detailsSubtitle => '이 정보는 회복 여정을 개인화하고 정확한 인사이트를 제공하는 데 도움이 됩니다.';

  @override
  String get nameLabel => '이름';

  @override
  String get nameHint => '예: Alex Rivers';

  @override
  String get ageLabel => '나이';

  @override
  String get ageHint => '예: 32';

  @override
  String get sexAssignedAtBirth => '출생 시 지정된 성별';

  @override
  String get sexFemale => '여성';

  @override
  String get sexMale => '남성';

  @override
  String get heightLabel => '키';

  @override
  String get weightLabel => '체중';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => '일일 한도에 도달했습니다';

  @override
  String dailyLimitReachedMessage(int limit) {
    return '오늘 무료 메시지 $limit개를 모두 사용했습니다. 프리미엄으로 업그레이드하여 코치 채팅을 무제한으로 이용하세요.';
  }

  @override
  String get coachConnectError => '지금 연결할 수 없습니다. 잠시 후 다시 시도해 주세요.';

  @override
  String get clearConversationTitle => '대화를 삭제할까요?';

  @override
  String get clearConversationMessage => '코치 채팅 기록이 영구적으로 삭제됩니다.';

  @override
  String get clearLabel => '삭제';

  @override
  String get recoveryCoachTitle => '회복 코치';

  @override
  String get onlineLabel => '온라인';

  @override
  String get clearConversationMenuItem => '대화 삭제';

  @override
  String chatGreeting(String name) {
    return '안녕하세요, $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return '여정 $days일 차예요. 이야기하고 싶을 때 언제든 제가 함께할게요.';
  }

  @override
  String get quickPromptsLabel => '빠른 질문';

  @override
  String get promptCravingLabel => '술이 마시고 싶어요';

  @override
  String get promptCravingSubtitle => '빠르게 마음을 안정시키세요';

  @override
  String get promptMotivationLabel => '동기 부여가 필요해요';

  @override
  String get promptMotivationSubtitle => '힘들 때 힘이 되어드릴게요';

  @override
  String get promptSocialLabel => '사회적 상황';

  @override
  String get promptSocialSubtitle => '모임에서 현명하게 대처하기';

  @override
  String get promptSlippedLabel => '실수했어요';

  @override
  String get promptSlippedSubtitle => '판단 없이, 그저 지원할게요';

  @override
  String get typeMessageHint => '메시지를 입력하세요...';

  @override
  String get editProfileTitle => '프로필 수정';

  @override
  String couldNotSaveProfile(String error) {
    return '프로필을 저장할 수 없습니다: $error';
  }

  @override
  String get heightCmLabel => '키 (cm)';

  @override
  String get weightKgLabel => '체중 (kg)';

  @override
  String get saveChangesLabel => '변경 사항 저장';

  @override
  String get premiumBadgeLabel => '프리미엄';

  @override
  String get featureAdvancedInsights => '고급 인사이트 및 분석';

  @override
  String get featureUnlimitedJournal => '무제한 일지 기록';

  @override
  String get featureUnlimitedChat => 'AI 코치와 무제한 채팅';

  @override
  String get featureCommunityGroups => '독점 커뮤니티 그룹';

  @override
  String get featurePrioritySupport => '전문가 우선 지원';

  @override
  String get featureThemePacks => '맞춤 테마 팩';

  @override
  String get featureDataExport => '데이터 내보내기';

  @override
  String get featureAdFree => '광고 없는 경험';

  @override
  String get premiumMemberTitle => '프리미엄 회원입니다';

  @override
  String get unlockFullRecoveryTitle => '완전한 회복\n경험을 잠금 해제하세요';

  @override
  String get premiumMemberSubtitle =>
      '회복 여정을 지원해 주셔서 감사합니다 — 아래의 모든 프리미엄 기능이 잠금 해제되었습니다.';

  @override
  String get premiumJoinSubtitle =>
      '프리미엄 도구와 개인 맞춤형 지원으로\n회복 여정을 가속화하고 있는\n수천 명의 커뮤니티에 참여하세요.';

  @override
  String get monthlyPlanLabel => '월간';

  @override
  String get perMonthSuffix => '/월';

  @override
  String get cancelAnytimeLabel => '언제든 취소 가능';

  @override
  String get yearlyPlanLabel => '연간';

  @override
  String billedAnnuallyLabel(String amount) {
    return '$amount로 연간 결제';
  }

  @override
  String get bestValueLabel => '최고의 가치';

  @override
  String get alreadyPremiumLabel => '프리미엄 이용 중 ✓';

  @override
  String get startPremiumLabel => '프리미엄 시작';

  @override
  String get manageSubscriptionLabel => '기기의 구독 설정에서 관리하거나 취소하세요.';

  @override
  String get noCommitmentLabel => '약정 없음. 언제든 취소할 수 있습니다.';

  @override
  String get continueFreePlanLabel => '무료 플랜 계속 이용';

  @override
  String get backToHomeLabel => '홈으로 돌아가기';

  @override
  String get cancelPremiumLabel => '프리미엄 취소';

  @override
  String get cancelPremiumTitle => '프리미엄을 취소할까요?';

  @override
  String get cancelPremiumMessage =>
      '무제한 일지 기록, 무제한 코치 채팅, 통계 인사이트 및 주간 보고서 이용 권한을 잃게 됩니다. 언제든 다시 구독할 수 있습니다.';

  @override
  String get keepPremiumLabel => '프리미엄 유지';

  @override
  String get nowPremiumMessage => '이제 프리미엄 회원입니다! 완전한 회복 경험을 즐겨보세요.';

  @override
  String get premiumCancelledMessage => '프리미엄이 취소되었습니다. 무료 플랜으로 돌아갑니다.';

  @override
  String get termsOfUseLabel => '이용 약관';

  @override
  String get navHomeLabel => '홈';

  @override
  String get navStatsLabel => '통계';

  @override
  String get navJournalLabel => '일지';

  @override
  String get navBadgesLabel => '배지';

  @override
  String get navProfileLabel => '프로필';

  @override
  String get recoveryGoalsTitle => '회복 목표';

  @override
  String get drinksPerWeekLabel => '주당 음주량';

  @override
  String get quitReasonsLabel => '금주 이유';

  @override
  String get quitReasonsHelperText => '여러 이유는 쉼표로 구분하세요.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return '회복 목표를 저장할 수 없습니다: $error';
  }

  @override
  String get goalHint => '예: 완전 금주';

  @override
  String get drinksPerWeekHint => '예: 12';

  @override
  String get quitReasonsHint => '예: 건강, 가족, 돈';

  @override
  String get todaysPrompt => '오늘의 질문';

  @override
  String get defaultJournalPrompt => '오늘 무슨 생각을 하고 있나요?';

  @override
  String get aiJournalInsights => 'AI 일지 인사이트';

  @override
  String get unlockJournalInsightsMessage =>
      '일지 기록에서 주간 패턴, 기분 변화 및 개인 맞춤형 인사이트를 확인하세요.';

  @override
  String get notEnoughJournalData =>
      '아직 데이터가 충분하지 않습니다 — 이번 주에 몇 가지 기록을 작성하고 다시 확인해 보세요.';

  @override
  String get openEntry => '열기';

  @override
  String get editEntry => '수정';

  @override
  String get deleteEntry => '삭제';

  @override
  String get searchJournalEntries => '기록 검색...';

  @override
  String get writeNewEntry => '새 기록 작성';

  @override
  String get recentEntries => '최근 기록';

  @override
  String get noJournalEntriesYet => '아직 일지 기록이 없습니다 — 위에서 첫 번째 생각을 기록해 보세요.';

  @override
  String get noEntriesMatchFilters => '필터와 일치하는 기록이 없습니다.';

  @override
  String get weeklyJournalLimitReached => '주간 한도에 도달했습니다';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return '이번 주 무료 일지 기록 $limit개를 모두 사용했습니다. 프리미엄으로 업그레이드하여 무제한 기록을 이용하세요.';
  }

  @override
  String get newEntry => '새 기록';

  @override
  String get writeYourThoughts => '생각을 적어보세요';

  @override
  String get saveEntry => '기록 저장';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '이번 주 무료 기록 $limit개 중 $remaining개 남음';
  }

  @override
  String get deleteEntryQuestion => '기록을 삭제할까요?';

  @override
  String get deleteEntryConfirmation => '이 기록은 영구적으로 삭제됩니다. 되돌릴 수 없습니다.';

  @override
  String get journalEntryNotFound => '기록을 찾을 수 없습니다';

  @override
  String get journalEntryMayHaveBeenDeleted => '이 일지 기록은 삭제되었을 수 있습니다.';

  @override
  String get goBack => '돌아가기';

  @override
  String get journalEntryTitle => '일지 기록';

  @override
  String get moodStruggling => '힘듦';

  @override
  String get moodUnwell => '좋지 않음';

  @override
  String get moodNeutral => '보통';

  @override
  String get whatHappenedToday => '오늘 무슨 일이 있었나요?';

  @override
  String get trigger => '유발 요인';

  @override
  String get whatHelped => '도움이 된 것';

  @override
  String get whatIllTryNextTime => '다음에는 이렇게 해볼게요';

  @override
  String get journalPrivacyMessage => '당신의 기록은 비공개이며 일지에 안전하게 저장됩니다.';

  @override
  String get unlocked => '잠금 해제됨';

  @override
  String daysLeft(int count) {
    return '$count일 남음';
  }

  @override
  String daysCount(int count) {
    return '$count일';
  }

  @override
  String get firstReflection => '첫 번째\n성찰';

  @override
  String get oneJournalEntry => '일지 기록 1개';

  @override
  String get openBook => '책 열기';

  @override
  String get tenJournalEntries => '일지 기록 10개';

  @override
  String get dedicatedWriter => '열정적인\n기록자';

  @override
  String get thirtyJournalEntries => '일지 기록 30개';

  @override
  String get firstConversation => '첫 번째\n대화';

  @override
  String get oneAiCoachChat => 'AI 코치 채팅 1회';

  @override
  String get keepTalking => '계속 대화하기';

  @override
  String get fiveConversations => '대화 5회';

  @override
  String get coachCompanion => '코치\n동반자';

  @override
  String get twentyConversations => '대화 20회';

  @override
  String get checkInHabit => '체크인\n습관';

  @override
  String get sevenCheckIns => '체크인 7회';

  @override
  String get consistencyPro => '꾸준함의\n달인';

  @override
  String get thirtyCheckIns => '체크인 30회';

  @override
  String get dedicatedJourney => '헌신적인\n여정';

  @override
  String get hundredCheckIns => '체크인 100회';

  @override
  String get goalGetter => '목표 달성자';

  @override
  String get threeGoalsCompleted => '목표 3개 완료';

  @override
  String get goalAchiever => '목표\n성취자';

  @override
  String get tenGoalsCompleted => '목표 10개 완료';

  @override
  String get firstSavings => '첫 번째\n저축';

  @override
  String get fiveHundredSaved => '\$500 절약';

  @override
  String get smartSaver => '현명한 절약가';

  @override
  String get oneThousandSaved => '\$1,000 절약';

  @override
  String get bigSaver => '큰 절약가';

  @override
  String get fiveThousandSaved => '\$5,000 절약';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current / \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current / $target';
  }

  @override
  String get firstMilestoneWaiting => '계속 나아가세요 — 첫 번째 마일스톤이 기다리고 있습니다!';

  @override
  String get badgesAndMilestones => '배지 및 마일스톤';

  @override
  String get yourMilestoneJourney => '나의 마일스톤 여정';

  @override
  String milestonesAchieved(int count) {
    return '$count개의 마일스톤 달성.\n탭하여 보기';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return '여정에서 총 $total개의 마일스톤 중 $unlocked개를 잠금 해제했습니다.';
  }

  @override
  String get remaining => '남음';

  @override
  String get complete => '완료';

  @override
  String get nextMilestone => '다음 마일스톤';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% 달성';
  }

  @override
  String get sobrietyMilestones => '금주 마일스톤';

  @override
  String get journeyBadges => '여정 배지';

  @override
  String get bronze => '브론즈';

  @override
  String get silver => '실버';

  @override
  String get gold => '골드';

  @override
  String get platinum => '플래티넘';

  @override
  String get diamond => '다이아몬드';

  @override
  String get analyzingYourJourney => '여정을 분석하는 중...';

  @override
  String get aiCreatingSanctuary => 'AI가 당신을 위한 맞춤형 회복 공간을 만들고 있습니다.';

  @override
  String get understandingHabits => '습관을 파악하는 중...';

  @override
  String get calculatingBaseline => '기준선을 계산하는 중...';

  @override
  String get personalizingPlan => '계획을 개인화하는 중...';

  @override
  String get finalizingSanctuary => '회복 공간을 완성하는 중...';

  @override
  String get creatingYourPlan => '계획을 만드는 중...';

  @override
  String get personalizedPlanError => '개인 맞춤형 계획을 만들 수 없습니다. 다시 시도해 주세요.';

  @override
  String get retry => '다시 시도';

  @override
  String get breathInhale => '들이쉬기';

  @override
  String get breathHold => '멈추기';

  @override
  String get breathExhale => '내쉬기';

  @override
  String get breathDone => '완료';

  @override
  String get breathGreatJob => '잘했어요!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '오늘 $count회 세션',
      one: '오늘 $count회 세션',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => '운동 종료';

  @override
  String get done => '완료';

  @override
  String get noCopingTipsYet => '아직 대처 방법이 없습니다';

  @override
  String get copingStrategiesWillAppear =>
      '회복 계획 생성이 완료되면 개인 맞춤형 대처 전략이 여기에 표시됩니다.';

  @override
  String get strategiesTailoredToTriggers => '유발 요인에 맞춘 전략';

  @override
  String get cravingsPeakAndPass => '음주 욕구는\n정점에 올랐다가 지나갑니다';

  @override
  String get rideTheWaveDescription =>
      '대부분의 음주 욕구는 15분 이내에 지나갑니다. 행동으로 옮길 필요 없이 우리와 함께 이 순간을 지나가세요.';

  @override
  String get stayWithIt => '계속 버티기';

  @override
  String get youMadeIt => '해냈어요';

  @override
  String get readyWhenYouAre => '준비되면 시작하세요';

  @override
  String get rideItAgain => '다시 파도 타기';

  @override
  String get start15MinuteTimer => '15분 타이머 시작';

  @override
  String get rideTheWaveCompletedMessage => '파도를 이겨냈어요. 그것이 진정한 힘입니다. 💪';

  @override
  String get myProgress => '나의 진행 상황';

  @override
  String get weekLabel => '주';

  @override
  String get monthLabel => '월';

  @override
  String get allLabel => '전체';

  @override
  String get daysSoberStatLabel => '금주\n일수';

  @override
  String get savedStatLabel => '절약';

  @override
  String get avoidedStatLabel => '피함';

  @override
  String get moodTrends => '기분 변화';

  @override
  String get cravingsPattern => '음주 욕구 패턴';

  @override
  String get unlockLabel => '잠금 해제';

  @override
  String get unlockFullStats => '전체 통계 잠금 해제';

  @override
  String get premiumStatsMessage =>
      '기분 변화와 음주 욕구 패턴은 프리미엄 기능입니다. 업그레이드하여 전체 통계를 확인하세요.';

  @override
  String get healthMilestonesWillAppear => '건강 마일스톤이 여기에 표시됩니다.';

  @override
  String get healthMilestones => '건강 마일스톤';

  @override
  String dayNumber(int day) {
    return '$day일 차';
  }

  @override
  String get soberLabel => '금주';

  @override
  String get slipLabel => '실수';

  @override
  String get noDataLabel => '데이터 없음';

  @override
  String get milestone24Hours => '24시간';

  @override
  String get milestoneOneWeek => '1주일';

  @override
  String get milestoneOneMonth => '1개월';

  @override
  String get milestoneThreeMonths => '3개월';

  @override
  String get milestoneSixMonths => '6개월';

  @override
  String get milestoneOneYear => '1년';

  @override
  String milestoneDayCount(int day) {
    return '$day일 마일스톤';
  }

  @override
  String get maybeLaterLabel => '나중에';

  @override
  String get cancelLabel => '취소';
}
