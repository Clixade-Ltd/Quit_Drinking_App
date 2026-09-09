import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_my.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_rm.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('gl'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ky'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('my'),
    Locale('nb'),
    Locale('ne'),
    Locale('nl'),
    Locale('pl'),
    Locale('rm'),
    Locale('ro'),
    Locale('ru'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
    Locale('zu'),
  ];

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Take Control of Your Life'**
  String get onboardingTitle1;

  /// No description provided for @onboardingSubtitle1.
  ///
  /// In en, this message translates to:
  /// **'Track your journey, celebrate every achievement, and become healthier one day at a time.'**
  String get onboardingSubtitle1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Your AI Recovery Companion'**
  String get onboardingTitle2;

  /// No description provided for @onboardingSubtitle2.
  ///
  /// In en, this message translates to:
  /// **'Receive personalized guidance, healthy habits, motivation reminders, and progress reports designed around your journey.'**
  String get onboardingSubtitle2;

  /// No description provided for @goodMorning.
  ///
  /// In en, this message translates to:
  /// **'Good Morning'**
  String get goodMorning;

  /// No description provided for @goodAfternoon.
  ///
  /// In en, this message translates to:
  /// **'Good Afternoon'**
  String get goodAfternoon;

  /// No description provided for @goodEvening.
  ///
  /// In en, this message translates to:
  /// **'Good Evening'**
  String get goodEvening;

  /// No description provided for @goodNight.
  ///
  /// In en, this message translates to:
  /// **'Good Night'**
  String get goodNight;

  /// No description provided for @embracingClarity.
  ///
  /// In en, this message translates to:
  /// **'Embracing clarity, one day at a time.'**
  String get embracingClarity;

  /// No description provided for @streakLabel.
  ///
  /// In en, this message translates to:
  /// **'STREAK'**
  String get streakLabel;

  /// No description provided for @goalLabel.
  ///
  /// In en, this message translates to:
  /// **'Goal'**
  String get goalLabel;

  /// No description provided for @daysStreak.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{{count} Day} other{{count} Days}}'**
  String daysStreak(int count);

  /// No description provided for @premiumPlan.
  ///
  /// In en, this message translates to:
  /// **'Premium Plan'**
  String get premiumPlan;

  /// No description provided for @premiumPlanSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock your full recovery experience'**
  String get premiumPlanSubtitle;

  /// No description provided for @accountAndSupport.
  ///
  /// In en, this message translates to:
  /// **'ACCOUNT & SUPPORT'**
  String get accountAndSupport;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @privacyPolicySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage data sharing and account security'**
  String get privacyPolicySubtitle;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// No description provided for @termsOfServiceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'FAQs, contact us, and resources'**
  String get termsOfServiceSubtitle;

  /// No description provided for @shareApp.
  ///
  /// In en, this message translates to:
  /// **'Share App'**
  String get shareApp;

  /// No description provided for @shareAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Share app with your friends'**
  String get shareAppSubtitle;

  /// No description provided for @resetData.
  ///
  /// In en, this message translates to:
  /// **'Reset Data'**
  String get resetData;

  /// No description provided for @resetDataSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Erase everything saved on this device'**
  String get resetDataSubtitle;

  /// No description provided for @resetAllDataTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset all data?'**
  String get resetAllDataTitle;

  /// No description provided for @resetAllDataMessage.
  ///
  /// In en, this message translates to:
  /// **'This clears everything saved on this device — profile, journal entries, and progress — and cannot be undone.'**
  String get resetAllDataMessage;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @chooseFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from Gallery'**
  String get chooseFromGallery;

  /// No description provided for @takePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get takePhoto;

  /// No description provided for @removePhoto.
  ///
  /// In en, this message translates to:
  /// **'Remove Photo'**
  String get removePhoto;

  /// No description provided for @couldNotUpdatePhoto.
  ///
  /// In en, this message translates to:
  /// **'Could not update photo: {error}'**
  String couldNotUpdatePhoto(String error);

  /// No description provided for @couldNotRemovePhoto.
  ///
  /// In en, this message translates to:
  /// **'Could not remove photo: {error}'**
  String couldNotRemovePhoto(String error);

  /// No description provided for @photoTooLarge.
  ///
  /// In en, this message translates to:
  /// **'That photo is too large even after compression — please try a different one.'**
  String get photoTooLarge;

  /// No description provided for @unableToLoadProfile.
  ///
  /// In en, this message translates to:
  /// **'Unable to load your profile'**
  String get unableToLoadProfile;

  /// No description provided for @pleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Please try again.'**
  String get pleaseTryAgain;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @profileNotFound.
  ///
  /// In en, this message translates to:
  /// **'Profile not found'**
  String get profileNotFound;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @noProfileDataFound.
  ///
  /// In en, this message translates to:
  /// **'No profile data found on this device yet.'**
  String get noProfileDataFound;

  /// No description provided for @couldNotResetData.
  ///
  /// In en, this message translates to:
  /// **'Could not reset data: {error}'**
  String couldNotResetData(String error);

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navStats.
  ///
  /// In en, this message translates to:
  /// **'Stats'**
  String get navStats;

  /// No description provided for @navJournal.
  ///
  /// In en, this message translates to:
  /// **'Journal'**
  String get navJournal;

  /// No description provided for @navBadges.
  ///
  /// In en, this message translates to:
  /// **'Badges'**
  String get navBadges;

  /// No description provided for @navProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfile;

  /// No description provided for @featureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'{feature} will be available soon.'**
  String featureComingSoon(String feature);

  /// No description provided for @appWordmark.
  ///
  /// In en, this message translates to:
  /// **'WELLNESS'**
  String get appWordmark;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Quit Drinking'**
  String get appTitle;

  /// No description provided for @splashSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Take the first step towards an\nAlcohol free life'**
  String get splashSubtitle;

  /// No description provided for @preparingJourney.
  ///
  /// In en, this message translates to:
  /// **'Preparing your\njourney'**
  String get preparingJourney;

  /// No description provided for @taskMorningMeditation.
  ///
  /// In en, this message translates to:
  /// **'Morning Meditation (10m)'**
  String get taskMorningMeditation;

  /// No description provided for @taskReadChapter.
  ///
  /// In en, this message translates to:
  /// **'Read Chapter 4 of \"The Sober Diaries\"'**
  String get taskReadChapter;

  /// No description provided for @taskEveningJournal.
  ///
  /// In en, this message translates to:
  /// **'Evening Gratitude Journal'**
  String get taskEveningJournal;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @youAreDoingGreat.
  ///
  /// In en, this message translates to:
  /// **'You\'re doing great!'**
  String get youAreDoingGreat;

  /// No description provided for @shareMilestone.
  ///
  /// In en, this message translates to:
  /// **'Share Milestone'**
  String get shareMilestone;

  /// No description provided for @shareMilestoneMessage.
  ///
  /// In en, this message translates to:
  /// **'I\'m on day {days} of my recovery journey! 💪'**
  String shareMilestoneMessage(int days);

  /// No description provided for @shareMilestoneSubject.
  ///
  /// In en, this message translates to:
  /// **'My recovery milestone'**
  String get shareMilestoneSubject;

  /// No description provided for @weeklyReportReadyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your weekly report is ready'**
  String get weeklyReportReadyTitle;

  /// No description provided for @weeklyReportReadySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap to see how your week went'**
  String get weeklyReportReadySubtitle;

  /// No description provided for @howAreYouFeeling.
  ///
  /// In en, this message translates to:
  /// **'How are you feeling?'**
  String get howAreYouFeeling;

  /// No description provided for @moodTough.
  ///
  /// In en, this message translates to:
  /// **'Tough'**
  String get moodTough;

  /// No description provided for @moodOkay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get moodOkay;

  /// No description provided for @moodGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get moodGood;

  /// No description provided for @moneySaved.
  ///
  /// In en, this message translates to:
  /// **'Money Saved'**
  String get moneySaved;

  /// No description provided for @caloriesSaved.
  ///
  /// In en, this message translates to:
  /// **'Calories Saved'**
  String get caloriesSaved;

  /// No description provided for @healthScore.
  ///
  /// In en, this message translates to:
  /// **'Health Score'**
  String get healthScore;

  /// No description provided for @drinksAvoided.
  ///
  /// In en, this message translates to:
  /// **'Drinks Avoided'**
  String get drinksAvoided;

  /// No description provided for @estimated.
  ///
  /// In en, this message translates to:
  /// **'Estimated'**
  String get estimated;

  /// No description provided for @aiGenerated.
  ///
  /// In en, this message translates to:
  /// **'AI generated'**
  String get aiGenerated;

  /// No description provided for @daysCapsLabel.
  ///
  /// In en, this message translates to:
  /// **'DAYS'**
  String get daysCapsLabel;

  /// No description provided for @todaysMotivation.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Motivation'**
  String get todaysMotivation;

  /// No description provided for @defaultMotivationQuote.
  ///
  /// In en, this message translates to:
  /// **'You\'ve successfully maintained your commitment. Keep riding the wave of positive change.'**
  String get defaultMotivationQuote;

  /// No description provided for @talkToCoach.
  ///
  /// In en, this message translates to:
  /// **'Talk to coach'**
  String get talkToCoach;

  /// No description provided for @havingACraving.
  ///
  /// In en, this message translates to:
  /// **'I\'m Having a Craving'**
  String get havingACraving;

  /// No description provided for @unlockWeeklyReportsTitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock weekly reports'**
  String get unlockWeeklyReportsTitle;

  /// No description provided for @unlockWeeklyReportsMessage.
  ///
  /// In en, this message translates to:
  /// **'See your sober days, mood trends, and personalized AI feedback every week. Upgrade to Premium to unlock.'**
  String get unlockWeeklyReportsMessage;

  /// No description provided for @maybeLater.
  ///
  /// In en, this message translates to:
  /// **'Maybe later'**
  String get maybeLater;

  /// No description provided for @upgrade.
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get upgrade;

  /// No description provided for @weeklyReportTitle.
  ///
  /// In en, this message translates to:
  /// **'Weekly Report'**
  String get weeklyReportTitle;

  /// No description provided for @weeklyReportsPremiumTitle.
  ///
  /// In en, this message translates to:
  /// **'Weekly reports are a Premium feature'**
  String get weeklyReportsPremiumTitle;

  /// No description provided for @weeklyReportsPremiumMessage.
  ///
  /// In en, this message translates to:
  /// **'See your sober days, mood trends, cravings, and personalized AI feedback every week.'**
  String get weeklyReportsPremiumMessage;

  /// No description provided for @upgradeToPremium.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Premium'**
  String get upgradeToPremium;

  /// No description provided for @couldNotGenerateReport.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t generate your report right now.'**
  String get couldNotGenerateReport;

  /// No description provided for @tryAgainLower.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgainLower;

  /// No description provided for @statSoberDays.
  ///
  /// In en, this message translates to:
  /// **'Sober days'**
  String get statSoberDays;

  /// No description provided for @statAvgMood.
  ///
  /// In en, this message translates to:
  /// **'Avg mood'**
  String get statAvgMood;

  /// No description provided for @statCravings.
  ///
  /// In en, this message translates to:
  /// **'Cravings'**
  String get statCravings;

  /// No description provided for @statMoneySaved.
  ///
  /// In en, this message translates to:
  /// **'Money saved'**
  String get statMoneySaved;

  /// No description provided for @coachFeedback.
  ///
  /// In en, this message translates to:
  /// **'Coach feedback'**
  String get coachFeedback;

  /// No description provided for @journalInsights.
  ///
  /// In en, this message translates to:
  /// **'Journal insights'**
  String get journalInsights;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @question1Title.
  ///
  /// In en, this message translates to:
  /// **'What is your goal?'**
  String get question1Title;

  /// No description provided for @question1Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose the goal that matter\nmost to you'**
  String get question1Subtitle;

  /// No description provided for @goalQuitCompletely.
  ///
  /// In en, this message translates to:
  /// **'Quit Completely'**
  String get goalQuitCompletely;

  /// No description provided for @goalReduceDrinking.
  ///
  /// In en, this message translates to:
  /// **'Reduce drinking'**
  String get goalReduceDrinking;

  /// No description provided for @goalTakeABreak.
  ///
  /// In en, this message translates to:
  /// **'Take a break'**
  String get goalTakeABreak;

  /// No description provided for @goalBuildHealthierHabits.
  ///
  /// In en, this message translates to:
  /// **'Build healthier habits'**
  String get goalBuildHealthierHabits;

  /// No description provided for @question3Title.
  ///
  /// In en, this message translates to:
  /// **'Tell us about your\nroutine.'**
  String get question3Title;

  /// No description provided for @drinksPerWeek.
  ///
  /// In en, this message translates to:
  /// **'Drinks per week'**
  String get drinksPerWeek;

  /// No description provided for @moneySpentPerWeek.
  ///
  /// In en, this message translates to:
  /// **'Money spent per week'**
  String get moneySpentPerWeek;

  /// No description provided for @drinkingLevel.
  ///
  /// In en, this message translates to:
  /// **'Drinking level'**
  String get drinkingLevel;

  /// No description provided for @triggersLabel.
  ///
  /// In en, this message translates to:
  /// **'Triggers'**
  String get triggersLabel;

  /// No description provided for @levelSocial.
  ///
  /// In en, this message translates to:
  /// **'Social'**
  String get levelSocial;

  /// No description provided for @levelRegular.
  ///
  /// In en, this message translates to:
  /// **'Regular'**
  String get levelRegular;

  /// No description provided for @levelHeavy.
  ///
  /// In en, this message translates to:
  /// **'Heavy'**
  String get levelHeavy;

  /// No description provided for @levelDependent.
  ///
  /// In en, this message translates to:
  /// **'Dependent'**
  String get levelDependent;

  /// No description provided for @triggerStress.
  ///
  /// In en, this message translates to:
  /// **'Stress'**
  String get triggerStress;

  /// No description provided for @triggerLoneliness.
  ///
  /// In en, this message translates to:
  /// **'Loneliness'**
  String get triggerLoneliness;

  /// No description provided for @triggerHabit.
  ///
  /// In en, this message translates to:
  /// **'Habit'**
  String get triggerHabit;

  /// No description provided for @triggerSadness.
  ///
  /// In en, this message translates to:
  /// **'Sadness'**
  String get triggerSadness;

  /// No description provided for @triggerAnger.
  ///
  /// In en, this message translates to:
  /// **'Anger'**
  String get triggerAnger;

  /// No description provided for @triggerBoredom.
  ///
  /// In en, this message translates to:
  /// **'Boredom'**
  String get triggerBoredom;

  /// No description provided for @triggerSocialPressure.
  ///
  /// In en, this message translates to:
  /// **'Social pressure'**
  String get triggerSocialPressure;

  /// No description provided for @triggerCelebration.
  ///
  /// In en, this message translates to:
  /// **'Celebration'**
  String get triggerCelebration;

  /// No description provided for @triggerSleepProblems.
  ///
  /// In en, this message translates to:
  /// **'Sleep problems'**
  String get triggerSleepProblems;

  /// No description provided for @triggerWorkPressure.
  ///
  /// In en, this message translates to:
  /// **'Work pressure'**
  String get triggerWorkPressure;

  /// No description provided for @question4Title.
  ///
  /// In en, this message translates to:
  /// **'Why do you want to change?'**
  String get question4Title;

  /// No description provided for @question4Subtitle.
  ///
  /// In en, this message translates to:
  /// **'Your reason will help to motivate you.'**
  String get question4Subtitle;

  /// No description provided for @reasonImproveHealth.
  ///
  /// In en, this message translates to:
  /// **'Improve My Health'**
  String get reasonImproveHealth;

  /// No description provided for @reasonSaveMoney.
  ///
  /// In en, this message translates to:
  /// **'Save Money'**
  String get reasonSaveMoney;

  /// No description provided for @reasonFamily.
  ///
  /// In en, this message translates to:
  /// **'Family'**
  String get reasonFamily;

  /// No description provided for @reasonBetterSleep.
  ///
  /// In en, this message translates to:
  /// **'Better Sleep'**
  String get reasonBetterSleep;

  /// No description provided for @reasonMentalClarity.
  ///
  /// In en, this message translates to:
  /// **'Mental Clarity'**
  String get reasonMentalClarity;

  /// No description provided for @reasonFitness.
  ///
  /// In en, this message translates to:
  /// **'Fitness'**
  String get reasonFitness;

  /// No description provided for @reasonSelfRespect.
  ///
  /// In en, this message translates to:
  /// **'Self Respect'**
  String get reasonSelfRespect;

  /// No description provided for @reasonCareer.
  ///
  /// In en, this message translates to:
  /// **'Career'**
  String get reasonCareer;

  /// No description provided for @milestoneUnlockedLabel.
  ///
  /// In en, this message translates to:
  /// **'MILESTONE UNLOCKED'**
  String get milestoneUnlockedLabel;

  /// No description provided for @incredibleNamePrefix.
  ///
  /// In en, this message translates to:
  /// **'Incredible, {name}!'**
  String incredibleNamePrefix(String name);

  /// No description provided for @amountSavedLabel.
  ///
  /// In en, this message translates to:
  /// **'{amount} saved'**
  String amountSavedLabel(String amount);

  /// No description provided for @drinksAvoidedLabel.
  ///
  /// In en, this message translates to:
  /// **'{count} avoided'**
  String drinksAvoidedLabel(String count);

  /// No description provided for @shareMyMilestone.
  ///
  /// In en, this message translates to:
  /// **'Share my milestone'**
  String get shareMyMilestone;

  /// No description provided for @milestoneImageShareError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t create the milestone image. Please try again.'**
  String get milestoneImageShareError;

  /// No description provided for @dailyCheckInTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily Check-in'**
  String get dailyCheckInTitle;

  /// No description provided for @howAreYouFeelingToday.
  ///
  /// In en, this message translates to:
  /// **'How are you feeling today?'**
  String get howAreYouFeelingToday;

  /// No description provided for @honestAnswerHelp.
  ///
  /// In en, this message translates to:
  /// **'Your honest answer helps us support you better'**
  String get honestAnswerHelp;

  /// No description provided for @didYouDrinkToday.
  ///
  /// In en, this message translates to:
  /// **'Did you drink today?'**
  String get didYouDrinkToday;

  /// No description provided for @noLabel.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get noLabel;

  /// No description provided for @yesLabel.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yesLabel;

  /// No description provided for @cravingLevelNow.
  ///
  /// In en, this message translates to:
  /// **'Craving level right now?'**
  String get cravingLevelNow;

  /// No description provided for @anythingOnMind.
  ///
  /// In en, this message translates to:
  /// **'Anything on your mind?'**
  String get anythingOnMind;

  /// No description provided for @optionalLabel.
  ///
  /// In en, this message translates to:
  /// **'(optional)'**
  String get optionalLabel;

  /// No description provided for @dailyNoteHint.
  ///
  /// In en, this message translates to:
  /// **'Write about your day, triggers, wins...'**
  String get dailyNoteHint;

  /// No description provided for @alreadyCheckedInToday.
  ///
  /// In en, this message translates to:
  /// **'Already checked in today'**
  String get alreadyCheckedInToday;

  /// No description provided for @saveCheckIn.
  ///
  /// In en, this message translates to:
  /// **'Save check-in'**
  String get saveCheckIn;

  /// No description provided for @checkInsHelpTrack.
  ///
  /// In en, this message translates to:
  /// **'Check-ins help track your progress over time'**
  String get checkInsHelpTrack;

  /// No description provided for @alreadyCompletedTodayCheckIn.
  ///
  /// In en, this message translates to:
  /// **'You have already completed today\'s check-in.'**
  String get alreadyCompletedTodayCheckIn;

  /// No description provided for @pleaseAnswerBothQuestions.
  ///
  /// In en, this message translates to:
  /// **'Please answer both questions above first'**
  String get pleaseAnswerBothQuestions;

  /// No description provided for @checkInSaved.
  ///
  /// In en, this message translates to:
  /// **'Check-in saved'**
  String get checkInSaved;

  /// No description provided for @cravingNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get cravingNone;

  /// No description provided for @cravingLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get cravingLow;

  /// No description provided for @cravingMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get cravingMedium;

  /// No description provided for @cravingStrong.
  ///
  /// In en, this message translates to:
  /// **'Strong'**
  String get cravingStrong;

  /// No description provided for @moodBad.
  ///
  /// In en, this message translates to:
  /// **'Bad'**
  String get moodBad;

  /// No description provided for @moodLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get moodLow;

  /// No description provided for @moodGreat.
  ///
  /// In en, this message translates to:
  /// **'Great'**
  String get moodGreat;

  /// No description provided for @sosSupportTitle.
  ///
  /// In en, this message translates to:
  /// **'SOS support'**
  String get sosSupportTitle;

  /// No description provided for @notAloneMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'re not alone, {name}'**
  String notAloneMessage(String name);

  /// No description provided for @cravingsPassMessage.
  ///
  /// In en, this message translates to:
  /// **'Cravings pass. Pick something below to help you through this moment.'**
  String get cravingsPassMessage;

  /// No description provided for @breathingExercise.
  ///
  /// In en, this message translates to:
  /// **'Breathing Exercise'**
  String get breathingExercise;

  /// No description provided for @breathingExerciseSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Guided 4-7-8 technique, 2 minutes'**
  String get breathingExerciseSubtitle;

  /// No description provided for @rideTheWave.
  ///
  /// In en, this message translates to:
  /// **'Ride the Wave'**
  String get rideTheWave;

  /// No description provided for @rideTheWaveSubtitle.
  ///
  /// In en, this message translates to:
  /// **'15 min timer — cravings always pass'**
  String get rideTheWaveSubtitle;

  /// No description provided for @copingTips.
  ///
  /// In en, this message translates to:
  /// **'Coping tips'**
  String get copingTips;

  /// No description provided for @copingTipsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Personalized strategies for your triggers'**
  String get copingTipsSubtitle;

  /// No description provided for @talkToAiCoach.
  ///
  /// In en, this message translates to:
  /// **'Talk to AI coach'**
  String get talkToAiCoach;

  /// No description provided for @talkToAiCoachSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Chat with your recovery companion'**
  String get talkToAiCoachSubtitle;

  /// No description provided for @callSomeone.
  ///
  /// In en, this message translates to:
  /// **'Call someone'**
  String get callSomeone;

  /// No description provided for @callSomeoneSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Reach your trusted contact'**
  String get callSomeoneSubtitle;

  /// No description provided for @contactsPermissionNeeded.
  ///
  /// In en, this message translates to:
  /// **'Contacts permission is needed to call a contact.'**
  String get contactsPermissionNeeded;

  /// No description provided for @beatenCravingsPrefix.
  ///
  /// In en, this message translates to:
  /// **'You\'ve beaten cravings '**
  String get beatenCravingsPrefix;

  /// No description provided for @beatenCravingsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} times'**
  String beatenCravingsCount(int count);

  /// No description provided for @beatenCravingsSuffix.
  ///
  /// In en, this message translates to:
  /// **' before. You can do it again.'**
  String get beatenCravingsSuffix;

  /// No description provided for @tellUsAboutYourself.
  ///
  /// In en, this message translates to:
  /// **'Tell Us About Yourself'**
  String get tellUsAboutYourself;

  /// No description provided for @detailsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'This information helps us personalize your recovery journey and provide accurate insights.'**
  String get detailsSubtitle;

  /// No description provided for @nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// No description provided for @nameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Alex Rivers'**
  String get nameHint;

  /// No description provided for @ageLabel.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get ageLabel;

  /// No description provided for @ageHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., 32'**
  String get ageHint;

  /// No description provided for @sexAssignedAtBirth.
  ///
  /// In en, this message translates to:
  /// **'Sex assigned at birth'**
  String get sexAssignedAtBirth;

  /// No description provided for @sexFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get sexFemale;

  /// No description provided for @sexMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get sexMale;

  /// No description provided for @heightLabel.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get heightLabel;

  /// No description provided for @weightLabel.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weightLabel;

  /// No description provided for @heightHint.
  ///
  /// In en, this message translates to:
  /// **'170'**
  String get heightHint;

  /// No description provided for @weightHint.
  ///
  /// In en, this message translates to:
  /// **'70'**
  String get weightHint;

  /// No description provided for @dailyLimitReachedTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily limit reached'**
  String get dailyLimitReachedTitle;

  /// No description provided for @dailyLimitReachedMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used all {limit} free messages today. Upgrade to Premium for unlimited coach chat.'**
  String dailyLimitReachedMessage(int limit);

  /// No description provided for @coachConnectError.
  ///
  /// In en, this message translates to:
  /// **'I couldn\'t connect right now. Please try again in a moment.'**
  String get coachConnectError;

  /// No description provided for @clearConversationTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear conversation?'**
  String get clearConversationTitle;

  /// No description provided for @clearConversationMessage.
  ///
  /// In en, this message translates to:
  /// **'This will permanently remove your coach chat history.'**
  String get clearConversationMessage;

  /// No description provided for @clearLabel.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clearLabel;

  /// No description provided for @recoveryCoachTitle.
  ///
  /// In en, this message translates to:
  /// **'Recovery coach'**
  String get recoveryCoachTitle;

  /// No description provided for @onlineLabel.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get onlineLabel;

  /// No description provided for @clearConversationMenuItem.
  ///
  /// In en, this message translates to:
  /// **'Clear conversation'**
  String get clearConversationMenuItem;

  /// No description provided for @chatGreeting.
  ///
  /// In en, this message translates to:
  /// **'Hi {name} 👋'**
  String chatGreeting(String name);

  /// No description provided for @chatDaysIntro.
  ///
  /// In en, this message translates to:
  /// **'You\'re on day {days} of your journey. I\'m here whenever you want to talk things through.'**
  String chatDaysIntro(int days);

  /// No description provided for @quickPromptsLabel.
  ///
  /// In en, this message translates to:
  /// **'QUICK PROMPTS'**
  String get quickPromptsLabel;

  /// No description provided for @promptCravingLabel.
  ///
  /// In en, this message translates to:
  /// **'Having a craving'**
  String get promptCravingLabel;

  /// No description provided for @promptCravingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get grounded, fast'**
  String get promptCravingSubtitle;

  /// No description provided for @promptMotivationLabel.
  ///
  /// In en, this message translates to:
  /// **'Need motivation'**
  String get promptMotivationLabel;

  /// No description provided for @promptMotivationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A boost when it\'s tough'**
  String get promptMotivationSubtitle;

  /// No description provided for @promptSocialLabel.
  ///
  /// In en, this message translates to:
  /// **'Social situation'**
  String get promptSocialLabel;

  /// No description provided for @promptSocialSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Navigate a gathering'**
  String get promptSocialSubtitle;

  /// No description provided for @promptSlippedLabel.
  ///
  /// In en, this message translates to:
  /// **'I slipped'**
  String get promptSlippedLabel;

  /// No description provided for @promptSlippedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'No judgment, just support'**
  String get promptSlippedSubtitle;

  /// No description provided for @typeMessageHint.
  ///
  /// In en, this message translates to:
  /// **'Type a message...'**
  String get typeMessageHint;

  /// No description provided for @editProfileTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfileTitle;

  /// No description provided for @couldNotSaveProfile.
  ///
  /// In en, this message translates to:
  /// **'Could not save profile: {error}'**
  String couldNotSaveProfile(String error);

  /// No description provided for @heightCmLabel.
  ///
  /// In en, this message translates to:
  /// **'Height (cm)'**
  String get heightCmLabel;

  /// No description provided for @weightKgLabel.
  ///
  /// In en, this message translates to:
  /// **'Weight (kg)'**
  String get weightKgLabel;

  /// No description provided for @saveChangesLabel.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChangesLabel;

  /// No description provided for @premiumBadgeLabel.
  ///
  /// In en, this message translates to:
  /// **'PREMIUM'**
  String get premiumBadgeLabel;

  /// No description provided for @featureAdvancedInsights.
  ///
  /// In en, this message translates to:
  /// **'Advanced Insights & Analytics'**
  String get featureAdvancedInsights;

  /// No description provided for @featureUnlimitedJournal.
  ///
  /// In en, this message translates to:
  /// **'Unlimited Journal Entries'**
  String get featureUnlimitedJournal;

  /// No description provided for @featureUnlimitedChat.
  ///
  /// In en, this message translates to:
  /// **'Unlimited Chat with AI Coach'**
  String get featureUnlimitedChat;

  /// No description provided for @featureCommunityGroups.
  ///
  /// In en, this message translates to:
  /// **'Exclusive Community Groups'**
  String get featureCommunityGroups;

  /// No description provided for @featurePrioritySupport.
  ///
  /// In en, this message translates to:
  /// **'Priority Expert Support'**
  String get featurePrioritySupport;

  /// No description provided for @featureThemePacks.
  ///
  /// In en, this message translates to:
  /// **'Custom Theme Packs'**
  String get featureThemePacks;

  /// No description provided for @featureDataExport.
  ///
  /// In en, this message translates to:
  /// **'Data Export'**
  String get featureDataExport;

  /// No description provided for @featureAdFree.
  ///
  /// In en, this message translates to:
  /// **'Ad-Free Experience'**
  String get featureAdFree;

  /// No description provided for @premiumMemberTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'re a Premium Member'**
  String get premiumMemberTitle;

  /// No description provided for @unlockFullRecoveryTitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock Your Full Recovery\nExperience'**
  String get unlockFullRecoveryTitle;

  /// No description provided for @premiumMemberSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Thanks for supporting your recovery journey — every premium feature below is unlocked.'**
  String get premiumMemberSubtitle;

  /// No description provided for @premiumJoinSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Join a community of thousands who are\naccelerating their healing journey with our\npremium tools and personalized support.'**
  String get premiumJoinSubtitle;

  /// No description provided for @monthlyPlanLabel.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthlyPlanLabel;

  /// No description provided for @perMonthSuffix.
  ///
  /// In en, this message translates to:
  /// **'/mo'**
  String get perMonthSuffix;

  /// No description provided for @cancelAnytimeLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel anytime'**
  String get cancelAnytimeLabel;

  /// No description provided for @yearlyPlanLabel.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get yearlyPlanLabel;

  /// No description provided for @billedAnnuallyLabel.
  ///
  /// In en, this message translates to:
  /// **'Billed annually at {amount}'**
  String billedAnnuallyLabel(String amount);

  /// No description provided for @bestValueLabel.
  ///
  /// In en, this message translates to:
  /// **'Best Value'**
  String get bestValueLabel;

  /// No description provided for @alreadyPremiumLabel.
  ///
  /// In en, this message translates to:
  /// **'You\'re Premium ✓'**
  String get alreadyPremiumLabel;

  /// No description provided for @startPremiumLabel.
  ///
  /// In en, this message translates to:
  /// **'Start Premium'**
  String get startPremiumLabel;

  /// No description provided for @manageSubscriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Manage or cancel from your device\'s subscription settings.'**
  String get manageSubscriptionLabel;

  /// No description provided for @noCommitmentLabel.
  ///
  /// In en, this message translates to:
  /// **'No commitment. Cancel anytime.'**
  String get noCommitmentLabel;

  /// No description provided for @continueFreePlanLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue with Free Plan'**
  String get continueFreePlanLabel;

  /// No description provided for @backToHomeLabel.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get backToHomeLabel;

  /// No description provided for @cancelPremiumLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel Premium'**
  String get cancelPremiumLabel;

  /// No description provided for @cancelPremiumTitle.
  ///
  /// In en, this message translates to:
  /// **'Cancel Premium?'**
  String get cancelPremiumTitle;

  /// No description provided for @cancelPremiumMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'ll lose access to unlimited journal entries, unlimited coach chat, stats insights, and weekly reports. You can re-subscribe anytime.'**
  String get cancelPremiumMessage;

  /// No description provided for @keepPremiumLabel.
  ///
  /// In en, this message translates to:
  /// **'Keep Premium'**
  String get keepPremiumLabel;

  /// No description provided for @nowPremiumMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'re now Premium! Enjoy your full recovery experience.'**
  String get nowPremiumMessage;

  /// No description provided for @premiumCancelledMessage.
  ///
  /// In en, this message translates to:
  /// **'Premium cancelled. You\'re back on the free plan.'**
  String get premiumCancelledMessage;

  /// No description provided for @termsOfUseLabel.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUseLabel;

  /// No description provided for @navHomeLabel.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHomeLabel;

  /// No description provided for @navStatsLabel.
  ///
  /// In en, this message translates to:
  /// **'Stats'**
  String get navStatsLabel;

  /// No description provided for @navJournalLabel.
  ///
  /// In en, this message translates to:
  /// **'Journal'**
  String get navJournalLabel;

  /// No description provided for @navBadgesLabel.
  ///
  /// In en, this message translates to:
  /// **'Badges'**
  String get navBadgesLabel;

  /// No description provided for @navProfileLabel.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfileLabel;

  /// No description provided for @recoveryGoalsTitle.
  ///
  /// In en, this message translates to:
  /// **'Recovery Goals'**
  String get recoveryGoalsTitle;

  /// No description provided for @drinksPerWeekLabel.
  ///
  /// In en, this message translates to:
  /// **'Drinks per week'**
  String get drinksPerWeekLabel;

  /// No description provided for @quitReasonsLabel.
  ///
  /// In en, this message translates to:
  /// **'Quit reasons'**
  String get quitReasonsLabel;

  /// No description provided for @quitReasonsHelperText.
  ///
  /// In en, this message translates to:
  /// **'Separate multiple reasons with a comma.'**
  String get quitReasonsHelperText;

  /// No description provided for @couldNotSaveRecoveryGoals.
  ///
  /// In en, this message translates to:
  /// **'Could not save recovery goals: {error}'**
  String couldNotSaveRecoveryGoals(String error);

  /// No description provided for @goalHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Complete Abstinence'**
  String get goalHint;

  /// No description provided for @drinksPerWeekHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., 12'**
  String get drinksPerWeekHint;

  /// No description provided for @quitReasonsHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Health, Family, Money'**
  String get quitReasonsHint;

  /// No description provided for @todaysPrompt.
  ///
  /// In en, this message translates to:
  /// **'Today\'s prompt'**
  String get todaysPrompt;

  /// No description provided for @defaultJournalPrompt.
  ///
  /// In en, this message translates to:
  /// **'What\'s on your mind today?'**
  String get defaultJournalPrompt;

  /// No description provided for @aiJournalInsights.
  ///
  /// In en, this message translates to:
  /// **'AI journal insights'**
  String get aiJournalInsights;

  /// No description provided for @unlockJournalInsightsMessage.
  ///
  /// In en, this message translates to:
  /// **'Unlock weekly patterns, mood trends, and personalized insights from your journal entries.'**
  String get unlockJournalInsightsMessage;

  /// No description provided for @notEnoughJournalData.
  ///
  /// In en, this message translates to:
  /// **'Not enough data yet — write a few entries this week and check back.'**
  String get notEnoughJournalData;

  /// No description provided for @openEntry.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get openEntry;

  /// No description provided for @editEntry.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get editEntry;

  /// No description provided for @deleteEntry.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteEntry;

  /// No description provided for @searchJournalEntries.
  ///
  /// In en, this message translates to:
  /// **'Search entries...'**
  String get searchJournalEntries;

  /// No description provided for @writeNewEntry.
  ///
  /// In en, this message translates to:
  /// **'Write new entry'**
  String get writeNewEntry;

  /// No description provided for @recentEntries.
  ///
  /// In en, this message translates to:
  /// **'Recent Entries'**
  String get recentEntries;

  /// No description provided for @noJournalEntriesYet.
  ///
  /// In en, this message translates to:
  /// **'No journal entries yet — write your first reflection above.'**
  String get noJournalEntriesYet;

  /// No description provided for @noEntriesMatchFilters.
  ///
  /// In en, this message translates to:
  /// **'No entries match your filters.'**
  String get noEntriesMatchFilters;

  /// No description provided for @weeklyJournalLimitReached.
  ///
  /// In en, this message translates to:
  /// **'Weekly limit reached'**
  String get weeklyJournalLimitReached;

  /// No description provided for @weeklyJournalLimitMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used all {limit} free journal entries this week. Upgrade to Premium for unlimited entries.'**
  String weeklyJournalLimitMessage(int limit);

  /// No description provided for @newEntry.
  ///
  /// In en, this message translates to:
  /// **'New entry'**
  String get newEntry;

  /// No description provided for @writeYourThoughts.
  ///
  /// In en, this message translates to:
  /// **'Write your thoughts'**
  String get writeYourThoughts;

  /// No description provided for @saveEntry.
  ///
  /// In en, this message translates to:
  /// **'Save Entry'**
  String get saveEntry;

  /// No description provided for @freeEntriesLeftThisWeek.
  ///
  /// In en, this message translates to:
  /// **'{remaining} of {limit} free entries left this week'**
  String freeEntriesLeftThisWeek(String remaining, String limit);

  /// No description provided for @deleteEntryQuestion.
  ///
  /// In en, this message translates to:
  /// **'Delete entry?'**
  String get deleteEntryQuestion;

  /// No description provided for @deleteEntryConfirmation.
  ///
  /// In en, this message translates to:
  /// **'This entry will be permanently deleted. This can\'t be undone.'**
  String get deleteEntryConfirmation;

  /// No description provided for @journalEntryNotFound.
  ///
  /// In en, this message translates to:
  /// **'Entry not found'**
  String get journalEntryNotFound;

  /// No description provided for @journalEntryMayHaveBeenDeleted.
  ///
  /// In en, this message translates to:
  /// **'This journal entry may have been deleted.'**
  String get journalEntryMayHaveBeenDeleted;

  /// No description provided for @goBack.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get goBack;

  /// No description provided for @journalEntryTitle.
  ///
  /// In en, this message translates to:
  /// **'Journal Entry'**
  String get journalEntryTitle;

  /// No description provided for @moodStruggling.
  ///
  /// In en, this message translates to:
  /// **'Struggling'**
  String get moodStruggling;

  /// No description provided for @moodUnwell.
  ///
  /// In en, this message translates to:
  /// **'Unwell'**
  String get moodUnwell;

  /// No description provided for @moodNeutral.
  ///
  /// In en, this message translates to:
  /// **'Neutral'**
  String get moodNeutral;

  /// No description provided for @whatHappenedToday.
  ///
  /// In en, this message translates to:
  /// **'What happened today?'**
  String get whatHappenedToday;

  /// No description provided for @trigger.
  ///
  /// In en, this message translates to:
  /// **'Trigger'**
  String get trigger;

  /// No description provided for @whatHelped.
  ///
  /// In en, this message translates to:
  /// **'What helped'**
  String get whatHelped;

  /// No description provided for @whatIllTryNextTime.
  ///
  /// In en, this message translates to:
  /// **'What I\'ll try next time'**
  String get whatIllTryNextTime;

  /// No description provided for @journalPrivacyMessage.
  ///
  /// In en, this message translates to:
  /// **'Your reflection is private and saved in your journal.'**
  String get journalPrivacyMessage;

  /// No description provided for @unlocked.
  ///
  /// In en, this message translates to:
  /// **'Unlocked'**
  String get unlocked;

  /// No description provided for @daysLeft.
  ///
  /// In en, this message translates to:
  /// **'{count} day{count, plural, =1{} other{s}} left'**
  String daysLeft(int count);

  /// No description provided for @daysCount.
  ///
  /// In en, this message translates to:
  /// **'{count} Days'**
  String daysCount(int count);

  /// No description provided for @firstReflection.
  ///
  /// In en, this message translates to:
  /// **'First\nReflection'**
  String get firstReflection;

  /// No description provided for @oneJournalEntry.
  ///
  /// In en, this message translates to:
  /// **'1 Journal Entry'**
  String get oneJournalEntry;

  /// No description provided for @openBook.
  ///
  /// In en, this message translates to:
  /// **'Open Book'**
  String get openBook;

  /// No description provided for @tenJournalEntries.
  ///
  /// In en, this message translates to:
  /// **'10 Journal Entries'**
  String get tenJournalEntries;

  /// No description provided for @dedicatedWriter.
  ///
  /// In en, this message translates to:
  /// **'Dedicated\nWriter'**
  String get dedicatedWriter;

  /// No description provided for @thirtyJournalEntries.
  ///
  /// In en, this message translates to:
  /// **'30 Journal Entries'**
  String get thirtyJournalEntries;

  /// No description provided for @firstConversation.
  ///
  /// In en, this message translates to:
  /// **'First\nConversation'**
  String get firstConversation;

  /// No description provided for @oneAiCoachChat.
  ///
  /// In en, this message translates to:
  /// **'1 AI Coach Chat'**
  String get oneAiCoachChat;

  /// No description provided for @keepTalking.
  ///
  /// In en, this message translates to:
  /// **'Keep Talking'**
  String get keepTalking;

  /// No description provided for @fiveConversations.
  ///
  /// In en, this message translates to:
  /// **'5 Conversations'**
  String get fiveConversations;

  /// No description provided for @coachCompanion.
  ///
  /// In en, this message translates to:
  /// **'Coach\nCompanion'**
  String get coachCompanion;

  /// No description provided for @twentyConversations.
  ///
  /// In en, this message translates to:
  /// **'20 Conversations'**
  String get twentyConversations;

  /// No description provided for @checkInHabit.
  ///
  /// In en, this message translates to:
  /// **'Check-In\nHabit'**
  String get checkInHabit;

  /// No description provided for @sevenCheckIns.
  ///
  /// In en, this message translates to:
  /// **'7 Check-Ins'**
  String get sevenCheckIns;

  /// No description provided for @consistencyPro.
  ///
  /// In en, this message translates to:
  /// **'Consistency\nPro'**
  String get consistencyPro;

  /// No description provided for @thirtyCheckIns.
  ///
  /// In en, this message translates to:
  /// **'30 Check-Ins'**
  String get thirtyCheckIns;

  /// No description provided for @dedicatedJourney.
  ///
  /// In en, this message translates to:
  /// **'Dedicated\nJourney'**
  String get dedicatedJourney;

  /// No description provided for @hundredCheckIns.
  ///
  /// In en, this message translates to:
  /// **'100 Check-Ins'**
  String get hundredCheckIns;

  /// No description provided for @goalGetter.
  ///
  /// In en, this message translates to:
  /// **'Goal Getter'**
  String get goalGetter;

  /// No description provided for @threeGoalsCompleted.
  ///
  /// In en, this message translates to:
  /// **'3 Goals Completed'**
  String get threeGoalsCompleted;

  /// No description provided for @goalAchiever.
  ///
  /// In en, this message translates to:
  /// **'Goal\nAchiever'**
  String get goalAchiever;

  /// No description provided for @tenGoalsCompleted.
  ///
  /// In en, this message translates to:
  /// **'10 Goals Completed'**
  String get tenGoalsCompleted;

  /// No description provided for @firstSavings.
  ///
  /// In en, this message translates to:
  /// **'First\nSavings'**
  String get firstSavings;

  /// No description provided for @fiveHundredSaved.
  ///
  /// In en, this message translates to:
  /// **'\$500 Saved'**
  String get fiveHundredSaved;

  /// No description provided for @smartSaver.
  ///
  /// In en, this message translates to:
  /// **'Smart Saver'**
  String get smartSaver;

  /// No description provided for @oneThousandSaved.
  ///
  /// In en, this message translates to:
  /// **'\$1,000 Saved'**
  String get oneThousandSaved;

  /// No description provided for @bigSaver.
  ///
  /// In en, this message translates to:
  /// **'Big Saver'**
  String get bigSaver;

  /// No description provided for @fiveThousandSaved.
  ///
  /// In en, this message translates to:
  /// **'\$5,000 Saved'**
  String get fiveThousandSaved;

  /// No description provided for @currencyProgress.
  ///
  /// In en, this message translates to:
  /// **'\${current} of \${target}'**
  String currencyProgress(String current, String target);

  /// No description provided for @countProgress.
  ///
  /// In en, this message translates to:
  /// **'{current} of {target}'**
  String countProgress(int current, int target);

  /// No description provided for @firstMilestoneWaiting.
  ///
  /// In en, this message translates to:
  /// **'Keep going — your first milestone is waiting for you!'**
  String get firstMilestoneWaiting;

  /// No description provided for @badgesAndMilestones.
  ///
  /// In en, this message translates to:
  /// **'Badges & Milestones'**
  String get badgesAndMilestones;

  /// No description provided for @yourMilestoneJourney.
  ///
  /// In en, this message translates to:
  /// **'Your Milestone Journey'**
  String get yourMilestoneJourney;

  /// No description provided for @milestonesAchieved.
  ///
  /// In en, this message translates to:
  /// **'{count} milestone{count, plural, =1{} other{s}} achieved.\nTap to view'**
  String milestonesAchieved(int count);

  /// No description provided for @unlockedMilestonesMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'ve unlocked {unlocked} of {total} milestones on your journey.'**
  String unlockedMilestonesMessage(int unlocked, int total);

  /// No description provided for @remaining.
  ///
  /// In en, this message translates to:
  /// **'Remaining'**
  String get remaining;

  /// No description provided for @complete.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get complete;

  /// No description provided for @nextMilestone.
  ///
  /// In en, this message translates to:
  /// **'Next Milestone'**
  String get nextMilestone;

  /// No description provided for @percentThere.
  ///
  /// In en, this message translates to:
  /// **'{subtitle} · {percent}% there'**
  String percentThere(String subtitle, int percent);

  /// No description provided for @sobrietyMilestones.
  ///
  /// In en, this message translates to:
  /// **'Sobriety Milestones'**
  String get sobrietyMilestones;

  /// No description provided for @journeyBadges.
  ///
  /// In en, this message translates to:
  /// **'Journey Badges'**
  String get journeyBadges;

  /// No description provided for @bronze.
  ///
  /// In en, this message translates to:
  /// **'BRONZE'**
  String get bronze;

  /// No description provided for @silver.
  ///
  /// In en, this message translates to:
  /// **'SILVER'**
  String get silver;

  /// No description provided for @gold.
  ///
  /// In en, this message translates to:
  /// **'GOLD'**
  String get gold;

  /// No description provided for @platinum.
  ///
  /// In en, this message translates to:
  /// **'PLATINUM'**
  String get platinum;

  /// No description provided for @diamond.
  ///
  /// In en, this message translates to:
  /// **'DIAMOND'**
  String get diamond;

  /// No description provided for @analyzingYourJourney.
  ///
  /// In en, this message translates to:
  /// **'Analyzing Your Journey...'**
  String get analyzingYourJourney;

  /// No description provided for @aiCreatingSanctuary.
  ///
  /// In en, this message translates to:
  /// **'Our AI is creating your personalized sanctuary.'**
  String get aiCreatingSanctuary;

  /// No description provided for @understandingHabits.
  ///
  /// In en, this message translates to:
  /// **'Understanding habits...'**
  String get understandingHabits;

  /// No description provided for @calculatingBaseline.
  ///
  /// In en, this message translates to:
  /// **'Calculating your baseline...'**
  String get calculatingBaseline;

  /// No description provided for @personalizingPlan.
  ///
  /// In en, this message translates to:
  /// **'Personalizing your plan...'**
  String get personalizingPlan;

  /// No description provided for @finalizingSanctuary.
  ///
  /// In en, this message translates to:
  /// **'Finalizing your sanctuary...'**
  String get finalizingSanctuary;

  /// No description provided for @creatingYourPlan.
  ///
  /// In en, this message translates to:
  /// **'Creating your plan...'**
  String get creatingYourPlan;

  /// No description provided for @personalizedPlanError.
  ///
  /// In en, this message translates to:
  /// **'We could not create your personalized plan. Please try again.'**
  String get personalizedPlanError;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @breathInhale.
  ///
  /// In en, this message translates to:
  /// **'INHALE'**
  String get breathInhale;

  /// No description provided for @breathHold.
  ///
  /// In en, this message translates to:
  /// **'HOLD'**
  String get breathHold;

  /// No description provided for @breathExhale.
  ///
  /// In en, this message translates to:
  /// **'EXHALE'**
  String get breathExhale;

  /// No description provided for @breathDone.
  ///
  /// In en, this message translates to:
  /// **'DONE'**
  String get breathDone;

  /// No description provided for @breathGreatJob.
  ///
  /// In en, this message translates to:
  /// **'Great job!'**
  String get breathGreatJob;

  /// No description provided for @breathSessionsToday.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{{count} session today} other{{count} sessions today}}'**
  String breathSessionsToday(int count);

  /// No description provided for @endExercise.
  ///
  /// In en, this message translates to:
  /// **'End Exercise'**
  String get endExercise;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @noCopingTipsYet.
  ///
  /// In en, this message translates to:
  /// **'No coping tips yet'**
  String get noCopingTipsYet;

  /// No description provided for @copingStrategiesWillAppear.
  ///
  /// In en, this message translates to:
  /// **'Your personalized coping strategies will show up here once your recovery plan finishes generating.'**
  String get copingStrategiesWillAppear;

  /// No description provided for @strategiesTailoredToTriggers.
  ///
  /// In en, this message translates to:
  /// **'Strategies tailored to your triggers'**
  String get strategiesTailoredToTriggers;

  /// No description provided for @cravingsPeakAndPass.
  ///
  /// In en, this message translates to:
  /// **'Cravings peak\nand pass'**
  String get cravingsPeakAndPass;

  /// No description provided for @rideTheWaveDescription.
  ///
  /// In en, this message translates to:
  /// **'Most cravings pass within 15 minutes. You don\'t have to act on it — just ride it out with us.'**
  String get rideTheWaveDescription;

  /// No description provided for @stayWithIt.
  ///
  /// In en, this message translates to:
  /// **'stay with it'**
  String get stayWithIt;

  /// No description provided for @youMadeIt.
  ///
  /// In en, this message translates to:
  /// **'you made it'**
  String get youMadeIt;

  /// No description provided for @readyWhenYouAre.
  ///
  /// In en, this message translates to:
  /// **'ready when you are'**
  String get readyWhenYouAre;

  /// No description provided for @rideItAgain.
  ///
  /// In en, this message translates to:
  /// **'Ride it again'**
  String get rideItAgain;

  /// No description provided for @start15MinuteTimer.
  ///
  /// In en, this message translates to:
  /// **'Start 15-Minute Timer'**
  String get start15MinuteTimer;

  /// No description provided for @rideTheWaveCompletedMessage.
  ///
  /// In en, this message translates to:
  /// **'You rode the wave. That\'s real strength. 💪'**
  String get rideTheWaveCompletedMessage;

  /// No description provided for @myProgress.
  ///
  /// In en, this message translates to:
  /// **'My Progress'**
  String get myProgress;

  /// No description provided for @weekLabel.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get weekLabel;

  /// No description provided for @monthLabel.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get monthLabel;

  /// No description provided for @allLabel.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get allLabel;

  /// No description provided for @daysSoberStatLabel.
  ///
  /// In en, this message translates to:
  /// **'Days\nsober'**
  String get daysSoberStatLabel;

  /// No description provided for @savedStatLabel.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get savedStatLabel;

  /// No description provided for @avoidedStatLabel.
  ///
  /// In en, this message translates to:
  /// **'Avoided'**
  String get avoidedStatLabel;

  /// No description provided for @moodTrends.
  ///
  /// In en, this message translates to:
  /// **'Mood trends'**
  String get moodTrends;

  /// No description provided for @cravingsPattern.
  ///
  /// In en, this message translates to:
  /// **'Cravings pattern'**
  String get cravingsPattern;

  /// No description provided for @unlockLabel.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlockLabel;

  /// No description provided for @unlockFullStats.
  ///
  /// In en, this message translates to:
  /// **'Unlock full stats'**
  String get unlockFullStats;

  /// No description provided for @premiumStatsMessage.
  ///
  /// In en, this message translates to:
  /// **'Mood trends and craving patterns are Premium features. Upgrade to see your full stats.'**
  String get premiumStatsMessage;

  /// No description provided for @healthMilestonesWillAppear.
  ///
  /// In en, this message translates to:
  /// **'Your health milestones will appear here.'**
  String get healthMilestonesWillAppear;

  /// No description provided for @healthMilestones.
  ///
  /// In en, this message translates to:
  /// **'Health milestones'**
  String get healthMilestones;

  /// No description provided for @dayNumber.
  ///
  /// In en, this message translates to:
  /// **'Day {day}'**
  String dayNumber(int day);

  /// No description provided for @soberLabel.
  ///
  /// In en, this message translates to:
  /// **'Sober'**
  String get soberLabel;

  /// No description provided for @slipLabel.
  ///
  /// In en, this message translates to:
  /// **'Slip'**
  String get slipLabel;

  /// No description provided for @noDataLabel.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get noDataLabel;

  /// No description provided for @milestone24Hours.
  ///
  /// In en, this message translates to:
  /// **'24 Hours'**
  String get milestone24Hours;

  /// No description provided for @milestoneOneWeek.
  ///
  /// In en, this message translates to:
  /// **'One Week'**
  String get milestoneOneWeek;

  /// No description provided for @milestoneOneMonth.
  ///
  /// In en, this message translates to:
  /// **'One Month'**
  String get milestoneOneMonth;

  /// No description provided for @milestoneThreeMonths.
  ///
  /// In en, this message translates to:
  /// **'Three Months'**
  String get milestoneThreeMonths;

  /// No description provided for @milestoneSixMonths.
  ///
  /// In en, this message translates to:
  /// **'Six Months'**
  String get milestoneSixMonths;

  /// No description provided for @milestoneOneYear.
  ///
  /// In en, this message translates to:
  /// **'One Year'**
  String get milestoneOneYear;

  /// No description provided for @milestoneDayCount.
  ///
  /// In en, this message translates to:
  /// **'Day {day} Milestone'**
  String milestoneDayCount(int day);

  /// Button to dismiss the paywall dialog without upgrading
  ///
  /// In en, this message translates to:
  /// **'Maybe later'**
  String get maybeLaterLabel;

  /// Generic cancel button label
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelLabel;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'am',
    'ar',
    'az',
    'be',
    'bg',
    'bn',
    'ca',
    'cs',
    'da',
    'de',
    'en',
    'es',
    'et',
    'eu',
    'fa',
    'fi',
    'fil',
    'fr',
    'gl',
    'gu',
    'he',
    'hi',
    'hr',
    'hu',
    'hy',
    'id',
    'is',
    'it',
    'ja',
    'ka',
    'kk',
    'km',
    'kn',
    'ko',
    'ky',
    'lo',
    'lt',
    'lv',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'my',
    'nb',
    'ne',
    'nl',
    'pl',
    'rm',
    'ro',
    'ru',
    'si',
    'sk',
    'sl',
    'sq',
    'sr',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'ur',
    'vi',
    'zh',
    'zu',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ky':
      return AppLocalizationsKy();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'my':
      return AppLocalizationsMy();
    case 'nb':
      return AppLocalizationsNb();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'rm':
      return AppLocalizationsRm();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
