// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get skip => 'Langkau';

  @override
  String get continueButton => 'Teruskan';

  @override
  String get getStarted => 'Mulakan';

  @override
  String get onboardingTitle1 => 'Kawal Kehidupan Anda';

  @override
  String get onboardingSubtitle1 =>
      'Jejaki perjalanan anda, raikan setiap pencapaian dan menjadi lebih sihat hari demi hari.';

  @override
  String get onboardingTitle2 => 'Teman Pemulihan AI Anda';

  @override
  String get onboardingSubtitle2 =>
      'Terima panduan yang diperibadikan, tabiat sihat, peringatan motivasi dan laporan kemajuan yang direka mengikut perjalanan anda.';

  @override
  String get goodMorning => 'Selamat Pagi';

  @override
  String get goodAfternoon => 'Selamat Tengah Hari';

  @override
  String get goodEvening => 'Selamat Petang';

  @override
  String get goodNight => 'Selamat Malam';

  @override
  String get embracingClarity => 'Menemui kejelasan, satu hari demi satu hari.';

  @override
  String get streakLabel => 'BERTURUT-TURUT';

  @override
  String get goalLabel => 'Matlamat';

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
  String get premiumPlan => 'Pelan Premium';

  @override
  String get premiumPlanSubtitle => 'Buka pengalaman pemulihan anda sepenuhnya';

  @override
  String get accountAndSupport => 'AKAUN & SOKONGAN';

  @override
  String get privacyPolicy => 'Dasar Privasi';

  @override
  String get privacyPolicySubtitle =>
      'Urus perkongsian data dan keselamatan akaun';

  @override
  String get termsOfService => 'Syarat Perkhidmatan';

  @override
  String get termsOfServiceSubtitle => 'Soalan lazim, hubungi kami dan sumber';

  @override
  String get shareApp => 'Kongsi Aplikasi';

  @override
  String get shareAppSubtitle => 'Kongsi aplikasi dengan rakan anda';

  @override
  String get resetData => 'Tetapkan Semula Data';

  @override
  String get resetDataSubtitle => 'Padam semua yang disimpan pada peranti ini';

  @override
  String get resetAllDataTitle => 'Tetapkan semula semua data?';

  @override
  String get resetAllDataMessage =>
      'Ini akan memadam semua yang disimpan pada peranti ini — profil, catatan jurnal dan kemajuan — dan tindakan ini tidak boleh dibuat asal.';

  @override
  String get cancel => 'Batal';

  @override
  String get reset => 'Tetapkan Semula';

  @override
  String get chooseFromGallery => 'Pilih daripada Galeri';

  @override
  String get takePhoto => 'Ambil Foto';

  @override
  String get removePhoto => 'Buang Foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Tidak dapat mengemas kini foto: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Tidak dapat membuang foto: $error';
  }

  @override
  String get photoTooLarge =>
      'Foto itu terlalu besar walaupun selepas dimampatkan — sila cuba foto lain.';

  @override
  String get unableToLoadProfile => 'Tidak dapat memuatkan profil anda';

  @override
  String get pleaseTryAgain => 'Sila cuba lagi.';

  @override
  String get tryAgain => 'Cuba Lagi';

  @override
  String get profileNotFound => 'Profil tidak ditemui';

  @override
  String get refresh => 'Muat Semula';

  @override
  String get noProfileDataFound =>
      'Tiada data profil ditemui pada peranti ini lagi.';

  @override
  String couldNotResetData(String error) {
    return 'Tidak dapat menetapkan semula data: $error';
  }

  @override
  String get navHome => 'Utama';

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
    return '$feature akan tersedia tidak lama lagi.';
  }

  @override
  String get appWordmark => 'KESEJAHTERAAN';

  @override
  String get appTitle => 'Berhenti Minum';

  @override
  String get splashSubtitle =>
      'Ambil langkah pertama menuju\nkehidupan bebas alkohol';

  @override
  String get preparingJourney => 'Menyediakan\nperjalanan anda';

  @override
  String get taskMorningMeditation => 'Meditasi Pagi (10 min)';

  @override
  String get taskReadChapter => 'Baca Bab 4 \"Diari Tanpa Alkohol\"';

  @override
  String get taskEveningJournal => 'Jurnal Kesyukuran Petang';

  @override
  String get close => 'Tutup';

  @override
  String get youAreDoingGreat => 'Anda melakukannya dengan hebat!';

  @override
  String get shareMilestone => 'Kongsi Pencapaian';

  @override
  String shareMilestoneMessage(int days) {
    return 'Saya berada di hari ke-$days dalam perjalanan pemulihan saya! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Pencapaian pemulihan saya';

  @override
  String get weeklyReportReadyTitle => 'Laporan mingguan anda sudah tersedia';

  @override
  String get weeklyReportReadySubtitle =>
      'Ketik untuk melihat perjalanan minggu anda';

  @override
  String get howAreYouFeeling => 'Bagaimana perasaan anda?';

  @override
  String get moodTough => 'Sukar';

  @override
  String get moodOkay => 'Okey';

  @override
  String get moodGood => 'Baik';

  @override
  String get moneySaved => 'Wang Dijimatkan';

  @override
  String get caloriesSaved => 'Kalori Dijimatkan';

  @override
  String get healthScore => 'Skor Kesihatan';

  @override
  String get drinksAvoided => 'Minuman Dielakkan';

  @override
  String get estimated => 'Anggaran';

  @override
  String get aiGenerated => 'Dijana oleh AI';

  @override
  String get daysCapsLabel => 'HARI';

  @override
  String get todaysMotivation => 'Motivasi Hari Ini';

  @override
  String get defaultMotivationQuote =>
      'Anda telah berjaya mengekalkan komitmen anda. Teruskan perubahan positif ini.';

  @override
  String get talkToCoach => 'Bercakap dengan jurulatih';

  @override
  String get havingACraving => 'Saya Sedang Mengidam';

  @override
  String get unlockWeeklyReportsTitle => 'Buka laporan mingguan';

  @override
  String get unlockWeeklyReportsMessage =>
      'Lihat hari tanpa alkohol, trend emosi dan maklum balas AI yang diperibadikan setiap minggu. Naik taraf ke Premium untuk membukanya.';

  @override
  String get maybeLater => 'Mungkin nanti';

  @override
  String get upgrade => 'Naik Taraf';

  @override
  String get weeklyReportTitle => 'Laporan Mingguan';

  @override
  String get weeklyReportsPremiumTitle => 'Laporan mingguan ialah ciri Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Lihat hari tanpa alkohol, trend emosi, keinginan dan maklum balas AI yang diperibadikan setiap minggu.';

  @override
  String get upgradeToPremium => 'Naik Taraf ke Premium';

  @override
  String get couldNotGenerateReport =>
      'Tidak dapat menjana laporan anda sekarang.';

  @override
  String get tryAgainLower => 'Cuba lagi';

  @override
  String get statSoberDays => 'Hari tanpa alkohol';

  @override
  String get statAvgMood => 'Purata emosi';

  @override
  String get statCravings => 'Keinginan';

  @override
  String get statMoneySaved => 'Wang dijimatkan';

  @override
  String get coachFeedback => 'Maklum balas jurulatih';

  @override
  String get journalInsights => 'Wawasan jurnal';

  @override
  String get next => 'Seterusnya';

  @override
  String get question1Title => 'Apakah matlamat anda';

  @override
  String get question1Subtitle =>
      'Pilih matlamat yang paling\npenting bagi anda';

  @override
  String get goalQuitCompletely => 'Berhenti Sepenuhnya';

  @override
  String get goalReduceDrinking => 'Kurangkan minum';

  @override
  String get goalTakeABreak => 'Berehat daripada minum';

  @override
  String get goalBuildHealthierHabits => 'Bina tabiat lebih sihat';

  @override
  String get question3Title => 'Beritahu kami tentang\nrutin anda';

  @override
  String get drinksPerWeek => 'Minuman setiap minggu';

  @override
  String get moneySpentPerWeek => 'Wang dibelanjakan setiap minggu';

  @override
  String get drinkingLevel => 'Tahap pengambilan alkohol';

  @override
  String get triggersLabel => 'Pencetus';

  @override
  String get levelSocial => 'Sosial';

  @override
  String get levelRegular => 'Biasa';

  @override
  String get levelHeavy => 'Berat';

  @override
  String get levelDependent => 'Bergantung';

  @override
  String get triggerStress => 'Tekanan';

  @override
  String get triggerLoneliness => 'Kesunyian';

  @override
  String get triggerHabit => 'Tabiat';

  @override
  String get triggerSadness => 'Kesedihan';

  @override
  String get triggerAnger => 'Kemarahan';

  @override
  String get triggerBoredom => 'Kebosanan';

  @override
  String get triggerSocialPressure => 'Tekanan sosial';

  @override
  String get triggerCelebration => 'Sambutan';

  @override
  String get triggerSleepProblems => 'Masalah tidur';

  @override
  String get triggerWorkPressure => 'Tekanan kerja';

  @override
  String get question4Title => 'Mengapa anda mahu berubah?';

  @override
  String get question4Subtitle => 'Sebab anda akan membantu memberi motivasi.';

  @override
  String get reasonImproveHealth => 'Tingkatkan Kesihatan Saya';

  @override
  String get reasonSaveMoney => 'Jimat Wang';

  @override
  String get reasonFamily => 'Keluarga';

  @override
  String get reasonBetterSleep => 'Tidur Lebih Baik';

  @override
  String get reasonMentalClarity => 'Kejelasan Mental';

  @override
  String get reasonFitness => 'Kecergasan';

  @override
  String get reasonSelfRespect => 'Hormat Diri';

  @override
  String get reasonCareer => 'Kerjaya';

  @override
  String get milestoneUnlockedLabel => 'PENCAPAIAN DIBUKA';

  @override
  String incredibleNamePrefix(String name) {
    return 'Hebat, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount dijimatkan';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count dielakkan';
  }

  @override
  String get shareMyMilestone => 'Kongsi pencapaian saya';

  @override
  String get milestoneImageShareError =>
      'Tidak dapat mencipta imej pencapaian. Sila cuba lagi.';

  @override
  String get dailyCheckInTitle => 'Daftar Masuk Harian';

  @override
  String get howAreYouFeelingToday => 'Bagaimana perasaan anda hari ini?';

  @override
  String get honestAnswerHelp =>
      'Jawapan jujur anda membantu kami menyokong anda dengan lebih baik';

  @override
  String get didYouDrinkToday => 'Adakah anda minum hari ini?';

  @override
  String get noLabel => 'Tidak';

  @override
  String get yesLabel => 'Ya';

  @override
  String get cravingLevelNow => 'Apakah tahap keinginan anda sekarang?';

  @override
  String get anythingOnMind => 'Ada apa-apa yang bermain di fikiran anda?';

  @override
  String get optionalLabel => '(pilihan)';

  @override
  String get dailyNoteHint => 'Tulis tentang hari anda, pencetus, kejayaan...';

  @override
  String get alreadyCheckedInToday => 'Sudah daftar masuk hari ini';

  @override
  String get saveCheckIn => 'Simpan daftar masuk';

  @override
  String get checkInsHelpTrack =>
      'Daftar masuk membantu menjejaki kemajuan anda dari masa ke masa';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Anda telah melengkapkan daftar masuk hari ini.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Sila jawab kedua-dua soalan di atas dahulu';

  @override
  String get checkInSaved => 'Daftar masuk disimpan';

  @override
  String get cravingNone => 'Tiada';

  @override
  String get cravingLow => 'Rendah';

  @override
  String get cravingMedium => 'Sederhana';

  @override
  String get cravingStrong => 'Kuat';

  @override
  String get moodBad => 'Teruk';

  @override
  String get moodLow => 'Rendah';

  @override
  String get moodGreat => 'Sangat Baik';

  @override
  String get sosSupportTitle => 'Sokongan SOS';

  @override
  String notAloneMessage(String name) {
    return 'Anda tidak keseorangan, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Keinginan akan berlalu. Pilih sesuatu di bawah untuk membantu anda melalui saat ini.';

  @override
  String get breathingExercise => 'Latihan Pernafasan';

  @override
  String get breathingExerciseSubtitle => 'Teknik 4-7-8 berpandu, 2 minit';

  @override
  String get rideTheWave => 'Hadapi Gelombang';

  @override
  String get rideTheWaveSubtitle =>
      'Pemasa 15 minit — keinginan sentiasa berlalu';

  @override
  String get copingTips => 'Petua menangani';

  @override
  String get copingTipsSubtitle => 'Strategi diperibadikan untuk pencetus anda';

  @override
  String get talkToAiCoach => 'Bercakap dengan jurulatih AI';

  @override
  String get talkToAiCoachSubtitle => 'Berbual dengan teman pemulihan anda';

  @override
  String get callSomeone => 'Hubungi seseorang';

  @override
  String get callSomeoneSubtitle => 'Hubungi kenalan yang anda percayai';

  @override
  String get contactsPermissionNeeded =>
      'Kebenaran kenalan diperlukan untuk memanggil kenalan.';

  @override
  String get beatenCravingsPrefix => 'Anda telah mengatasi keinginan ';

  @override
  String beatenCravingsCount(int count) {
    return '$count kali';
  }

  @override
  String get beatenCravingsSuffix =>
      ' sebelum ini. Anda boleh melakukannya lagi.';

  @override
  String get tellUsAboutYourself => 'Beritahu Kami Tentang Diri Anda';

  @override
  String get detailsSubtitle =>
      'Maklumat ini membantu kami memperibadikan perjalanan pemulihan anda dan memberikan wawasan yang tepat.';

  @override
  String get nameLabel => 'Nama';

  @override
  String get nameHint => 'cth., Alex Rivers';

  @override
  String get ageLabel => 'Umur';

  @override
  String get ageHint => 'cth., 32';

  @override
  String get sexAssignedAtBirth => 'Jantina ditetapkan semasa lahir';

  @override
  String get sexFemale => 'Perempuan';

  @override
  String get sexMale => 'Lelaki';

  @override
  String get heightLabel => 'Ketinggian';

  @override
  String get weightLabel => 'Berat';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Had harian dicapai';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Anda telah menggunakan semua $limit mesej percuma hari ini. Naik taraf ke Premium untuk sembang jurulatih tanpa had.';
  }

  @override
  String get coachConnectError =>
      'Saya tidak dapat berhubung sekarang. Sila cuba lagi sebentar lagi.';

  @override
  String get clearConversationTitle => 'Kosongkan perbualan?';

  @override
  String get clearConversationMessage =>
      'Ini akan memadam sejarah sembang dengan jurulatih anda secara kekal.';

  @override
  String get clearLabel => 'Kosongkan';

  @override
  String get recoveryCoachTitle => 'Jurulatih pemulihan';

  @override
  String get onlineLabel => 'Dalam Talian';

  @override
  String get clearConversationMenuItem => 'Kosongkan perbualan';

  @override
  String chatGreeting(String name) {
    return 'Hai $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Anda berada di hari ke-$days dalam perjalanan anda. Saya sentiasa di sini apabila anda mahu berbincang.';
  }

  @override
  String get quickPromptsLabel => 'CADANGAN PANTAS';

  @override
  String get promptCravingLabel => 'Sedang mengidam';

  @override
  String get promptCravingSubtitle => 'Tenangkan diri dengan cepat';

  @override
  String get promptMotivationLabel => 'Perlukan motivasi';

  @override
  String get promptMotivationSubtitle => 'Sokongan ketika sukar';

  @override
  String get promptSocialLabel => 'Situasi sosial';

  @override
  String get promptSocialSubtitle => 'Hadapi perhimpunan';

  @override
  String get promptSlippedLabel => 'Saya tersasar';

  @override
  String get promptSlippedSubtitle => 'Tiada penghakiman, hanya sokongan';

  @override
  String get typeMessageHint => 'Taip mesej...';

  @override
  String get editProfileTitle => 'Edit Profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Tidak dapat menyimpan profil: $error';
  }

  @override
  String get heightCmLabel => 'Ketinggian (cm)';

  @override
  String get weightKgLabel => 'Berat (kg)';

  @override
  String get saveChangesLabel => 'Simpan Perubahan';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Wawasan & Analitik Lanjutan';

  @override
  String get featureUnlimitedJournal => 'Catatan Jurnal Tanpa Had';

  @override
  String get featureUnlimitedChat => 'Sembang Tanpa Had dengan Jurulatih AI';

  @override
  String get featureCommunityGroups => 'Kumpulan Komuniti Eksklusif';

  @override
  String get featurePrioritySupport => 'Sokongan Pakar Keutamaan';

  @override
  String get featureThemePacks => 'Pakej Tema Tersuai';

  @override
  String get featureDataExport => 'Eksport Data';

  @override
  String get featureAdFree => 'Pengalaman Tanpa Iklan';

  @override
  String get premiumMemberTitle => 'Anda Ahli Premium';

  @override
  String get unlockFullRecoveryTitle => 'Buka Pengalaman\nPemulihan Penuh Anda';

  @override
  String get premiumMemberSubtitle =>
      'Terima kasih kerana menyokong perjalanan pemulihan anda — semua ciri premium di bawah telah dibuka.';

  @override
  String get premiumJoinSubtitle =>
      'Sertai komuniti ribuan orang yang sedang\nmempercepatkan perjalanan pemulihan mereka\ndengan alat premium dan sokongan diperibadikan kami.';

  @override
  String get monthlyPlanLabel => 'Bulanan';

  @override
  String get perMonthSuffix => '/bln';

  @override
  String get cancelAnytimeLabel => 'Batal bila-bila masa';

  @override
  String get yearlyPlanLabel => 'Tahunan';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Dibilkan setiap tahun sebanyak $amount';
  }

  @override
  String get bestValueLabel => 'Nilai Terbaik';

  @override
  String get alreadyPremiumLabel => 'Anda Premium ✓';

  @override
  String get startPremiumLabel => 'Mulakan Premium';

  @override
  String get manageSubscriptionLabel =>
      'Urus atau batalkan melalui tetapan langganan peranti anda.';

  @override
  String get noCommitmentLabel => 'Tiada komitmen. Batal bila-bila masa.';

  @override
  String get continueFreePlanLabel => 'Teruskan dengan Pelan Percuma';

  @override
  String get backToHomeLabel => 'Kembali ke Utama';

  @override
  String get cancelPremiumLabel => 'Batal Premium';

  @override
  String get cancelPremiumTitle => 'Batal Premium?';

  @override
  String get cancelPremiumMessage =>
      'Anda akan kehilangan akses kepada catatan jurnal tanpa had, sembang jurulatih tanpa had, wawasan statistik dan laporan mingguan. Anda boleh melanggan semula pada bila-bila masa.';

  @override
  String get keepPremiumLabel => 'Kekalkan Premium';

  @override
  String get nowPremiumMessage =>
      'Anda kini Premium! Nikmati pengalaman pemulihan penuh anda.';

  @override
  String get premiumCancelledMessage =>
      'Premium dibatalkan. Anda kembali ke pelan percuma.';

  @override
  String get termsOfUseLabel => 'Syarat Penggunaan';

  @override
  String get navHomeLabel => 'Utama';

  @override
  String get navStatsLabel => 'Statistik';

  @override
  String get navJournalLabel => 'Jurnal';

  @override
  String get navBadgesLabel => 'Lencana';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Matlamat Pemulihan';

  @override
  String get drinksPerWeekLabel => 'Minuman setiap minggu';

  @override
  String get quitReasonsLabel => 'Sebab berhenti';

  @override
  String get quitReasonsHelperText => 'Pisahkan beberapa sebab dengan koma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Tidak dapat menyimpan matlamat pemulihan: $error';
  }

  @override
  String get goalHint => 'cth., Berhenti Sepenuhnya';

  @override
  String get drinksPerWeekHint => 'cth., 12';

  @override
  String get quitReasonsHint => 'cth., Kesihatan, Keluarga, Wang';

  @override
  String get todaysPrompt => 'Soalan Hari Ini';

  @override
  String get defaultJournalPrompt =>
      'Apa yang bermain di fikiran anda hari ini?';

  @override
  String get aiJournalInsights => 'Wawasan jurnal AI';

  @override
  String get unlockJournalInsightsMessage =>
      'Buka corak mingguan, trend emosi dan wawasan diperibadikan daripada catatan jurnal anda.';

  @override
  String get notEnoughJournalData =>
      'Data belum mencukupi — tulis beberapa catatan minggu ini dan semak semula.';

  @override
  String get openEntry => 'Buka';

  @override
  String get editEntry => 'Edit';

  @override
  String get deleteEntry => 'Padam';

  @override
  String get searchJournalEntries => 'Cari catatan...';

  @override
  String get writeNewEntry => 'Tulis catatan baharu';

  @override
  String get recentEntries => 'Catatan Terkini';

  @override
  String get noJournalEntriesYet =>
      'Tiada catatan jurnal lagi — tulis refleksi pertama anda di atas.';

  @override
  String get noEntriesMatchFilters =>
      'Tiada catatan sepadan dengan penapis anda.';

  @override
  String get weeklyJournalLimitReached => 'Had mingguan dicapai';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Anda telah menggunakan semua $limit catatan jurnal percuma minggu ini. Naik taraf ke Premium untuk catatan tanpa had.';
  }

  @override
  String get newEntry => 'Catatan baharu';

  @override
  String get writeYourThoughts => 'Tulis fikiran anda';

  @override
  String get saveEntry => 'Simpan Catatan';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining daripada $limit catatan percuma berbaki minggu ini';
  }

  @override
  String get deleteEntryQuestion => 'Padam catatan?';

  @override
  String get deleteEntryConfirmation =>
      'Catatan ini akan dipadam secara kekal. Tindakan ini tidak boleh dibuat asal.';

  @override
  String get journalEntryNotFound => 'Catatan tidak ditemui';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Catatan jurnal ini mungkin telah dipadam.';

  @override
  String get goBack => 'Kembali';

  @override
  String get journalEntryTitle => 'Catatan Jurnal';

  @override
  String get moodStruggling => 'Bergelut';

  @override
  String get moodUnwell => 'Tidak Sihat';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => 'Apa yang berlaku hari ini?';

  @override
  String get trigger => 'Pencetus';

  @override
  String get whatHelped => 'Apa yang membantu';

  @override
  String get whatIllTryNextTime => 'Apa yang akan saya cuba lain kali';

  @override
  String get journalPrivacyMessage =>
      'Refleksi anda adalah peribadi dan disimpan dalam jurnal anda.';

  @override
  String get unlocked => 'Dibuka';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '',
    );
    return '$count hari$_temp0 lagi';
  }

  @override
  String daysCount(int count) {
    return '$count Hari';
  }

  @override
  String get firstReflection => 'Refleksi\nPertama';

  @override
  String get oneJournalEntry => '1 Catatan Jurnal';

  @override
  String get openBook => 'Buka Buku';

  @override
  String get tenJournalEntries => '10 Catatan Jurnal';

  @override
  String get dedicatedWriter => 'Penulis\nBerdedikasi';

  @override
  String get thirtyJournalEntries => '30 Catatan Jurnal';

  @override
  String get firstConversation => 'Perbualan\nPertama';

  @override
  String get oneAiCoachChat => '1 Sembang Jurulatih AI';

  @override
  String get keepTalking => 'Teruskan Berbual';

  @override
  String get fiveConversations => '5 Perbualan';

  @override
  String get coachCompanion => 'Teman\nJurulatih';

  @override
  String get twentyConversations => '20 Perbualan';

  @override
  String get checkInHabit => 'Tabiat\nDaftar Masuk';

  @override
  String get sevenCheckIns => '7 Daftar Masuk';

  @override
  String get consistencyPro => 'Pro\nKonsisten';

  @override
  String get thirtyCheckIns => '30 Daftar Masuk';

  @override
  String get dedicatedJourney => 'Perjalanan\nBerdedikasi';

  @override
  String get hundredCheckIns => '100 Daftar Masuk';

  @override
  String get goalGetter => 'Pencapai Matlamat';

  @override
  String get threeGoalsCompleted => '3 Matlamat Selesai';

  @override
  String get goalAchiever => 'Pencapai\nMatlamat';

  @override
  String get tenGoalsCompleted => '10 Matlamat Selesai';

  @override
  String get firstSavings => 'Simpanan\nPertama';

  @override
  String get fiveHundredSaved => '\$500 Dijimatkan';

  @override
  String get smartSaver => 'Penyimpan Bijak';

  @override
  String get oneThousandSaved => '\$1,000 Dijimatkan';

  @override
  String get bigSaver => 'Penyimpan Besar';

  @override
  String get fiveThousandSaved => '\$5,000 Dijimatkan';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current daripada \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current daripada $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Teruskan — pencapaian pertama anda sedang menanti!';

  @override
  String get badgesAndMilestones => 'Lencana & Pencapaian';

  @override
  String get yourMilestoneJourney => 'Perjalanan Pencapaian Anda';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '',
    );
    return '$count pencapaian$_temp0 dicapai.\nKetik untuk melihat';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Anda telah membuka $unlocked daripada $total pencapaian dalam perjalanan anda.';
  }

  @override
  String get remaining => 'Baki';

  @override
  String get complete => 'Selesai';

  @override
  String get nextMilestone => 'Pencapaian Seterusnya';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% selesai';
  }

  @override
  String get sobrietyMilestones => 'Pencapaian Tanpa Alkohol';

  @override
  String get journeyBadges => 'Lencana Perjalanan';

  @override
  String get bronze => 'GANGSA';

  @override
  String get silver => 'PERAK';

  @override
  String get gold => 'EMAS';

  @override
  String get platinum => 'PLATINUM';

  @override
  String get diamond => 'BERLIAN';

  @override
  String get analyzingYourJourney => 'Menganalisis Perjalanan Anda...';

  @override
  String get aiCreatingSanctuary =>
      'AI kami sedang mencipta ruang pemulihan yang diperibadikan untuk anda.';

  @override
  String get understandingHabits => 'Memahami tabiat...';

  @override
  String get calculatingBaseline => 'Mengira tahap asas anda...';

  @override
  String get personalizingPlan => 'Memperibadikan pelan anda...';

  @override
  String get finalizingSanctuary => 'Memuktamadkan ruang pemulihan anda...';

  @override
  String get creatingYourPlan => 'Mencipta pelan anda...';

  @override
  String get personalizedPlanError =>
      'Kami tidak dapat mencipta pelan diperibadikan anda. Sila cuba lagi.';

  @override
  String get retry => 'Cuba Lagi';

  @override
  String get breathInhale => 'TARIK NAFAS';

  @override
  String get breathHold => 'TAHAN';

  @override
  String get breathExhale => 'HEMBUSKAN';

  @override
  String get breathDone => 'SELESAI';

  @override
  String get breathGreatJob => 'Syabas!';

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
  String get endExercise => 'Tamatkan Latihan';

  @override
  String get done => 'Selesai';

  @override
  String get noCopingTipsYet => 'Belum ada petua menangani';

  @override
  String get copingStrategiesWillAppear =>
      'Strategi menangani yang diperibadikan akan muncul di sini setelah pelan pemulihan anda selesai dijana.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategi disesuaikan dengan pencetus anda';

  @override
  String get cravingsPeakAndPass => 'Keinginan memuncak\ndan berlalu';

  @override
  String get rideTheWaveDescription =>
      'Kebanyakan keinginan berlalu dalam masa 15 minit. Anda tidak perlu bertindak mengikutnya — hadapinya bersama kami.';

  @override
  String get stayWithIt => 'teruskan';

  @override
  String get youMadeIt => 'anda berjaya';

  @override
  String get readyWhenYouAre => 'apabila anda sudah bersedia';

  @override
  String get rideItAgain => 'Hadapinya lagi';

  @override
  String get start15MinuteTimer => 'Mulakan Pemasa 15 Minit';

  @override
  String get rideTheWaveCompletedMessage =>
      'Anda berjaya melalui gelombang itu. Itulah kekuatan sebenar. 💪';

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
  String get savedStatLabel => 'Dijimatkan';

  @override
  String get avoidedStatLabel => 'Dielakkan';

  @override
  String get moodTrends => 'Trend emosi';

  @override
  String get cravingsPattern => 'Corak keinginan';

  @override
  String get unlockLabel => 'Buka';

  @override
  String get unlockFullStats => 'Buka statistik penuh';

  @override
  String get premiumStatsMessage =>
      'Trend emosi dan corak keinginan ialah ciri Premium. Naik taraf untuk melihat statistik penuh anda.';

  @override
  String get healthMilestonesWillAppear =>
      'Pencapaian kesihatan anda akan muncul di sini.';

  @override
  String get healthMilestones => 'Pencapaian kesihatan';

  @override
  String dayNumber(int day) {
    return 'Hari $day';
  }

  @override
  String get soberLabel => 'Tanpa alkohol';

  @override
  String get slipLabel => 'Tersasar';

  @override
  String get noDataLabel => 'Tiada data';

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
  String get maybeLaterLabel => 'Mungkin kemudian';

  @override
  String get cancelLabel => 'Batal';
}
