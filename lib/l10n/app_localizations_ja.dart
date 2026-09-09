// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get skip => 'スキップ';

  @override
  String get continueButton => '続ける';

  @override
  String get getStarted => '始める';

  @override
  String get onboardingTitle1 => '人生を自分でコントロールする';

  @override
  String get onboardingSubtitle1 => '歩みを記録し、すべての達成を祝い、一日ずつ健康になりましょう。';

  @override
  String get onboardingTitle2 => 'あなたのAI回復パートナー';

  @override
  String get onboardingSubtitle2 =>
      'あなたの歩みに合わせたパーソナライズされたガイダンス、健康的な習慣、モチベーションリマインダー、進捗レポートを受け取りましょう。';

  @override
  String get goodMorning => 'おはようございます';

  @override
  String get goodAfternoon => 'こんにちは';

  @override
  String get goodEvening => 'こんばんは';

  @override
  String get goodNight => 'おやすみなさい';

  @override
  String get embracingClarity => '一日ずつ、心の明晰さを取り戻しましょう。';

  @override
  String get streakLabel => '連続記録';

  @override
  String get goalLabel => '目標';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日',
      one: '$count日',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'プレミアムプラン';

  @override
  String get premiumPlanSubtitle => '完全な回復体験を解放しましょう';

  @override
  String get accountAndSupport => 'アカウントとサポート';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get privacyPolicySubtitle => 'データ共有とアカウントのセキュリティを管理';

  @override
  String get termsOfService => '利用規約';

  @override
  String get termsOfServiceSubtitle => 'よくある質問、お問い合わせ、リソース';

  @override
  String get shareApp => 'アプリを共有';

  @override
  String get shareAppSubtitle => '友達とアプリを共有する';

  @override
  String get resetData => 'データをリセット';

  @override
  String get resetDataSubtitle => 'このデバイスに保存されたすべてを削除';

  @override
  String get resetAllDataTitle => 'すべてのデータをリセットしますか？';

  @override
  String get resetAllDataMessage =>
      'プロフィール、日記、進捗など、このデバイスに保存されたすべてが削除されます。この操作は元に戻せません。';

  @override
  String get cancel => 'キャンセル';

  @override
  String get reset => 'リセット';

  @override
  String get chooseFromGallery => 'ギャラリーから選択';

  @override
  String get takePhoto => '写真を撮る';

  @override
  String get removePhoto => '写真を削除';

  @override
  String couldNotUpdatePhoto(String error) {
    return '写真を更新できませんでした：$error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return '写真を削除できませんでした：$error';
  }

  @override
  String get photoTooLarge => '圧縮しても写真が大きすぎます。別の写真をお試しください。';

  @override
  String get unableToLoadProfile => 'プロフィールを読み込めません';

  @override
  String get pleaseTryAgain => 'もう一度お試しください。';

  @override
  String get tryAgain => 'もう一度試す';

  @override
  String get profileNotFound => 'プロフィールが見つかりません';

  @override
  String get refresh => '更新';

  @override
  String get noProfileDataFound => 'このデバイスにはまだプロフィールデータがありません。';

  @override
  String couldNotResetData(String error) {
    return 'データをリセットできませんでした：$error';
  }

  @override
  String get navHome => 'ホーム';

  @override
  String get navStats => '統計';

  @override
  String get navJournal => '日記';

  @override
  String get navBadges => 'バッジ';

  @override
  String get navProfile => 'プロフィール';

  @override
  String featureComingSoon(String feature) {
    return '$featureは近日利用可能になります。';
  }

  @override
  String get appWordmark => 'ウェルネス';

  @override
  String get appTitle => '飲酒をやめる';

  @override
  String get splashSubtitle => 'アルコールのない人生への\n最初の一歩を踏み出しましょう';

  @override
  String get preparingJourney => 'あなたの旅を\n準備しています';

  @override
  String get taskMorningMeditation => '朝の瞑想（10分）';

  @override
  String get taskReadChapter => '「The Sober Diaries」の第4章を読む';

  @override
  String get taskEveningJournal => '夜の感謝日記';

  @override
  String get close => '閉じる';

  @override
  String get youAreDoingGreat => 'よく頑張っています！';

  @override
  String get shareMilestone => '達成を共有';

  @override
  String shareMilestoneMessage(int days) {
    return '回復への旅を$days日目まで続けています！ 💪';
  }

  @override
  String get shareMilestoneSubject => '私の回復の達成';

  @override
  String get weeklyReportReadyTitle => '週間レポートの準備ができました';

  @override
  String get weeklyReportReadySubtitle => 'タップして今週の振り返りを見る';

  @override
  String get howAreYouFeeling => '今の気分はいかがですか？';

  @override
  String get moodTough => 'つらい';

  @override
  String get moodOkay => 'まあまあ';

  @override
  String get moodGood => '良い';

  @override
  String get moneySaved => '節約したお金';

  @override
  String get caloriesSaved => '節約したカロリー';

  @override
  String get healthScore => '健康スコア';

  @override
  String get drinksAvoided => '避けた飲酒';

  @override
  String get estimated => '推定';

  @override
  String get aiGenerated => 'AI生成';

  @override
  String get daysCapsLabel => '日';

  @override
  String get todaysMotivation => '今日のモチベーション';

  @override
  String get defaultMotivationQuote =>
      'あなたは約束を守り続けることに成功しています。前向きな変化の波に乗り続けましょう。';

  @override
  String get talkToCoach => 'コーチと話す';

  @override
  String get havingACraving => '今、飲みたい気持ちがあります';

  @override
  String get unlockWeeklyReportsTitle => '週間レポートを解放';

  @override
  String get unlockWeeklyReportsMessage =>
      '毎週、飲酒していない日数、気分の傾向、あなたに合わせたAIフィードバックを確認できます。Premiumにアップグレードして解放しましょう。';

  @override
  String get maybeLater => '後で';

  @override
  String get upgrade => 'アップグレード';

  @override
  String get weeklyReportTitle => '週間レポート';

  @override
  String get weeklyReportsPremiumTitle => '週間レポートはPremium機能です';

  @override
  String get weeklyReportsPremiumMessage =>
      '毎週、飲酒していない日数、気分の傾向、飲酒欲求、パーソナライズされたAIフィードバックを確認できます。';

  @override
  String get upgradeToPremium => 'Premiumにアップグレード';

  @override
  String get couldNotGenerateReport => '現在、レポートを作成できませんでした。';

  @override
  String get tryAgainLower => 'もう一度試す';

  @override
  String get statSoberDays => '飲酒していない日数';

  @override
  String get statAvgMood => '平均気分';

  @override
  String get statCravings => '飲酒欲求';

  @override
  String get statMoneySaved => '節約したお金';

  @override
  String get coachFeedback => 'コーチのフィードバック';

  @override
  String get journalInsights => '日記のインサイト';

  @override
  String get next => '次へ';

  @override
  String get question1Title => 'あなたの目標は何ですか？';

  @override
  String get question1Subtitle => 'あなたにとって最も\n大切な目標を選んでください';

  @override
  String get goalQuitCompletely => '完全にやめる';

  @override
  String get goalReduceDrinking => '飲酒量を減らす';

  @override
  String get goalTakeABreak => '休む';

  @override
  String get goalBuildHealthierHabits => 'より健康的な習慣を作る';

  @override
  String get question3Title => 'あなたの\n習慣について教えてください';

  @override
  String get drinksPerWeek => '週あたりの飲酒量';

  @override
  String get moneySpentPerWeek => '週あたりの飲酒費用';

  @override
  String get drinkingLevel => '飲酒レベル';

  @override
  String get triggersLabel => 'きっかけ';

  @override
  String get levelSocial => '社交的';

  @override
  String get levelRegular => '習慣的';

  @override
  String get levelHeavy => '多量';

  @override
  String get levelDependent => '依存';

  @override
  String get triggerStress => 'ストレス';

  @override
  String get triggerLoneliness => '孤独';

  @override
  String get triggerHabit => '習慣';

  @override
  String get triggerSadness => '悲しみ';

  @override
  String get triggerAnger => '怒り';

  @override
  String get triggerBoredom => '退屈';

  @override
  String get triggerSocialPressure => '社会的プレッシャー';

  @override
  String get triggerCelebration => 'お祝い';

  @override
  String get triggerSleepProblems => '睡眠の問題';

  @override
  String get triggerWorkPressure => '仕事のプレッシャー';

  @override
  String get question4Title => 'なぜ変わりたいのですか？';

  @override
  String get question4Subtitle => 'あなたの理由がモチベーションにつながります。';

  @override
  String get reasonImproveHealth => '健康を改善する';

  @override
  String get reasonSaveMoney => 'お金を節約する';

  @override
  String get reasonFamily => '家族';

  @override
  String get reasonBetterSleep => 'より良い睡眠';

  @override
  String get reasonMentalClarity => '精神的な明晰さ';

  @override
  String get reasonFitness => 'フィットネス';

  @override
  String get reasonSelfRespect => '自尊心';

  @override
  String get reasonCareer => 'キャリア';

  @override
  String get milestoneUnlockedLabel => 'マイルストーン達成';

  @override
  String incredibleNamePrefix(String name) {
    return '素晴らしい、$nameさん！';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount節約';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count杯回避';
  }

  @override
  String get shareMyMilestone => 'マイルストーンを共有';

  @override
  String get milestoneImageShareError => 'マイルストーン画像を作成できませんでした。もう一度お試しください。';

  @override
  String get dailyCheckInTitle => '毎日のチェックイン';

  @override
  String get howAreYouFeelingToday => '今日の気分はいかがですか？';

  @override
  String get honestAnswerHelp => '正直な回答が、より良いサポートにつながります';

  @override
  String get didYouDrinkToday => '今日は飲酒しましたか？';

  @override
  String get noLabel => 'いいえ';

  @override
  String get yesLabel => 'はい';

  @override
  String get cravingLevelNow => '今の飲酒欲求の強さは？';

  @override
  String get anythingOnMind => '何か気になっていることはありますか？';

  @override
  String get optionalLabel => '（任意）';

  @override
  String get dailyNoteHint => '今日の出来事、きっかけ、うまくいったことなどを書いてください...';

  @override
  String get alreadyCheckedInToday => '今日はすでにチェックイン済みです';

  @override
  String get saveCheckIn => 'チェックインを保存';

  @override
  String get checkInsHelpTrack => 'チェックインで時間の経過とともに進捗を追跡できます';

  @override
  String get alreadyCompletedTodayCheckIn => '今日のチェックインはすでに完了しています。';

  @override
  String get pleaseAnswerBothQuestions => 'まず上の2つの質問に答えてください';

  @override
  String get checkInSaved => 'チェックインを保存しました';

  @override
  String get cravingNone => 'なし';

  @override
  String get cravingLow => '低い';

  @override
  String get cravingMedium => '中程度';

  @override
  String get cravingStrong => '強い';

  @override
  String get moodBad => '悪い';

  @override
  String get moodLow => '低い';

  @override
  String get moodGreat => 'とても良い';

  @override
  String get sosSupportTitle => 'SOSサポート';

  @override
  String notAloneMessage(String name) {
    return 'あなたは一人ではありません、$nameさん';
  }

  @override
  String get cravingsPassMessage =>
      '飲酒欲求はやがて過ぎ去ります。今この瞬間を乗り越えるために、以下から一つ選んでください。';

  @override
  String get breathingExercise => '呼吸エクササイズ';

  @override
  String get breathingExerciseSubtitle => 'ガイド付き4-7-8呼吸法、2分間';

  @override
  String get rideTheWave => '波を乗り越える';

  @override
  String get rideTheWaveSubtitle => '15分タイマー — 飲酒欲求は必ず過ぎ去ります';

  @override
  String get copingTips => '対処のヒント';

  @override
  String get copingTipsSubtitle => 'あなたのきっかけに合わせた対処法';

  @override
  String get talkToAiCoach => 'AIコーチと話す';

  @override
  String get talkToAiCoachSubtitle => '回復パートナーとチャットする';

  @override
  String get callSomeone => '誰かに電話する';

  @override
  String get callSomeoneSubtitle => '信頼できる連絡先に連絡する';

  @override
  String get contactsPermissionNeeded => '連絡先に電話するには連絡先へのアクセス許可が必要です。';

  @override
  String get beatenCravingsPrefix => 'これまでに飲酒欲求を乗り越えた回数：';

  @override
  String beatenCravingsCount(int count) {
    return '$count回';
  }

  @override
  String get beatenCravingsSuffix => '。もう一度できます。';

  @override
  String get tellUsAboutYourself => 'あなたについて教えてください';

  @override
  String get detailsSubtitle =>
      'この情報は、あなたの回復への旅をパーソナライズし、正確なインサイトを提供するために役立ちます。';

  @override
  String get nameLabel => '名前';

  @override
  String get nameHint => '例：Alex Rivers';

  @override
  String get ageLabel => '年齢';

  @override
  String get ageHint => '例：32';

  @override
  String get sexAssignedAtBirth => '出生時の性別';

  @override
  String get sexFemale => '女性';

  @override
  String get sexMale => '男性';

  @override
  String get heightLabel => '身長';

  @override
  String get weightLabel => '体重';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => '1日の上限に達しました';

  @override
  String dailyLimitReachedMessage(int limit) {
    return '本日の無料メッセージ$limit件をすべて使用しました。Premiumにアップグレードするとコーチとのチャットが無制限になります。';
  }

  @override
  String get coachConnectError => '現在接続できません。しばらくしてからもう一度お試しください。';

  @override
  String get clearConversationTitle => '会話を削除しますか？';

  @override
  String get clearConversationMessage => 'コーチとのチャット履歴が完全に削除されます。';

  @override
  String get clearLabel => '削除';

  @override
  String get recoveryCoachTitle => '回復コーチ';

  @override
  String get onlineLabel => 'オンライン';

  @override
  String get clearConversationMenuItem => '会話を削除';

  @override
  String chatGreeting(String name) {
    return 'こんにちは、$nameさん 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'あなたは回復の旅の$days日目です。話したいときはいつでもここにいます。';
  }

  @override
  String get quickPromptsLabel => 'クイックプロンプト';

  @override
  String get promptCravingLabel => '飲みたい気持ちがある';

  @override
  String get promptCravingSubtitle => 'すぐに気持ちを落ち着かせる';

  @override
  String get promptMotivationLabel => 'モチベーションが必要';

  @override
  String get promptMotivationSubtitle => 'つらいときの後押し';

  @override
  String get promptSocialLabel => '社交的な場面';

  @override
  String get promptSocialSubtitle => '集まりを乗り切る';

  @override
  String get promptSlippedLabel => '飲んでしまった';

  @override
  String get promptSlippedSubtitle => '責めずに、ただサポートします';

  @override
  String get typeMessageHint => 'メッセージを入力...';

  @override
  String get editProfileTitle => 'プロフィールを編集';

  @override
  String couldNotSaveProfile(String error) {
    return 'プロフィールを保存できませんでした：$error';
  }

  @override
  String get heightCmLabel => '身長（cm）';

  @override
  String get weightKgLabel => '体重（kg）';

  @override
  String get saveChangesLabel => '変更を保存';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => '高度なインサイトと分析';

  @override
  String get featureUnlimitedJournal => '日記エントリー無制限';

  @override
  String get featureUnlimitedChat => 'AIコーチとのチャット無制限';

  @override
  String get featureCommunityGroups => '限定コミュニティグループ';

  @override
  String get featurePrioritySupport => '優先エキスパートサポート';

  @override
  String get featureThemePacks => 'カスタムテーマパック';

  @override
  String get featureDataExport => 'データエクスポート';

  @override
  String get featureAdFree => '広告なし体験';

  @override
  String get premiumMemberTitle => 'あなたはPremiumメンバーです';

  @override
  String get unlockFullRecoveryTitle => '完全な回復体験を\n解放しましょう';

  @override
  String get premiumMemberSubtitle =>
      '回復への旅をサポートしていただきありがとうございます — 以下のPremium機能はすべて利用できます。';

  @override
  String get premiumJoinSubtitle =>
      '何千人もの人々とともに、\nPremiumツールとパーソナライズされたサポートで\n回復への旅を加速しましょう。';

  @override
  String get monthlyPlanLabel => '月額';

  @override
  String get perMonthSuffix => '/月';

  @override
  String get cancelAnytimeLabel => 'いつでもキャンセル可能';

  @override
  String get yearlyPlanLabel => '年額';

  @override
  String billedAnnuallyLabel(String amount) {
    return '$amountを年払い';
  }

  @override
  String get bestValueLabel => 'お得なプラン';

  @override
  String get alreadyPremiumLabel => 'Premium利用中 ✓';

  @override
  String get startPremiumLabel => 'Premiumを始める';

  @override
  String get manageSubscriptionLabel => 'デバイスのサブスクリプション設定から管理またはキャンセルできます。';

  @override
  String get noCommitmentLabel => '契約の縛りなし。いつでもキャンセルできます。';

  @override
  String get continueFreePlanLabel => '無料プランを続ける';

  @override
  String get backToHomeLabel => 'ホームに戻る';

  @override
  String get cancelPremiumLabel => 'Premiumをキャンセル';

  @override
  String get cancelPremiumTitle => 'Premiumをキャンセルしますか？';

  @override
  String get cancelPremiumMessage =>
      '無制限の日記エントリー、無制限のコーチチャット、統計インサイト、週間レポートへのアクセスを失います。いつでも再登録できます。';

  @override
  String get keepPremiumLabel => 'Premiumを続ける';

  @override
  String get nowPremiumMessage => 'Premiumになりました！完全な回復体験をお楽しみください。';

  @override
  String get premiumCancelledMessage => 'Premiumをキャンセルしました。無料プランに戻りました。';

  @override
  String get termsOfUseLabel => '利用条件';

  @override
  String get navHomeLabel => 'ホーム';

  @override
  String get navStatsLabel => '統計';

  @override
  String get navJournalLabel => '日記';

  @override
  String get navBadgesLabel => 'バッジ';

  @override
  String get navProfileLabel => 'プロフィール';

  @override
  String get recoveryGoalsTitle => '回復の目標';

  @override
  String get drinksPerWeekLabel => '週あたりの飲酒量';

  @override
  String get quitReasonsLabel => 'やめる理由';

  @override
  String get quitReasonsHelperText => '複数の理由はカンマで区切ってください。';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return '回復目標を保存できませんでした：$error';
  }

  @override
  String get goalHint => '例：完全禁酒';

  @override
  String get drinksPerWeekHint => '例：12';

  @override
  String get quitReasonsHint => '例：健康、家族、お金';

  @override
  String get todaysPrompt => '今日のプロンプト';

  @override
  String get defaultJournalPrompt => '今日、何を考えていますか？';

  @override
  String get aiJournalInsights => 'AI日記インサイト';

  @override
  String get unlockJournalInsightsMessage =>
      '日記エントリーから、週間パターン、気分の傾向、パーソナライズされたインサイトを解放しましょう。';

  @override
  String get notEnoughJournalData =>
      'まだデータが足りません — 今週いくつか日記を書いて、後でもう一度確認してください。';

  @override
  String get openEntry => '開く';

  @override
  String get editEntry => '編集';

  @override
  String get deleteEntry => '削除';

  @override
  String get searchJournalEntries => 'エントリーを検索...';

  @override
  String get writeNewEntry => '新しいエントリーを書く';

  @override
  String get recentEntries => '最近のエントリー';

  @override
  String get noJournalEntriesYet => 'まだ日記エントリーがありません — 上で最初の振り返りを書いてみましょう。';

  @override
  String get noEntriesMatchFilters => '条件に一致するエントリーはありません。';

  @override
  String get weeklyJournalLimitReached => '週間上限に達しました';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return '今週の無料日記エントリー$limit件をすべて使用しました。Premiumにアップグレードすると無制限になります。';
  }

  @override
  String get newEntry => '新しいエントリー';

  @override
  String get writeYourThoughts => 'あなたの考えを書く';

  @override
  String get saveEntry => 'エントリーを保存';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '今週残り$remaining/$limit件の無料エントリー';
  }

  @override
  String get deleteEntryQuestion => 'エントリーを削除しますか？';

  @override
  String get deleteEntryConfirmation => 'このエントリーは完全に削除されます。この操作は元に戻せません。';

  @override
  String get journalEntryNotFound => 'エントリーが見つかりません';

  @override
  String get journalEntryMayHaveBeenDeleted => 'この日記エントリーは削除された可能性があります。';

  @override
  String get goBack => '戻る';

  @override
  String get journalEntryTitle => '日記エントリー';

  @override
  String get moodStruggling => '苦戦中';

  @override
  String get moodUnwell => '不調';

  @override
  String get moodNeutral => '普通';

  @override
  String get whatHappenedToday => '今日は何がありましたか？';

  @override
  String get trigger => 'きっかけ';

  @override
  String get whatHelped => '役立ったこと';

  @override
  String get whatIllTryNextTime => '次回試してみること';

  @override
  String get journalPrivacyMessage => 'あなたの振り返りは非公開で、日記に保存されます。';

  @override
  String get unlocked => '解放済み';

  @override
  String daysLeft(int count) {
    return '残り$count日';
  }

  @override
  String daysCount(int count) {
    return '$count日';
  }

  @override
  String get firstReflection => '初めての\n振り返り';

  @override
  String get oneJournalEntry => '日記1件';

  @override
  String get openBook => '本を開く';

  @override
  String get tenJournalEntries => '日記10件';

  @override
  String get dedicatedWriter => '熱心な\nライター';

  @override
  String get thirtyJournalEntries => '日記30件';

  @override
  String get firstConversation => '初めての\n会話';

  @override
  String get oneAiCoachChat => 'AIコーチチャット1回';

  @override
  String get keepTalking => '話し続ける';

  @override
  String get fiveConversations => '会話5回';

  @override
  String get coachCompanion => 'コーチ\nパートナー';

  @override
  String get twentyConversations => '会話20回';

  @override
  String get checkInHabit => 'チェックイン\n習慣';

  @override
  String get sevenCheckIns => 'チェックイン7回';

  @override
  String get consistencyPro => '継続の\nプロ';

  @override
  String get thirtyCheckIns => 'チェックイン30回';

  @override
  String get dedicatedJourney => '献身的な\n旅';

  @override
  String get hundredCheckIns => 'チェックイン100回';

  @override
  String get goalGetter => '目標達成者';

  @override
  String get threeGoalsCompleted => '目標3件達成';

  @override
  String get goalAchiever => '目標\n達成者';

  @override
  String get tenGoalsCompleted => '目標10件達成';

  @override
  String get firstSavings => '初めての\n節約';

  @override
  String get fiveHundredSaved => '\$500節約';

  @override
  String get smartSaver => '賢い節約家';

  @override
  String get oneThousandSaved => '\$1,000節約';

  @override
  String get bigSaver => '大きな節約家';

  @override
  String get fiveThousandSaved => '\$5,000節約';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current / \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current / $target';
  }

  @override
  String get firstMilestoneWaiting => '続けましょう — 最初のマイルストーンがあなたを待っています！';

  @override
  String get badgesAndMilestones => 'バッジとマイルストーン';

  @override
  String get yourMilestoneJourney => 'あなたのマイルストーンの旅';

  @override
  String milestonesAchieved(int count) {
    return '$count個のマイルストーンを達成しました。\nタップして表示';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'あなたの旅で$total個中$unlocked個のマイルストーンを解放しました。';
  }

  @override
  String get remaining => '残り';

  @override
  String get complete => '完了';

  @override
  String get nextMilestone => '次のマイルストーン';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent%達成';
  }

  @override
  String get sobrietyMilestones => '禁酒マイルストーン';

  @override
  String get journeyBadges => '旅のバッジ';

  @override
  String get bronze => 'ブロンズ';

  @override
  String get silver => 'シルバー';

  @override
  String get gold => 'ゴールド';

  @override
  String get platinum => 'プラチナ';

  @override
  String get diamond => 'ダイヤモンド';

  @override
  String get analyzingYourJourney => 'あなたの旅を分析しています...';

  @override
  String get aiCreatingSanctuary => 'AIがあなた専用の回復スペースを作成しています。';

  @override
  String get understandingHabits => '習慣を分析しています...';

  @override
  String get calculatingBaseline => '基準値を計算しています...';

  @override
  String get personalizingPlan => 'プランをパーソナライズしています...';

  @override
  String get finalizingSanctuary => '回復スペースを仕上げています...';

  @override
  String get creatingYourPlan => 'プランを作成しています...';

  @override
  String get personalizedPlanError => 'パーソナライズされたプランを作成できませんでした。もう一度お試しください。';

  @override
  String get retry => '再試行';

  @override
  String get breathInhale => '吸う';

  @override
  String get breathHold => '止める';

  @override
  String get breathExhale => '吐く';

  @override
  String get breathDone => '完了';

  @override
  String get breathGreatJob => 'よくできました！';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count回のセッション（今日）',
      one: '$count回のセッション（今日）',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'エクササイズを終了';

  @override
  String get done => '完了';

  @override
  String get noCopingTipsYet => 'まだ対処法のヒントはありません';

  @override
  String get copingStrategiesWillAppear =>
      '回復プランの作成が完了すると、あなたに合わせた対処法がここに表示されます。';

  @override
  String get strategiesTailoredToTriggers => 'あなたのきっかけに合わせた対処法';

  @override
  String get cravingsPeakAndPass => '飲酒欲求は\nピークを越えて去ります';

  @override
  String get rideTheWaveDescription =>
      'ほとんどの飲酒欲求は15分以内に過ぎ去ります。行動する必要はありません — 私たちと一緒に乗り越えましょう。';

  @override
  String get stayWithIt => 'そのまま続ける';

  @override
  String get youMadeIt => '乗り越えました';

  @override
  String get readyWhenYouAre => '準備ができたら';

  @override
  String get rideItAgain => 'もう一度乗り越える';

  @override
  String get start15MinuteTimer => '15分タイマーを開始';

  @override
  String get rideTheWaveCompletedMessage => '波を乗り越えました。それは本当の強さです。💪';

  @override
  String get myProgress => '私の進捗';

  @override
  String get weekLabel => '週';

  @override
  String get monthLabel => '月';

  @override
  String get allLabel => 'すべて';

  @override
  String get daysSoberStatLabel => '禁酒\n日数';

  @override
  String get savedStatLabel => '節約';

  @override
  String get avoidedStatLabel => '回避';

  @override
  String get moodTrends => '気分の傾向';

  @override
  String get cravingsPattern => '飲酒欲求のパターン';

  @override
  String get unlockLabel => '解放';

  @override
  String get unlockFullStats => 'すべての統計を解放';

  @override
  String get premiumStatsMessage =>
      '気分の傾向と飲酒欲求のパターンはPremium機能です。アップグレードしてすべての統計を確認しましょう。';

  @override
  String get healthMilestonesWillAppear => '健康のマイルストーンがここに表示されます。';

  @override
  String get healthMilestones => '健康のマイルストーン';

  @override
  String dayNumber(int day) {
    return '$day日目';
  }

  @override
  String get soberLabel => '禁酒中';

  @override
  String get slipLabel => '再飲酒';

  @override
  String get noDataLabel => 'データなし';

  @override
  String get milestone24Hours => '24時間';

  @override
  String get milestoneOneWeek => '1週間';

  @override
  String get milestoneOneMonth => '1か月';

  @override
  String get milestoneThreeMonths => '3か月';

  @override
  String get milestoneSixMonths => '6か月';

  @override
  String get milestoneOneYear => '1年';

  @override
  String milestoneDayCount(int day) {
    return '$day日目のマイルストーン';
  }

  @override
  String get maybeLaterLabel => 'また今度';

  @override
  String get cancelLabel => 'キャンセル';
}
