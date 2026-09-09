// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get skip => 'છોડી દો';

  @override
  String get continueButton => 'આગળ વધો';

  @override
  String get getStarted => 'શરૂ કરો';

  @override
  String get onboardingTitle1 => 'તમારા જીવનનું નિયંત્રણ લો';

  @override
  String get onboardingSubtitle1 =>
      'તમારી યાત્રાને ટ્રેક કરો, દરેક સફળતાની ઉજવણી કરો અને દરરોજ વધુ સ્વસ્થ બનો.';

  @override
  String get onboardingTitle2 => 'તમારો AI રિકવરી સાથી';

  @override
  String get onboardingSubtitle2 =>
      'વ્યક્તિગત માર્ગદર્શન, સ્વસ્થ ટેવો, પ્રેરણા અને પ્રગતિ અહેવાલો મેળવો.';

  @override
  String get goodMorning => 'સુપ્રભાત';

  @override
  String get goodAfternoon => 'શુભ બપોર';

  @override
  String get goodEvening => 'શુભ સંધ્યા';

  @override
  String get goodNight => 'શુભ રાત્રિ';

  @override
  String get embracingClarity => 'સ્પષ્ટતાને અપનાવો, એક સમયે એક દિવસ.';

  @override
  String get streakLabel => 'સ્ટ્રીક';

  @override
  String get goalLabel => 'લક્ષ્ય';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count દિવસો',
      one: '$count દિવસ',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'પ્રીમિયમ પ્લાન';

  @override
  String get premiumPlanSubtitle => 'તમારો સંપૂર્ણ રિકવરી અનુભવ અનલૉક કરો';

  @override
  String get accountAndSupport => 'એકાઉન્ટ અને સપોર્ટ';

  @override
  String get privacyPolicy => 'ગોપનીયતા નીતિ';

  @override
  String get privacyPolicySubtitle =>
      'ડેટા શેરિંગ અને એકાઉન્ટ સુરક્ષા મેનેજ કરો';

  @override
  String get termsOfService => 'સેવાની શરતો';

  @override
  String get termsOfServiceSubtitle => 'પ્રશ્નોત્તરી, સંપર્ક કરો અને સંસાધનો';

  @override
  String get shareApp => 'એપ શેર કરો';

  @override
  String get shareAppSubtitle => 'મિત્રો સાથે એપ શેર કરો';

  @override
  String get resetData => 'ડેટા રિસેટ કરો';

  @override
  String get resetDataSubtitle => 'આ ઉપકરણ પર સાચવેલ બધું કાઢી નાખો';

  @override
  String get resetAllDataTitle => 'બધો ડેટા રિસેટ કરવો છે?';

  @override
  String get resetAllDataMessage =>
      'આનાથી આ ઉપકરણ પર સાચવેલ પ્રોફાઇલ, જર્નલ અને પ્રગતિ બધું ભૂંસાઈ જશે અને તે પાછું લાવી શકાશે નહીં.';

  @override
  String get cancel => 'રદ કરો';

  @override
  String get reset => 'રિસેટ કરો';

  @override
  String get chooseFromGallery => 'ગેલેરીમાંથી પસંદ કરો';

  @override
  String get takePhoto => 'ફોટો પાડો';

  @override
  String get removePhoto => 'ફોટો હટાવો';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'ફોટો અપડેટ કરી શકાયો નથી: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'ફોટો હટાવી શકાયો નથી: $error';
  }

  @override
  String get photoTooLarge =>
      'ફોટો કોમ્પ્રેસ કર્યા પછી પણ ખૂબ મોટો છે — કૃપા કરીને બીજો પ્રયાસ કરો.';

  @override
  String get unableToLoadProfile => 'તમારી પ્રોફાઇલ લોડ થઈ શકી નથી';

  @override
  String get pleaseTryAgain => 'કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get tryAgain => 'ફરી પ્રયાસ કરો';

  @override
  String get profileNotFound => 'પ્રોફાઇલ મળી નથી';

  @override
  String get refresh => 'રીફ્રેશ કરો';

  @override
  String get noProfileDataFound =>
      'આ ઉપકરણ પર હજુ સુધી કોઈ પ્રોફાઇલ ડેટા મળ્યો નથી.';

  @override
  String couldNotResetData(String error) {
    return 'ડેટા રિસેટ કરી શકાયો નથી: $error';
  }

  @override
  String get navHome => 'હોમ';

  @override
  String get navStats => 'આંકડા';

  @override
  String get navJournal => 'જર્નલ';

  @override
  String get navBadges => 'બેજ';

  @override
  String get navProfile => 'પ્રોફાઇલ';

  @override
  String featureComingSoon(String feature) {
    return '$feature ટૂંક સમયમાં ઉપલબ્ધ થશે.';
  }

  @override
  String get appWordmark => 'સુખાકારી';

  @override
  String get appTitle => 'દારૂ પીવાનું બંધ કરો';

  @override
  String get splashSubtitle => 'આલ્કોહોલ મુક્ત જીવન તરફ\nપ્રથમ પગલું ભરો';

  @override
  String get preparingJourney => 'તમારી યાત્રા\nતૈયાર થઈ રહી છે';

  @override
  String get taskMorningMeditation => 'સવારનું ધ્યાન (10 મિનિટ)';

  @override
  String get taskReadChapter => '\"The Sober Diaries\" નું પ્રકરણ 4 વાંચો';

  @override
  String get taskEveningJournal => 'સાંજનું આભાર જર્નલ';

  @override
  String get close => 'બંધ કરો';

  @override
  String get youAreDoingGreat => 'તમે ખૂબ સારું કરી રહ્યા છો!';

  @override
  String get shareMilestone => 'માઇલસ્ટોન શેર કરો';

  @override
  String shareMilestoneMessage(int days) {
    return 'હું મારી રિકવરી યાત્રાના $daysમા દિવસે છું! 💪';
  }

  @override
  String get shareMilestoneSubject => 'મારો રિકવરી માઇલસ્ટોન';

  @override
  String get weeklyReportReadyTitle => 'તમારો સાપ્તાહિક રિપોર્ટ તૈયાર છે';

  @override
  String get weeklyReportReadySubtitle =>
      'તમારું અઠવાડિયું કેવું રહ્યું તે જોવા માટે ટેપ કરો';

  @override
  String get howAreYouFeeling => 'તમે કેવું અનુભવો છો?';

  @override
  String get moodTough => 'મુશ્કેલ';

  @override
  String get moodOkay => 'ઠીક';

  @override
  String get moodGood => 'સારું';

  @override
  String get moneySaved => 'બચાવેલા નાણાં';

  @override
  String get caloriesSaved => 'બચાવેલી કેલરી';

  @override
  String get healthScore => 'હેલ્થ સ્કોર';

  @override
  String get drinksAvoided => 'એવોઇડ કરેલા ડ્રિંક્સ';

  @override
  String get estimated => 'અંદાજિત';

  @override
  String get aiGenerated => 'AI દ્વારા જનરેટ કરેલ';

  @override
  String get daysCapsLabel => 'દિવસો';

  @override
  String get todaysMotivation => 'આજનું પ્રેરણા સૂત્ર';

  @override
  String get defaultMotivationQuote =>
      'તમે તમારી કમિcommitમેન્ટ સફળતાપૂર્વક નિભાવી છે. સકારાત્મક પરિવર્તન સાથે આગળ વધતા રહો.';

  @override
  String get talkToCoach => 'કોચ સાથે વાત કરો';

  @override
  String get havingACraving => 'મને ઈચ્છા (Craving) થઈ રહી છે';

  @override
  String get unlockWeeklyReportsTitle => 'સાપ્તાહિક રિપોર્ટ્સ અનલૉક કરો';

  @override
  String get unlockWeeklyReportsMessage =>
      'દર અઠવાડિયે તમારા સોબર દિવસો, મૂડ ટ્રેન્ડ્સ અને AI ફીડબેક જુઓ. પ્રીમિયમમાં અપગ્રેડ કરો.';

  @override
  String get maybeLater => 'કદાચ પછીથી';

  @override
  String get upgrade => 'અપગ્રેડ કરો';

  @override
  String get weeklyReportTitle => 'સાપ્તાહિક રિપોર્ટ';

  @override
  String get weeklyReportsPremiumTitle =>
      'સાપ્તાહિક રિપોર્ટ્સ એ પ્રીમિયમ ફીચર છે';

  @override
  String get weeklyReportsPremiumMessage =>
      'તમારા સોબર દિવસો, મૂડ ટ્રેન્ડ્સ, ક્રેવિંગ્સ અને AI ફીડબેક જુઓ.';

  @override
  String get upgradeToPremium => 'પ્રીમિયમમાં અપગ્રેડ કરો';

  @override
  String get couldNotGenerateReport => 'અત્યારે રિપોર્ટ જનરેટ કરી શકાયો નથી.';

  @override
  String get tryAgainLower => 'ફરી પ્રયાસ કરો';

  @override
  String get statSoberDays => 'સોબર દિવસો';

  @override
  String get statAvgMood => 'સરેરાશ મૂડ';

  @override
  String get statCravings => 'ક્રેવિંગ્સ';

  @override
  String get statMoneySaved => 'બચાવેલા નાણાં';

  @override
  String get coachFeedback => 'કોચ ફીડબેક';

  @override
  String get journalInsights => 'જર્નલ આંતરદ્રષ્ટિ';

  @override
  String get next => 'આગળ';

  @override
  String get question1Title => 'તમારું લક્ષ્ય શું છે';

  @override
  String get question1Subtitle => 'તમારા માટે સૌથી મહત્વપૂર્ણ લક્ષ્ય પસંદ કરો';

  @override
  String get goalQuitCompletely => 'સંપૂર્ણપણે છોડી દો';

  @override
  String get goalReduceDrinking => 'પીવાનું ઓછું કરો';

  @override
  String get goalTakeABreak => 'બ્રેક લો';

  @override
  String get goalBuildHealthierHabits => 'વધુ સ્વસ્થ ટેવો બનાવો';

  @override
  String get question3Title => 'તમારી દિનચર્યા વિશે\nજણાવો';

  @override
  String get drinksPerWeek => 'અઠવાડિયાના ડ્રિંક્સ';

  @override
  String get moneySpentPerWeek => 'દર અઠવાડિયે ખર્ચેલા નાણાં';

  @override
  String get drinkingLevel => 'પીવાનું સ્તર';

  @override
  String get triggersLabel => 'ટ્રિગર્સ';

  @override
  String get levelSocial => 'સામાજિક';

  @override
  String get levelRegular => 'નિયમિત';

  @override
  String get levelHeavy => 'વધારે';

  @override
  String get levelDependent => 'નિર્ભર';

  @override
  String get triggerStress => 'તણાવ (Stress)';

  @override
  String get triggerLoneliness => 'એકલતા';

  @override
  String get triggerHabit => 'ટેવ';

  @override
  String get triggerSadness => 'ઉદાシー';

  @override
  String get triggerAnger => 'ગુસ્સો';

  @override
  String get triggerBoredom => 'કંટાળો';

  @override
  String get triggerSocialPressure => 'સામાજિક દબાણ';

  @override
  String get triggerCelebration => 'ઉજવણી';

  @override
  String get triggerSleepProblems => 'ઊંઘની સમસ્યાઓ';

  @override
  String get triggerWorkPressure => 'કામનું દબાણ';

  @override
  String get question4Title => 'તમે શા માટે બદલાવ ઈચ્છો છો?';

  @override
  String get question4Subtitle => 'તમારું કારણ તમને પ્રેરિત રાખવામાં મદદ કરશે.';

  @override
  String get reasonImproveHealth => 'આરોગ્ય સુધારવા';

  @override
  String get reasonSaveMoney => 'પૈસા બચાવવા';

  @override
  String get reasonFamily => 'પરિવાર માટે';

  @override
  String get reasonBetterSleep => 'સારી ઊંઘ માટે';

  @override
  String get reasonMentalClarity => 'માનસિક સ્પષ્ટતા માટે';

  @override
  String get reasonFitness => 'ફિટનેસ માટે';

  @override
  String get reasonSelfRespect => 'આત્મસન્માન માટે';

  @override
  String get reasonCareer => 'કારકિર્દી માટે';

  @override
  String get milestoneUnlockedLabel => 'માઇલસ્ટોન અનલૉક થયો';

  @override
  String incredibleNamePrefix(String name) {
    return 'અદ્ભુત, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount બચાવ્યા';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count એવોઇડ કર્યા';
  }

  @override
  String get shareMyMilestone => 'મારો માઇલસ્ટોન શેર કરો';

  @override
  String get milestoneImageShareError =>
      'માઇલસ્ટોન ઇમેજ બનાવી શકાઈ નથી. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get dailyCheckInTitle => 'દૈનિક ચેક-ઇન';

  @override
  String get howAreYouFeelingToday => 'આજે તમે કેવું અનુભવો છો?';

  @override
  String get honestAnswerHelp =>
      'તમારો પ્રામાણિક જવાબ અમને તમને વધુ સારી રીતે મદદ કરવામાં મદદ કરે છે';

  @override
  String get didYouDrinkToday => 'શું તમે આજે દારૂ પીધો?';

  @override
  String get noLabel => 'ના';

  @override
  String get yesLabel => 'હા';

  @override
  String get cravingLevelNow => 'અત્યારે ક્રેવિંગનું સ્તર શું છે?';

  @override
  String get anythingOnMind => 'કાંઈ કહેવું છે?';

  @override
  String get optionalLabel => '(મરજિયાત)';

  @override
  String get dailyNoteHint => 'તમારા દિવસ, ટ્રિગર્સ, સફળતાઓ વિશે લખો...';

  @override
  String get alreadyCheckedInToday => 'આજે ચેક-ઇન થઈ ગયું છે';

  @override
  String get saveCheckIn => 'ચેક-ઇન સાચવો';

  @override
  String get checkInsHelpTrack =>
      'ચેક-ઇન તમારી પ્રગતિને ટ્રેક કરવામાં મદદ કરે છે';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'તમે આજનું ચેક-ઇન પૂર્ણ કરી લીધું છે.';

  @override
  String get pleaseAnswerBothQuestions =>
      'કૃપા કરીને પહેલા ઉપરના બંને પ્રશ્નોના જવાબ આપો';

  @override
  String get checkInSaved => 'ચેક-ઇન સાચવવામાં આવ્યું';

  @override
  String get cravingNone => 'બિલકુલ નહીં';

  @override
  String get cravingLow => 'ઓછું';

  @override
  String get cravingMedium => 'મધ્યમ';

  @override
  String get cravingStrong => 'તીવ્ર';

  @override
  String get moodBad => 'ખરાબ';

  @override
  String get moodLow => 'ઓછું';

  @override
  String get moodGreat => 'ઉત્તમ';

  @override
  String get sosSupportTitle => 'SOS સપોર્ટ';

  @override
  String notAloneMessage(String name) {
    return 'તમે એકલા નથી, $name';
  }

  @override
  String get cravingsPassMessage =>
      'ઈચ્છાઓ શાંત થઈ જાય છે. આ ક્ષણમાંથી બહાર નીકળવા માટે નીચેથી કાંઈક પસંદ કરો.';

  @override
  String get breathingExercise => 'શ્વાસોચ્છવાસની કસરત';

  @override
  String get breathingExerciseSubtitle => 'માર્ગદર્શિત 4-7-8 તકનીક, 2 મિનિટ';

  @override
  String get rideTheWave => 'રાઇડ ધ વેવ';

  @override
  String get rideTheWaveSubtitle =>
      '15 મિનિટનું ટાઈમર — ઈચ્છા હંમેશા પસાર થઈ જાય છે';

  @override
  String get copingTips => 'બચવાના ઉપાયો';

  @override
  String get copingTipsSubtitle => 'તમારા ટ્રિગર્સ માટે વ્યક્તિગત વ્યૂહરચના';

  @override
  String get talkToAiCoach => 'AI કોચ સાથે વાત કરો';

  @override
  String get talkToAiCoachSubtitle => 'તમારા રિકવરી સાથી સાથે ચેટ કરો';

  @override
  String get callSomeone => 'કોઈને કૉલ કરો';

  @override
  String get callSomeoneSubtitle => 'તમારા વિશ્વસનીય સંપર્કનો સંપર્ક કરો';

  @override
  String get contactsPermissionNeeded =>
      'કૉલ કરવા માટે કોન્ટેક્ટ્સની પરમિશન જરૂરી છે.';

  @override
  String get beatenCravingsPrefix => 'તમે પહેલા પણ ';

  @override
  String beatenCravingsCount(int count) {
    return '$count વાર';
  }

  @override
  String get beatenCravingsSuffix =>
      ' ક્રેવિંગ્સને હરાવ્યા છે. તમે ફરીથી કરી શકો છો.';

  @override
  String get tellUsAboutYourself => 'તમારા વિશે જણાવો';

  @override
  String get detailsSubtitle =>
      'આ માહિતી તમારી રિકવરી યાત્રાને વ્યક્તિગત કરવામાં મદદ કરે છે.';

  @override
  String get nameLabel => 'નામ';

  @override
  String get nameHint => 'જેમ કે, એલેક્સ';

  @override
  String get ageLabel => 'ઉંમર';

  @override
  String get ageHint => 'જેમ કે, 32';

  @override
  String get sexAssignedAtBirth => 'જન્મ સમયે જાતિ';

  @override
  String get sexFemale => 'મહિલા';

  @override
  String get sexMale => 'પુરુષ';

  @override
  String get heightLabel => 'ઊંચાઈ';

  @override
  String get weightLabel => 'વજન';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'દૈનિક મર્યાદા પૂરી થઈ';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'તમે આજના બધા $limit મફત સંદેશાઓ વાપરી લીધા છે. અમર્યાદિત ચેટ માટે અપગ્રેડ કરો.';
  }

  @override
  String get coachConnectError =>
      'અત્યારે કનેક્ટ થઈ શક્યું નથી. કૃપા કરીને થોડી વાર પછી પ્રયાસ કરો.';

  @override
  String get clearConversationTitle => 'વાતચીત સાફ કરવી છે?';

  @override
  String get clearConversationMessage =>
      'આનાથી તમારી કોચ ચેટ હિસ્ટ્રી કાયમ માટે હટી જશે.';

  @override
  String get clearLabel => 'સાફ કરો';

  @override
  String get recoveryCoachTitle => 'રિકવરી કોચ';

  @override
  String get onlineLabel => 'ઓનલાઇન';

  @override
  String get clearConversationMenuItem => 'વાતચીત સાફ કરો';

  @override
  String chatGreeting(String name) {
    return 'હાય $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'તમે તમારી યાત્રાના $daysમા દિવસે છો. જ્યારે પણ વાત કરવી હોય હું અહીં છું.';
  }

  @override
  String get quickPromptsLabel => 'ઝડપી સૂચનો';

  @override
  String get promptCravingLabel => 'તીવ્ર ઈચ્છા થઈ રહી છે';

  @override
  String get promptCravingSubtitle => 'ઝડપથી શાંત થાઓ';

  @override
  String get promptMotivationLabel => 'પ્રેરણાની જરૂર છે';

  @override
  String get promptMotivationSubtitle => 'મુશ્કેલ સમયમાં મદદ';

  @override
  String get promptSocialLabel => 'સામાજિક પરિસ્થિતિ';

  @override
  String get promptSocialSubtitle => 'ગેટ-ટુગેધર સંભાળો';

  @override
  String get promptSlippedLabel => 'મારાથી ભૂલ થઈ ગઈ';

  @override
  String get promptSlippedSubtitle => 'કોઈ જજમેન્ટ નહીં, માત્ર સપોર્ટ';

  @override
  String get typeMessageHint => 'સંદેશ ટાઇપ કરો...';

  @override
  String get editProfileTitle => 'પ્રોફાઇલમાં ફેરફાર કરો';

  @override
  String couldNotSaveProfile(String error) {
    return 'પ્રોફાઇલ સાચવી શકાઈ નથી: $error';
  }

  @override
  String get heightCmLabel => 'ઊંચાઈ (સેમી)';

  @override
  String get weightKgLabel => 'વજન (કિગ્રા)';

  @override
  String get saveChangesLabel => 'ફેરફારો સાચવો';

  @override
  String get premiumBadgeLabel => 'પ્રીમિયમ';

  @override
  String get featureAdvancedInsights => 'એડવાન્સ્ડ એનાલિટિક્સ';

  @override
  String get featureUnlimitedJournal => 'અમર્યાદિત જર્નલ એન્ટ્રીઓ';

  @override
  String get featureUnlimitedChat => 'AI કોચ સાથે અમર્યાદિત ચેટ';

  @override
  String get featureCommunityGroups => 'વિશિષ્ટ કોમ્યુનિટી ગ્રુપ્સ';

  @override
  String get featurePrioritySupport => 'પ્રાથમિકતા સપોર્ટ';

  @override
  String get featureThemePacks => 'કસ્ટમ થીમ પેક્સ';

  @override
  String get featureDataExport => 'ડેટા એક્સપોર્ટ';

  @override
  String get featureAdFree => 'જાહેરાત મુક્ત અનુભવ';

  @override
  String get premiumMemberTitle => 'તમે પ્રીમિયમ સભ્ય છો';

  @override
  String get unlockFullRecoveryTitle => 'તમારો સંપૂર્ણ રિકવરી\nઅનુભવ અનલૉક કરો';

  @override
  String get premiumMemberSubtitle =>
      'તમારો સપોર્ટ આપવા માટે આભાર — નીચેના તમામ પ્રીમિયમ ફીચર્સ અનલૉક છે.';

  @override
  String get premiumJoinSubtitle =>
      'હજારો લોકો સાથે જોડાઓ જેઓ તેમની રિકવરી ઝડપી બનાવી રહ્યા છે.';

  @override
  String get monthlyPlanLabel => 'માસિક';

  @override
  String get perMonthSuffix => '/મહિનો';

  @override
  String get cancelAnytimeLabel => 'ગમે ત્યારે રદ કરો';

  @override
  String get yearlyPlanLabel => 'વાર્ષિક';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'દર વર્ષે $amount બિલ થશે';
  }

  @override
  String get bestValueLabel => 'બેસ્ટ વેલ્યુ';

  @override
  String get alreadyPremiumLabel => 'તમે પ્રીમિયમ છો ✓';

  @override
  String get startPremiumLabel => 'પ્રીમિયમ શરૂ કરો';

  @override
  String get manageSubscriptionLabel =>
      'તમારા ઉપકરણના સબસ્ક્રિપ્શન સેટિંગ્સમાંથી સંચાલિત અથવા રદ કરો.';

  @override
  String get noCommitmentLabel => 'કોઈ લિમિટ નથી. ગમે ત્યારે રદ કરો.';

  @override
  String get continueFreePlanLabel => 'ફ્રી પ્લાન સાથે ચાલુ રાખો';

  @override
  String get backToHomeLabel => 'હોમ પર પાછા જાઓ';

  @override
  String get cancelPremiumLabel => 'પ્રીમિયમ રદ કરો';

  @override
  String get cancelPremiumTitle => 'પ્રીમિયમ રદ કરવું છે?';

  @override
  String get cancelPremiumMessage =>
      'તમે અમર્યાદિત એન્ટ્રીઓ, ચેટ અને રિપોર્ટ્સની ઍક્સેસ ગુમાવશો.';

  @override
  String get keepPremiumLabel => 'પ્રીમિયમ રાખો';

  @override
  String get nowPremiumMessage => 'તમે હવે પ્રીમિયમ છો! આનંદ માણો.';

  @override
  String get premiumCancelledMessage =>
      'પ્રીમિયમ રદ થયું. તમે ફ્રી પ્લાન પર પાછા છો.';

  @override
  String get termsOfUseLabel => 'ઉપયોગની શરતો';

  @override
  String get navHomeLabel => 'હોમ';

  @override
  String get navStatsLabel => 'આંકડા';

  @override
  String get navJournalLabel => 'જર્નલ';

  @override
  String get navBadgesLabel => 'બેજ';

  @override
  String get navProfileLabel => 'પ્રોફાઇલ';

  @override
  String get recoveryGoalsTitle => 'રિકવરી લક્ષ્યો';

  @override
  String get drinksPerWeekLabel => 'અઠવાડિયાના ડ્રિંક્સ';

  @override
  String get quitReasonsLabel => 'છોડવાના કારણો';

  @override
  String get quitReasonsHelperText => 'અલગ અલગ કારણોને અલ્પવિરામથી અલગ કરો.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'રિકવરી લક્ષ્યો સાચવી શકાયા નથી: $error';
  }

  @override
  String get goalHint => 'જેમ કે, સંપૂર્ણ પરહેજ';

  @override
  String get drinksPerWeekHint => 'જેમ કે, 12';

  @override
  String get quitReasonsHint => 'જેમ કે, સબંધીઓ, પરિવાર, પૈસા';

  @override
  String get todaysPrompt => 'આજનો પ્રશ્ન';

  @override
  String get defaultJournalPrompt => 'આજે તમારા મનમાં શું ચાલી રહ્યું છે?';

  @override
  String get aiJournalInsights => 'AI જર્નલ આંતરદ્રષ્ટિ';

  @override
  String get unlockJournalInsightsMessage =>
      'તમારી એન્ટ્રીઓમાંથી સાપ્તાહિક પેટર્ન અને મૂડ ટ્રેન્ડ્સ અનલૉક કરો.';

  @override
  String get notEnoughJournalData =>
      'હજી પૂરતો ડેટા નથી — આ અઠવાડિયે થોડી એન્ટ્રીઓ લખો.';

  @override
  String get openEntry => 'ખોલો';

  @override
  String get editEntry => 'એડિટ કરો';

  @override
  String get deleteEntry => 'કાઢી નાખો';

  @override
  String get searchJournalEntries => 'શોધો...';

  @override
  String get writeNewEntry => 'નવી એન્ટ્રી લખો';

  @override
  String get recentEntries => 'તાજેતરની એન્ટ્રીઓ';

  @override
  String get noJournalEntriesYet => 'હજી સુધી કોઈ જર્નલ એન્ટ્રી નથી.';

  @override
  String get noEntriesMatchFilters =>
      'કોઈ એન્ટ્રી તમારા ફિલ્ટર સાથે મેળ ખાતી નથી.';

  @override
  String get weeklyJournalLimitReached => 'સાપ્તાહિક મર્યાદા પૂરી થઈ';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'તમે આ અઠવાડિયાની બધી $limit મફત એન્ટ્રીઓ વાપરી લીધી છે.';
  }

  @override
  String get newEntry => 'નવી એન્ટ્રી';

  @override
  String get writeYourThoughts => 'તમારા વિચારો લખો';

  @override
  String get saveEntry => 'એન્ટ્રી સાચવો';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'આ અઠવાડિયે $limit માંથી $remaining મફત એન્ટ્રીઓ બાકી';
  }

  @override
  String get deleteEntryQuestion => 'એન્ટ્રી કાઢી નાખવી છે?';

  @override
  String get deleteEntryConfirmation =>
      'આ એન્ટ્રી કાયમ માટે કાઢી નાખવામાં આવશે.';

  @override
  String get journalEntryNotFound => 'એન્ટ્રી મળી નથી';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'આ એન્ટ્રી કદાચ કાઢી નાખવામાં આવી છે.';

  @override
  String get goBack => 'પાછા જાઓ';

  @override
  String get journalEntryTitle => 'જર્નલ એન્ટ્રી';

  @override
  String get moodStruggling => 'મુશ્કેલીમાં';

  @override
  String get moodUnwell => 'અસ્વસ્થ';

  @override
  String get moodNeutral => 'સામાન્ય';

  @override
  String get whatHappenedToday => 'આજે શું થયું?';

  @override
  String get trigger => 'ટ્રિગર';

  @override
  String get whatHelped => 'શાનાથી મદદ મળી';

  @override
  String get whatIllTryNextTime => 'હું अगली વખતે શું પ્રયાસ કરીશ';

  @override
  String get journalPrivacyMessage => 'તમારા વિચારો ખાનગી છે અને સુરક્ષિત છે.';

  @override
  String get unlocked => 'અનલૉક થયું';

  @override
  String daysLeft(int count) {
    return '$count દિવસ બાકી';
  }

  @override
  String daysCount(int count) {
    return '$count દિવસો';
  }

  @override
  String get firstReflection => 'પ્રથમ\nવિચાર';

  @override
  String get oneJournalEntry => '1 જર્નલ એન્ટ્રી';

  @override
  String get openBook => 'ખુલ્લું પુસ્તક';

  @override
  String get tenJournalEntries => '10 જર્નલ એન્ટ્રીઓ';

  @override
  String get dedicatedWriter => 'સમર્પિત\nલેખક';

  @override
  String get thirtyJournalEntries => '30 જર્નલ એન્ટ્રીઓ';

  @override
  String get firstConversation => 'પ્રથમ\nવાતચીત';

  @override
  String get oneAiCoachChat => '1 AI કોચ ચેટ';

  @override
  String get keepTalking => 'વાત ચાલુ રાખો';

  @override
  String get fiveConversations => '5 વાતચીત';

  @override
  String get coachCompanion => 'કોચ\nસાથી';

  @override
  String get twentyConversations => '20 વાતચીત';

  @override
  String get checkInHabit => 'ચેક-ઇન\nટેવ';

  @override
  String get sevenCheckIns => '7 ચેક-ઇન';

  @override
  String get consistencyPro => 'નિયમિતતા\nપ્રો';

  @override
  String get thirtyCheckIns => '30 ચેક-ઇન';

  @override
  String get dedicatedJourney => 'સમર્પિત\nયાત્રા';

  @override
  String get hundredCheckIns => '100 ચેક-ઇન';

  @override
  String get goalGetter => 'ગોલ ગેટર';

  @override
  String get threeGoalsCompleted => '3 લક્ષ્યો પૂર્ણ થયા';

  @override
  String get goalAchiever => 'લક્ષ્ય\nપ્રાપ્તકર્તા';

  @override
  String get tenGoalsCompleted => '10 લક્ષ્યો પૂર્ણ થયા';

  @override
  String get firstSavings => 'પ્રથમ\nબચત';

  @override
  String get fiveHundredSaved => '\$500 બચાવ્યા';

  @override
  String get smartSaver => 'સ્માર્ટ સેવર';

  @override
  String get oneThousandSaved => '\$1,000 બચાવ્યા';

  @override
  String get bigSaver => 'બિગ સેવર';

  @override
  String get fiveThousandSaved => '\$5,000 બચાવ્યા';

  @override
  String currencyProgress(String current, String target) {
    return '\$$target માંથી \$$current';
  }

  @override
  String countProgress(int current, int target) {
    return '$target માંથી $current';
  }

  @override
  String get firstMilestoneWaiting =>
      'આગળ વધતા રહો — તમારો પહેલો માઇલસ્ટોન રાહ જોઈ રહ્યો છે!';

  @override
  String get badgesAndMilestones => 'બેજ અને માઇલસ્ટોન્સ';

  @override
  String get yourMilestoneJourney => 'તમારી માઇલસ્ટોન યાત્રા';

  @override
  String milestonesAchieved(int count) {
    return '$count માઇલસ્ટોન પૂર્ણ થા.\nજોવા માટે ટેપ કરો';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'તમે $total માંથી $unlocked માઇલસ્ટોન્સ અનલૉક કર્યા છે.';
  }

  @override
  String get remaining => 'બાકી';

  @override
  String get complete => 'પૂર્ણ';

  @override
  String get nextMilestone => 'આગામી માઇલસ્ટોન';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% પૂર્ણ';
  }

  @override
  String get sobrietyMilestones => 'સોબ્રિટી માઇલસ્ટોન્સ';

  @override
  String get journeyBadges => 'યાત્રાના બેજ';

  @override
  String get bronze => 'બ્રોન્ઝ';

  @override
  String get silver => 'સિલ્વર';

  @override
  String get gold => 'ગોલ્ડ';

  @override
  String get platinum => 'પ્લેટિનમ';

  @override
  String get diamond => 'ડાયમંડ';

  @override
  String get analyzingYourJourney => 'તમારી યાત્રાનું વિશ્લેષણ થઈ રહ્યું છે...';

  @override
  String get aiCreatingSanctuary =>
      'અમારું AI તમારી વ્યક્તિગત જગ્યા બનાવી રહ્યું છે.';

  @override
  String get understandingHabits => 'ટેવો સમજી રહ્યા છીએ...';

  @override
  String get calculatingBaseline => 'બેઝલાઇનની ગણતરી થઈ રહી છે...';

  @override
  String get personalizingPlan => 'પ્લાન વ્યક્તિગત થઈ રહ્યો છે...';

  @override
  String get finalizingSanctuary => 'તૈયારીઓ પૂર્ણ થઈ રહી છે...';

  @override
  String get creatingYourPlan => 'પ્લાન બની રહ્યો છે...';

  @override
  String get personalizedPlanError => 'પ્લાન બનાવી શકાયો નથી. ફરી પ્રયાસ કરો.';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get breathInhale => 'ઊંડો શ્વાસ લો';

  @override
  String get breathHold => 'રોકી રાખો';

  @override
  String get breathExhale => 'શ્વાસ છોડો';

  @override
  String get breathDone => 'પૂર્ણ';

  @override
  String get breathGreatJob => 'ખૂબ સરસ કામ!';

  @override
  String breathSessionsToday(int count) {
    return 'આજે $count સેશન પૂર્ણ થયા';
  }

  @override
  String get endExercise => 'કસરત પૂર્ણ કરો';

  @override
  String get done => 'પૂર્ણ';

  @override
  String get noCopingTipsYet => 'હજુ સુધી કોઈ ઉપાય નથી';

  @override
  String get copingStrategiesWillAppear =>
      'પ્લાન બન્યા પછી તમારી વ્યૂહરચના અહીં દેખાશે.';

  @override
  String get strategiesTailoredToTriggers => 'તમારા ટ્રિગર્સ અનુસાર વ્યૂહરચનાઓ';

  @override
  String get cravingsPeakAndPass => 'ઈચ્છાઓ વધે છે\nઅને શાંત થાય છે';

  @override
  String get rideTheWaveDescription =>
      'મોટાભાગની ક્રેવિંગ્સ 15 મિનિટમાં શાંત થઈ જાય છે. અમારી સાથે ધૈર્ય રાખો.';

  @override
  String get stayWithIt => 'ધૈર્ય રાખો';

  @override
  String get youMadeIt => 'તમે કરી બતાવ્યું';

  @override
  String get readyWhenYouAre => 'તમે તૈયાર હોવ ત્યારે';

  @override
  String get rideItAgain => 'ફરી પ્રયાસ કરો';

  @override
  String get start15MinuteTimer => '15-મિનિટનું ટાઈમર શરૂ કરો';

  @override
  String get rideTheWaveCompletedMessage =>
      'તમે ક્રેવિંગને હરાવી દીધી. આ સાચી શક્તિ છે. 💪';

  @override
  String get myProgress => 'મારી પ્રગતિ';

  @override
  String get weekLabel => 'અઠવાડિયું';

  @override
  String get monthLabel => 'મહિનો';

  @override
  String get allLabel => 'બધું';

  @override
  String get daysSoberStatLabel => 'સોબર\nદિવસો';

  @override
  String get savedStatLabel => 'બચાવ્યા';

  @override
  String get avoidedStatLabel => 'એવોઇડ કર્યા';

  @override
  String get moodTrends => 'મૂડ ટ્રેન્ડ્સ';

  @override
  String get cravingsPattern => 'ક્રેવિંગ પેટર્ન';

  @override
  String get unlockLabel => 'અનલૉક કરો';

  @override
  String get unlockFullStats => 'સંપૂર્ણ આંકડા અનલૉક કરો';

  @override
  String get premiumStatsMessage =>
      'મૂડ અને ક્રેવિંગ પેટર્ન એ પ્રીમિયમ ફીચર્સ છે.';

  @override
  String get healthMilestonesWillAppear =>
      'તમારા હેલ્થ માઇલસ્ટોન્સ અહીં દેખાશે.';

  @override
  String get healthMilestones => 'હેલ્થ માઇલસ્ટોન્સ';

  @override
  String dayNumber(int day) {
    return 'દિવસ $day';
  }

  @override
  String get soberLabel => 'સોબર';

  @override
  String get slipLabel => 'ભૂલ થવી';

  @override
  String get noDataLabel => 'કોઈ ડેટા નથી';

  @override
  String get milestone24Hours => '24 કલાક';

  @override
  String get milestoneOneWeek => 'એક અઠવાડિયું';

  @override
  String get milestoneOneMonth => 'એક મહિનો';

  @override
  String get milestoneThreeMonths => 'ત્રણ મહિના';

  @override
  String get milestoneSixMonths => 'છ મહિના';

  @override
  String get milestoneOneYear => 'એક વર્ષ';

  @override
  String milestoneDayCount(int day) {
    return 'દિવસ $day માઇલસ્ટોન';
  }

  @override
  String get maybeLaterLabel => 'કદાચ પછી';

  @override
  String get cancelLabel => 'રદ કરો';
}
