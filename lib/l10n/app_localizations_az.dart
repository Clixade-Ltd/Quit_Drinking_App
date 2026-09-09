// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get skip => 'Keç';

  @override
  String get continueButton => 'Davam et';

  @override
  String get getStarted => 'Başla';

  @override
  String get onboardingTitle1 => 'Həyatınızın Nəzarətini Ələ Alın';

  @override
  String get onboardingSubtitle1 =>
      'Səyahətinizi izləyin, hər bir uğurunuzu qeyd edin və hər gün daha sağlam olun.';

  @override
  String get onboardingTitle2 => 'Sizin AI Bərpa Yoldaşınız';

  @override
  String get onboardingSubtitle2 =>
      'Səyahətinizə uyğun fərdiləşdirilmiş rəhbərlik, sağlam vərdişlər, motivasiya xatırlatmaları və tərəqqi hesabatları alın.';

  @override
  String get goodMorning => 'Sabahınız xeyir';

  @override
  String get goodAfternoon => 'Hər vaxtınız xeyir';

  @override
  String get goodEvening => 'Axşamınız xeyir';

  @override
  String get goodNight => 'Gecəniz xeyrə qalsın';

  @override
  String get embracingClarity => 'Aydınlığı qəbul edirik, hər gün addım-addım.';

  @override
  String get streakLabel => 'ARDICILLIQ';

  @override
  String get goalLabel => 'Hədəf';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Gün',
      one: '$count Gün',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Premium Plan';

  @override
  String get premiumPlanSubtitle => 'Tam bərpa təcrübənizi aktivləşdirin';

  @override
  String get accountAndSupport => 'HESAB VƏ DƏSTƏK';

  @override
  String get privacyPolicy => 'Məfılik Siyasəti';

  @override
  String get privacyPolicySubtitle =>
      'Məlumat paylaşımını və hesab təhlükəsizliyini idarə edin';

  @override
  String get termsOfService => 'Xidmət Şərtləri';

  @override
  String get termsOfServiceSubtitle =>
      'Tez-tez verilən suallar, bizimlə əlaqə və resurslar';

  @override
  String get shareApp => 'Tətbiqi Paylaşın';

  @override
  String get shareAppSubtitle => 'Tətbiqi dostlarınızla paylaşın';

  @override
  String get resetData => 'Məlumatları Sıfırla';

  @override
  String get resetDataSubtitle => 'Bu cihazda saxlanılan hər şeyi silin';

  @override
  String get resetAllDataTitle => 'Bütün məlumatlar sıfırlansın?';

  @override
  String get resetAllDataMessage =>
      'Bu əməliyyat bu cihazda saxlanılan hər şeyi — profili, gündəlik yazıları və tərəqqini siləcək və bunu geri qaytarmaq mümkün deyil.';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get reset => 'Sıfırla';

  @override
  String get chooseFromGallery => 'Qalereyadan seçin';

  @override
  String get takePhoto => 'Şəkil çəkin';

  @override
  String get removePhoto => 'Şəkli silin';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Şəkil yenilənə bilmədi: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Şəkil silinə bilmədi: $error';
  }

  @override
  String get photoTooLarge =>
      'Bu şəkil sıxıldıqdan sonra belə çox böyükdür — xahiş edirik başqasını sınayın.';

  @override
  String get unableToLoadProfile => 'Profiliniz yüklənə bilmədi';

  @override
  String get pleaseTryAgain => 'Xahiş edirik yenidən cəhd edin.';

  @override
  String get tryAgain => 'Yenidən Cəhd Edin';

  @override
  String get profileNotFound => 'Profil tapılmadı';

  @override
  String get refresh => 'Yenilə';

  @override
  String get noProfileDataFound =>
      'Bu cihazda hələ heç bir profil məlumatı tapılmadı.';

  @override
  String couldNotResetData(String error) {
    return 'Məlumatlar sıfırlana bilmədi: $error';
  }

  @override
  String get navHome => 'Ana Səhifə';

  @override
  String get navStats => 'Statistika';

  @override
  String get navJournal => 'Gündəlik';

  @override
  String get navBadges => 'Nişanlar';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature funksiyası tezliklə əlçatan olacaq.';
  }

  @override
  String get appWordmark => 'SAĞLAMLIQ';

  @override
  String get appTitle => 'İçkini tərgit';

  @override
  String get splashSubtitle => 'Alkoqolsuz bir həyata doğru\nilk addımı atın';

  @override
  String get preparingJourney => 'Səyahətiniz\nhazırlanır';

  @override
  String get taskMorningMeditation => 'Səhər Meditasiyası (10 dəq)';

  @override
  String get taskReadChapter =>
      '\"The Sober Diaries\" kitabının 4-cü fəslini oxuyun';

  @override
  String get taskEveningJournal => 'Axşam Minnətdarlıq Gündəliyi';

  @override
  String get close => 'Bağla';

  @override
  String get youAreDoingGreat => 'Əla gedirsiniz!';

  @override
  String get shareMilestone => 'Uğuru Paylaşın';

  @override
  String shareMilestoneMessage(int days) {
    return 'Bərpa səyahətimin $days-ci günündəyəm! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Bərpa uğurum';

  @override
  String get weeklyReportReadyTitle => 'Həftəlik hesabatınız hazırdır';

  @override
  String get weeklyReportReadySubtitle =>
      'Həftənizin necə keçdiyini görmək üçün toxunun';

  @override
  String get howAreYouFeeling => 'Necə hiss edirsiniz?';

  @override
  String get moodTough => 'Çətin';

  @override
  String get moodOkay => 'Yaxşı';

  @override
  String get moodGood => 'Əla';

  @override
  String get moneySaved => 'Qənaət Olunmuş Pul';

  @override
  String get caloriesSaved => 'Qənaət Olunmuş Kalori';

  @override
  String get healthScore => 'Sağlamlıq Xalı';

  @override
  String get drinksAvoided => 'İçilməmiş İki';

  @override
  String get estimated => 'Təxmini';

  @override
  String get aiGenerated => 'AI tərəfindən yaradılıb';

  @override
  String get daysCapsLabel => 'GÜN';

  @override
  String get todaysMotivation => 'Günün Motivasiyası';

  @override
  String get defaultMotivationQuote =>
      'Öhdəliyinizi uğurla qoruyub saxladınız. Müsbət dəyişiklik dalğasında irəliləməyə davam edin.';

  @override
  String get talkToCoach => 'Məşqçi ilə danışın';

  @override
  String get havingACraving => 'Şiddətli İstəyim Var';

  @override
  String get unlockWeeklyReportsTitle => 'Həftəlik hesabatları aktivləşdirin';

  @override
  String get unlockWeeklyReportsMessage =>
      'Hər həftə alkoqolsuz günlərinizi, əhval-ruhiyyə trendlərinizi və fərdiləşdirilmiş AI rəylərini görün. Aktivləşdirmək üçün Premium-a yüksəldin.';

  @override
  String get maybeLater => 'Bəlkə sonra';

  @override
  String get upgrade => 'Yüksəlt';

  @override
  String get weeklyReportTitle => 'Həftəlik Hesabat';

  @override
  String get weeklyReportsPremiumTitle =>
      'Həftəlik hesabatlar Premium funksiyadır';

  @override
  String get weeklyReportsPremiumMessage =>
      'Hər həftə ayıq günlərinizi, əhval-ruhiyyə trendlərinizi, şiddətli istəklərinizi və fərdiləşdirilmiş AI rəylərini görün.';

  @override
  String get upgradeToPremium => 'Premium-a yüksəldin';

  @override
  String get couldNotGenerateReport =>
      'İndiki vaxtda hesabatınızı yaratmaq mümkün olmadı.';

  @override
  String get tryAgainLower => 'Yenidən cəhd edin';

  @override
  String get statSoberDays => 'Ayıq günlər';

  @override
  String get statAvgMood => 'Orta əhval-ruhiyyə';

  @override
  String get statCravings => 'Şiddətli istəklər';

  @override
  String get statMoneySaved => 'Qənaət olunmuş pul';

  @override
  String get coachFeedback => 'Məşqçi rəyi';

  @override
  String get journalInsights => 'Gündəlik təhlilləri';

  @override
  String get next => 'Növbəti';

  @override
  String get question1Title => 'Hədəfiniz nədir';

  @override
  String get question1Subtitle => 'Sizin üçün ən vacib olan\nhədəfi seçin';

  @override
  String get goalQuitCompletely => 'Tamamilə Tərk Etmək';

  @override
  String get goalReduceDrinking => 'İçki İstifadəsini Azaltmaq';

  @override
  String get goalTakeABreak => 'Fasilə Vermək';

  @override
  String get goalBuildHealthierHabits => 'Daha Sağlam Vərdişlər Qazanmaq';

  @override
  String get question3Title => 'Bizə rejiminiz haqqında\ndanışın';

  @override
  String get drinksPerWeek => 'Həftəlik içki sayı';

  @override
  String get moneySpentPerWeek => 'Həftəlik xərclənən pul';

  @override
  String get drinkingLevel => 'İçki istifadə səviyyəsi';

  @override
  String get triggersLabel => 'Tətikləyicilər (Triggers)';

  @override
  String get levelSocial => 'Sosial';

  @override
  String get levelRegular => 'Müntəzəm';

  @override
  String get levelHeavy => 'Ağır';

  @override
  String get levelDependent => 'Asılı';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Tənhalıq';

  @override
  String get triggerHabit => 'Vərdiş';

  @override
  String get triggerSadness => 'Kədər';

  @override
  String get triggerAnger => 'Qəzəb';

  @override
  String get triggerBoredom => 'Darıxdırıcılıq';

  @override
  String get triggerSocialPressure => 'Sosial təzyiq';

  @override
  String get triggerCelebration => 'Qeyd etmə';

  @override
  String get triggerSleepProblems => 'Yuxu problemləri';

  @override
  String get triggerWorkPressure => 'İş təzyiqi';

  @override
  String get question4Title => 'Niyə dəyişmək istəyirsiniz?';

  @override
  String get question4Subtitle =>
      'Səbəbiniz sizi motivasiya etməyə kömək edəcək.';

  @override
  String get reasonImproveHealth => 'Sağlamlığımı Yaxşılaşdırmaq';

  @override
  String get reasonSaveMoney => 'Pul Qənaət Etmək';

  @override
  String get reasonFamily => 'Ailə';

  @override
  String get reasonBetterSleep => 'Daha Yaxşı Yuxu';

  @override
  String get reasonMentalClarity => 'Zehni Aydınlıq';

  @override
  String get reasonFitness => 'Fiziki Formada Olmaq';

  @override
  String get reasonSelfRespect => 'Özünə Hörmət';

  @override
  String get reasonCareer => 'Karyera';

  @override
  String get milestoneUnlockedLabel => 'UĞUR AKTİVLƏŞDİ';

  @override
  String incredibleNamePrefix(String name) {
    return 'İnanılmazdır, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount qənaət edildi';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count dənə içilmədi';
  }

  @override
  String get shareMyMilestone => 'Uğurumu paylaşın';

  @override
  String get milestoneImageShareError =>
      'Uğur şəkli yaradıla bilmədi. Xahiş edirik yenidən cəhd edin.';

  @override
  String get dailyCheckInTitle => 'Gündəlik Yoxlama';

  @override
  String get howAreYouFeelingToday => 'Bu gün necə hiss edirsiniz?';

  @override
  String get honestAnswerHelp =>
      'Dürüst cavabınız sizə daha yaxşı dəstək olmağımıza kömək edir';

  @override
  String get didYouDrinkToday => 'Bu gün içki içdiniz?';

  @override
  String get noLabel => 'Xeyr';

  @override
  String get yesLabel => 'Bəli';

  @override
  String get cravingLevelNow => 'İndi şiddətli istək səviyyəsi?';

  @override
  String get anythingOnMind => 'Ağlınızda bir şey var?';

  @override
  String get optionalLabel => '(isteğe bağlı)';

  @override
  String get dailyNoteHint =>
      'Gününüz, tətikləyicilər, qələbələriniz haqqında yazın...';

  @override
  String get alreadyCheckedInToday => 'Bu gün artıq yoxlanılıb';

  @override
  String get saveCheckIn => 'Yoxlamanı yadda saxlayın';

  @override
  String get checkInsHelpTrack =>
      'Yoxlamalar zaman keçdikcə tərəqqinizi izləməyə kömək edir';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Siz artıq bu günkü yoxlamanı tamamlamısınız.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Xahiş edirik əvvəlcə yuxarıdakı hər iki suala cavab verin';

  @override
  String get checkInSaved => 'Yoxlama yadda saxlanıldı';

  @override
  String get cravingNone => 'Xeyr';

  @override
  String get cravingLow => 'Aşağı';

  @override
  String get cravingMedium => 'Orta';

  @override
  String get cravingStrong => 'Güclü';

  @override
  String get moodBad => 'Pıs';

  @override
  String get moodLow => 'Aşağı';

  @override
  String get moodGreat => 'Möhtəşəm';

  @override
  String get sosSupportTitle => 'SOS Dəstəyi';

  @override
  String notAloneMessage(String name) {
    return 'Tək deyilsiniz, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Şiddətli istəklər keçir. Bu anı dəf etməyə kömək etmək üçün aşağıdan birini seçin.';

  @override
  String get breathingExercise => 'Nəfəs məşqi';

  @override
  String get breathingExerciseSubtitle =>
      'Yönləndirilmiş 4-7-8 texnikası, 2 dəqiqə';

  @override
  String get rideTheWave => 'Dalğanı dəf edin';

  @override
  String get rideTheWaveSubtitle =>
      '15 dəqiqəlik taymer — istəklər həmişə keçir';

  @override
  String get copingTips => 'Öhdəsindən gəlmə məsləhətləri';

  @override
  String get copingTipsSubtitle =>
      'Tətikləyiciləriniz üçün fərdiləşdirilmiş strategiyalar';

  @override
  String get talkToAiCoach => 'AI məşqçisi ilə danışın';

  @override
  String get talkToAiCoachSubtitle => 'Bərpa yoldaşınızla söhbət edin';

  @override
  String get callSomeone => 'Kiməsə zəng edin';

  @override
  String get callSomeoneSubtitle => 'Etibarlı əlaqə şəxsinizə müraciət edin';

  @override
  String get contactsPermissionNeeded =>
      'Əlaqə şəxsini aramaq üçün kontakt icazəsi lazımdır.';

  @override
  String get beatenCravingsPrefix => 'Siz şiddətli istəkləri daha əvvəl ';

  @override
  String beatenCravingsCount(int count) {
    return '$count dəfə';
  }

  @override
  String get beatenCravingsSuffix => ' dəf etmisiniz. Yenidən edə bilərsiniz.';

  @override
  String get tellUsAboutYourself => 'Özünüz haqqında danışın';

  @override
  String get detailsSubtitle =>
      'Bu məlumat bərpa səyahətinizi fərdiləşdirməyə və dəqiq təhlillər təqdim etməyə kömək edir.';

  @override
  String get nameLabel => 'Ad';

  @override
  String get nameHint => 'məsələn, Əli Məmmədov';

  @override
  String get ageLabel => 'Yaş';

  @override
  String get ageHint => 'məsələn, 32';

  @override
  String get sexAssignedAtBirth => 'Doğulanda təyin olunan cins';

  @override
  String get sexFemale => 'Qadın';

  @override
  String get sexMale => 'Kişi';

  @override
  String get heightLabel => 'Boy';

  @override
  String get weightLabel => 'Çəki';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Gündəlik limitə çatıldı';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Bu gün bütün $limit pulsuz mesajınızı istifadə etdiniz. Limitiz söhbət üçün Premium-a yüksəldin.';
  }

  @override
  String get coachConnectError =>
      'İndi qoşulmaq mümkün olmadı. Xahiş edirik bir az sonra yenidən cəhd edin.';

  @override
  String get clearConversationTitle => 'Söhbət təmizlənsin?';

  @override
  String get clearConversationMessage =>
      'Bu əməliyyat məşqçi söhbət tarixçənizi həmişəlik siləcəkdir.';

  @override
  String get clearLabel => 'Təmizlə';

  @override
  String get recoveryCoachTitle => 'Bərpa məşqçisi';

  @override
  String get onlineLabel => 'Onlayn';

  @override
  String get clearConversationMenuItem => 'Söhbəti təmizlə';

  @override
  String chatGreeting(String name) {
    return 'Salam $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Səyahətinizin $days-ci günündəsiniz. Nə vaxt danışmaq istəsəniz, buradayam.';
  }

  @override
  String get quickPromptsLabel => 'TEZ SUALLAR';

  @override
  String get promptCravingLabel => 'Şiddətli istəyim var';

  @override
  String get promptCravingSubtitle => 'Tez sakitləşin';

  @override
  String get promptMotivationLabel => 'Motivasiyaya ehtiyacım var';

  @override
  String get promptMotivationSubtitle => 'Çətin anlarda dəstək';

  @override
  String get promptSocialLabel => 'Sosial vəziyyət';

  @override
  String get promptSocialSubtitle => 'Məclisi idarə edin';

  @override
  String get promptSlippedLabel => 'Sürüşdüm/içdim';

  @override
  String get promptSlippedSubtitle => 'Qınama yoxdur, yalnız dəstək';

  @override
  String get typeMessageHint => 'Mesaj yazın...';

  @override
  String get editProfileTitle => 'Profili Redaktə Et';

  @override
  String couldNotSaveProfile(String error) {
    return 'Profil yadda saxlanıla bilmədi: $error';
  }

  @override
  String get heightCmLabel => 'Boy (sm)';

  @override
  String get weightKgLabel => 'Çəki (kq)';

  @override
  String get saveChangesLabel => 'Dəyişiklikləri Yadda Saxla';

  @override
  String get premiumBadgeLabel => 'PREMİUM';

  @override
  String get featureAdvancedInsights => 'Qabaqcıl Təhlillər və Statistika';

  @override
  String get featureUnlimitedJournal => 'Limmitsiz Gündəlik Yazıları';

  @override
  String get featureUnlimitedChat => 'AI Məşqçisi ilə Limitiz Söhbət';

  @override
  String get featureCommunityGroups => 'Eksklüziv İcma Qrupları';

  @override
  String get featurePrioritySupport => 'Prioritet Mütəxəssis Dəstəyi';

  @override
  String get featureThemePacks => 'Xüsusi Mövzu Paketləri';

  @override
  String get featureDataExport => 'Məlumatların İxracı';

  @override
  String get featureAdFree => 'Reklamsız Təcrübə';

  @override
  String get premiumMemberTitle => 'Siz Premium Üzvüsünüz';

  @override
  String get unlockFullRecoveryTitle => 'Tam Bərpa Təcrübənizi\nAktivləşdirin';

  @override
  String get premiumMemberSubtitle =>
      'Bərpa səyahətinizi dəstəklədiyiniz üçün təşəkkür edirik — aşağıdakı bütün premium funksiyalar aktivləşdirilib.';

  @override
  String get premiumJoinSubtitle =>
      'Premium alətlərimiz və fərdiləşdirilmiş dəstəyimizlə bərpa səyahətlərini sürətləndirən minlərlə insanın icmasına qoşulun.';

  @override
  String get monthlyPlanLabel => 'Aylıq';

  @override
  String get perMonthSuffix => '/ay';

  @override
  String get cancelAnytimeLabel => 'İstənilən vaxt ləğv edin';

  @override
  String get yearlyPlanLabel => 'İllik';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'İllik $amount olaraq hesablanır';
  }

  @override
  String get bestValueLabel => 'Ən Sərfəli';

  @override
  String get alreadyPremiumLabel => 'Siz Premiumsiniz ✓';

  @override
  String get startPremiumLabel => 'Premium-a Başlayın';

  @override
  String get manageSubscriptionLabel =>
      'Cihazınızın abunəlik parametrlərindən idarə edin və ya ləğv edin.';

  @override
  String get noCommitmentLabel => 'Öhdəlik yoxdur. İstənilən vaxt ləğv edin.';

  @override
  String get continueFreePlanLabel => 'Pulsuz Plan ilə Davam Et';

  @override
  String get backToHomeLabel => 'Ana Səhifəyə Qayıt';

  @override
  String get cancelPremiumLabel => 'Premium-u Ləğv Et';

  @override
  String get cancelPremiumTitle => 'Premium ləğv edilsin?';

  @override
  String get cancelPremiumMessage =>
      'Limitsiz gündəlik yazılarına, məşqçi söhbətinə, statistika təhlillərinə və həftəlik hesabatlara girişinizi itirəcəksiniz. İstənilən vaxt yenidən abunə ola bilərsiniz.';

  @override
  String get keepPremiumLabel => 'Premium-da Qal';

  @override
  String get nowPremiumMessage =>
      'İndi Premium üzvsünüz! Tam bərpa təcrübənizdən həzz alın.';

  @override
  String get premiumCancelledMessage =>
      'Premium ləğv edildi. Pulsuz plana qayıtdınız.';

  @override
  String get termsOfUseLabel => 'İstifadə Şərtləri';

  @override
  String get navHomeLabel => 'Ana Səhifə';

  @override
  String get navStatsLabel => 'Statistika';

  @override
  String get navJournalLabel => 'Gündəlik';

  @override
  String get navBadgesLabel => 'Nişanlar';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Bərpa Hədəfləri';

  @override
  String get drinksPerWeekLabel => 'Həftəlik içki sayı';

  @override
  String get quitReasonsLabel => 'Tərk etmə səbəbləri';

  @override
  String get quitReasonsHelperText => 'Çoxsaylı səbəbləri vergüllə ayırın.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Bərpa hədəfləri yadda saxlanıla bilmədi: $error';
  }

  @override
  String get goalHint => 'məsələn, Tam İmtina';

  @override
  String get drinksPerWeekHint => 'məsələn, 12';

  @override
  String get quitReasonsHint => 'məsələn, Sağlamlıq, Ailə, Pul';

  @override
  String get todaysPrompt => 'Günün sualı';

  @override
  String get defaultJournalPrompt => 'Bu gün ağlınızda nə var?';

  @override
  String get aiJournalInsights => 'AI gündəlik təhlilləri';

  @override
  String get unlockJournalInsightsMessage =>
      'Gündəlik yazılarınızdan həftəlik modelləri, əhval trendlərini və fərdiləşdirilmiş təhlilləri aktivləşdirin.';

  @override
  String get notEnoughJournalData =>
      'Hələ kifayət qədər məlumat yoxdur — bu həftə bir neçə yazı yazın və yenidən yoxlayın.';

  @override
  String get openEntry => 'Aç';

  @override
  String get editEntry => 'Düzəliş et';

  @override
  String get deleteEntry => 'Sil';

  @override
  String get searchJournalEntries => 'Yazılarda axtarın...';

  @override
  String get writeNewEntry => 'Yeni yazı yazın';

  @override
  String get recentEntries => 'Son Yazılar';

  @override
  String get noJournalEntriesYet =>
      'Hələ ki gündəlik yazısı yoxdur — ilk düşüncənizi yuxarıda yazın.';

  @override
  String get noEntriesMatchFilters => 'Filtrlərinizə uyğun gələn yazı yoxdur.';

  @override
  String get weeklyJournalLimitReached => 'Həftəlik limitə çatıldı';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Bu həftə bütün $limit pulsuz gündəlik yazınızı istifadə etdiniz. Limitsiz yazılar üçün Premium-a yüksəldin.';
  }

  @override
  String get newEntry => 'Yeni yazı';

  @override
  String get writeYourThoughts => 'Düşüncələrinizi yazın';

  @override
  String get saveEntry => 'Yazını Yadda Saxla';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Bu həftə $limit pulsuz yazıdan $remaining dənəsi qaldı';
  }

  @override
  String get deleteEntryQuestion => 'Yazı silinsin?';

  @override
  String get deleteEntryConfirmation =>
      'Bu yazı həmişəlik silinəcəkdir. Bu əməliyyatı geri qaytarmaq mümkün deyil.';

  @override
  String get journalEntryNotFound => 'Yazı tapılmadı';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Bu gündəlik yazısı silinmiş ola bilər.';

  @override
  String get goBack => 'Geri qayıt';

  @override
  String get journalEntryTitle => 'Gündəlik Yazısı';

  @override
  String get moodStruggling => 'Çətinlik çəkir';

  @override
  String get moodUnwell => 'Xəstə';

  @override
  String get moodNeutral => 'Bitərəf';

  @override
  String get whatHappenedToday => 'Bu gün nə baş verdi?';

  @override
  String get trigger => 'Tətikləyici';

  @override
  String get whatHelped => 'Nə kömək etdi';

  @override
  String get whatIllTryNextTime => 'Gələn dəfə nəyi sınayacağam';

  @override
  String get journalPrivacyMessage =>
      'Düşüncəniz məxfidir və gündəliyinizdə saxlanılır.';

  @override
  String get unlocked => 'Aktivleşdi';

  @override
  String daysLeft(int count) {
    return '$count gün qaldı';
  }

  @override
  String daysCount(int count) {
    return '$count Gün';
  }

  @override
  String get firstReflection => 'İlk\nDüşüncə';

  @override
  String get oneJournalEntry => '1 Gündəlik Yazısı';

  @override
  String get openBook => 'Açıq Kitab';

  @override
  String get tenJournalEntries => '10 Gündəlik Yazısı';

  @override
  String get dedicatedWriter => 'Sadiq\nYazıçı';

  @override
  String get thirtyJournalEntries => '30 Gündəlik Yazısı';

  @override
  String get firstConversation => 'İlk\nSöhbət';

  @override
  String get oneAiCoachChat => '1 AI Məşqçi Söhbəti';

  @override
  String get keepTalking => 'Danışmağa Davam Edin';

  @override
  String get fiveConversations => '5 Söhbət';

  @override
  String get coachCompanion => 'Məşqçi\nYoldaşı';

  @override
  String get twentyConversations => '20 Söhbət';

  @override
  String get checkInHabit => 'Yoxlama\nVərdişi';

  @override
  String get sevenCheckIns => '7 Yoxlama';

  @override
  String get consistencyPro => 'Mütəmadi\nMütəxəssis';

  @override
  String get thirtyCheckIns => '30 Yoxlama';

  @override
  String get dedicatedJourney => 'Sadiq\nSəyahət';

  @override
  String get hundredCheckIns => '100 Yoxlama';

  @override
  String get goalGetter => 'Hədəfə Çatan';

  @override
  String get threeGoalsCompleted => '3 Hədəf Tamamlandı';

  @override
  String get goalAchiever => 'Hədəf\nQazananı';

  @override
  String get tenGoalsCompleted => '10 Hədəf Tamamlandı';

  @override
  String get firstSavings => 'İlk\nQənaət';

  @override
  String get fiveHundredSaved => '\$500 Qənaət Edildi';

  @override
  String get smartSaver => 'Ağıllı Qənaətcil';

  @override
  String get oneThousandSaved => '\$1,000 Qənaət Edildi';

  @override
  String get bigSaver => 'Böyük Qənaətcil';

  @override
  String get fiveThousandSaved => '\$5,000 Qənaət Edildi';

  @override
  String currencyProgress(String current, String target) {
    return '\$$target məbləğindən \$$current';
  }

  @override
  String countProgress(int current, int target) {
    return '$target sayından $current';
  }

  @override
  String get firstMilestoneWaiting =>
      'Davam edin — ilk uğurunuz sizi gözləyir!';

  @override
  String get badgesAndMilestones => 'Nişanlar və Uğurlar';

  @override
  String get yourMilestoneJourney => 'Uğur Səyahətiniz';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uğur qazanıldı.\nGörmək üçün toxunun',
      one: '$count uğur qazanıldı.\nGörmək üçün toxunun',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Səyahətinizdə $total uğurdan $unlocked dənəsini aktivləşdirdiniz.';
  }

  @override
  String get remaining => 'Qalan';

  @override
  String get complete => 'Tamamlandı';

  @override
  String get nextMilestone => 'Növbəti Uğur';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% tamamlandı';
  }

  @override
  String get sobrietyMilestones => 'Ayıqlıq Uğurları';

  @override
  String get journeyBadges => 'Səyahət Nişanları';

  @override
  String get bronze => 'TÜNC';

  @override
  String get silver => 'GÜMÜŞ';

  @override
  String get gold => 'QIZIL';

  @override
  String get platinum => 'PLATİN';

  @override
  String get diamond => 'ALMAZ';

  @override
  String get analyzingYourJourney => 'Səyahətiniz Təhlil Edilir...';

  @override
  String get aiCreatingSanctuary =>
      'AI sistemimiz sizin üçün fərdiləşdirilmiş təhlükəsiz məkan yaradır.';

  @override
  String get understandingHabits => 'Vərdişlərin anlanması...';

  @override
  String get calculatingBaseline => 'Başlanğıç səviyyənizin hesablanması...';

  @override
  String get personalizingPlan => 'Planınızın fərdiləşdirilməsi...';

  @override
  String get finalizingSanctuary => 'Məkanınızın yekunlaşdırılması...';

  @override
  String get creatingYourPlan => 'Planınızın yaradılması...';

  @override
  String get personalizedPlanError =>
      'Fərdiləşdirilmiş planınızı yarada bilmədik. Xahiş edirik yenidən cəhd edin.';

  @override
  String get retry => 'Yenidən Cəhd Et';

  @override
  String get breathInhale => 'NƏFƏS ALIN';

  @override
  String get breathHold => 'SAXLAYIN';

  @override
  String get breathExhale => 'NƏFƏS VERİN';

  @override
  String get breathDone => 'BITDI';

  @override
  String get breathGreatJob => 'Əla iş!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bu gün $count seans',
      one: 'Bu gün $count seans',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Məşqi Bitir';

  @override
  String get done => 'Bitdi';

  @override
  String get noCopingTipsYet => 'Hələ öhdəsindən gəlmə məsləhətləri yoxdur';

  @override
  String get copingStrategiesWillAppear =>
      'Bərpa planınız yaradıldıqdan sonra fərdiləşdirilmiş öhdəsindən gəlmə strategiyalarınız burada görünəcək.';

  @override
  String get strategiesTailoredToTriggers =>
      'Tətikləyicilərinizə uyğunlaşdırılmış strategiyalar';

  @override
  String get cravingsPeakAndPass => 'Şiddətli istəklər zirvəyə çatır\nvə keçir';

  @override
  String get rideTheWaveDescription =>
      'Əksər şiddətli istəklər 15 dəqiqə ərzində keçir. Buna əməl etmək məcburiyyətində deyilsiniz — sadəcə bizimlə dəf edin.';

  @override
  String get stayWithIt => 'dözün';

  @override
  String get youMadeIt => 'bacardınız';

  @override
  String get readyWhenYouAre => 'hazır olduğunuzda';

  @override
  String get rideItAgain => 'Yenidən dəf edin';

  @override
  String get start15MinuteTimer => '15 Dəqiqəlik Taymeri Başladın';

  @override
  String get rideTheWaveCompletedMessage =>
      'Dalğanı dəf etdiniz. Bu əsl gücdür. 💪';

  @override
  String get myProgress => 'Mənim Tərəqqim';

  @override
  String get weekLabel => 'Həftə';

  @override
  String get monthLabel => 'Ay';

  @override
  String get allLabel => 'Hamısı';

  @override
  String get daysSoberStatLabel => 'Ayıq\ngünlər';

  @override
  String get savedStatLabel => 'Qənaət';

  @override
  String get avoidedStatLabel => 'İçilməyən';

  @override
  String get moodTrends => 'Əhval trendləri';

  @override
  String get cravingsPattern => 'Şiddətli istək modeli';

  @override
  String get unlockLabel => 'Aktivləşdir';

  @override
  String get unlockFullStats => 'Tam statistikanı aktivləşdirin';

  @override
  String get premiumStatsMessage =>
      'Əhval trendləri və istək modelləri Premium funksiyalardır. Tam statistikanızı görmək üçün yüksəldin.';

  @override
  String get healthMilestonesWillAppear =>
      'Sağlamlıq uğurlarınız burada görünəcək.';

  @override
  String get healthMilestones => 'Sağlamlıq uğurları';

  @override
  String dayNumber(int day) {
    return '$day-ci Gün';
  }

  @override
  String get soberLabel => 'Ayıq';

  @override
  String get slipLabel => 'Sürüşmə';

  @override
  String get noDataLabel => 'Məlumat yoxdur';

  @override
  String get milestone24Hours => '24 Saat';

  @override
  String get milestoneOneWeek => 'Bir Həftə';

  @override
  String get milestoneOneMonth => 'Bir Ay';

  @override
  String get milestoneThreeMonths => 'Üç Ay';

  @override
  String get milestoneSixMonths => 'Altı Ay';

  @override
  String get milestoneOneYear => 'Bir İl';

  @override
  String milestoneDayCount(int day) {
    return '$day-ci Gün Uğuru';
  }

  @override
  String get maybeLaterLabel => 'Bəlkə sonra';

  @override
  String get cancelLabel => 'Ləğv et';
}
