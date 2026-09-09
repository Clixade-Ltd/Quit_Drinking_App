// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get skip => 'Atla';

  @override
  String get continueButton => 'Devam Et';

  @override
  String get getStarted => 'Başla';

  @override
  String get onboardingTitle1 => 'Hayatının Kontrolünü Eline Al';

  @override
  String get onboardingSubtitle1 =>
      'Yolculuğunu takip et, her başarını kutla ve her geçen gün daha sağlıklı biri ol.';

  @override
  String get onboardingTitle2 => 'Yapay Zeka Destekli İyileşme Yoldaşın';

  @override
  String get onboardingSubtitle2 =>
      'Yolculuğuna özel kişiselleştirilmiş rehberlik, sağlıklı alışkanlıklar, motivasyon hatırlatıcıları ve gelişim raporları al.';

  @override
  String get goodMorning => 'Günaydın';

  @override
  String get goodAfternoon => 'Tünaydın';

  @override
  String get goodEvening => 'İyi Akşamlar';

  @override
  String get goodNight => 'İyi Geceler';

  @override
  String get embracingClarity =>
      'Her gün, adım adım zihinsel berraklığı kucaklıyoruz.';

  @override
  String get streakLabel => 'SERİ';

  @override
  String get goalLabel => 'Hedef';

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
  String get premiumPlanSubtitle =>
      'Eksiksiz iyileşme deneyiminin kilidini açın';

  @override
  String get accountAndSupport => 'HESAP VE DESTEK';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get privacyPolicySubtitle =>
      'Veri paylaşımını ve hesap güvenliğini yönetin';

  @override
  String get termsOfService => 'Hizmet Şartları';

  @override
  String get termsOfServiceSubtitle => 'SSS, bize ulaşın ve kaynaklar';

  @override
  String get shareApp => 'Uygulamayı Paylaş';

  @override
  String get shareAppSubtitle => 'Uygulamayı arkadaşlarınızla paylaşın';

  @override
  String get resetData => 'Verileri Sıfırla';

  @override
  String get resetDataSubtitle => 'Bu cihazda kayıtlı her şeyi silin';

  @override
  String get resetAllDataTitle => 'Tüm veriler sıfırlansın mı?';

  @override
  String get resetAllDataMessage =>
      'Bu işlem cihazdaki profil, günlük girdileri ve ilerleme dahil her şeyi siler ve geri alınamaz.';

  @override
  String get cancel => 'İptal';

  @override
  String get reset => 'Sıfırla';

  @override
  String get chooseFromGallery => 'Galeriden Seç';

  @override
  String get takePhoto => 'Fotoğraf Çek';

  @override
  String get removePhoto => 'Fotoğrafı Kaldır';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Fotoğraf güncellenemedi: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Fotoğraf kaldırılamadı: $error';
  }

  @override
  String get photoTooLarge =>
      'Bu fotoğraf sıkıştırıldıktan sonra bile çok büyük — lütfen başka bir fotoğraf deneyin.';

  @override
  String get unableToLoadProfile => 'Profiliniz yüklenemedi';

  @override
  String get pleaseTryAgain => 'Lütfen tekrar deneyin.';

  @override
  String get tryAgain => 'Tekrar Deneyin';

  @override
  String get profileNotFound => 'Profil bulunamadı';

  @override
  String get refresh => 'Yenile';

  @override
  String get noProfileDataFound => 'Bu cihazda henüz profil verisi bulunamadı.';

  @override
  String couldNotResetData(String error) {
    return 'Veriler sıfırlanamadı: $error';
  }

  @override
  String get navHome => 'Ana Sayfa';

  @override
  String get navStats => 'İstatistikler';

  @override
  String get navJournal => 'Günlük';

  @override
  String get navBadges => 'Rozetler';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature özelliği yakında kullanıma sunulacak.';
  }

  @override
  String get appWordmark => 'SAĞLIK & YAŞAM';

  @override
  String get appTitle => 'İçkiyi Bırak';

  @override
  String get splashSubtitle => 'Alkolsuz bir hayata doğru\nilk adımı atın';

  @override
  String get preparingJourney => 'Yolculuğunuz\nhazırlanıyor';

  @override
  String get taskMorningMeditation => 'Sabah Meditasyonu (10dk)';

  @override
  String get taskReadChapter =>
      '\"The Sober Diaries\" Kitabından 4. Bölümü Oku';

  @override
  String get taskEveningJournal => 'Akşam Minnet Günlüğü';

  @override
  String get close => 'Kapat';

  @override
  String get youAreDoingGreat => 'Harika gidiyorsun!';

  @override
  String get shareMilestone => 'Kilometre Taşını Paylaş';

  @override
  String shareMilestoneMessage(int days) {
    return 'İyileşme yolculuğumun $days. günündeyim! 💪';
  }

  @override
  String get shareMilestoneSubject => 'İyileşme kilometre taşım';

  @override
  String get weeklyReportReadyTitle => 'Haftalık raporunuz hazır';

  @override
  String get weeklyReportReadySubtitle =>
      'Haftanızın nasıl geçtiğini görmek için dokunun';

  @override
  String get howAreYouFeeling => 'Nasıl hissediyorsun?';

  @override
  String get moodTough => 'Zor';

  @override
  String get moodOkay => 'İdare Eder';

  @override
  String get moodGood => 'İyi';

  @override
  String get moneySaved => 'Tasarruf Edilen Para';

  @override
  String get caloriesSaved => 'Alınmayan Kalori';

  @override
  String get healthScore => 'Sağlık Puanı';

  @override
  String get drinksAvoided => 'İçilmeyen İçecek';

  @override
  String get estimated => 'Tahmini';

  @override
  String get aiGenerated => 'Yapay Zeka Tarafından Oluşturuldu';

  @override
  String get daysCapsLabel => 'GÜN';

  @override
  String get todaysMotivation => 'Günün Motivasyonu';

  @override
  String get defaultMotivationQuote =>
      'Kararlılığınızı başarıyla sürdürdünüz. Pozitif değişim rüzgarını arkanıza almaya devam edin.';

  @override
  String get talkToCoach => 'Koçla Konuş';

  @override
  String get havingACraving => 'Canım Çok İstiyor';

  @override
  String get unlockWeeklyReportsTitle => 'Haftalık Raporların Kilidini Açın';

  @override
  String get unlockWeeklyReportsMessage =>
      'Alkol almadığınız günleri, duygu durumu trendlerinizi ve kişiselleştirilmiş YZ geri bildirimlerini her hafta görün. Kilidi açmak için Premium\'a geçin.';

  @override
  String get maybeLater => 'Belki Daha Sonra';

  @override
  String get upgrade => 'Yükselt';

  @override
  String get weeklyReportTitle => 'Haftalık Rapor';

  @override
  String get weeklyReportsPremiumTitle =>
      'Haftalık raporlar bir Premium özelliğidir';

  @override
  String get weeklyReportsPremiumMessage =>
      'Temiz kaldığınız günleri, duygu durumu eğilimlerini, istek krizlerini ve kişiselleştirilmiş YZ geri bildirimlerini her hafta görün.';

  @override
  String get upgradeToPremium => 'Premium\'a Yükselt';

  @override
  String get couldNotGenerateReport => 'Şu anda raporunuz oluşturulamadı.';

  @override
  String get tryAgainLower => 'Tekrar deneyin';

  @override
  String get statSoberDays => 'Temiz günler';

  @override
  String get statAvgMood => 'Ort. duygu durumu';

  @override
  String get statCravings => 'İstek krizleri';

  @override
  String get statMoneySaved => 'Tasarruf edilen para';

  @override
  String get coachFeedback => 'Koç geri bildirimi';

  @override
  String get journalInsights => 'Günlük analizleri';

  @override
  String get next => 'İleri';

  @override
  String get question1Title => 'Hedefiniz nedir?';

  @override
  String get question1Subtitle => 'Sizin için en önemli olan\nhedefi seçin';

  @override
  String get goalQuitCompletely => 'Tamamen Bırakmak';

  @override
  String get goalReduceDrinking => 'Alkolü Azaltmak';

  @override
  String get goalTakeABreak => 'Bir Süre Ara Vermek';

  @override
  String get goalBuildHealthierHabits => 'Daha Sağlıklı Alışkanlıklar Edinmek';

  @override
  String get question3Title => 'Bize rutininizden\nbahsedin';

  @override
  String get drinksPerWeek => 'Haftalık içki sayısı';

  @override
  String get moneySpentPerWeek => 'Haftalık harcanan para';

  @override
  String get drinkingLevel => 'Alkol tüketim seviyesi';

  @override
  String get triggersLabel => 'Tetikleyiciler';

  @override
  String get levelSocial => 'Sosyal';

  @override
  String get levelRegular => 'Düzenli';

  @override
  String get levelHeavy => 'Yoğun';

  @override
  String get levelDependent => 'Bağımlı';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Yalnızlık';

  @override
  String get triggerHabit => 'Alışkanlık';

  @override
  String get triggerSadness => 'Üzüntü';

  @override
  String get triggerAnger => 'Öfke';

  @override
  String get triggerBoredom => 'Can Sıkıntısı';

  @override
  String get triggerSocialPressure => 'Sosyal Baskı';

  @override
  String get triggerCelebration => 'Kutlama';

  @override
  String get triggerSleepProblems => 'Uyku Sorunları';

  @override
  String get triggerWorkPressure => 'İş Baskısı';

  @override
  String get question4Title => 'Neden değişmek istiyorsunuz?';

  @override
  String get question4Subtitle =>
      'Nedeniniz, motivasyonunuzu korumanıza yardımcı olacak.';

  @override
  String get reasonImproveHealth => 'Sağlığımı İyileştirmek';

  @override
  String get reasonSaveMoney => 'Para Tasarrufu Yapmak';

  @override
  String get reasonFamily => 'Ailem İçin';

  @override
  String get reasonBetterSleep => 'Daha İyi Uyumak';

  @override
  String get reasonMentalClarity => 'Zihinsel Berraklık';

  @override
  String get reasonFitness => 'Formda Kalmak';

  @override
  String get reasonSelfRespect => 'Öz Saygı';

  @override
  String get reasonCareer => 'Kariyer';

  @override
  String get milestoneUnlockedLabel => 'KİLOMETRE TAŞI AÇILDI';

  @override
  String incredibleNamePrefix(String name) {
    return 'İnanılmazsın, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount biriktirildi';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count adet içilmedi';
  }

  @override
  String get shareMyMilestone => 'Kilometre taşımı paylaş';

  @override
  String get milestoneImageShareError =>
      'Kilometre taşı görseli oluşturulamadı. Lütfen tekrar deneyin.';

  @override
  String get dailyCheckInTitle => 'Günlük Kontrol';

  @override
  String get howAreYouFeelingToday => 'Bugün nasıl hissediyorsun?';

  @override
  String get honestAnswerHelp =>
      'Dürüst yanıtınız size daha iyi destek olmamızı sağlar';

  @override
  String get didYouDrinkToday => 'Bugün alkol aldın mı?';

  @override
  String get noLabel => 'Hayır';

  @override
  String get yesLabel => 'Evet';

  @override
  String get cravingLevelNow => 'Şu anki istek seviyen?';

  @override
  String get anythingOnMind => 'Aklına takılan bir şey var mı?';

  @override
  String get optionalLabel => '(isteğe bağlı)';

  @override
  String get dailyNoteHint =>
      'Gününüz, tetikleyicileriniz veya kazanımlarınız hakkında yazın...';

  @override
  String get alreadyCheckedInToday => 'Bugün zaten kontrol yapıldı';

  @override
  String get saveCheckIn => 'Kontrolü Kaydet';

  @override
  String get checkInsHelpTrack =>
      'Günlük kontroller zaman içindeki ilerlemenizi takip etmeye yardımcı olur';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Bugünkü kontrolünüzü zaten tamamladınız.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Lütfen önce yukarıdaki her iki soruyu da yanıtlayın';

  @override
  String get checkInSaved => 'Kontrol kaydedildi';

  @override
  String get cravingNone => 'Yok';

  @override
  String get cravingLow => 'Düşük';

  @override
  String get cravingMedium => 'Orta';

  @override
  String get cravingStrong => 'Güçlü';

  @override
  String get moodBad => 'Kötü';

  @override
  String get moodLow => 'Düşük';

  @override
  String get moodGreat => 'Harika';

  @override
  String get sosSupportTitle => 'SOS Desteği';

  @override
  String notAloneMessage(String name) {
    return 'Yalnız değilsin, $name';
  }

  @override
  String get cravingsPassMessage =>
      'İstek krizleri geçicidir. Bu anı atlatmanıza yardımcı olması için aşağıdan bir yöntem seçin.';

  @override
  String get breathingExercise => 'Nefes egzersizi';

  @override
  String get breathingExerciseSubtitle => 'Rehberli 4-7-8 tekniği, 2 dakika';

  @override
  String get rideTheWave => 'Dalgayı yakala';

  @override
  String get rideTheWaveSubtitle =>
      '15 dakikalık zamanlayıcı — istekler her zaman geçer';

  @override
  String get copingTips => 'Başa çıkma ipuçları';

  @override
  String get copingTipsSubtitle =>
      'Tetikleyicilerinize özel kişiselleştirilmiş stratejiler';

  @override
  String get talkToAiCoach => 'YZ Koç ile konuş';

  @override
  String get talkToAiCoachSubtitle => 'İyileşme yoldaşınızla sohbet edin';

  @override
  String get callSomeone => 'Birini ara';

  @override
  String get callSomeoneSubtitle => 'Güvendiğiniz bir kişiye ulaşın';

  @override
  String get contactsPermissionNeeded =>
      'Bir kişiyi aramak için kişiler erişim izni gereklidir.';

  @override
  String get beatenCravingsPrefix => 'Daha önce tam ';

  @override
  String beatenCravingsCount(int count) {
    return '$count kez';
  }

  @override
  String get beatenCravingsSuffix => ' bu isteği yendin. Yine başarabilirsin.';

  @override
  String get tellUsAboutYourself => 'Kendinizden Bahsedin';

  @override
  String get detailsSubtitle =>
      'Bu bilgiler iyileşme yolculuğunuzu kişiselleştirmemize ve doğru analizler sunmamıza yardımcı olur.';

  @override
  String get nameLabel => 'İsim';

  @override
  String get nameHint => 'ör. Ahmet Yılmaz';

  @override
  String get ageLabel => 'Yaş';

  @override
  String get ageHint => 'ör. 32';

  @override
  String get sexAssignedAtBirth => 'Doğumda belirlenen cinsiyet';

  @override
  String get sexFemale => 'Kadın';

  @override
  String get sexMale => 'Erkek';

  @override
  String get heightLabel => 'Boy';

  @override
  String get weightLabel => 'Kilo';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Günlük sınıra ulaşıldı';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Bugünkü tüm $limit ücretsiz mesaj hakkınızı kullandınız. Sınırsız koç sohbeti için Premium\'a yükseltin.';
  }

  @override
  String get coachConnectError =>
      'Şu anda bağlantı kurulamadı. Lütfen az sonra tekrar deneyin.';

  @override
  String get clearConversationTitle => 'Sohbet temizlensin mi?';

  @override
  String get clearConversationMessage =>
      'Bu işlem koç sohbet geçmişinizi kalıcı olarak silecektir.';

  @override
  String get clearLabel => 'Temizle';

  @override
  String get recoveryCoachTitle => 'İyileşme Koçu';

  @override
  String get onlineLabel => 'Çevrim içi';

  @override
  String get clearConversationMenuItem => 'Sohbeti temizle';

  @override
  String chatGreeting(String name) {
    return 'Merhaba $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Yolculuğunun $days. günündesin. Konuşmak istediğin her an buradayım.';
  }

  @override
  String get quickPromptsLabel => 'HIZLI İPUÇLARI';

  @override
  String get promptCravingLabel => 'İstek krizim var';

  @override
  String get promptCravingSubtitle => 'Hızlıca sakinleş';

  @override
  String get promptMotivationLabel => 'Motivasyona ihtiyacım var';

  @override
  String get promptMotivationSubtitle => 'Zor anlarda bir destek';

  @override
  String get promptSocialLabel => 'Sosyal ortam';

  @override
  String get promptSocialSubtitle => 'Bir daveti yönet';

  @override
  String get promptSlippedLabel => 'Kayıp alkol aldım';

  @override
  String get promptSlippedSubtitle => 'Yargılama yok, sadece destek';

  @override
  String get typeMessageHint => 'Bir mesaj yazın...';

  @override
  String get editProfileTitle => 'Profili Düzenle';

  @override
  String couldNotSaveProfile(String error) {
    return 'Profil kaydedilemedi: $error';
  }

  @override
  String get heightCmLabel => 'Boy (cm)';

  @override
  String get weightKgLabel => 'Kilo (kg)';

  @override
  String get saveChangesLabel => 'Değişiklikleri Kaydet';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Gelişmiş Analizler ve İstatistikler';

  @override
  String get featureUnlimitedJournal => 'Sınırsız Günlük Girdisi';

  @override
  String get featureUnlimitedChat => 'YZ Koç ile Sınırsız Sohbet';

  @override
  String get featureCommunityGroups => 'Özel Topluluk Grupları';

  @override
  String get featurePrioritySupport => 'Öncelikli Uzman Desteği';

  @override
  String get featureThemePacks => 'Özel Tema Paketleri';

  @override
  String get featureDataExport => 'Veri Dışa Aktarma';

  @override
  String get featureAdFree => 'Reklamsız Deneyim';

  @override
  String get premiumMemberTitle => 'Premium Üyesiniz';

  @override
  String get unlockFullRecoveryTitle =>
      'Eksiksiz İyileşme Deneyiminin\nKilidini Açın';

  @override
  String get premiumMemberSubtitle =>
      'İyileşme yolculuğunuzu desteklediğiniz için teşekkürler — aşağıdaki tüm premium özelliklerin kilidi açıldı.';

  @override
  String get premiumJoinSubtitle =>
      'Premium araçlarımız ve kişiselleştirilmiş desteğimizle iyileşme süreçlerini hızlandıran binlerce kişilik topluluğa katılın.';

  @override
  String get monthlyPlanLabel => 'Aylık';

  @override
  String get perMonthSuffix => '/ay';

  @override
  String get cancelAnytimeLabel => 'İstediğiniz zaman iptal edin';

  @override
  String get yearlyPlanLabel => 'Yıllık';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Yıllık $amount olarak faturalandırılır';
  }

  @override
  String get bestValueLabel => 'En Avantajlı';

  @override
  String get alreadyPremiumLabel => 'Premium Üyesiniz ✓';

  @override
  String get startPremiumLabel => 'Premium\'u Başlat';

  @override
  String get manageSubscriptionLabel =>
      'Cihazınızın abonelik ayarlarından yönetin veya iptal edin.';

  @override
  String get noCommitmentLabel => 'Taahhüt yok. İstediğiniz zaman iptal edin.';

  @override
  String get continueFreePlanLabel => 'Ücretsiz Plan ile Devam Et';

  @override
  String get backToHomeLabel => 'Ana Sayfaya Dön';

  @override
  String get cancelPremiumLabel => 'Premium\'u İptal Et';

  @override
  String get cancelPremiumTitle => 'Premium iptal edilsin mi?';

  @override
  String get cancelPremiumMessage =>
      'Sınırsız günlük girdilerine, sınırsız koç sohbetine, istatistik analizlerine ve haftalık raporlara erişiminizi kaybedeceksiniz. İstediğiniz zaman yeniden abone olabilirsiniz.';

  @override
  String get keepPremiumLabel => 'Premium\'da Kal';

  @override
  String get nowPremiumMessage =>
      'Artık Premium üyesiniz! Eksiksiz iyileşme deneyiminizin tadını çıkarın.';

  @override
  String get premiumCancelledMessage =>
      'Premium iptal edildi. Ücretsiz plana geri döndünüz.';

  @override
  String get termsOfUseLabel => 'Kullanım Şartları';

  @override
  String get navHomeLabel => 'Ana Sayfa';

  @override
  String get navStatsLabel => 'İstatistikler';

  @override
  String get navJournalLabel => 'Günlük';

  @override
  String get navBadgesLabel => 'Rozetler';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'İyileşme Hedefleri';

  @override
  String get drinksPerWeekLabel => 'Haftalık içki sayısı';

  @override
  String get quitReasonsLabel => 'Bırakma nedenleri';

  @override
  String get quitReasonsHelperText => 'Birden fazla nedeni virgülle ayırın.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'İyileşme hedefleri kaydedilemedi: $error';
  }

  @override
  String get goalHint => 'ör. Tamamen Bırakmak';

  @override
  String get drinksPerWeekHint => 'ör. 12';

  @override
  String get quitReasonsHint => 'ör. Sağlık, Aile, Para';

  @override
  String get todaysPrompt => 'Günün sorusu';

  @override
  String get defaultJournalPrompt => 'Bugün aklınızdan neler geçiyor?';

  @override
  String get aiJournalInsights => 'YZ günlük analizleri';

  @override
  String get unlockJournalInsightsMessage =>
      'Günlük girdilerinizden haftalık kalıpların, duygu durumu eğilimlerinin ve kişiselleştirilmiş analizlerin kilidini açın.';

  @override
  String get notEnoughJournalData =>
      'Henüz yeterli veri yok — bu hafta birkaç girdi yazıp tekrar kontrol edin.';

  @override
  String get openEntry => 'Aç';

  @override
  String get editEntry => 'Düzenle';

  @override
  String get deleteEntry => 'Sil';

  @override
  String get searchJournalEntries => 'Girdilerde ara...';

  @override
  String get writeNewEntry => 'Yeni girdi yaz';

  @override
  String get recentEntries => 'Son Girdiler';

  @override
  String get noJournalEntriesYet =>
      'Henüz günlük girdisi yok — ilk düşüncenizi yukarıda paylaşın.';

  @override
  String get noEntriesMatchFilters =>
      'Filtrelerinizle eşleşen girdi bulunamadı.';

  @override
  String get weeklyJournalLimitReached => 'Haftalık sınıra ulaşıldı';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Bu haftaki tüm $limit ücretsiz günlük girdinizi kullandınız. Sınırsız girdi için Premium\'a yükseltin.';
  }

  @override
  String get newEntry => 'Yeni girdi';

  @override
  String get writeYourThoughts => 'Düşüncelerinizi yazın';

  @override
  String get saveEntry => 'Girdiyi Kaydet';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Bu hafta kalan ücretsiz girdi: $remaining / $limit';
  }

  @override
  String get deleteEntryQuestion => 'Girdi silinsin mi?';

  @override
  String get deleteEntryConfirmation =>
      'Bu girdi kalıcı olarak silinecektir. Bu işlem geri alınamaz.';

  @override
  String get journalEntryNotFound => 'Girdi bulunamadı';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Bu günlük girdisi silinmiş olabilir.';

  @override
  String get goBack => 'Geri dön';

  @override
  String get journalEntryTitle => 'Günlük Girdisi';

  @override
  String get moodStruggling => 'Zorlanıyor';

  @override
  String get moodUnwell => 'Kötü';

  @override
  String get moodNeutral => 'Nötr';

  @override
  String get whatHappenedToday => 'Bugün ne oldu?';

  @override
  String get trigger => 'Tetikleyici';

  @override
  String get whatHelped => 'Ne yardımcı oldu';

  @override
  String get whatIllTryNextTime => 'Gelecek sefer ne deneyeceğim';

  @override
  String get journalPrivacyMessage =>
      'Düşünceleriniz gizlidir ve günlüğünüze güvenle kaydedilir.';

  @override
  String get unlocked => 'Kilit Açıldı';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün kaldı',
      one: '$count gün kaldı',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count Gün';
  }

  @override
  String get firstReflection => 'İlk\nDüşünce';

  @override
  String get oneJournalEntry => '1 Günlük Girdisi';

  @override
  String get openBook => 'Açık Kitap';

  @override
  String get tenJournalEntries => '10 Günlük Girdisi';

  @override
  String get dedicatedWriter => 'Kararlı\nYazar';

  @override
  String get thirtyJournalEntries => '30 Günlük Girdisi';

  @override
  String get firstConversation => 'İlk\nSohbet';

  @override
  String get oneAiCoachChat => '1 YZ Koç Sohbeti';

  @override
  String get keepTalking => 'Konuşmaya Devam Et';

  @override
  String get fiveConversations => '5 Sohbet';

  @override
  String get coachCompanion => 'Koç\nYoldaşı';

  @override
  String get twentyConversations => '20 Sohbet';

  @override
  String get checkInHabit => 'Kontrol\nAlışkanlığı';

  @override
  String get sevenCheckIns => '7 Kontrol';

  @override
  String get consistencyPro => 'İstikrar\nUzmanı';

  @override
  String get thirtyCheckIns => '30 Kontrol';

  @override
  String get dedicatedJourney => 'Adanmış\nYolculuk';

  @override
  String get hundredCheckIns => '100 Kontrol';

  @override
  String get goalGetter => 'Hedef Odaklı';

  @override
  String get threeGoalsCompleted => '3 Hedef Tamamlandı';

  @override
  String get goalAchiever => 'Hedef\nAvcısı';

  @override
  String get tenGoalsCompleted => '10 Hedef Tamamlandı';

  @override
  String get firstSavings => 'İlk\nTasarruf';

  @override
  String get fiveHundredSaved => '\$500 Biriktirildi';

  @override
  String get smartSaver => 'Akıllı Birikimci';

  @override
  String get oneThousandSaved => '\$1.000 Biriktirildi';

  @override
  String get bigSaver => 'Büyük Birikimci';

  @override
  String get fiveThousandSaved => '\$5.000 Biriktirildi';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current / \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current / $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Devam et — ilk kilometre taşın seni bekliyor!';

  @override
  String get badgesAndMilestones => 'Rozetler ve Kilometre Taşları';

  @override
  String get yourMilestoneJourney => 'Kilometre Taşı Yolculuğunuz';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kilometre taşı kazanıldı.\nGörüntülemek için dokunun',
      one: '$count kilometre taşı kazanıldı.\nGörüntülemek için dokunun',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Yolculuğunuzdaki $total kilometre taşından $unlocked tanesini tamamladınız.';
  }

  @override
  String get remaining => 'Kalan';

  @override
  String get complete => 'Tamamlandı';

  @override
  String get nextMilestone => 'Sonraki Kilometre Taşı';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · %$percent tamamlandı';
  }

  @override
  String get sobrietyMilestones => 'Temizlik Kilometre Taşları';

  @override
  String get journeyBadges => 'Yolculuk Rozetleri';

  @override
  String get bronze => 'BRONZ';

  @override
  String get silver => 'GÜMÜŞ';

  @override
  String get gold => 'ALTIN';

  @override
  String get platinum => 'PLATİN';

  @override
  String get diamond => 'ELMAS';

  @override
  String get analyzingYourJourney => 'Yolculuğunuz Analiz Ediliyor...';

  @override
  String get aiCreatingSanctuary =>
      'Yapay zekamız size özel huzur alanınızı oluşturuyor.';

  @override
  String get understandingHabits => 'Alışkanlıklar anlaşılıyor...';

  @override
  String get calculatingBaseline => 'Başlangıç seviyeniz hesaplanıyor...';

  @override
  String get personalizingPlan => 'Planınız kişiselleştiriliyor...';

  @override
  String get finalizingSanctuary => 'Alanınız son haline getiriliyor...';

  @override
  String get creatingYourPlan => 'Planınız oluşturuluyor...';

  @override
  String get personalizedPlanError =>
      'Kişiselleştirilmiş planınız oluşturulamadı. Lütfen tekrar deneyin.';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String get breathInhale => 'NEFES AL';

  @override
  String get breathHold => 'TUT';

  @override
  String get breathExhale => 'NEFES VER';

  @override
  String get breathDone => 'BİTTİ';

  @override
  String get breathGreatJob => 'Harika iş!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bugün $count seans',
      one: 'Bugün $count seans',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Egzersizi Bitir';

  @override
  String get done => 'Tamamlandı';

  @override
  String get noCopingTipsYet => 'Henüz başa çıkma ipucu yok';

  @override
  String get copingStrategiesWillAppear =>
      'İyileşme planınız oluşturulduktan sonra kişiselleştirilmiş başa çıkma stratejileriniz burada görünecektir.';

  @override
  String get strategiesTailoredToTriggers =>
      'Tetikleyicilerinize özel stratejiler';

  @override
  String get cravingsPeakAndPass => 'İstekler zirve yapar\nve geçer';

  @override
  String get rideTheWaveDescription =>
      'Çoğu istek kriz 15 dakika içinde geçer. İsteğe göre hareket etmek zorunda değilsiniz — bizimle birlikte geçmesini bekleyin.';

  @override
  String get stayWithIt => 'sabırla bekle';

  @override
  String get youMadeIt => 'başardın';

  @override
  String get readyWhenYouAre => 'hazır olduğunda başla';

  @override
  String get rideItAgain => 'Yeniden dene';

  @override
  String get start15MinuteTimer => '15 Dakikalık Zamanlayıcıyı Başlat';

  @override
  String get rideTheWaveCompletedMessage =>
      'Dalgayı atlattın. Bu gerçek bir güç! 💪';

  @override
  String get myProgress => 'İlerlemem';

  @override
  String get weekLabel => 'Hafta';

  @override
  String get monthLabel => 'Ay';

  @override
  String get allLabel => 'Tümü';

  @override
  String get daysSoberStatLabel => 'Temiz\ngünler';

  @override
  String get savedStatLabel => 'Tasarruf';

  @override
  String get avoidedStatLabel => 'İçilmeyen';

  @override
  String get moodTrends => 'Duygu durumu eğilimleri';

  @override
  String get cravingsPattern => 'İstek krizi kalıpları';

  @override
  String get unlockLabel => 'Kilidi Aç';

  @override
  String get unlockFullStats => 'Tüm istatistiklerin kilidini aç';

  @override
  String get premiumStatsMessage =>
      'Duygu durumu eğilimleri ve istek krizi kalıpları Premium özelliklerdir. Tüm istatistiklerinizi görmek için yükseltin.';

  @override
  String get healthMilestonesWillAppear =>
      'Sağlık kilometre taşlarınız burada görünecektir.';

  @override
  String get healthMilestones => 'Sağlık kilometre taşları';

  @override
  String dayNumber(int day) {
    return '$day. Gün';
  }

  @override
  String get soberLabel => 'Temiz';

  @override
  String get slipLabel => 'Kayıp';

  @override
  String get noDataLabel => 'Veri yok';

  @override
  String get milestone24Hours => '24 Saat';

  @override
  String get milestoneOneWeek => 'Bir Hafta';

  @override
  String get milestoneOneMonth => 'Bir Ay';

  @override
  String get milestoneThreeMonths => 'Üç Ay';

  @override
  String get milestoneSixMonths => 'Altı Ay';

  @override
  String get milestoneOneYear => 'Bir Yıl';

  @override
  String milestoneDayCount(int day) {
    return '$day. Gün Kilometre Taşı';
  }

  @override
  String get maybeLaterLabel => 'Belki sonra';

  @override
  String get cancelLabel => 'İptal';
}
