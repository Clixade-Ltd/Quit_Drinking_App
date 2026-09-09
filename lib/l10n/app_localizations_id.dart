// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get skip => 'Lewati';

  @override
  String get continueButton => 'Lanjutkan';

  @override
  String get getStarted => 'Mulai';

  @override
  String get onboardingTitle1 => 'Kendalikan Hidup Anda';

  @override
  String get onboardingSubtitle1 =>
      'Lacak perjalanan Anda, rayakan setiap pencapaian, dan menjadi lebih sehat hari demi hari.';

  @override
  String get onboardingTitle2 => 'Pendamping Pemulihan AI Anda';

  @override
  String get onboardingSubtitle2 =>
      'Dapatkan panduan yang dipersonalisasi, kebiasaan sehat, pengingat motivasi, dan laporan kemajuan yang dirancang sesuai perjalanan Anda.';

  @override
  String get goodMorning => 'Selamat Pagi';

  @override
  String get goodAfternoon => 'Selamat Siang';

  @override
  String get goodEvening => 'Selamat Sore';

  @override
  String get goodNight => 'Selamat Malam';

  @override
  String get embracingClarity => 'Meraih kejernihan, satu hari demi satu hari.';

  @override
  String get streakLabel => 'REKOR';

  @override
  String get goalLabel => 'Tujuan';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Hari',
      one: '$count Hari',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Paket Premium';

  @override
  String get premiumPlanSubtitle => 'Buka pengalaman pemulihan lengkap Anda';

  @override
  String get accountAndSupport => 'AKUN & DUKUNGAN';

  @override
  String get privacyPolicy => 'Kebijakan Privasi';

  @override
  String get privacyPolicySubtitle => 'Kelola berbagi data dan keamanan akun';

  @override
  String get termsOfService => 'Ketentuan Layanan';

  @override
  String get termsOfServiceSubtitle => 'FAQ, hubungi kami, dan sumber daya';

  @override
  String get shareApp => 'Bagikan Aplikasi';

  @override
  String get shareAppSubtitle => 'Bagikan aplikasi kepada teman-teman Anda';

  @override
  String get resetData => 'Atur Ulang Data';

  @override
  String get resetDataSubtitle => 'Hapus semua yang tersimpan di perangkat ini';

  @override
  String get resetAllDataTitle => 'Atur ulang semua data?';

  @override
  String get resetAllDataMessage =>
      'Ini akan menghapus semua yang tersimpan di perangkat ini — profil, entri jurnal, dan kemajuan — dan tidak dapat dibatalkan.';

  @override
  String get cancel => 'Batal';

  @override
  String get reset => 'Atur Ulang';

  @override
  String get chooseFromGallery => 'Pilih dari Galeri';

  @override
  String get takePhoto => 'Ambil Foto';

  @override
  String get removePhoto => 'Hapus Foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Tidak dapat memperbarui foto: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Tidak dapat menghapus foto: $error';
  }

  @override
  String get photoTooLarge =>
      'Foto tersebut terlalu besar bahkan setelah dikompresi — silakan coba foto lain.';

  @override
  String get unableToLoadProfile => 'Tidak dapat memuat profil Anda';

  @override
  String get pleaseTryAgain => 'Silakan coba lagi.';

  @override
  String get tryAgain => 'Coba Lagi';

  @override
  String get profileNotFound => 'Profil tidak ditemukan';

  @override
  String get refresh => 'Segarkan';

  @override
  String get noProfileDataFound =>
      'Belum ada data profil yang ditemukan di perangkat ini.';

  @override
  String couldNotResetData(String error) {
    return 'Tidak dapat mengatur ulang data: $error';
  }

  @override
  String get navHome => 'Beranda';

  @override
  String get navStats => 'Statistik';

  @override
  String get navJournal => 'Jurnal';

  @override
  String get navBadges => 'Lencana';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature akan segera tersedia.';
  }

  @override
  String get appWordmark => 'KESEHATAN';

  @override
  String get appTitle => 'Berhenti Minum';

  @override
  String get splashSubtitle =>
      'Ambil langkah pertama menuju\nkehidupan bebas alkohol';

  @override
  String get preparingJourney => 'Mempersiapkan\nperjalanan Anda';

  @override
  String get taskMorningMeditation => 'Meditasi Pagi (10m)';

  @override
  String get taskReadChapter => 'Baca Bab 4 dari \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Jurnal Syukur Malam';

  @override
  String get close => 'Tutup';

  @override
  String get youAreDoingGreat => 'Anda melakukannya dengan baik!';

  @override
  String get shareMilestone => 'Bagikan Pencapaian';

  @override
  String shareMilestoneMessage(int days) {
    return 'Saya sudah mencapai hari ke-$days dalam perjalanan pemulihan saya! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Pencapaian pemulihan saya';

  @override
  String get weeklyReportReadyTitle => 'Laporan mingguan Anda sudah siap';

  @override
  String get weeklyReportReadySubtitle =>
      'Ketuk untuk melihat bagaimana minggu Anda berjalan';

  @override
  String get howAreYouFeeling => 'Bagaimana perasaan Anda?';

  @override
  String get moodTough => 'Sulit';

  @override
  String get moodOkay => 'Baik';

  @override
  String get moodGood => 'Bagus';

  @override
  String get moneySaved => 'Uang yang Dihemat';

  @override
  String get caloriesSaved => 'Kalori yang Dihemat';

  @override
  String get healthScore => 'Skor Kesehatan';

  @override
  String get drinksAvoided => 'Minuman yang Dihindari';

  @override
  String get estimated => 'Perkiraan';

  @override
  String get aiGenerated => 'Dibuat oleh AI';

  @override
  String get daysCapsLabel => 'HARI';

  @override
  String get todaysMotivation => 'Motivasi Hari Ini';

  @override
  String get defaultMotivationQuote =>
      'Anda berhasil mempertahankan komitmen Anda. Terus ikuti gelombang perubahan positif.';

  @override
  String get talkToCoach => 'Bicara dengan Pelatih';

  @override
  String get havingACraving => 'Saya Sedang Mengidam';

  @override
  String get unlockWeeklyReportsTitle => 'Buka laporan mingguan';

  @override
  String get unlockWeeklyReportsMessage =>
      'Lihat hari tanpa alkohol, tren suasana hati, dan umpan balik AI yang dipersonalisasi setiap minggu. Tingkatkan ke Premium untuk membukanya.';

  @override
  String get maybeLater => 'Mungkin Nanti';

  @override
  String get upgrade => 'Tingkatkan';

  @override
  String get weeklyReportTitle => 'Laporan Mingguan';

  @override
  String get weeklyReportsPremiumTitle =>
      'Laporan mingguan adalah fitur Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Lihat hari tanpa alkohol, tren suasana hati, keinginan minum, dan umpan balik AI yang dipersonalisasi setiap minggu.';

  @override
  String get upgradeToPremium => 'Tingkatkan ke Premium';

  @override
  String get couldNotGenerateReport =>
      'Tidak dapat membuat laporan Anda saat ini.';

  @override
  String get tryAgainLower => 'Coba lagi';

  @override
  String get statSoberDays => 'Hari tanpa alkohol';

  @override
  String get statAvgMood => 'Suasana hati rata-rata';

  @override
  String get statCravings => 'Keinginan minum';

  @override
  String get statMoneySaved => 'Uang dihemat';

  @override
  String get coachFeedback => 'Umpan balik pelatih';

  @override
  String get journalInsights => 'Wawasan jurnal';

  @override
  String get next => 'Berikutnya';

  @override
  String get question1Title => 'Apa tujuan Anda';

  @override
  String get question1Subtitle => 'Pilih tujuan yang paling\npenting bagi Anda';

  @override
  String get goalQuitCompletely => 'Berhenti Sepenuhnya';

  @override
  String get goalReduceDrinking => 'Kurangi minum';

  @override
  String get goalTakeABreak => 'Beristirahat';

  @override
  String get goalBuildHealthierHabits => 'Bangun kebiasaan yang lebih sehat';

  @override
  String get question3Title => 'Ceritakan tentang\nrutinitas Anda';

  @override
  String get drinksPerWeek => 'Minuman per minggu';

  @override
  String get moneySpentPerWeek => 'Uang yang dihabiskan per minggu';

  @override
  String get drinkingLevel => 'Tingkat konsumsi alkohol';

  @override
  String get triggersLabel => 'Pemicu';

  @override
  String get levelSocial => 'Sosial';

  @override
  String get levelRegular => 'Rutin';

  @override
  String get levelHeavy => 'Berat';

  @override
  String get levelDependent => 'Ketergantungan';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Kesepian';

  @override
  String get triggerHabit => 'Kebiasaan';

  @override
  String get triggerSadness => 'Kesedihan';

  @override
  String get triggerAnger => 'Kemarahan';

  @override
  String get triggerBoredom => 'Kebosanan';

  @override
  String get triggerSocialPressure => 'Tekanan sosial';

  @override
  String get triggerCelebration => 'Perayaan';

  @override
  String get triggerSleepProblems => 'Masalah tidur';

  @override
  String get triggerWorkPressure => 'Tekanan pekerjaan';

  @override
  String get question4Title => 'Mengapa Anda ingin berubah?';

  @override
  String get question4Subtitle => 'Alasan Anda akan membantu memotivasi Anda.';

  @override
  String get reasonImproveHealth => 'Tingkatkan Kesehatan Saya';

  @override
  String get reasonSaveMoney => 'Hemat Uang';

  @override
  String get reasonFamily => 'Keluarga';

  @override
  String get reasonBetterSleep => 'Tidur Lebih Baik';

  @override
  String get reasonMentalClarity => 'Kejernihan Mental';

  @override
  String get reasonFitness => 'Kebugaran';

  @override
  String get reasonSelfRespect => 'Harga Diri';

  @override
  String get reasonCareer => 'Karier';

  @override
  String get milestoneUnlockedLabel => 'PENCAPAIAN TERBUKA';

  @override
  String incredibleNamePrefix(String name) {
    return 'Luar biasa, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount dihemat';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count dihindari';
  }

  @override
  String get shareMyMilestone => 'Bagikan pencapaian saya';

  @override
  String get milestoneImageShareError =>
      'Tidak dapat membuat gambar pencapaian. Silakan coba lagi.';

  @override
  String get dailyCheckInTitle => 'Check-in Harian';

  @override
  String get howAreYouFeelingToday => 'Bagaimana perasaan Anda hari ini?';

  @override
  String get honestAnswerHelp =>
      'Jawaban jujur Anda membantu kami mendukung Anda dengan lebih baik';

  @override
  String get didYouDrinkToday => 'Apakah Anda minum hari ini?';

  @override
  String get noLabel => 'Tidak';

  @override
  String get yesLabel => 'Ya';

  @override
  String get cravingLevelNow => 'Seberapa kuat keinginan minum Anda sekarang?';

  @override
  String get anythingOnMind => 'Ada yang sedang Anda pikirkan?';

  @override
  String get optionalLabel => '(opsional)';

  @override
  String get dailyNoteHint =>
      'Tuliskan tentang hari Anda, pemicu, kemenangan...';

  @override
  String get alreadyCheckedInToday => 'Sudah check-in hari ini';

  @override
  String get saveCheckIn => 'Simpan check-in';

  @override
  String get checkInsHelpTrack =>
      'Check-in membantu melacak kemajuan Anda dari waktu ke waktu';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Anda sudah menyelesaikan check-in hari ini.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Harap jawab kedua pertanyaan di atas terlebih dahulu';

  @override
  String get checkInSaved => 'Check-in disimpan';

  @override
  String get cravingNone => 'Tidak ada';

  @override
  String get cravingLow => 'Rendah';

  @override
  String get cravingMedium => 'Sedang';

  @override
  String get cravingStrong => 'Kuat';

  @override
  String get moodBad => 'Buruk';

  @override
  String get moodLow => 'Rendah';

  @override
  String get moodGreat => 'Sangat Baik';

  @override
  String get sosSupportTitle => 'Dukungan SOS';

  @override
  String notAloneMessage(String name) {
    return 'Anda tidak sendirian, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Keinginan minum akan berlalu. Pilih sesuatu di bawah untuk membantu Anda melewati momen ini.';

  @override
  String get breathingExercise => 'Latihan Pernapasan';

  @override
  String get breathingExerciseSubtitle => 'Teknik 4-7-8 terpandu, 2 menit';

  @override
  String get rideTheWave => 'Lewati Gelombang';

  @override
  String get rideTheWaveSubtitle =>
      'Timer 15 menit — keinginan minum selalu berlalu';

  @override
  String get copingTips => 'Tips mengatasi';

  @override
  String get copingTipsSubtitle =>
      'Strategi yang dipersonalisasi untuk pemicu Anda';

  @override
  String get talkToAiCoach => 'Bicara dengan pelatih AI';

  @override
  String get talkToAiCoachSubtitle =>
      'Mengobrol dengan pendamping pemulihan Anda';

  @override
  String get callSomeone => 'Hubungi seseorang';

  @override
  String get callSomeoneSubtitle => 'Hubungi kontak tepercaya Anda';

  @override
  String get contactsPermissionNeeded =>
      'Izin kontak diperlukan untuk menelepon kontak.';

  @override
  String get beatenCravingsPrefix => 'Anda telah mengatasi keinginan minum ';

  @override
  String beatenCravingsCount(int count) {
    return '$count kali';
  }

  @override
  String get beatenCravingsSuffix =>
      ' sebelumnya. Anda bisa melakukannya lagi.';

  @override
  String get tellUsAboutYourself => 'Ceritakan Tentang Diri Anda';

  @override
  String get detailsSubtitle =>
      'Informasi ini membantu kami mempersonalisasi perjalanan pemulihan Anda dan memberikan wawasan yang akurat.';

  @override
  String get nameLabel => 'Nama';

  @override
  String get nameHint => 'mis., Alex Rivers';

  @override
  String get ageLabel => 'Usia';

  @override
  String get ageHint => 'mis., 32';

  @override
  String get sexAssignedAtBirth => 'Jenis kelamin saat lahir';

  @override
  String get sexFemale => 'Perempuan';

  @override
  String get sexMale => 'Laki-laki';

  @override
  String get heightLabel => 'Tinggi';

  @override
  String get weightLabel => 'Berat';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Batas harian tercapai';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Anda telah menggunakan semua $limit pesan gratis hari ini. Tingkatkan ke Premium untuk chat pelatih tanpa batas.';
  }

  @override
  String get coachConnectError =>
      'Saya tidak dapat terhubung sekarang. Silakan coba lagi sebentar lagi.';

  @override
  String get clearConversationTitle => 'Hapus percakapan?';

  @override
  String get clearConversationMessage =>
      'Ini akan menghapus riwayat chat pelatih Anda secara permanen.';

  @override
  String get clearLabel => 'Hapus';

  @override
  String get recoveryCoachTitle => 'Pelatih pemulihan';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Hapus percakapan';

  @override
  String chatGreeting(String name) {
    return 'Hai $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Anda berada di hari ke-$days perjalanan Anda. Saya siap kapan pun Anda ingin membicarakannya.';
  }

  @override
  String get quickPromptsLabel => 'PROMPT CEPAT';

  @override
  String get promptCravingLabel => 'Sedang ingin minum';

  @override
  String get promptCravingSubtitle => 'Tenangkan diri dengan cepat';

  @override
  String get promptMotivationLabel => 'Butuh motivasi';

  @override
  String get promptMotivationSubtitle => 'Dorongan saat keadaan sulit';

  @override
  String get promptSocialLabel => 'Situasi sosial';

  @override
  String get promptSocialSubtitle => 'Hadapi sebuah pertemuan';

  @override
  String get promptSlippedLabel => 'Saya terpeleset';

  @override
  String get promptSlippedSubtitle => 'Tanpa menghakimi, hanya dukungan';

  @override
  String get typeMessageHint => 'Ketik pesan...';

  @override
  String get editProfileTitle => 'Edit Profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Tidak dapat menyimpan profil: $error';
  }

  @override
  String get heightCmLabel => 'Tinggi (cm)';

  @override
  String get weightKgLabel => 'Berat (kg)';

  @override
  String get saveChangesLabel => 'Simpan Perubahan';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Wawasan & Analitik Lanjutan';

  @override
  String get featureUnlimitedJournal => 'Entri Jurnal Tanpa Batas';

  @override
  String get featureUnlimitedChat => 'Chat Tanpa Batas dengan Pelatih AI';

  @override
  String get featureCommunityGroups => 'Grup Komunitas Eksklusif';

  @override
  String get featurePrioritySupport => 'Dukungan Ahli Prioritas';

  @override
  String get featureThemePacks => 'Paket Tema Kustom';

  @override
  String get featureDataExport => 'Ekspor Data';

  @override
  String get featureAdFree => 'Pengalaman Tanpa Iklan';

  @override
  String get premiumMemberTitle => 'Anda adalah Anggota Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Buka Pengalaman\nPemulihan Lengkap Anda';

  @override
  String get premiumMemberSubtitle =>
      'Terima kasih telah mendukung perjalanan pemulihan Anda — semua fitur premium di bawah ini telah terbuka.';

  @override
  String get premiumJoinSubtitle =>
      'Bergabunglah dengan ribuan orang yang\nmempercepat perjalanan pemulihan mereka dengan\nalat premium dan dukungan yang dipersonalisasi.';

  @override
  String get monthlyPlanLabel => 'Bulanan';

  @override
  String get perMonthSuffix => '/bln';

  @override
  String get cancelAnytimeLabel => 'Batalkan kapan saja';

  @override
  String get yearlyPlanLabel => 'Tahunan';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Ditagih tahunan sebesar $amount';
  }

  @override
  String get bestValueLabel => 'Nilai Terbaik';

  @override
  String get alreadyPremiumLabel => 'Anda Premium ✓';

  @override
  String get startPremiumLabel => 'Mulai Premium';

  @override
  String get manageSubscriptionLabel =>
      'Kelola atau batalkan dari pengaturan langganan perangkat Anda.';

  @override
  String get noCommitmentLabel => 'Tanpa komitmen. Batalkan kapan saja.';

  @override
  String get continueFreePlanLabel => 'Lanjutkan dengan Paket Gratis';

  @override
  String get backToHomeLabel => 'Kembali ke Beranda';

  @override
  String get cancelPremiumLabel => 'Batalkan Premium';

  @override
  String get cancelPremiumTitle => 'Batalkan Premium?';

  @override
  String get cancelPremiumMessage =>
      'Anda akan kehilangan akses ke entri jurnal tanpa batas, chat pelatih tanpa batas, wawasan statistik, dan laporan mingguan. Anda dapat berlangganan kembali kapan saja.';

  @override
  String get keepPremiumLabel => 'Pertahankan Premium';

  @override
  String get nowPremiumMessage =>
      'Sekarang Anda Premium! Nikmati pengalaman pemulihan lengkap Anda.';

  @override
  String get premiumCancelledMessage =>
      'Premium dibatalkan. Anda kembali ke paket gratis.';

  @override
  String get termsOfUseLabel => 'Ketentuan Penggunaan';

  @override
  String get navHomeLabel => 'Beranda';

  @override
  String get navStatsLabel => 'Statistik';

  @override
  String get navJournalLabel => 'Jurnal';

  @override
  String get navBadgesLabel => 'Lencana';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Tujuan Pemulihan';

  @override
  String get drinksPerWeekLabel => 'Minuman per minggu';

  @override
  String get quitReasonsLabel => 'Alasan berhenti';

  @override
  String get quitReasonsHelperText => 'Pisahkan beberapa alasan dengan koma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Tidak dapat menyimpan tujuan pemulihan: $error';
  }

  @override
  String get goalHint => 'mis., Berhenti Total';

  @override
  String get drinksPerWeekHint => 'mis., 12';

  @override
  String get quitReasonsHint => 'mis., Kesehatan, Keluarga, Uang';

  @override
  String get todaysPrompt => 'Prompt hari ini';

  @override
  String get defaultJournalPrompt => 'Apa yang ada di pikiran Anda hari ini?';

  @override
  String get aiJournalInsights => 'Wawasan jurnal AI';

  @override
  String get unlockJournalInsightsMessage =>
      'Buka pola mingguan, tren suasana hati, dan wawasan yang dipersonalisasi dari entri jurnal Anda.';

  @override
  String get notEnoughJournalData =>
      'Data belum cukup — tulis beberapa entri minggu ini dan periksa kembali.';

  @override
  String get openEntry => 'Buka';

  @override
  String get editEntry => 'Edit';

  @override
  String get deleteEntry => 'Hapus';

  @override
  String get searchJournalEntries => 'Cari entri...';

  @override
  String get writeNewEntry => 'Tulis entri baru';

  @override
  String get recentEntries => 'Entri Terbaru';

  @override
  String get noJournalEntriesYet =>
      'Belum ada entri jurnal — tulis refleksi pertama Anda di atas.';

  @override
  String get noEntriesMatchFilters =>
      'Tidak ada entri yang sesuai dengan filter Anda.';

  @override
  String get weeklyJournalLimitReached => 'Batas mingguan tercapai';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Anda telah menggunakan semua $limit entri jurnal gratis minggu ini. Tingkatkan ke Premium untuk entri tanpa batas.';
  }

  @override
  String get newEntry => 'Entri baru';

  @override
  String get writeYourThoughts => 'Tulis pemikiran Anda';

  @override
  String get saveEntry => 'Simpan Entri';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining dari $limit entri gratis tersisa minggu ini';
  }

  @override
  String get deleteEntryQuestion => 'Hapus entri?';

  @override
  String get deleteEntryConfirmation =>
      'Entri ini akan dihapus secara permanen. Tindakan ini tidak dapat dibatalkan.';

  @override
  String get journalEntryNotFound => 'Entri tidak ditemukan';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Entri jurnal ini mungkin telah dihapus.';

  @override
  String get goBack => 'Kembali';

  @override
  String get journalEntryTitle => 'Entri Jurnal';

  @override
  String get moodStruggling => 'Kesulitan';

  @override
  String get moodUnwell => 'Tidak Sehat';

  @override
  String get moodNeutral => 'Netral';

  @override
  String get whatHappenedToday => 'Apa yang terjadi hari ini?';

  @override
  String get trigger => 'Pemicu';

  @override
  String get whatHelped => 'Apa yang membantu';

  @override
  String get whatIllTryNextTime => 'Apa yang akan saya coba lain kali';

  @override
  String get journalPrivacyMessage =>
      'Refleksi Anda bersifat pribadi dan disimpan di jurnal Anda.';

  @override
  String get unlocked => 'Terbuka';

  @override
  String daysLeft(int count) {
    return 'Tersisa $count hari';
  }

  @override
  String daysCount(int count) {
    return '$count Hari';
  }

  @override
  String get firstReflection => 'Refleksi\nPertama';

  @override
  String get oneJournalEntry => '1 Entri Jurnal';

  @override
  String get openBook => 'Buka Buku';

  @override
  String get tenJournalEntries => '10 Entri Jurnal';

  @override
  String get dedicatedWriter => 'Penulis\nBerdedikasi';

  @override
  String get thirtyJournalEntries => '30 Entri Jurnal';

  @override
  String get firstConversation => 'Percakapan\nPertama';

  @override
  String get oneAiCoachChat => '1 Chat Pelatih AI';

  @override
  String get keepTalking => 'Terus Berbicara';

  @override
  String get fiveConversations => '5 Percakapan';

  @override
  String get coachCompanion => 'Pendamping\nPelatih';

  @override
  String get twentyConversations => '20 Percakapan';

  @override
  String get checkInHabit => 'Kebiasaan\nCheck-in';

  @override
  String get sevenCheckIns => '7 Check-in';

  @override
  String get consistencyPro => 'Pro\nKonsistensi';

  @override
  String get thirtyCheckIns => '30 Check-in';

  @override
  String get dedicatedJourney => 'Perjalanan\nBerdedikasi';

  @override
  String get hundredCheckIns => '100 Check-in';

  @override
  String get goalGetter => 'Pengejar Tujuan';

  @override
  String get threeGoalsCompleted => '3 Tujuan Tercapai';

  @override
  String get goalAchiever => 'Pencapai\nTujuan';

  @override
  String get tenGoalsCompleted => '10 Tujuan Tercapai';

  @override
  String get firstSavings => 'Tabungan\nPertama';

  @override
  String get fiveHundredSaved => '\$500 Dihemat';

  @override
  String get smartSaver => 'Penabung Cerdas';

  @override
  String get oneThousandSaved => '\$1.000 Dihemat';

  @override
  String get bigSaver => 'Penabung Besar';

  @override
  String get fiveThousandSaved => '\$5.000 Dihemat';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current dari \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current dari $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Teruskan — pencapaian pertama Anda menanti!';

  @override
  String get badgesAndMilestones => 'Lencana & Pencapaian';

  @override
  String get yourMilestoneJourney => 'Perjalanan Pencapaian Anda';

  @override
  String milestonesAchieved(int count) {
    return '$count pencapaian tercapai.\nKetuk untuk melihat';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Anda telah membuka $unlocked dari $total pencapaian dalam perjalanan Anda.';
  }

  @override
  String get remaining => 'Tersisa';

  @override
  String get complete => 'Selesai';

  @override
  String get nextMilestone => 'Pencapaian Berikutnya';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% tercapai';
  }

  @override
  String get sobrietyMilestones => 'Pencapaian Tanpa Alkohol';

  @override
  String get journeyBadges => 'Lencana Perjalanan';

  @override
  String get bronze => 'PERUNGGU';

  @override
  String get silver => 'PERAK';

  @override
  String get gold => 'EMAS';

  @override
  String get platinum => 'PLATINA';

  @override
  String get diamond => 'BERLIAN';

  @override
  String get analyzingYourJourney => 'Menganalisis Perjalanan Anda...';

  @override
  String get aiCreatingSanctuary =>
      'AI kami sedang membuat ruang pemulihan yang dipersonalisasi untuk Anda.';

  @override
  String get understandingHabits => 'Memahami kebiasaan...';

  @override
  String get calculatingBaseline => 'Menghitung kondisi dasar Anda...';

  @override
  String get personalizingPlan => 'Mempersonalisasi rencana Anda...';

  @override
  String get finalizingSanctuary => 'Menyelesaikan ruang pemulihan Anda...';

  @override
  String get creatingYourPlan => 'Membuat rencana Anda...';

  @override
  String get personalizedPlanError =>
      'Kami tidak dapat membuat rencana pemulihan yang dipersonalisasi. Silakan coba lagi.';

  @override
  String get retry => 'Coba Lagi';

  @override
  String get breathInhale => 'TARIK NAPAS';

  @override
  String get breathHold => 'TAHAN';

  @override
  String get breathExhale => 'BUANG NAPAS';

  @override
  String get breathDone => 'SELESAI';

  @override
  String get breathGreatJob => 'Kerja bagus!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesi hari ini',
      one: '$count sesi hari ini',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Akhiri Latihan';

  @override
  String get done => 'Selesai';

  @override
  String get noCopingTipsYet => 'Belum ada tips mengatasi';

  @override
  String get copingStrategiesWillAppear =>
      'Strategi mengatasi yang dipersonalisasi akan muncul di sini setelah rencana pemulihan Anda selesai dibuat.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategi yang disesuaikan dengan pemicu Anda';

  @override
  String get cravingsPeakAndPass => 'Keinginan minum\nmemuncak dan berlalu';

  @override
  String get rideTheWaveDescription =>
      'Sebagian besar keinginan minum berlalu dalam 15 menit. Anda tidak harus menuruti keinginan itu — cukup lewati bersama kami.';

  @override
  String get stayWithIt => 'tetap bertahan';

  @override
  String get youMadeIt => 'Anda berhasil';

  @override
  String get readyWhenYouAre => 'siap kapan pun Anda siap';

  @override
  String get rideItAgain => 'Lakukan lagi';

  @override
  String get start15MinuteTimer => 'Mulai Timer 15 Menit';

  @override
  String get rideTheWaveCompletedMessage =>
      'Anda berhasil melewati gelombang. Itu adalah kekuatan yang nyata. 💪';

  @override
  String get myProgress => 'Kemajuan Saya';

  @override
  String get weekLabel => 'Minggu';

  @override
  String get monthLabel => 'Bulan';

  @override
  String get allLabel => 'Semua';

  @override
  String get daysSoberStatLabel => 'Hari\ntanpa alkohol';

  @override
  String get savedStatLabel => 'Dihemat';

  @override
  String get avoidedStatLabel => 'Dihindari';

  @override
  String get moodTrends => 'Tren suasana hati';

  @override
  String get cravingsPattern => 'Pola keinginan minum';

  @override
  String get unlockLabel => 'Buka';

  @override
  String get unlockFullStats => 'Buka statistik lengkap';

  @override
  String get premiumStatsMessage =>
      'Tren suasana hati dan pola keinginan minum adalah fitur Premium. Tingkatkan untuk melihat statistik lengkap Anda.';

  @override
  String get healthMilestonesWillAppear =>
      'Pencapaian kesehatan Anda akan muncul di sini.';

  @override
  String get healthMilestones => 'Pencapaian kesehatan';

  @override
  String dayNumber(int day) {
    return 'Hari $day';
  }

  @override
  String get soberLabel => 'Tanpa Alkohol';

  @override
  String get slipLabel => 'Terpeleset';

  @override
  String get noDataLabel => 'Tidak ada data';

  @override
  String get milestone24Hours => '24 Jam';

  @override
  String get milestoneOneWeek => 'Satu Minggu';

  @override
  String get milestoneOneMonth => 'Satu Bulan';

  @override
  String get milestoneThreeMonths => 'Tiga Bulan';

  @override
  String get milestoneSixMonths => 'Enam Bulan';

  @override
  String get milestoneOneYear => 'Satu Tahun';

  @override
  String milestoneDayCount(int day) {
    return 'Pencapaian Hari $day';
  }

  @override
  String get maybeLaterLabel => 'Mungkin nanti';

  @override
  String get cancelLabel => 'Batal';
}
