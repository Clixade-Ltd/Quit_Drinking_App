// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get skip => 'Pomiń';

  @override
  String get continueButton => 'Kontynuuj';

  @override
  String get getStarted => 'Zacznij';

  @override
  String get onboardingTitle1 => 'Przejmij kontrolę nad swoim życiem';

  @override
  String get onboardingSubtitle1 =>
      'Śledź swoją drogę, świętuj każde osiągnięcie i z każdym dniem stawaj się zdrowszy.';

  @override
  String get onboardingTitle2 => 'Twój AI-owy towarzysz zdrowienia';

  @override
  String get onboardingSubtitle2 =>
      'Otrzymuj spersonalizowane wskazówki, zdrowe nawyki, przypomnienia motywacyjne i raporty postępów dopasowane do Twojej drogi.';

  @override
  String get goodMorning => 'Dzień dobry';

  @override
  String get goodAfternoon => 'Dzień dobry';

  @override
  String get goodEvening => 'Dobry wieczór';

  @override
  String get goodNight => 'Dobranoc';

  @override
  String get embracingClarity => 'Odzyskuj jasność umysłu, dzień po dniu.';

  @override
  String get streakLabel => 'SERIA';

  @override
  String get goalLabel => 'CEL';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dni',
      many: '$count dni',
      few: '$count dni',
      one: '$count dzień',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Plan Premium';

  @override
  String get premiumPlanSubtitle => 'Odblokuj pełne doświadczenie zdrowienia';

  @override
  String get accountAndSupport => 'KONTO I WSPARCIE';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get privacyPolicySubtitle =>
      'Zarządzaj udostępnianiem danych i bezpieczeństwem konta';

  @override
  String get termsOfService => 'Warunki korzystania z usługi';

  @override
  String get termsOfServiceSubtitle => 'FAQ, kontakt i zasoby';

  @override
  String get shareApp => 'Udostępnij aplikację';

  @override
  String get shareAppSubtitle => 'Udostępnij aplikację znajomym';

  @override
  String get resetData => 'Zresetuj dane';

  @override
  String get resetDataSubtitle => 'Usuń wszystko zapisane na tym urządzeniu';

  @override
  String get resetAllDataTitle => 'Zresetować wszystkie dane?';

  @override
  String get resetAllDataMessage =>
      'Spowoduje to usunięcie wszystkiego zapisanego na tym urządzeniu — profilu, wpisów w dzienniku i postępów — i nie można tego cofnąć.';

  @override
  String get cancel => 'Anuluj';

  @override
  String get reset => 'Resetuj';

  @override
  String get chooseFromGallery => 'Wybierz z galerii';

  @override
  String get takePhoto => 'Zrób zdjęcie';

  @override
  String get removePhoto => 'Usuń zdjęcie';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Nie udało się zaktualizować zdjęcia: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Nie udało się usunąć zdjęcia: $error';
  }

  @override
  String get photoTooLarge =>
      'To zdjęcie jest zbyt duże nawet po kompresji — spróbuj wybrać inne.';

  @override
  String get unableToLoadProfile => 'Nie można załadować Twojego profilu';

  @override
  String get pleaseTryAgain => 'Spróbuj ponownie.';

  @override
  String get tryAgain => 'Spróbuj ponownie';

  @override
  String get profileNotFound => 'Nie znaleziono profilu';

  @override
  String get refresh => 'Odśwież';

  @override
  String get noProfileDataFound =>
      'Na tym urządzeniu nie znaleziono jeszcze danych profilu.';

  @override
  String couldNotResetData(String error) {
    return 'Nie udało się zresetować danych: $error';
  }

  @override
  String get navHome => 'Start';

  @override
  String get navStats => 'Statystyki';

  @override
  String get navJournal => 'Dziennik';

  @override
  String get navBadges => 'Odznaki';

  @override
  String get navProfile => 'Profil';

  @override
  String featureComingSoon(String feature) {
    return '$feature będzie wkrótce dostępne.';
  }

  @override
  String get appWordmark => 'ZDROWIE';

  @override
  String get appTitle => 'Rzuć picie';

  @override
  String get splashSubtitle =>
      'Zrób pierwszy krok w stronę\nżycia bez alkoholu';

  @override
  String get preparingJourney => 'Przygotowywanie\nTwojej drogi';

  @override
  String get taskMorningMeditation => 'Poranna medytacja (10 min)';

  @override
  String get taskReadChapter => 'Przeczytaj rozdział 4 „The Sober Diaries”';

  @override
  String get taskEveningJournal => 'Wieczorny dziennik wdzięczności';

  @override
  String get close => 'Zamknij';

  @override
  String get youAreDoingGreat => 'Świetnie Ci idzie!';

  @override
  String get shareMilestone => 'Udostępnij kamień milowy';

  @override
  String shareMilestoneMessage(int days) {
    return 'Jestem w $days. dniu mojej drogi do zdrowienia! 💪';
  }

  @override
  String get shareMilestoneSubject =>
      'Mój kamień milowy na drodze do zdrowienia';

  @override
  String get weeklyReportReadyTitle => 'Twój tygodniowy raport jest gotowy';

  @override
  String get weeklyReportReadySubtitle =>
      'Dotknij, aby zobaczyć, jak minął Twój tydzień';

  @override
  String get howAreYouFeeling => 'Jak się czujesz?';

  @override
  String get moodTough => 'Ciężko';

  @override
  String get moodOkay => 'W porządku';

  @override
  String get moodGood => 'Dobrze';

  @override
  String get moneySaved => 'Zaoszczędzone pieniądze';

  @override
  String get caloriesSaved => 'Zaoszczędzone kalorie';

  @override
  String get healthScore => 'Wynik zdrowia';

  @override
  String get drinksAvoided => 'Uniknięte drinki';

  @override
  String get estimated => 'Szacunkowo';

  @override
  String get aiGenerated => 'Wygenerowane przez AI';

  @override
  String get daysCapsLabel => 'DNI';

  @override
  String get todaysMotivation => 'Dzisiejsza motywacja';

  @override
  String get defaultMotivationQuote =>
      'Z powodzeniem dotrzymujesz swojego postanowienia. Kontynuuj tę falę pozytywnych zmian.';

  @override
  String get talkToCoach => 'Porozmawiaj z trenerem';

  @override
  String get havingACraving => 'Mam ochotę się napić';

  @override
  String get unlockWeeklyReportsTitle => 'Odblokuj raporty tygodniowe';

  @override
  String get unlockWeeklyReportsMessage =>
      'Co tydzień sprawdzaj dni bez alkoholu, trendy nastroju i spersonalizowane opinie AI. Przejdź na Premium, aby je odblokować.';

  @override
  String get maybeLater => 'Może później';

  @override
  String get upgrade => 'Ulepsz';

  @override
  String get weeklyReportTitle => 'Raport tygodniowy';

  @override
  String get weeklyReportsPremiumTitle =>
      'Raporty tygodniowe są funkcją Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Co tydzień sprawdzaj dni bez alkoholu, trendy nastroju, głód alkoholu i spersonalizowane opinie AI.';

  @override
  String get upgradeToPremium => 'Przejdź na Premium';

  @override
  String get couldNotGenerateReport =>
      'Nie udało się teraz wygenerować raportu.';

  @override
  String get tryAgainLower => 'Spróbuj ponownie';

  @override
  String get statSoberDays => 'Dni bez alkoholu';

  @override
  String get statAvgMood => 'Śr. nastrój';

  @override
  String get statCravings => 'Głód alkoholu';

  @override
  String get statMoneySaved => 'Zaoszczędzone';

  @override
  String get coachFeedback => 'Opinia trenera';

  @override
  String get journalInsights => 'Wnioski z dziennika';

  @override
  String get next => 'Dalej';

  @override
  String get question1Title => 'Jaki jest Twój cel?';

  @override
  String get question1Subtitle =>
      'Wybierz cel, który ma dla Ciebie\nnajwiększe znaczenie';

  @override
  String get goalQuitCompletely => 'Całkowicie przestać pić';

  @override
  String get goalReduceDrinking => 'Ograniczyć picie';

  @override
  String get goalTakeABreak => 'Zrobić przerwę';

  @override
  String get goalBuildHealthierHabits => 'Wypracować zdrowsze nawyki';

  @override
  String get question3Title => 'Opowiedz nam o swojej\nrutynie';

  @override
  String get drinksPerWeek => 'Drinków tygodniowo';

  @override
  String get moneySpentPerWeek => 'Wydatki tygodniowe';

  @override
  String get drinkingLevel => 'Poziom picia';

  @override
  String get triggersLabel => 'Wyzwalacze';

  @override
  String get levelSocial => 'Towarzyski';

  @override
  String get levelRegular => 'Regularny';

  @override
  String get levelHeavy => 'Duży';

  @override
  String get levelDependent => 'Uzależniony';

  @override
  String get triggerStress => 'Stres';

  @override
  String get triggerLoneliness => 'Samotność';

  @override
  String get triggerHabit => 'Nawyk';

  @override
  String get triggerSadness => 'Smutek';

  @override
  String get triggerAnger => 'Złość';

  @override
  String get triggerBoredom => 'Nuda';

  @override
  String get triggerSocialPressure => 'Presja społeczna';

  @override
  String get triggerCelebration => 'Świętowanie';

  @override
  String get triggerSleepProblems => 'Problemy ze snem';

  @override
  String get triggerWorkPressure => 'Presja w pracy';

  @override
  String get question4Title => 'Dlaczego chcesz się zmienić?';

  @override
  String get question4Subtitle => 'Twój powód pomoże Ci zachować motywację.';

  @override
  String get reasonImproveHealth => 'Poprawić zdrowie';

  @override
  String get reasonSaveMoney => 'Oszczędzać pieniądze';

  @override
  String get reasonFamily => 'Rodzina';

  @override
  String get reasonBetterSleep => 'Lepszy sen';

  @override
  String get reasonMentalClarity => 'Jasność umysłu';

  @override
  String get reasonFitness => 'Kondycja';

  @override
  String get reasonSelfRespect => 'Szacunek do siebie';

  @override
  String get reasonCareer => 'Kariera';

  @override
  String get milestoneUnlockedLabel => 'KAMIEŃ MILOWY ODBLOKOWANY';

  @override
  String incredibleNamePrefix(String name) {
    return 'Niesamowicie, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return 'Zaoszczędzono $amount';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return 'Uniknięto $count';
  }

  @override
  String get shareMyMilestone => 'Udostępnij mój kamień milowy';

  @override
  String get milestoneImageShareError =>
      'Nie udało się utworzyć obrazu kamienia milowego. Spróbuj ponownie.';

  @override
  String get dailyCheckInTitle => 'Codzienne zameldowanie';

  @override
  String get howAreYouFeelingToday => 'Jak się dzisiaj czujesz?';

  @override
  String get honestAnswerHelp =>
      'Szczera odpowiedź pomoże nam lepiej Cię wspierać';

  @override
  String get didYouDrinkToday => 'Czy dzisiaj piłeś/piłaś?';

  @override
  String get noLabel => 'Nie';

  @override
  String get yesLabel => 'Tak';

  @override
  String get cravingLevelNow => 'Jak silna jest teraz ochota na alkohol?';

  @override
  String get anythingOnMind => 'Czy coś chodzi Ci po głowie?';

  @override
  String get optionalLabel => '(opcjonalne)';

  @override
  String get dailyNoteHint => 'Napisz o swoim dniu, wyzwalaczach, sukcesach...';

  @override
  String get alreadyCheckedInToday =>
      'Dzisiejsze zameldowanie zostało już wykonane';

  @override
  String get saveCheckIn => 'Zapisz zameldowanie';

  @override
  String get checkInsHelpTrack =>
      'Codzienne zameldowania pomagają śledzić postępy w czasie';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Dzisiejsze zameldowanie zostało już wykonane.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Najpierw odpowiedz na oba powyższe pytania';

  @override
  String get checkInSaved => 'Zameldowanie zapisane';

  @override
  String get cravingNone => 'Brak';

  @override
  String get cravingLow => 'Niska';

  @override
  String get cravingMedium => 'Średnia';

  @override
  String get cravingStrong => 'Silna';

  @override
  String get moodBad => 'Źle';

  @override
  String get moodLow => 'Słabo';

  @override
  String get moodGreat => 'Świetnie';

  @override
  String get sosSupportTitle => 'Wsparcie SOS';

  @override
  String notAloneMessage(String name) {
    return 'Nie jesteś sam/a, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Ochota mija. Wybierz coś poniżej, co pomoże Ci przetrwać ten moment.';

  @override
  String get breathingExercise => 'Ćwiczenie oddechowe';

  @override
  String get breathingExerciseSubtitle => 'Prowadzona technika 4-7-8, 2 minuty';

  @override
  String get rideTheWave => 'Przeczekaj falę';

  @override
  String get rideTheWaveSubtitle => '15-minutowy timer — ochota zawsze mija';

  @override
  String get copingTips => 'Wskazówki radzenia sobie';

  @override
  String get copingTipsSubtitle =>
      'Spersonalizowane strategie dla Twoich wyzwalaczy';

  @override
  String get talkToAiCoach => 'Porozmawiaj z trenerem AI';

  @override
  String get talkToAiCoachSubtitle =>
      'Porozmawiaj ze swoim towarzyszem zdrowienia';

  @override
  String get callSomeone => 'Zadzwoń do kogoś';

  @override
  String get callSomeoneSubtitle => 'Skontaktuj się z zaufaną osobą';

  @override
  String get contactsPermissionNeeded =>
      'Do połączenia z kontaktem potrzebne jest pozwolenie na dostęp do kontaktów.';

  @override
  String get beatenCravingsPrefix => 'Pokonałeś/pokonałaś ochotę ';

  @override
  String beatenCravingsCount(int count) {
    return '$count razy';
  }

  @override
  String get beatenCravingsSuffix => ' wcześniej. Możesz zrobić to ponownie.';

  @override
  String get tellUsAboutYourself => 'Opowiedz nam o sobie';

  @override
  String get detailsSubtitle =>
      'Te informacje pomogą nam spersonalizować Twoją drogę do zdrowienia i dostarczyć dokładnych informacji.';

  @override
  String get nameLabel => 'Imię';

  @override
  String get nameHint => 'np. Alex Rivers';

  @override
  String get ageLabel => 'Wiek';

  @override
  String get ageHint => 'np. 32';

  @override
  String get sexAssignedAtBirth => 'Płeć przypisana przy urodzeniu';

  @override
  String get sexFemale => 'Kobieta';

  @override
  String get sexMale => 'Mężczyzna';

  @override
  String get heightLabel => 'Wzrost';

  @override
  String get weightLabel => 'Waga';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Osiągnięto dzienny limit';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Wykorzystałeś/wykorzystałaś wszystkie $limit bezpłatnych wiadomości na dziś. Przejdź na Premium, aby korzystać z nieograniczonego czatu z trenerem.';
  }

  @override
  String get coachConnectError =>
      'Nie udało mi się teraz połączyć. Spróbuj ponownie za chwilę.';

  @override
  String get clearConversationTitle => 'Wyczyścić rozmowę?';

  @override
  String get clearConversationMessage =>
      'Historia rozmów z trenerem zostanie trwale usunięta.';

  @override
  String get clearLabel => 'Wyczyść';

  @override
  String get recoveryCoachTitle => 'Trener zdrowienia';

  @override
  String get onlineLabel => 'Online';

  @override
  String get clearConversationMenuItem => 'Wyczyść rozmowę';

  @override
  String chatGreeting(String name) {
    return 'Cześć $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Jesteś w $days. dniu swojej drogi. Jestem tutaj, gdy tylko zechcesz porozmawiać.';
  }

  @override
  String get quickPromptsLabel => 'SZYBKIE PROMPTY';

  @override
  String get promptCravingLabel => 'Mam ochotę się napić';

  @override
  String get promptCravingSubtitle => 'Szybko odzyskaj spokój';

  @override
  String get promptMotivationLabel => 'Potrzebuję motywacji';

  @override
  String get promptMotivationSubtitle => 'Wsparcie, gdy jest trudno';

  @override
  String get promptSocialLabel => 'Sytuacja towarzyska';

  @override
  String get promptSocialSubtitle => 'Poradź sobie ze spotkaniem';

  @override
  String get promptSlippedLabel => 'Zdarzył mi się poślizg';

  @override
  String get promptSlippedSubtitle => 'Bez oceniania, tylko wsparcie';

  @override
  String get typeMessageHint => 'Wpisz wiadomość...';

  @override
  String get editProfileTitle => 'Edytuj profil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Nie udało się zapisać profilu: $error';
  }

  @override
  String get heightCmLabel => 'Wzrost (cm)';

  @override
  String get weightKgLabel => 'Waga (kg)';

  @override
  String get saveChangesLabel => 'Zapisz zmiany';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Zaawansowane analizy i statystyki';

  @override
  String get featureUnlimitedJournal =>
      'Nieograniczona liczba wpisów w dzienniku';

  @override
  String get featureUnlimitedChat => 'Nieograniczony czat z trenerem AI';

  @override
  String get featureCommunityGroups => 'Ekskluzywne grupy społecznościowe';

  @override
  String get featurePrioritySupport => 'Priorytetowe wsparcie ekspertów';

  @override
  String get featureThemePacks => 'Niestandardowe pakiety motywów';

  @override
  String get featureDataExport => 'Eksport danych';

  @override
  String get featureAdFree => 'Doświadczenie bez reklam';

  @override
  String get premiumMemberTitle => 'Jesteś członkiem Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Odblokuj pełne doświadczenie\nzdrowienia';

  @override
  String get premiumMemberSubtitle =>
      'Dziękujemy za wsparcie Twojej drogi do zdrowienia — wszystkie poniższe funkcje Premium są odblokowane.';

  @override
  String get premiumJoinSubtitle =>
      'Dołącz do tysięcy osób, które\nprzyspieszają swoją drogę do zdrowienia dzięki naszym\nnarzędziom Premium i spersonalizowanemu wsparciu.';

  @override
  String get monthlyPlanLabel => 'Miesięczny';

  @override
  String get perMonthSuffix => '/mies.';

  @override
  String get cancelAnytimeLabel => 'Anuluj w dowolnym momencie';

  @override
  String get yearlyPlanLabel => 'Roczny';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Rozliczane rocznie w kwocie $amount';
  }

  @override
  String get bestValueLabel => 'Najlepsza oferta';

  @override
  String get alreadyPremiumLabel => 'Masz Premium ✓';

  @override
  String get startPremiumLabel => 'Rozpocznij Premium';

  @override
  String get manageSubscriptionLabel =>
      'Zarządzaj subskrypcją lub anuluj ją w ustawieniach subskrypcji urządzenia.';

  @override
  String get noCommitmentLabel => 'Bez zobowiązań. Anuluj w dowolnym momencie.';

  @override
  String get continueFreePlanLabel => 'Kontynuuj z planem bezpłatnym';

  @override
  String get backToHomeLabel => 'Wróć do strony głównej';

  @override
  String get cancelPremiumLabel => 'Anuluj Premium';

  @override
  String get cancelPremiumTitle => 'Anulować Premium?';

  @override
  String get cancelPremiumMessage =>
      'Stracisz dostęp do nieograniczonego dziennika, nieograniczonego czatu z trenerem, statystyk i raportów tygodniowych. W każdej chwili możesz ponownie wykupić subskrypcję.';

  @override
  String get keepPremiumLabel => 'Zachowaj Premium';

  @override
  String get nowPremiumMessage =>
      'Masz teraz Premium! Ciesz się pełnym doświadczeniem zdrowienia.';

  @override
  String get premiumCancelledMessage =>
      'Premium anulowane. Powróciłeś/powróciłaś do planu bezpłatnego.';

  @override
  String get termsOfUseLabel => 'Warunki użytkowania';

  @override
  String get navHomeLabel => 'Start';

  @override
  String get navStatsLabel => 'Statystyki';

  @override
  String get navJournalLabel => 'Dziennik';

  @override
  String get navBadgesLabel => 'Odznaki';

  @override
  String get navProfileLabel => 'Profil';

  @override
  String get recoveryGoalsTitle => 'Cele zdrowienia';

  @override
  String get drinksPerWeekLabel => 'Drinków tygodniowo';

  @override
  String get quitReasonsLabel => 'Powody rzucenia picia';

  @override
  String get quitReasonsHelperText => 'Oddziel wiele powodów przecinkami.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Nie udało się zapisać celów zdrowienia: $error';
  }

  @override
  String get goalHint => 'np. Całkowita abstynencja';

  @override
  String get drinksPerWeekHint => 'np. 12';

  @override
  String get quitReasonsHint => 'np. Zdrowie, Rodzina, Pieniądze';

  @override
  String get todaysPrompt => 'Dzisiejsze pytanie';

  @override
  String get defaultJournalPrompt => 'Co masz dziś na myśli?';

  @override
  String get aiJournalInsights => 'Wnioski AI z dziennika';

  @override
  String get unlockJournalInsightsMessage =>
      'Odblokuj tygodniowe wzorce, trendy nastroju i spersonalizowane wnioski z wpisów w dzienniku.';

  @override
  String get notEnoughJournalData =>
      'Jeszcze za mało danych — napisz kilka wpisów w tym tygodniu i sprawdź ponownie.';

  @override
  String get openEntry => 'Otwórz';

  @override
  String get editEntry => 'Edytuj';

  @override
  String get deleteEntry => 'Usuń';

  @override
  String get searchJournalEntries => 'Szukaj wpisów...';

  @override
  String get writeNewEntry => 'Napisz nowy wpis';

  @override
  String get recentEntries => 'Najnowsze wpisy';

  @override
  String get noJournalEntriesYet =>
      'Brak wpisów w dzienniku — napisz swoją pierwszą refleksję powyżej.';

  @override
  String get noEntriesMatchFilters => 'Żadne wpisy nie pasują do filtrów.';

  @override
  String get weeklyJournalLimitReached => 'Osiągnięto tygodniowy limit';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Wykorzystałeś/wykorzystałaś wszystkie $limit bezpłatnych wpisów w tym tygodniu. Przejdź na Premium, aby uzyskać nieograniczoną liczbę wpisów.';
  }

  @override
  String get newEntry => 'Nowy wpis';

  @override
  String get writeYourThoughts => 'Zapisz swoje myśli';

  @override
  String get saveEntry => 'Zapisz wpis';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Pozostało $remaining z $limit bezpłatnych wpisów w tym tygodniu';
  }

  @override
  String get deleteEntryQuestion => 'Usunąć wpis?';

  @override
  String get deleteEntryConfirmation =>
      'Ten wpis zostanie trwale usunięty. Tej operacji nie można cofnąć.';

  @override
  String get journalEntryNotFound => 'Nie znaleziono wpisu';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Ten wpis w dzienniku mógł zostać usunięty.';

  @override
  String get goBack => 'Wróć';

  @override
  String get journalEntryTitle => 'Wpis w dzienniku';

  @override
  String get moodStruggling => 'Zmagam się';

  @override
  String get moodUnwell => 'Źle się czuję';

  @override
  String get moodNeutral => 'Neutralnie';

  @override
  String get whatHappenedToday => 'Co wydarzyło się dzisiaj?';

  @override
  String get trigger => 'Wyzwalacz';

  @override
  String get whatHelped => 'Co pomogło';

  @override
  String get whatIllTryNextTime => 'Co spróbuję następnym razem';

  @override
  String get journalPrivacyMessage =>
      'Twoja refleksja jest prywatna i zapisana w Twoim dzienniku.';

  @override
  String get unlocked => 'Odblokowane';

  @override
  String daysLeft(int count) {
    return 'Pozostał $count dzień';
  }

  @override
  String daysCount(int count) {
    return '$count dni';
  }

  @override
  String get firstReflection => 'Pierwsza\nrefleksja';

  @override
  String get oneJournalEntry => '1 wpis w dzienniku';

  @override
  String get openBook => 'Otwórz książkę';

  @override
  String get tenJournalEntries => '10 wpisów w dzienniku';

  @override
  String get dedicatedWriter => 'Zaangażowany\npisarz';

  @override
  String get thirtyJournalEntries => '30 wpisów w dzienniku';

  @override
  String get firstConversation => 'Pierwsza\nrozmowa';

  @override
  String get oneAiCoachChat => '1 czat z trenerem AI';

  @override
  String get keepTalking => 'Rozmawiaj dalej';

  @override
  String get fiveConversations => '5 rozmów';

  @override
  String get coachCompanion => 'Towarzysz\ntrenera';

  @override
  String get twentyConversations => '20 rozmów';

  @override
  String get checkInHabit => 'Nawyk\nmeldowania';

  @override
  String get sevenCheckIns => '7 zameldowań';

  @override
  String get consistencyPro => 'Mistrz\nkonsekwencji';

  @override
  String get thirtyCheckIns => '30 zameldowań';

  @override
  String get dedicatedJourney => 'Zaangażowana\ndroga';

  @override
  String get hundredCheckIns => '100 zameldowań';

  @override
  String get goalGetter => 'Zdobywca celów';

  @override
  String get threeGoalsCompleted => '3 ukończone cele';

  @override
  String get goalAchiever => 'Osiągający\ncele';

  @override
  String get tenGoalsCompleted => '10 ukończonych celów';

  @override
  String get firstSavings => 'Pierwsze\noszczędności';

  @override
  String get fiveHundredSaved => 'Zaoszczędzono 500 \$';

  @override
  String get smartSaver => 'Sprytny oszczędzający';

  @override
  String get oneThousandSaved => 'Zaoszczędzono 1000 \$';

  @override
  String get bigSaver => 'Wielki oszczędzający';

  @override
  String get fiveThousandSaved => 'Zaoszczędzono 5000 \$';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current z \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current z $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Działaj dalej — Twój pierwszy kamień milowy czeka!';

  @override
  String get badgesAndMilestones => 'Odznaki i kamienie milowe';

  @override
  String get yourMilestoneJourney => 'Twoja droga kamieni milowych';

  @override
  String milestonesAchieved(int count) {
    return 'Osiągnięto $count kamień milowy.\nDotknij, aby zobaczyć';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Odblokowano $unlocked z $total kamieni milowych na Twojej drodze.';
  }

  @override
  String get remaining => 'Pozostało';

  @override
  String get complete => 'Ukończono';

  @override
  String get nextMilestone => 'Następny kamień milowy';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% drogi';
  }

  @override
  String get sobrietyMilestones => 'Kamienie milowe trzeźwości';

  @override
  String get journeyBadges => 'Odznaki drogi';

  @override
  String get bronze => 'BRĄZ';

  @override
  String get silver => 'SREBRO';

  @override
  String get gold => 'ZŁOTO';

  @override
  String get platinum => 'PLATYNA';

  @override
  String get diamond => 'DIAMENT';

  @override
  String get analyzingYourJourney => 'Analizowanie Twojej drogi...';

  @override
  String get aiCreatingSanctuary =>
      'Nasza AI tworzy Twoją spersonalizowaną przestrzeń zdrowienia.';

  @override
  String get understandingHabits => 'Analizowanie nawyków...';

  @override
  String get calculatingBaseline => 'Obliczanie Twojego poziomu bazowego...';

  @override
  String get personalizingPlan => 'Personalizowanie planu...';

  @override
  String get finalizingSanctuary =>
      'Finalizowanie Twojej przestrzeni zdrowienia...';

  @override
  String get creatingYourPlan => 'Tworzenie Twojego planu...';

  @override
  String get personalizedPlanError =>
      'Nie udało się utworzyć Twojego spersonalizowanego planu. Spróbuj ponownie.';

  @override
  String get retry => 'Spróbuj ponownie';

  @override
  String get breathInhale => 'WDECH';

  @override
  String get breathHold => 'WSTRZYMAJ';

  @override
  String get breathExhale => 'WYDECH';

  @override
  String get breathDone => 'GOTOWE';

  @override
  String get breathGreatJob => 'Świetna robota!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesji dzisiaj',
      many: '$count sesji dzisiaj',
      few: '$count sesje dzisiaj',
      one: '$count sesja dzisiaj',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Zakończ ćwiczenie';

  @override
  String get done => 'Gotowe';

  @override
  String get noCopingTipsYet => 'Brak wskazówek dotyczących radzenia sobie';

  @override
  String get copingStrategiesWillAppear =>
      'Twoje spersonalizowane strategie radzenia sobie pojawią się tutaj po zakończeniu tworzenia planu zdrowienia.';

  @override
  String get strategiesTailoredToTriggers =>
      'Strategie dopasowane do Twoich wyzwalaczy';

  @override
  String get cravingsPeakAndPass => 'Ochota osiąga szczyt\ni mija';

  @override
  String get rideTheWaveDescription =>
      'Większość zachcianek mija w ciągu 15 minut. Nie musisz na nią reagować — po prostu przeczekaj ją razem z nami.';

  @override
  String get stayWithIt => 'wytrzymaj';

  @override
  String get youMadeIt => 'udało się';

  @override
  String get readyWhenYouAre => 'kiedy będziesz gotowy/a';

  @override
  String get rideItAgain => 'Przeczekaj ponownie';

  @override
  String get start15MinuteTimer => 'Uruchom 15-minutowy timer';

  @override
  String get rideTheWaveCompletedMessage =>
      'Przeczekałeś/przeczekałaś falę. To prawdziwa siła. 💪';

  @override
  String get myProgress => 'Moje postępy';

  @override
  String get weekLabel => 'Tydzień';

  @override
  String get monthLabel => 'Miesiąc';

  @override
  String get allLabel => 'Wszystko';

  @override
  String get daysSoberStatLabel => 'Dni\nbez alkoholu';

  @override
  String get savedStatLabel => 'Zaoszczędzone';

  @override
  String get avoidedStatLabel => 'Uniknięte';

  @override
  String get moodTrends => 'Trendy nastroju';

  @override
  String get cravingsPattern => 'Wzorzec zachcianek';

  @override
  String get unlockLabel => 'Odblokuj';

  @override
  String get unlockFullStats => 'Odblokuj pełne statystyki';

  @override
  String get premiumStatsMessage =>
      'Trendy nastroju i wzorce zachcianek są funkcjami Premium. Przejdź na Premium, aby zobaczyć pełne statystyki.';

  @override
  String get healthMilestonesWillAppear =>
      'Twoje kamienie milowe zdrowia pojawią się tutaj.';

  @override
  String get healthMilestones => 'Kamienie milowe zdrowia';

  @override
  String dayNumber(int day) {
    return 'Dzień $day';
  }

  @override
  String get soberLabel => 'Bez alkoholu';

  @override
  String get slipLabel => 'Poślizg';

  @override
  String get noDataLabel => 'Brak danych';

  @override
  String get milestone24Hours => '24 godziny';

  @override
  String get milestoneOneWeek => 'Tydzień';

  @override
  String get milestoneOneMonth => 'Miesiąc';

  @override
  String get milestoneThreeMonths => 'Trzy miesiące';

  @override
  String get milestoneSixMonths => 'Sześć miesięcy';

  @override
  String get milestoneOneYear => 'Rok';

  @override
  String milestoneDayCount(int day) {
    return 'Kamień milowy — dzień $day';
  }

  @override
  String get maybeLaterLabel => 'Może później';

  @override
  String get cancelLabel => 'Anuluj';
}
