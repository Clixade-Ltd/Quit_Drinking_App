// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get skip => 'Kalo';

  @override
  String get continueButton => 'Vazhdo';

  @override
  String get getStarted => 'Fillo';

  @override
  String get onboardingTitle1 => 'Merr Kontrollin e Jetes Tënde';

  @override
  String get onboardingSubtitle1 =>
      'Gjurmo udhëtimin tënd, festo çdo arritje dhe bëhu më i shëndetshëm, një ditë nga një.';

  @override
  String get onboardingTitle2 => 'Shoqëruesi Yt i Rimëkëmbjes me AI';

  @override
  String get onboardingSubtitle2 =>
      'Merr udhëzime të personalizuara, zakone të shëndetshme, rikujtues motivues dhe raporte ecurie të projektuara rreth udhëtimit tënd.';

  @override
  String get goodMorning => 'Mirëmëngjes';

  @override
  String get goodAfternoon => 'Mirëdita';

  @override
  String get goodEvening => 'Mirëmbrëma';

  @override
  String get goodNight => 'Natën e Mirë';

  @override
  String get embracingClarity => 'Duke përqafuar qartësinë, një ditë nga një.';

  @override
  String get streakLabel => 'EÇURIA';

  @override
  String get goalLabel => 'Synimi';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Ditë',
      one: '$count Ditë',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Plani Premium';

  @override
  String get premiumPlanSubtitle =>
      'Zbulo përvojën tënde të plotë të rimëkëmbjes';

  @override
  String get accountAndSupport => 'LLOGARIA DHE MBETESHJA';

  @override
  String get privacyPolicy => 'Politika e Privatësisë';

  @override
  String get privacyPolicySubtitle =>
      'Menaxho ndarjen e të dhënave dhe sigurinë e llogarisë';

  @override
  String get termsOfService => 'Kushtet e Shërbimit';

  @override
  String get termsOfServiceSubtitle =>
      'Pyetjet e shpeshta, na kontaktoni dhe burimet';

  @override
  String get shareApp => 'Shpërndaj aplikacionin';

  @override
  String get shareAppSubtitle => 'Nda aplikacionin me miqtë e tu';

  @override
  String get resetData => 'Rilind të dhënat';

  @override
  String get resetDataSubtitle => 'Fshi gjithçka të ruajtur në këtë pajisje';

  @override
  String get resetAllDataTitle => 'Të fshihen të gjitha të dhënat?';

  @override
  String get resetAllDataMessage =>
      'Kjo do të fshijë çdo gjë të ruajtur në këtë pajisje — profilin, hyrjet në ditar dhe ecurinë — dhe nuk mund të zhbëhet.';

  @override
  String get cancel => 'Anulo';

  @override
  String get reset => 'Rilind';

  @override
  String get chooseFromGallery => 'Zgjidh nga Galeria';

  @override
  String get takePhoto => 'Bëj Foto';

  @override
  String get removePhoto => 'Hiq Foton';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Nuk u mundësua përditësimi i fotos: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Nuk u mundësua heqja e fotos: $error';
  }

  @override
  String get photoTooLarge =>
      'Kjo foto është shumë e madhe madje edhe pas ngjeshjes — ju lutemi provoni një tjetër.';

  @override
  String get unableToLoadProfile => 'Nuk mund të ngarkohet profili yt';

  @override
  String get pleaseTryAgain => 'Ju lutemi provoni përsëri.';

  @override
  String get tryAgain => 'Provo Përsëri';

  @override
  String get profileNotFound => 'Profili nuk u gjet';

  @override
  String get refresh => 'Rifresko';

  @override
  String get noProfileDataFound =>
      'Ende nuk u gjetën të dhëna profili në këtë pajisje.';

  @override
  String couldNotResetData(String error) {
    return 'Nuk u mundësua rivendosja e të dhënave: $error';
  }

  @override
  String get navHome => 'Kreu';

  @override
  String get navStats => 'Statistikat';

  @override
  String get navJournal => 'Ditari';

  @override
  String get navBadges => 'Medyat';

  @override
  String get navProfile => 'Profili';

  @override
  String featureComingSoon(String feature) {
    return '$feature do të jetë e disponueshme së shpejti.';
  }

  @override
  String get appWordmark => 'SHËNDETI';

  @override
  String get appTitle => 'Lëreni alkoolin';

  @override
  String get splashSubtitle => 'Bëj hapin e parë drejt një\njete pa alkool';

  @override
  String get preparingJourney => 'Duke përgatitur\nudhëtimin tënd';

  @override
  String get taskMorningMeditation => 'Meditimi i Mëngjesit (10 m)';

  @override
  String get taskReadChapter => 'Llexo Kapitullin 4 të \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Ditari i Mirënjohjes së Mbrëmjes';

  @override
  String get close => 'Mbyll';

  @override
  String get youAreDoingGreat => 'Po bën një punë të shkëlqyer!';

  @override
  String get shareMilestone => 'Shpërndaj Arritjen';

  @override
  String shareMilestoneMessage(int days) {
    return 'Jam në ditën $days të udhëtimit tim të rimëkëmbjes! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Arritja ime e rimëkëmbjes';

  @override
  String get weeklyReportReadyTitle => 'Raporti yt javor është gati';

  @override
  String get weeklyReportReadySubtitle =>
      'Kliko për të parë se si kaloi java jote';

  @override
  String get howAreYouFeeling => 'Si po ndihesh?';

  @override
  String get moodTough => 'E vështirë';

  @override
  String get moodOkay => 'Mjaft mirë';

  @override
  String get moodGood => 'I mirë';

  @override
  String get moneySaved => 'Para të Ruajtura';

  @override
  String get caloriesSaved => 'Kalori të Ruajtura';

  @override
  String get healthScore => 'Pikët e Shëndetit';

  @override
  String get drinksAvoided => 'Pije të Shmangura';

  @override
  String get estimated => 'E vlerësuar';

  @override
  String get aiGenerated => 'Gjeneruar nga AI';

  @override
  String get daysCapsLabel => 'DITË';

  @override
  String get todaysMotivation => 'Motivimi i Sotëm';

  @override
  String get defaultMotivationQuote =>
      'Ke ruajtur me sukses përkushtimin tënd. Vazhdo të lundrosh mbi valën e ndryshimit pozitiv.';

  @override
  String get talkToCoach => 'Fol me trajnerin';

  @override
  String get havingACraving => 'Kam një Deshirë të Fortë';

  @override
  String get unlockWeeklyReportsTitle => 'Zblo raportet javore';

  @override
  String get unlockWeeklyReportsMessage =>
      'Shih ditët e tua pa alkool, prirjet e humorit dhe reagimet e personalizuara nga AI çdo javë. Kaloni në Premium për t\'i zbritur.';

  @override
  String get maybeLater => 'Mbase më vonë';

  @override
  String get upgrade => 'Përmirëso';

  @override
  String get weeklyReportTitle => 'Raporti Javor';

  @override
  String get weeklyReportsPremiumTitle =>
      'Raportet javore janë një veçori Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Shih ditët e tua pa alkool, prirjet e humorit, dëshirat e forta dhe reagimet e personalizuara nga AI çdo javë.';

  @override
  String get upgradeToPremium => 'Përmirëso në Premium';

  @override
  String get couldNotGenerateReport =>
      'Nuk u mundësua gjenerimi i raportit tënd tani.';

  @override
  String get tryAgainLower => 'Provo përsëri';

  @override
  String get statSoberDays => 'Ditët pa alkool';

  @override
  String get statAvgMood => 'Humori mesatar';

  @override
  String get statCravings => 'Dëshirat e forta';

  @override
  String get statMoneySaved => 'Para të ruajtura';

  @override
  String get coachFeedback => 'Këshillat e trajnerit';

  @override
  String get journalInsights => 'Të dhënat e ditarit';

  @override
  String get next => 'Tjetra';

  @override
  String get question1Title => 'Cili është synimi yt';

  @override
  String get question1Subtitle =>
      'Zgjidh synimin që ka më shumë\nrëndësi për ty';

  @override
  String get goalQuitCompletely => 'Lëre Plotësisht';

  @override
  String get goalReduceDrinking => 'Pëpakëso Pirjen';

  @override
  String get goalTakeABreak => 'Bëj një Pushim';

  @override
  String get goalBuildHealthierHabits => 'Krijo Zakone më të Shëndetshme';

  @override
  String get question3Title => 'Na trego për rutinen\ntënde';

  @override
  String get drinksPerWeek => 'Pije në javë';

  @override
  String get moneySpentPerWeek => 'Para të shpenzuara në javë';

  @override
  String get drinkingLevel => 'Niveli i pirjes';

  @override
  String get triggersLabel => 'Ngacmuesit (Triggers)';

  @override
  String get levelSocial => 'Shoqëror';

  @override
  String get levelRegular => 'I rregullt';

  @override
  String get levelHeavy => 'I rëndë';

  @override
  String get levelDependent => 'I varur';

  @override
  String get triggerStress => 'Stresi';

  @override
  String get triggerLoneliness => 'Vetmia';

  @override
  String get triggerHabit => 'Zakoni';

  @override
  String get triggerSadness => 'Mërzitja';

  @override
  String get triggerAnger => 'Inati';

  @override
  String get triggerBoredom => 'Lodhja nga kotësia';

  @override
  String get triggerSocialPressure => 'Presioni shoqëror';

  @override
  String get triggerCelebration => 'Festimi';

  @override
  String get triggerSleepProblems => 'Problemet me gjumin';

  @override
  String get triggerWorkPressure => 'Presioni i punës';

  @override
  String get question4Title => 'Pse dëshiron të ndryshosh?';

  @override
  String get question4Subtitle => 'Arsyeja jote do të ndihmojë të të motivojë.';

  @override
  String get reasonImproveHealth => 'Përmirësimi i Shëndetit Im';

  @override
  String get reasonSaveMoney => 'Kursimi i Parave';

  @override
  String get reasonFamily => 'Familja';

  @override
  String get reasonBetterSleep => 'Gjumë më i Mirë';

  @override
  String get reasonMentalClarity => 'Qartësi Mendore';

  @override
  String get reasonFitness => 'Forma Fizike';

  @override
  String get reasonSelfRespect => 'Vetërespekti';

  @override
  String get reasonCareer => 'Karriera';

  @override
  String get milestoneUnlockedLabel => 'ARRITJA U ZBLLOKUA';

  @override
  String incredibleNamePrefix(String name) {
    return 'E pabesueshme, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount të ruajtura';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count të shmangura';
  }

  @override
  String get shareMyMilestone => 'Shpërndaj arritjen time';

  @override
  String get milestoneImageShareError =>
      'Nuk u mundësua krijimi i imazhit të arritjes. Ju lutemi provoni përsëri.';

  @override
  String get dailyCheckInTitle => 'Regjistrimi Ditor';

  @override
  String get howAreYouFeelingToday => 'Si po ndihesh sot?';

  @override
  String get honestAnswerHelp =>
      'Përgjigja jote e sinqertë na ndihmon të të mbështesim më mirë';

  @override
  String get didYouDrinkToday => 'A pine sot?';

  @override
  String get noLabel => 'Jo';

  @override
  String get yesLabel => 'Po';

  @override
  String get cravingLevelNow => 'Niveli i dëshirës për pijes tani?';

  @override
  String get anythingOnMind => 'Keni diçka në mendje?';

  @override
  String get optionalLabel => '(opsionale)';

  @override
  String get dailyNoteHint => 'Shkruaj për ditën tënde, ngacmuesit, fitoret...';

  @override
  String get alreadyCheckedInToday => 'U regjistruat tashmë sot';

  @override
  String get saveCheckIn => 'Ruaj regjistrimin';

  @override
  String get checkInsHelpTrack =>
      'Regjistrimet ndihmojnë në gjurmimin e ecurisë me kalimin e kohës';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'E ke kompletuar tashmë regjistrimin e sotëm.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Ju lutemi përgjigjuni të dyja pyetjeve më sipër së pari';

  @override
  String get checkInSaved => 'Regjistrimi u ruajt';

  @override
  String get cravingNone => 'Asnjë';

  @override
  String get cravingLow => 'I ulët';

  @override
  String get cravingMedium => 'Mesatar';

  @override
  String get cravingStrong => 'I fortë';

  @override
  String get moodBad => 'I keq';

  @override
  String get moodLow => 'I ulët';

  @override
  String get moodGreat => 'Shkëlqyeshëm';

  @override
  String get sosSupportTitle => 'Mbështetje SOS';

  @override
  String notAloneMessage(String name) {
    return 'Nuk je vetëm, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Dëshirat e forta kalojnë. Zgjidh diçka më poshtë për të kaluar këtë moment.';

  @override
  String get breathingExercise => 'Ushtrime frymëmarrjeje';

  @override
  String get breathingExerciseSubtitle => 'Teknika e udhëhequr 4-7-8, 2 minuta';

  @override
  String get rideTheWave => 'Lundro mbi valë';

  @override
  String get rideTheWaveSubtitle =>
      'Koha prej 15 min — dëshirat kalojnë gjithmonë';

  @override
  String get copingTips => 'Këshilla për përballim';

  @override
  String get copingTipsSubtitle =>
      'Strategji të personalizuara për ngacmuesit e tu';

  @override
  String get talkToAiCoach => 'Bisedo me trajnerin AI';

  @override
  String get talkToAiCoachSubtitle =>
      'Bisedo me shoqëruesin tënd të rimëkëmbjes';

  @override
  String get callSomeone => 'Thirr dikë';

  @override
  String get callSomeoneSubtitle => 'Lidhu me kontaktin tënd të besuar';

  @override
  String get contactsPermissionNeeded =>
      'Nevojitet leja e kontakteve për të thirrur një kontakt.';

  @override
  String get beatenCravingsPrefix => 'Ti ke mposhtur dëshirën e fortë ';

  @override
  String beatenCravingsCount(int count) {
    return '$count herë';
  }

  @override
  String get beatenCravingsSuffix => ' më parë. Mund ta bësh përsëri.';

  @override
  String get tellUsAboutYourself => 'Na trego për veten';

  @override
  String get detailsSubtitle =>
      'Kjo informatë na ndihmon të personalizojmë udhëtimin tënd të rimëkëmbjes dhe të ofrojmë të dhëna të sakta.';

  @override
  String get nameLabel => 'Emri';

  @override
  String get nameHint => 'p.sh., Alex Rivers';

  @override
  String get ageLabel => 'Moshë';

  @override
  String get ageHint => 'p.sh., 32';

  @override
  String get sexAssignedAtBirth => 'Gjinia e caktuar në lindje';

  @override
  String get sexFemale => 'Femër';

  @override
  String get sexMale => 'Mashkull';

  @override
  String get heightLabel => 'Gjatësia';

  @override
  String get weightLabel => 'Peshë';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'U arrit kufiri ditor';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Keni përdorur të gjitha $limit mesazhet pa pagesë sot. Kaloni në Premium për bisedë të pakufizuar me trajnerin.';
  }

  @override
  String get coachConnectError =>
      'Nuk munda të lidhem tani. Ju lutemi provoni përsëri pas pak.';

  @override
  String get clearConversationTitle => 'Të fshihet biseda?';

  @override
  String get clearConversationMessage =>
      'Kjo do të fshijë përgjithmonë historikun e bisedave me trajnerin.';

  @override
  String get clearLabel => 'Fshi';

  @override
  String get recoveryCoachTitle => 'Trajneri i rimëkëmbjes';

  @override
  String get onlineLabel => 'Në linjë';

  @override
  String get clearConversationMenuItem => 'Fshi bisedën';

  @override
  String chatGreeting(String name) {
    return 'Përshëndetje $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Je në ditën $days të udhëtimit tënd. Jam këtu sa herë që dëshiron të flasësh.';
  }

  @override
  String get quickPromptsLabel => 'PYETJE TË SHPEJTA';

  @override
  String get promptCravingLabel => 'Kam dëshirë të fortë';

  @override
  String get promptCravingSubtitle => 'Qetësohu shpejt';

  @override
  String get promptMotivationLabel => 'Më nevojitet motivim';

  @override
  String get promptMotivationSubtitle => 'Një shtysë kur është e vështirë';

  @override
  String get promptSocialLabel => 'Situatë shoqërore';

  @override
  String get promptSocialSubtitle => 'Menaxho një grumbullim';

  @override
  String get promptSlippedLabel => 'Rrëshqita/piva';

  @override
  String get promptSlippedSubtitle => 'Pa gjykime, vetëm mbështetje';

  @override
  String get typeMessageHint => 'Shkruaj një mesazh...';

  @override
  String get editProfileTitle => 'Ndrysho Profilin';

  @override
  String couldNotSaveProfile(String error) {
    return 'Nuk u mundësua ruajtja e profilit: $error';
  }

  @override
  String get heightCmLabel => 'Gjatësia (cm)';

  @override
  String get weightKgLabel => 'Peshë (kg)';

  @override
  String get saveChangesLabel => 'Ruaj Ndryshimet';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Statistika dhe Analiza të Avancuara';

  @override
  String get featureUnlimitedJournal => 'Hyrje të Pakufizuara në Ditar';

  @override
  String get featureUnlimitedChat => 'Bisedë e Pakufizuar me Trajnerin AI';

  @override
  String get featureCommunityGroups => 'Grupe Ekskluzive të Komunitetit';

  @override
  String get featurePrioritySupport => 'Mbështetje Prioritare nga Ekspertët';

  @override
  String get featureThemePacks => 'Paketa me Tematika të Personalizuara';

  @override
  String get featureDataExport => 'Eksportimi i të Dhënave';

  @override
  String get featureAdFree => 'Përvojë Pa Reklama';

  @override
  String get premiumMemberTitle => 'Jeni anëtar Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Zblloko Përvojën Tënde të\nPlotë të Rimëkëmbjes';

  @override
  String get premiumMemberSubtitle =>
      'Faleminderit që mbështetni udhëtimin tuaj të rimëkëmbjes — çdo veçori premium më poshtë është e zbllokuar.';

  @override
  String get premiumJoinSubtitle =>
      'Bashkohuni me një komunitet mijëra njerëzish që po\npërshpejtojnë udhëtimin e tyre të shërimit me\nmjetet tona premium dhe mbështetjen e personalizuar.';

  @override
  String get monthlyPlanLabel => 'Mujore';

  @override
  String get perMonthSuffix => '/muaj';

  @override
  String get cancelAnytimeLabel => 'Anulo në çdo kohë';

  @override
  String get yearlyPlanLabel => 'Vjetore';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Faturuar çdo vit me $amount';
  }

  @override
  String get bestValueLabel => 'Vlera më e mirë';

  @override
  String get alreadyPremiumLabel => 'Jeni Premium ✓';

  @override
  String get startPremiumLabel => 'Fillo Premium';

  @override
  String get manageSubscriptionLabel =>
      'Menaxho ose anulo nga cilësimet e abonimit të pajisjes suaj.';

  @override
  String get noCommitmentLabel => 'Pa asnjë detyrim. Anulo në çdo kohë.';

  @override
  String get continueFreePlanLabel => 'Vazhdo me Planin Pa Pagesë';

  @override
  String get backToHomeLabel => 'Kthehu në Kreu';

  @override
  String get cancelPremiumLabel => 'Anulo Premium';

  @override
  String get cancelPremiumTitle => 'Të analohet Premium?';

  @override
  String get cancelPremiumMessage =>
      'Do të humbisni qasjen në hyrjet e pakufizuara në ditar, bisedën me trajnerin, analizat dhe raporte javore. Mund të riabonoheni në çdo kohë.';

  @override
  String get keepPremiumLabel => 'Mba Premium';

  @override
  String get nowPremiumMessage =>
      'Tani jeni Premium! Shijoni përvojën tuaj të plotë të rimëkëmbjes.';

  @override
  String get premiumCancelledMessage =>
      'Premium u anulua. Jeni kthyer në planin pa pagesë.';

  @override
  String get termsOfUseLabel => 'Kushtet e Përdorimit';

  @override
  String get navHomeLabel => 'Kreu';

  @override
  String get navStatsLabel => 'Statistikat';

  @override
  String get navJournalLabel => 'Ditari';

  @override
  String get navBadgesLabel => 'Medaljet';

  @override
  String get navProfileLabel => 'Profili';

  @override
  String get recoveryGoalsTitle => 'Synimet e Rimëkëmbjes';

  @override
  String get drinksPerWeekLabel => 'Pije në javë';

  @override
  String get quitReasonsLabel => 'Arsyet e lënies';

  @override
  String get quitReasonsHelperText => 'Nani arsyet e shumta me një presje.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Nuk u mundësua ruajtja e synimeve të rimëkëmbjes: $error';
  }

  @override
  String get goalHint => 'p.sh., Abstinencë e Plotë';

  @override
  String get drinksPerWeekHint => 'p.sh., 12';

  @override
  String get quitReasonsHint => 'p.sh., Shëndeti, Familja, Paratë';

  @override
  String get todaysPrompt => 'Pyetja e sotme';

  @override
  String get defaultJournalPrompt => 'Çfarë ke në mendje sot?';

  @override
  String get aiJournalInsights => 'Të dhënat e ditarit nga AI';

  @override
  String get unlockJournalInsightsMessage =>
      'Zblloko modelin javor, prirjet e humorit dhe njohuritë e personalizuara nga hyrjet e ditarit tënd.';

  @override
  String get notEnoughJournalData =>
      'Ende nuk ka mjaftueshëm të dhëna — shkruaj disa hyrje këtë javë dhe kontrollo sërish.';

  @override
  String get openEntry => 'Hap';

  @override
  String get editEntry => 'Ndrysho';

  @override
  String get deleteEntry => 'Fshi';

  @override
  String get searchJournalEntries => 'Kërko hyrjet...';

  @override
  String get writeNewEntry => 'Shkruaj një hyrje të re';

  @override
  String get recentEntries => 'Hyrjet e Fundit';

  @override
  String get noJournalEntriesYet =>
      'Ende nuk ka hyrje në ditar — shkruaj reflektimin tënd të parë më sipër.';

  @override
  String get noEntriesMatchFilters =>
      'Asnjë hyrje nuk përputhet me filtrat tuaj.';

  @override
  String get weeklyJournalLimitReached => 'U arrit kufiri javor';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Keni përdorur të gjitha $limit hyrjet pa pagesë në ditar këtë javë. Përmirësoni në Premium për hyrje të pakufizuara.';
  }

  @override
  String get newEntry => 'Hyrje e re';

  @override
  String get writeYourThoughts => 'Shkruaj mendimet e tua';

  @override
  String get saveEntry => 'Ruaj Hyrjen';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return '$remaining nga $limit hyrjet e mbetura pa pagesë këtë javë';
  }

  @override
  String get deleteEntryQuestion => 'Të fshihet hyrja?';

  @override
  String get deleteEntryConfirmation =>
      'Kjo hyrje do të fshihet përgjithmonë. Kjo nuk mund të zhbëhet.';

  @override
  String get journalEntryNotFound => 'Hyrja nuk u gjet';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Kjo hyrje në ditar mund të jetë fshirë.';

  @override
  String get goBack => 'Kthehu prapa';

  @override
  String get journalEntryTitle => 'Hyrja në Ditar';

  @override
  String get moodStruggling => 'Duke u munduar';

  @override
  String get moodUnwell => 'Sëmurë';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => 'Çfarë ndodhi sot?';

  @override
  String get trigger => 'Ngacmuesi';

  @override
  String get whatHelped => 'Çfarë ndihmoi';

  @override
  String get whatIllTryNextTime => 'Çfarë do të provoj herën tjetër';

  @override
  String get journalPrivacyMessage =>
      'Reflektimi yt është privat dhe i ruajtur në ditarin tënd.';

  @override
  String get unlocked => 'E zbllokuar';

  @override
  String daysLeft(int count) {
    return 'Mbeten $count ditë';
  }

  @override
  String daysCount(int count) {
    return '$count Ditë';
  }

  @override
  String get firstReflection => 'Reflektimi i\nParë';

  @override
  String get oneJournalEntry => '1 Hyrje në Ditar';

  @override
  String get openBook => 'Libër i Hapur';

  @override
  String get tenJournalEntries => '10 Hyrje në Ditar';

  @override
  String get dedicatedWriter => 'Shkrimtar i\nPërkushtuar';

  @override
  String get thirtyJournalEntries => '30 Hyrje në Ditar';

  @override
  String get firstConversation => 'Biseda e\nParë';

  @override
  String get oneAiCoachChat => '1 Bisedë me Trajnerin AI';

  @override
  String get keepTalking => 'Vazhdo të Flasësh';

  @override
  String get fiveConversations => '5 Biseda';

  @override
  String get coachCompanion => 'Shoqërues\nTrajneri';

  @override
  String get twentyConversations => '20 Biseda';

  @override
  String get checkInHabit => 'Zakoni i\nRegjistrimit';

  @override
  String get sevenCheckIns => '7 Regjistrime';

  @override
  String get consistencyPro => 'Profesionist i\nQëndrueshmërisë';

  @override
  String get thirtyCheckIns => '30 Regjistrime';

  @override
  String get dedicatedJourney => 'Udhëtim i\nPërkushtuar';

  @override
  String get hundredCheckIns => '100 Regjistrime';

  @override
  String get goalGetter => 'Arritës i Synimeve';

  @override
  String get threeGoalsCompleted => '3 Synime të Plotësuara';

  @override
  String get goalAchiever => 'Arritës i\nSynimeve';

  @override
  String get tenGoalsCompleted => '10 Synime të Plotësuara';

  @override
  String get firstSavings => 'Kursimi i\nParë';

  @override
  String get fiveHundredSaved => '\$500 të Ruajtura';

  @override
  String get smartSaver => 'Kursimtar i Mençur';

  @override
  String get oneThousandSaved => '\$1,000 të Ruajtura';

  @override
  String get bigSaver => 'Kursimtar i Madh';

  @override
  String get fiveThousandSaved => '\$5,000 të Ruajtura';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current nga \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current nga $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Vazhdo përpara — arritja jote e parë po të pret!';

  @override
  String get badgesAndMilestones => 'Medaljet & Arritjet';

  @override
  String get yourMilestoneJourney => 'Udhëtimi Yt i Arritjeve';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count arritje të realizuara.\nKliko për t\'i parë',
      one: '$count arritje e realizuar.\nKliko për ta parë',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Ke zbllokuar $unlocked nga $total arritje në udhëtimin tënd.';
  }

  @override
  String get remaining => 'Të mbetura';

  @override
  String get complete => 'Përfunduar';

  @override
  String get nextMilestone => 'Arritja Tjetër';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% atje';
  }

  @override
  String get sobrietyMilestones => 'Arritjet e Mospirjes';

  @override
  String get journeyBadges => 'Medaljet e Udhëtimit';

  @override
  String get bronze => 'BRONZ';

  @override
  String get silver => 'ARGJEND';

  @override
  String get gold => 'AR';

  @override
  String get platinum => 'PLATINË';

  @override
  String get diamond => 'DIAMANT';

  @override
  String get analyzingYourJourney => 'Duke analizuar udhëtimin tënd...';

  @override
  String get aiCreatingSanctuary =>
      'AI ynë po kthen vendin tënd të sigurt të personalizuar.';

  @override
  String get understandingHabits => 'Duke kuptuar zakonet...';

  @override
  String get calculatingBaseline => 'Duke llogaritur pikën tënde të nisjes...';

  @override
  String get personalizingPlan => 'Duke personalizuar planin tënd...';

  @override
  String get finalizingSanctuary => 'Duke përfunduar vendin tënd të sigurt...';

  @override
  String get creatingYourPlan => 'Duke krijuar planin tënd...';

  @override
  String get personalizedPlanError =>
      'Nuk mundëm të krijojmë planin tënd të personalizuar. Ju lutemi provoni përsëri.';

  @override
  String get retry => 'Riprovo';

  @override
  String get breathInhale => 'THITH';

  @override
  String get breathHold => 'MBAJE';

  @override
  String get breathExhale => 'NXIRRE';

  @override
  String get breathDone => 'U KRYE';

  @override
  String get breathGreatJob => 'Punë e shkëlqyer!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seanca sot',
      one: '$count seancë sot',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Përfundo Ushtrimin';

  @override
  String get done => 'U krye';

  @override
  String get noCopingTipsYet => 'Ende pa këshilla përballej';

  @override
  String get copingStrategiesWillAppear =>
      'Strategjitë e tua të personalizuara të përballjes do të shfaqen këtu pasi të përfundojë gjenerimi i planit të rimëkëmbjes.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategji të përshtatura për ngacmuesit e tu';

  @override
  String get cravingsPeakAndPass =>
      'Dëshirat e forta arrijnë kulmin\ndhe kalojnë';

  @override
  String get rideTheWaveDescription =>
      'Shumica e dëshirave të forta kalojnë brenda 15 minutave. Nuk ke pse të veprosh sipas tyre — thjesht kaloji ato me ne.';

  @override
  String get stayWithIt => 'qëndro me të';

  @override
  String get youMadeIt => 'ia dole';

  @override
  String get readyWhenYouAre => 'gati kur të jesh ti';

  @override
  String get rideItAgain => 'Lundro sërish';

  @override
  String get start15MinuteTimer => 'Fillo Kohëmatësin 15-Minutësh';

  @override
  String get rideTheWaveCompletedMessage =>
      'U luhatet me valën. Kjo është forca e vërtetë. 💪';

  @override
  String get myProgress => 'Ecuria Ime';

  @override
  String get weekLabel => 'Java';

  @override
  String get monthLabel => 'Muaji';

  @override
  String get allLabel => 'Të gjitha';

  @override
  String get daysSoberStatLabel => 'Ditë pa\nalkool';

  @override
  String get savedStatLabel => 'Të ruajtura';

  @override
  String get avoidedStatLabel => 'Të shmangura';

  @override
  String get moodTrends => 'Prirjet e humorit';

  @override
  String get cravingsPattern => 'Modeli i dëshirave të forta';

  @override
  String get unlockLabel => 'Zblloko';

  @override
  String get unlockFullStats => 'Zblloko statistikat e plota';

  @override
  String get premiumStatsMessage =>
      'Prirjet e humorit dhe modelet e dëshirave janë veçori Premium. Përmirëso për të parë statistikat e plota.';

  @override
  String get healthMilestonesWillAppear =>
      'Arritjet e tua shëndetësore do të shfaqen këtu.';

  @override
  String get healthMilestones => 'Arritjet e shëndetit';

  @override
  String dayNumber(int day) {
    return 'Dita $day';
  }

  @override
  String get soberLabel => 'Pa alkool';

  @override
  String get slipLabel => 'Rreshqitje';

  @override
  String get noDataLabel => 'Pa të dhëna';

  @override
  String get milestone24Hours => '24 Orë';

  @override
  String get milestoneOneWeek => 'Një Javë';

  @override
  String get milestoneOneMonth => 'Një Muaj';

  @override
  String get milestoneThreeMonths => 'Tre Muaj';

  @override
  String get milestoneSixMonths => 'Gjashtë Muaj';

  @override
  String get milestoneOneYear => 'Një Vit';

  @override
  String milestoneDayCount(int day) {
    return 'Arritja e Ditës $day';
  }

  @override
  String get maybeLaterLabel => 'Ndoshta më vonë';

  @override
  String get cancelLabel => 'Anulo';
}
