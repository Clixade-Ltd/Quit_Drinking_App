// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get skip => 'Բաց թողնել';

  @override
  String get continueButton => 'Շարունակել';

  @override
  String get getStarted => 'Սկսել';

  @override
  String get onboardingTitle1 => 'Վերահսկեք Ձեր Կյանքը';

  @override
  String get onboardingSubtitle1 =>
      'Հետևեք ձեր ճանապարհին, նշեք յուրաքանչյուր ձեռքբերում և դարձեք ավելի առողջ՝ օրեցօր:';

  @override
  String get onboardingTitle2 => 'Ձեր AI Ապաքինման Ուղեկիցը';

  @override
  String get onboardingSubtitle2 =>
      'Ստացեք անհատականացված ուղեցույցներ, առողջ սովորություններ, մոտիվացնող հիշեցումներ և առաջընթացի հաշվետվություններ:';

  @override
  String get goodMorning => 'Բարի լույս';

  @override
  String get goodAfternoon => 'Բարի կեսօր';

  @override
  String get goodEvening => 'Բարի երեկո';

  @override
  String get goodNight => 'Բարի գիշեր';

  @override
  String get embracingClarity => 'Ընդունելով հստակությունը, օրեցօր:';

  @override
  String get streakLabel => 'ՇԱՐՈՒՆԱԿԱԿԱՆՈՒԹՅՈՒՆ';

  @override
  String get goalLabel => 'Նպատակ';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Օր',
      one: '$count Օր',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Պրեմիում Ծրագիր';

  @override
  String get premiumPlanSubtitle => 'Բացահայտեք ձեր ամբողջական ապաքինման փորձը';

  @override
  String get accountAndSupport => 'ՀԱՇԻՎ ԵՎ ԱՋԱԿՑՈՒԹՅՈՒՆ';

  @override
  String get privacyPolicy => 'Գաղտնիության Քաղաքականություն';

  @override
  String get privacyPolicySubtitle =>
      'Կառավարեք տվյալների փոխանակումը և հաշվի անվտանգությունը';

  @override
  String get termsOfService => 'Ծառայության Պայմաններ';

  @override
  String get termsOfServiceSubtitle =>
      'Հաճախ տրվող հարցեր, կապ մեզ հետ և ռեսուրսներ';

  @override
  String get shareApp => 'Կիսվել Հավելվածով';

  @override
  String get shareAppSubtitle => 'Կիսվեք հավելվածով ձեր ընկերների հետ';

  @override
  String get resetData => 'Վերականգնել Տվյալները';

  @override
  String get resetDataSubtitle => 'Ջնջել այս սարքում պահպանված ամեն ինչ';

  @override
  String get resetAllDataTitle => 'Ջնջե՞լ բոլոր տվյալները:';

  @override
  String get resetAllDataMessage =>
      'Սա կջնջի այս սարքում պահպանված ամեն ինչ՝ պրոֆիլը, օրագրի գրառումները և առաջընթացը, և այն հնարավոր չէ չեղարկել:';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get reset => 'Ջնջել';

  @override
  String get chooseFromGallery => 'Ընտրել Պատկերասրահից';

  @override
  String get takePhoto => 'Լուսանկարել';

  @override
  String get removePhoto => 'Հեռացնել Լուսանկարը';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Չհաջողվեց թարմացնել լուսանկարը. $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Չհաջողվեց հեռացնել լուսանկարը. $error';
  }

  @override
  String get photoTooLarge =>
      'Այս լուսանկարը չափազանց մեծ է նույնիսկ սեղմումից հետո. փորձեք մեկ ուրիշը:';

  @override
  String get unableToLoadProfile => 'Չհաջողվեց բեռնել ձեր պրոֆիլը';

  @override
  String get pleaseTryAgain => 'Խնդրում ենք կրկին փորձել:';

  @override
  String get tryAgain => 'Կրկին Փորձել';

  @override
  String get profileNotFound => 'Պրոֆիլը չի գտնվել';

  @override
  String get refresh => 'Թարմացնել';

  @override
  String get noProfileDataFound =>
      'Այս սարքում դեռևս պրոֆիլի տվյալներ չեն գտնվել:';

  @override
  String couldNotResetData(String error) {
    return 'Չհաջողվեց վերականգնել տվյալները. $error';
  }

  @override
  String get navHome => 'Գլխավոր';

  @override
  String get navStats => 'Վիճակագրություն';

  @override
  String get navJournal => 'Օրագիր';

  @override
  String get navBadges => 'Կրծքանշաններ';

  @override
  String get navProfile => 'Պրոֆիլ';

  @override
  String featureComingSoon(String feature) {
    return '$feature ֆունկցիան շուտով հասանելի կլինի:';
  }

  @override
  String get appWordmark => 'ԱՌՈՂՋՈՒԹՅՈՒՆ';

  @override
  String get appTitle => 'Դադարեցրեք խմելը';

  @override
  String get splashSubtitle => 'Արեք առաջին քայլը դեպի\nառանց ալկոհոլի կյանք';

  @override
  String get preparingJourney => 'Պատրաստվում է\nձեր ճանապարհորդությունը';

  @override
  String get taskMorningMeditation => 'Առավոտյան Մեդիտացիա (10ր)';

  @override
  String get taskReadChapter => 'Կարդալ \"The Sober Diaries\"-ի 4-րդ գլուխը';

  @override
  String get taskEveningJournal => 'Երեկոյան Երախտագիտության Օրագիր';

  @override
  String get close => 'Փակել';

  @override
  String get youAreDoingGreat => 'Դուք հիանալի եք գործում:';

  @override
  String get shareMilestone => 'Կիսվել Ձեռքբերումով';

  @override
  String shareMilestoneMessage(int days) {
    return 'Ես իմ ապաքինման ճանապարհի $days-րդ օրն եմ: 💪';
  }

  @override
  String get shareMilestoneSubject => 'Իմ ապաքինման ձեռքբերումը';

  @override
  String get weeklyReportReadyTitle =>
      'Ձեր շաբաթական հաշվետվությունը պատրաստ է';

  @override
  String get weeklyReportReadySubtitle =>
      'Սեղմեք՝ տեսնելու համար, թե ինչպես անցավ ձեր շաբաթը';

  @override
  String get howAreYouFeeling => 'Ինչպե՞ս եք ձեզ զգում:';

  @override
  String get moodTough => 'Ծանր';

  @override
  String get moodOkay => 'Նորմալ';

  @override
  String get moodGood => 'Լավ';

  @override
  String get moneySaved => 'Խնայված Գումար';

  @override
  String get caloriesSaved => 'Խնայված Կալորիաներ';

  @override
  String get healthScore => 'Առողջության Միավոր';

  @override
  String get drinksAvoided => 'Խուսափած Խմիչքներ';

  @override
  String get estimated => 'Մոտավոր';

  @override
  String get aiGenerated => 'Ստեղծված է AI-ի կողմից';

  @override
  String get daysCapsLabel => 'ՕՐ';

  @override
  String get todaysMotivation => 'Այսօրվա Մոտիվացիան';

  @override
  String get defaultMotivationQuote =>
      'Դուք հաջողությամբ պահպանել եք ձեր նվիրվածությունը: Շարունակեք ընթանալ դրական փոփոխությունների ալիքով:';

  @override
  String get talkToCoach => 'Խոսել մարզիչի հետ';

  @override
  String get havingACraving => 'Ես ուժեղ ցանկություն ունեմ';

  @override
  String get unlockWeeklyReportsTitle => 'Բացել շաբաթական հաշվետվությունները';

  @override
  String get unlockWeeklyReportsMessage =>
      'Տեսեք ձեր սթափ օրերը, տրամադրության միտումները և անհատականացված AI կարծիքները ամեն շաբաթ: Բացելու համար թարմացրեք Պրեմիումի:';

  @override
  String get maybeLater => 'Գուցե ավելի ուշ';

  @override
  String get upgrade => 'Թարմացնել';

  @override
  String get weeklyReportTitle => 'Շաբաթական Հաշվետվություն';

  @override
  String get weeklyReportsPremiumTitle =>
      'Շաբաթական հաշվետվությունները Պրեմիում ֆունկցիա են';

  @override
  String get weeklyReportsPremiumMessage =>
      'Տեսեք ձեր սթափ օրերը, տրամադրության միտումները, ցանկությունները և անհատականացված AI կարծիքները ամեն շաբաթ:';

  @override
  String get upgradeToPremium => 'Թարմացնել Պրեմիումի';

  @override
  String get couldNotGenerateReport =>
      'Այս պահին չհաջողվեց ստեղծել ձեր հաշվետվությունը:';

  @override
  String get tryAgainLower => 'Կրկին փորձել';

  @override
  String get statSoberDays => 'Սթափ օրեր';

  @override
  String get statAvgMood => 'Միջին տրամադրություն';

  @override
  String get statCravings => 'Ցանկություններ';

  @override
  String get statMoneySaved => 'Խնայված գումար';

  @override
  String get coachFeedback => 'Մարզիչի կարծիքը';

  @override
  String get journalInsights => 'Օրագրի վերլուծություն';

  @override
  String get next => 'Հաջորդը';

  @override
  String get question1Title => 'Ո՞րն է ձեր նպատակը';

  @override
  String get question1Subtitle =>
      'Ընտրեք այն նպատակը, որն ամենաշատն է\nկարևոր ձեզ համար';

  @override
  String get goalQuitCompletely => 'Լրիվ թողնել';

  @override
  String get goalReduceDrinking => 'Կրճատել խմելը';

  @override
  String get goalTakeABreak => 'Դադար վերցնել';

  @override
  String get goalBuildHealthierHabits => 'Ձևավորել ավելի առողջ սովորություններ';

  @override
  String get question3Title => 'Պատմեք ձեր\nառօրյայի մասին';

  @override
  String get drinksPerWeek => 'Խմիչքներ շաբաթական';

  @override
  String get moneySpentPerWeek => 'Ծախսված գումարը շաբաթական';

  @override
  String get drinkingLevel => 'Խմելու մակարդակը';

  @override
  String get triggersLabel => 'Ազդակներ (Triggers)';

  @override
  String get levelSocial => 'Սոցիալական';

  @override
  String get levelRegular => 'Կանոնավոր';

  @override
  String get levelHeavy => 'Շատ';

  @override
  String get levelDependent => 'Կախված';

  @override
  String get triggerStress => 'Սթրես';

  @override
  String get triggerLoneliness => 'Միայնություն';

  @override
  String get triggerHabit => 'Սովորություն';

  @override
  String get triggerSadness => 'Տխրություն';

  @override
  String get triggerAnger => 'Բարկություն';

  @override
  String get triggerBoredom => 'Ձանձրույթ';

  @override
  String get triggerSocialPressure => 'Սոցիալական ճնշում';

  @override
  String get triggerCelebration => 'Տոնակատարություն';

  @override
  String get triggerSleepProblems => 'Քնի խնդիրներ';

  @override
  String get triggerWorkPressure => 'Աշխատանքային ճնշում';

  @override
  String get question4Title => 'Ինչո՞ւ եք ուզում փոխվել:';

  @override
  String get question4Subtitle => 'Ձեր պատճառը կօգնի մոտիվացնել ձեզ:';

  @override
  String get reasonImproveHealth => 'Բարելավել Առողջությունը';

  @override
  String get reasonSaveMoney => 'Խնայել Գումար';

  @override
  String get reasonFamily => 'Ընտանիք';

  @override
  String get reasonBetterSleep => 'Ավելի Լավ Քուն';

  @override
  String get reasonMentalClarity => 'Մտքի Հստակություն';

  @override
  String get reasonFitness => 'Ֆիզիկական Պատրաստվածություն';

  @override
  String get reasonSelfRespect => 'Ինքնահարգանք';

  @override
  String get reasonCareer => 'Կարիերա';

  @override
  String get milestoneUnlockedLabel => 'ՁԵՌՔԲԵՐՈՒՄԸ ԲԱՑՎԱԾ Է';

  @override
  String incredibleNamePrefix(String name) {
    return 'Անհավանական է, $name:';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount խնայված է';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count խուսափած է';
  }

  @override
  String get shareMyMilestone => 'Կիսվել իմ ձեռքբերումով';

  @override
  String get milestoneImageShareError =>
      'Չհաջողվեց ստեղծել ձեռքբերման պատկերը: Խնդրում ենք կրկին փորձել:';

  @override
  String get dailyCheckInTitle => 'Ամենօրյա Գրանցում';

  @override
  String get howAreYouFeelingToday => 'Ինչպե՞ս եք ձեզ զգում այսօր:';

  @override
  String get honestAnswerHelp =>
      'Ձեր ազնիվ պատասխանն օգնում է մեզ ավելի լավ աջակցել ձեզ';

  @override
  String get didYouDrinkToday => 'Այսօր խմե՞լ եք:';

  @override
  String get noLabel => 'Ոչ';

  @override
  String get yesLabel => 'Այո';

  @override
  String get cravingLevelNow => 'Ցանկության մակարդակն այս պահի՞ն:';

  @override
  String get anythingOnMind => 'Մտքներումդ որևէ բան կա՞:';

  @override
  String get optionalLabel => '(ոչ պարտադիր)';

  @override
  String get dailyNoteHint => 'Գրեք ձեր օրվա, ազդակների, հաղթանակների մասին...';

  @override
  String get alreadyCheckedInToday => 'Այսօր արդեն գրանցվել եք';

  @override
  String get saveCheckIn => 'Պահպանել գրանցումը';

  @override
  String get checkInsHelpTrack =>
      'Գրանցումներն օգնում են հետևել առաջընթացին ժամանակի ընթացքում';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Դուք արդեն ավարտել եք այսօրվա գրանցումը:';

  @override
  String get pleaseAnswerBothQuestions =>
      'Խնդրում ենք նախ պատասխանել վերը նշված երկու հարցերին';

  @override
  String get checkInSaved => 'Գրանցումը պահպանվեց';

  @override
  String get cravingNone => 'Չկա';

  @override
  String get cravingLow => 'Ցածր';

  @override
  String get cravingMedium => 'Միջին';

  @override
  String get cravingStrong => 'Ուժեղ';

  @override
  String get moodBad => 'Վատ';

  @override
  String get moodLow => 'Ցածր';

  @override
  String get moodGreat => 'Հիանալի';

  @override
  String get sosSupportTitle => 'SOS աջակցություն';

  @override
  String notAloneMessage(String name) {
    return 'Դուք մենակ չեք, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Ցանկությունն անցնում է: Ընտրեք որևէ բան ստորև՝ այս պահն հաղթահարելու համար:';

  @override
  String get breathingExercise => 'Շնչառական վարժություն';

  @override
  String get breathingExerciseSubtitle => 'Ուղղորդված 4-7-8 տեխնիկա, 2 րոպե';

  @override
  String get rideTheWave => 'Հաղթահարել ալիքը';

  @override
  String get rideTheWaveSubtitle =>
      '15 րոպեանոց ժամաչափ — ցանկությունները միշտ անցնում են';

  @override
  String get copingTips => 'Խորհուրդներ հաղթահարման համար';

  @override
  String get copingTipsSubtitle =>
      'Անհատականացված ռազմավարություններ ձեր ազդակների համար';

  @override
  String get talkToAiCoach => 'Խոսել AI մարզիչի հետ';

  @override
  String get talkToAiCoachSubtitle => 'Զրուցեք ձեր ապաքինման ուղեկցի հետ';

  @override
  String get callSomeone => 'Զանգահարել որևէ մեկին';

  @override
  String get callSomeoneSubtitle => 'Կապ հաստատեք ձեր վստահելի անձի հետ';

  @override
  String get contactsPermissionNeeded =>
      'Կոնտակտին զանգահարելու համար անհրաժեշտ է կոնտակտների թույլտվություն:';

  @override
  String get beatenCravingsPrefix => 'Դուք հաղթահարել եք ցանկությունները ';

  @override
  String beatenCravingsCount(int count) {
    return '$count անգամ';
  }

  @override
  String get beatenCravingsSuffix => ' նախկինում: Դուք կարող եք դա անել կրկին:';

  @override
  String get tellUsAboutYourself => 'Պատմեք ձեր մասին';

  @override
  String get detailsSubtitle =>
      'Այս տեղեկատվությունն օգնում է մեզ անհատականացնել ձեր ապաքինման ճանապարհը և տրամադրել ճշգրիտ վերլուծություններ:';

  @override
  String get nameLabel => 'Անուն';

  @override
  String get nameHint => 'օրինակ՝ Արամ Սարգսյան';

  @override
  String get ageLabel => 'Տարիք';

  @override
  String get ageHint => 'օրինակ՝ 32';

  @override
  String get sexAssignedAtBirth => 'Սեռը ծննդյան պահին';

  @override
  String get sexFemale => 'Իգական';

  @override
  String get sexMale => 'Արական';

  @override
  String get heightLabel => 'Հասակ';

  @override
  String get weightLabel => 'Քաշ';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Օրական սահմանաչափը սպառված է';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Դուք օգտագործել եք այսօրվա բոլոր $limit անվճար հաղորդագրությունները: Անսահմանափակ չաթի համար թարմացրեք Պրեմիումի:';
  }

  @override
  String get coachConnectError =>
      'Այս պահին չհաջողվեց կապ հաստատել: Խնդրում ենք փորձել մի փոքր ուշ:';

  @override
  String get clearConversationTitle => 'Մաքրե՞լ զրույցը:';

  @override
  String get clearConversationMessage =>
      'Սա ընդմիշտ կհեռացնի մարզիչի հետ չաթի պատմությունը:';

  @override
  String get clearLabel => 'Մաքրել';

  @override
  String get recoveryCoachTitle => 'Ապաքինման մարզիչ';

  @override
  String get onlineLabel => 'Առցանց';

  @override
  String get clearConversationMenuItem => 'Մաքրել զրույցը';

  @override
  String chatGreeting(String name) {
    return 'Ողջույն $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Դուք ձեր ճանապարհի $days-րդ օրն եք: Ես այստեղ եմ, երբ ցանկանաք խոսել:';
  }

  @override
  String get quickPromptsLabel => 'ԱՐԱԳ ՀԱՐՑԵՐ';

  @override
  String get promptCravingLabel => 'Ուժեղ ցանկություն ունեմ';

  @override
  String get promptCravingSubtitle => 'Հանգստացեք արագ';

  @override
  String get promptMotivationLabel => 'Մոտիվացիայի կարիք ունեմ';

  @override
  String get promptMotivationSubtitle => 'Աջակցություն դժվար պահին';

  @override
  String get promptSocialLabel => 'Սոցիալական իրավիճակ';

  @override
  String get promptSocialSubtitle => 'Կառավարել հավաքույթը';

  @override
  String get promptSlippedLabel => 'Ես սայթաքեցի';

  @override
  String get promptSlippedSubtitle => 'Առանց քննադատության, միայն աջակցություն';

  @override
  String get typeMessageHint => 'Գրեք հաղորդագրություն...';

  @override
  String get editProfileTitle => 'Խմբագրել Պրոֆիլը';

  @override
  String couldNotSaveProfile(String error) {
    return 'Չհաջողվեց պահպանել պրոֆիլը. $error';
  }

  @override
  String get heightCmLabel => 'Հասակ (սմ)';

  @override
  String get weightKgLabel => 'Քաշ (կգ)';

  @override
  String get saveChangesLabel => 'Պահպանել Փոփոխությունները';

  @override
  String get premiumBadgeLabel => 'ՊՐԵՄԻՈՒՄ';

  @override
  String get featureAdvancedInsights => 'Ընդլայնված Վերլուծություններ';

  @override
  String get featureUnlimitedJournal => 'Անսահմանափակ Օրագրի Գրառումներ';

  @override
  String get featureUnlimitedChat => 'Անսահմանափակ Չաթ AI Մարզիչի հետ';

  @override
  String get featureCommunityGroups => 'Բացառիկ Համայնքային Խմբեր';

  @override
  String get featurePrioritySupport => 'Առաջնահերթ Փորձագիտական Աջակցություն';

  @override
  String get featureThemePacks => 'Անհատական Թեմաներ';

  @override
  String get featureDataExport => 'Տվյալների Արտահանում';

  @override
  String get featureAdFree => 'Առանց Գովազդի Փորձառություն';

  @override
  String get premiumMemberTitle => 'Դուք Պրեմիում Անդամ եք';

  @override
  String get unlockFullRecoveryTitle =>
      'Բացահայտեք Ձեր Ամբողջական\nԱպաքինման Փորձը';

  @override
  String get premiumMemberSubtitle =>
      'Շնորհակալություն ձեր ապաքինման ճանապարհին աջակցելու համար — ստորև բոլոր պրեմիում ֆունկցիաները բացված են:';

  @override
  String get premiumJoinSubtitle =>
      'Միացեք հազարավոր մարդկանց համայնքին, ովքեր\nարագացնում են իրենց ապաքինման ճանապարհը մեր\nպրեմիում գործիքներով և աջակցությամբ:';

  @override
  String get monthlyPlanLabel => 'Ամսական';

  @override
  String get perMonthSuffix => '/ամիս';

  @override
  String get cancelAnytimeLabel => 'Չեղարկել ցանկացած ժամանակ';

  @override
  String get yearlyPlanLabel => 'Տարեկան';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Վճարվում է տարեկան $amount';
  }

  @override
  String get bestValueLabel => 'Լավագույն Առաջարկ';

  @override
  String get alreadyPremiumLabel => 'Դուք Պրեմիում եք ✓';

  @override
  String get startPremiumLabel => 'Սկսել Պրեմիումը';

  @override
  String get manageSubscriptionLabel =>
      'Կառավարեք կամ չեղարկեք ձեր սարքի բաժանորդագրության կարգավորումներից:';

  @override
  String get noCommitmentLabel =>
      'Առանց պարտավորությունների: Չեղարկեք ցանկացած ժամանակ:';

  @override
  String get continueFreePlanLabel => 'Շարունակել Անվճար Ծրագրով';

  @override
  String get backToHomeLabel => 'Վերադառնալ Գլխավոր';

  @override
  String get cancelPremiumLabel => 'Չեղարկել Պրեմիումը';

  @override
  String get cancelPremiumTitle => 'Չեղարկե՞լ Պրեմիումը:';

  @override
  String get cancelPremiumMessage =>
      'Դուք կկորցնեք մուտքը դեպի անսահմանափակ օրագրի գրառումներ, մարզիչի չաթ, վիճակագրություն և շաբաթական հաշվետվություններ:';

  @override
  String get keepPremiumLabel => 'Պահպանել Պրեմիումը';

  @override
  String get nowPremiumMessage =>
      'Դուք այժմ Պրեմիում անդամ եք: Վայելեք ձեր ապաքինման փորձը:';

  @override
  String get premiumCancelledMessage =>
      'Պրեմիումը չեղարկվել է: Դուք վերադարձել եք անվճար ծրագրին:';

  @override
  String get termsOfUseLabel => 'Օգտագործման Պայմաններ';

  @override
  String get navHomeLabel => 'Գլխավոր';

  @override
  String get navStatsLabel => 'Վիճակագրություն';

  @override
  String get navJournalLabel => 'Օրագիր';

  @override
  String get navBadgesLabel => 'Կրծքանշաններ';

  @override
  String get navProfileLabel => 'Պրոֆիլ';

  @override
  String get recoveryGoalsTitle => 'Ապաքինման Նպատակներ';

  @override
  String get drinksPerWeekLabel => 'Խմիչքներ շաբաթական';

  @override
  String get quitReasonsLabel => 'Թողնելու պատճառները';

  @override
  String get quitReasonsHelperText => 'Անջատեք մի քանի պատճառները ստորակետով:';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Չհաջողվեց պահպանել ապաքինման նպատակները. $error';
  }

  @override
  String get goalHint => 'օրինակ՝ Լիարժեք Ժուժկալություն';

  @override
  String get drinksPerWeekHint => 'օրինակ՝ 12';

  @override
  String get quitReasonsHint => 'օրինակ՝ Առողջություն, Ընտանիք, Գումար';

  @override
  String get todaysPrompt => 'Այսօրվա հարցը';

  @override
  String get defaultJournalPrompt => 'Ի՞նչ կա ձեր մտքում այսօր:';

  @override
  String get aiJournalInsights => 'AI օրագրի վերլուծություն';

  @override
  String get unlockJournalInsightsMessage =>
      'Բացահայտեք շաբաթական մոդելները, տրամադրության միտումները և անհատականացված վերլուծությունները ձեր գրառումներից:';

  @override
  String get notEnoughJournalData =>
      'Դեռ բավարար տվյալներ չկան — գրեք մի քանի գրառում այս շաբաթ և կրկին ստուգեք:';

  @override
  String get openEntry => 'Բացել';

  @override
  String get editEntry => 'Խմբագրել';

  @override
  String get deleteEntry => 'Ջնջել';

  @override
  String get searchJournalEntries => 'Փնտրել գրառումները...';

  @override
  String get writeNewEntry => 'Գրել նոր գրառում';

  @override
  String get recentEntries => 'Վերջին Գրառումները';

  @override
  String get noJournalEntriesYet =>
      'Դեռ օրագրի գրառումներ չկան — գրեք ձեր առաջին մտորումը վերևում:';

  @override
  String get noEntriesMatchFilters =>
      'Ոչ մի գրառում չի համապատասխանում ձեր ֆիլտրերին:';

  @override
  String get weeklyJournalLimitReached => 'Շաբաթական սահմանաչափը սպառված է';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Դուք օգտագործել եք այս շաբաթվա բոլոր $limit անվճար գրառումները: Թարմացրեք Պրեմիումի անսահմանափակ գրառումների համար:';
  }

  @override
  String get newEntry => 'Նոր գրառում';

  @override
  String get writeYourThoughts => 'Գրեք ձեր մտքերը';

  @override
  String get saveEntry => 'Պահպանել Գրառումը';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Այս շաբաթ մնացել է $remaining $limit-ից անվճար գրառում';
  }

  @override
  String get deleteEntryQuestion => 'Ջնջե՞լ գրառումը:';

  @override
  String get deleteEntryConfirmation =>
      'Այս գրառումը ընդմիշտ կջնջվի: Այս գործողությունը հնարավոր չէ չեղարկել:';

  @override
  String get journalEntryNotFound => 'Գրառումը չի գտնվել';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Այս օրագրի գրառումը հնարավոր է ջնջվել է:';

  @override
  String get goBack => 'Վերադառնալ';

  @override
  String get journalEntryTitle => 'Օրագրի Գրառում';

  @override
  String get moodStruggling => 'Դժվարացող';

  @override
  String get moodUnwell => 'Վատառողջ';

  @override
  String get moodNeutral => 'Չեզոք';

  @override
  String get whatHappenedToday => 'Ի՞նչ պատահեց այսօր:';

  @override
  String get trigger => 'Ազդակ';

  @override
  String get whatHelped => 'Ինչն օգնեց';

  @override
  String get whatIllTryNextTime => 'Ինչ կփորձեմ հաջորդ անգամ';

  @override
  String get journalPrivacyMessage =>
      'Ձեր մտորումները գաղտնի են և պահպանված են ձեր օրագրում:';

  @override
  String get unlocked => 'Բացված է';

  @override
  String daysLeft(int count) {
    return 'Մնացել է $count օր';
  }

  @override
  String daysCount(int count) {
    return '$count Օր';
  }

  @override
  String get firstReflection => 'Առաջին\nՄտորումը';

  @override
  String get oneJournalEntry => '1 Օրագրի Գրառում';

  @override
  String get openBook => 'Բաց Գիրք';

  @override
  String get tenJournalEntries => '10 Օրագրի Գրառում';

  @override
  String get dedicatedWriter => 'Նվիրված\nԳրող';

  @override
  String get thirtyJournalEntries => '30 Օրագրի Գրառում';

  @override
  String get firstConversation => 'Առաջին\nԶրույցը';

  @override
  String get oneAiCoachChat => '1 AI Մարզիչի Չաթ';

  @override
  String get keepTalking => 'Շարունակեք Խոսել';

  @override
  String get fiveConversations => '5 Զրույց';

  @override
  String get coachCompanion => 'Մարզիչի\nՈւղեկից';

  @override
  String get twentyConversations => '20 Զրույց';

  @override
  String get checkInHabit => 'Գրանցման\nՍովորություն';

  @override
  String get sevenCheckIns => '7 Գրանցում';

  @override
  String get consistencyPro => 'Հետևողականության\nՎարպետ';

  @override
  String get thirtyCheckIns => '30 Գրանցում';

  @override
  String get dedicatedJourney => 'Նվիրված\nՃանապարհ';

  @override
  String get hundredCheckIns => '100 Գրանցում';

  @override
  String get goalGetter => 'Նպատակասլաց';

  @override
  String get threeGoalsCompleted => '3 Ավարտված Նպատակ';

  @override
  String get goalAchiever => 'Նպատակներ\nԻրականացնող';

  @override
  String get tenGoalsCompleted => '10 Ավարտված Նպատակ';

  @override
  String get firstSavings => 'Առաջին\nԽնայողությունը';

  @override
  String get fiveHundredSaved => '\$500 Խնայված է';

  @override
  String get smartSaver => 'Խելացի Խնայող';

  @override
  String get oneThousandSaved => '\$1,000 Խնայված է';

  @override
  String get bigSaver => 'Մեծ Խնայող';

  @override
  String get fiveThousandSaved => '\$5,000 Խնայված է';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current \$$target-ից';
  }

  @override
  String countProgress(int current, int target) {
    return '$current $target-ից';
  }

  @override
  String get firstMilestoneWaiting =>
      'Շարունակեք առաջ գնալ. ձեր առաջին ձեռքբերումը սպասում է ձեզ:';

  @override
  String get badgesAndMilestones => 'Կրծքանշաններ և Ձեռքբերումներ';

  @override
  String get yourMilestoneJourney => 'Ձեր Ձեռքբերումների Ճանապարհը';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ձեռքբերումներ են իրականացվել:\nՍեղմեք՝ տեսնելու համար',
      one: '$count ձեռքբերում է իրականացվել:\nՍեղմեք՝ տեսնելու համար',
    );
    return '$_temp0';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Դուք բացել եք $unlocked-ը $total ձեռքբերումներից ձեր ճանապարհին:';
  }

  @override
  String get remaining => 'Մնացած';

  @override
  String get complete => 'Ավարտված';

  @override
  String get nextMilestone => 'Հաջորդ Ձեռքբերումը';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% արված է';
  }

  @override
  String get sobrietyMilestones => 'Սթափության Ձեռքբերումներ';

  @override
  String get journeyBadges => 'Ճանապարհի Կրծքանշաններ';

  @override
  String get bronze => 'ԲՐՈՆԶ';

  @override
  String get silver => 'ԱՐԾԱԹ';

  @override
  String get gold => 'ՈՍԿԻ';

  @override
  String get platinum => 'ՊԼԱՏԻՆ';

  @override
  String get diamond => 'ԱԴԱՄԱՆԴ';

  @override
  String get analyzingYourJourney => 'Վերլուծվում է ձեր ճանապարհը...';

  @override
  String get aiCreatingSanctuary =>
      'Մեր AI-ն ստեղծում է ձեր անհատական անվտանգ տարածքը:';

  @override
  String get understandingHabits => 'Սովորությունների ընկալում...';

  @override
  String get calculatingBaseline => 'Ձեր ելակետի հաշվարկում...';

  @override
  String get personalizingPlan => 'Ձեր ծրագրի անհատականացում...';

  @override
  String get finalizingSanctuary => 'Տարածքի վերջնական ձևավորում...';

  @override
  String get creatingYourPlan => 'Ձեր ծրագրի ստեղծում...';

  @override
  String get personalizedPlanError =>
      'Մենք չկարողացանք ստեղծել ձեր անհատական ծրագիրը: Խնդրում ենք կրկին փորձել:';

  @override
  String get retry => 'Կրկին Փորձել';

  @override
  String get breathInhale => 'ՆԵՐՇՆՉԵԼ';

  @override
  String get breathHold => 'ՊԱՀԵԼ';

  @override
  String get breathExhale => 'ԱՐՏԱՇՆՉԵԼ';

  @override
  String get breathDone => 'ԱՎԱՐՏՎԵՑ';

  @override
  String get breathGreatJob => 'Ապրեք, հիանալի է:';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Այսօր $count սեանս',
      one: 'Այսօր $count սեանս',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Ավարտել Վարժությունը';

  @override
  String get done => 'Ավարտված է';

  @override
  String get noCopingTipsYet => 'Դեռևս չկան հաղթահարման խորհուրդներ';

  @override
  String get copingStrategiesWillAppear =>
      'Ձեր անհատականացված հաղթահարման ռազմավարությունները կհայտնվեն այստեղ ձեր ապաքինման ծրագրի ստեղծումից հետո:';

  @override
  String get strategiesTailoredToTriggers =>
      'Ռազմավարություններ՝ հարմարեցված ձեր ազդակներին';

  @override
  String get cravingsPeakAndPass =>
      'Ցանկությունները հասնում են գագաթնակետին\nև անցնում';

  @override
  String get rideTheWaveDescription =>
      'Ցանկությունների մեծ մասն անցնում է 15 րոպեի ընթացքում: Պետք չէ ենթարկվել դրանց — ուղղակի հաղթահարեք մեզ հետ:';

  @override
  String get stayWithIt => 'մնացեք դրանում';

  @override
  String get youMadeIt => 'դուք հաղթահարեցիք';

  @override
  String get readyWhenYouAre => 'պատրաստ է, երբ դուք պատրաստ լինեք';

  @override
  String get rideItAgain => 'Կրկին հաղթահարել';

  @override
  String get start15MinuteTimer => 'Սկսել 15-Րոպեանոց Ժամաչափը';

  @override
  String get rideTheWaveCompletedMessage =>
      'Դուք հաղթահարեցիք ալիքը: Սա իսկական ուժ է: 💪';

  @override
  String get myProgress => 'Իմ Առաջընթացը';

  @override
  String get weekLabel => 'Շաբաթ';

  @override
  String get monthLabel => 'Ամիս';

  @override
  String get allLabel => 'Բոլորը';

  @override
  String get daysSoberStatLabel => 'Սթափ\nօրեր';

  @override
  String get savedStatLabel => 'Խնայված';

  @override
  String get avoidedStatLabel => 'Խուսափած';

  @override
  String get moodTrends => 'Տրամադրության միտումներ';

  @override
  String get cravingsPattern => 'Ցանկությունների օրինաչափություն';

  @override
  String get unlockLabel => 'Բացել';

  @override
  String get unlockFullStats => 'Բացել ամբողջական վիճակագրությունը';

  @override
  String get premiumStatsMessage =>
      'Տրամադրության միտումները և ցանկությունների օրինաչափությունները Պրեմիում ֆունկցիաներ են: Թարմացրեք՝ տեսնելու համար:';

  @override
  String get healthMilestonesWillAppear =>
      'Ձեր առողջության ձեռքբերումները կհայտնվեն այստեղ:';

  @override
  String get healthMilestones => 'Առողջության ձեռքբերումներ';

  @override
  String dayNumber(int day) {
    return 'Օր $day';
  }

  @override
  String get soberLabel => 'Սթափ';

  @override
  String get slipLabel => 'Սայթաքում';

  @override
  String get noDataLabel => 'Տվյալներ չկան';

  @override
  String get milestone24Hours => '24 Ժամ';

  @override
  String get milestoneOneWeek => 'Մեկ Շաբաթ';

  @override
  String get milestoneOneMonth => 'Մեկ Ամիս';

  @override
  String get milestoneThreeMonths => 'Երեք Ամիս';

  @override
  String get milestoneSixMonths => 'Վեց Ամիս';

  @override
  String get milestoneOneYear => 'Մեկ Տարի';

  @override
  String milestoneDayCount(int day) {
    return 'Օր $day-ի Ձեռքբերում';
  }

  @override
  String get maybeLaterLabel => 'Գուցե ավելի ուշ';

  @override
  String get cancelLabel => 'Չեղարկել';
}
