// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get skip => 'Omitir';

  @override
  String get continueButton => 'Continuar';

  @override
  String get getStarted => 'Comezar';

  @override
  String get onboardingTitle1 => 'Toma o control da túa vida';

  @override
  String get onboardingSubtitle1 =>
      'Rastrexa a túa traxectoria, celebra cada logro e mellora a túa saúde día a día.';

  @override
  String get onboardingTitle2 => 'O teu compañeiro de recuperación por IA';

  @override
  String get onboardingSubtitle2 =>
      'Recibe orientación personalizada, hábitos saudables, lembretes de motivación e informes de progreso deseñados para a túa traxectoria.';

  @override
  String get goodMorning => 'Boas mañás';

  @override
  String get goodAfternoon => 'Boas tardes';

  @override
  String get goodEvening => 'Boas tardes';

  @override
  String get goodNight => 'Boas noites';

  @override
  String get embracingClarity => 'Acolllendo a claridade, un día á vez.';

  @override
  String get streakLabel => 'RACHA';

  @override
  String get goalLabel => 'Obxectivo';

  @override
  String daysStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '$count día',
    );
    return '$_temp0';
  }

  @override
  String get premiumPlan => 'Plan Premium';

  @override
  String get premiumPlanSubtitle =>
      'Desbloquea a experiencia completa de recuperación';

  @override
  String get accountAndSupport => 'CONTA E SOPORTE';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get privacyPolicySubtitle =>
      'Xestiona a compartición de datos e a seguridade da conta';

  @override
  String get termsOfService => 'Termos do servizo';

  @override
  String get termsOfServiceSubtitle =>
      'Preguntas frecuentes, contacto e recursos';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String get shareAppSubtitle => 'Comparte a aplicación cos teus amigos';

  @override
  String get resetData => 'Restablecer datos';

  @override
  String get resetDataSubtitle => 'Elimina todo o gardado neste dispositivo';

  @override
  String get resetAllDataTitle => 'Restablecer todos os datos?';

  @override
  String get resetAllDataMessage =>
      'Isto borrará todo o gardado neste dispositivo (perfil, entradas do diario e progreso) e non se pode desfacer.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get reset => 'Restablecer';

  @override
  String get chooseFromGallery => 'Escoller da galería';

  @override
  String get takePhoto => 'Sacar foto';

  @override
  String get removePhoto => 'Eliminar foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'Non se puido actualizar a foto: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'Non se puido eliminar a foto: $error';
  }

  @override
  String get photoTooLarge =>
      'Esa foto é demasiado grande incluso despois de comprimila; proba con outra.';

  @override
  String get unableToLoadProfile => 'Non se puido cargar o teu perfil';

  @override
  String get pleaseTryAgain => 'Por favor, téntao de novo.';

  @override
  String get tryAgain => 'Tentar de novo';

  @override
  String get profileNotFound => 'Perfil non atopado';

  @override
  String get refresh => 'Actualizar';

  @override
  String get noProfileDataFound =>
      'Aínda non se atoparon datos do perfil neste dispositivo.';

  @override
  String couldNotResetData(String error) {
    return 'Non se puideron restablecer os datos: $error';
  }

  @override
  String get navHome => 'Inicio';

  @override
  String get navStats => 'Estatísticas';

  @override
  String get navJournal => 'Diario';

  @override
  String get navBadges => 'Insignias';

  @override
  String get navProfile => 'Perfil';

  @override
  String featureComingSoon(String feature) {
    return '$feature estará dispoñible pronto.';
  }

  @override
  String get appWordmark => 'BINESTAR';

  @override
  String get appTitle => 'Deixa de bebe';

  @override
  String get splashSubtitle =>
      'Dá o primeiro paso cara a unha\nvida libre de alcohol';

  @override
  String get preparingJourney => 'Preparando a túa\ntraxectoria';

  @override
  String get taskMorningMeditation => 'Meditación matutina (10m)';

  @override
  String get taskReadChapter => 'Ler o capítulo 4 de \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Diario de gratitude nocturno';

  @override
  String get close => 'Cerrar';

  @override
  String get youAreDoingGreat => 'O estás facendo xenial!';

  @override
  String get shareMilestone => 'Compartir fito';

  @override
  String shareMilestoneMessage(int days) {
    return 'Estou no día $days da miña recuperación! 💪';
  }

  @override
  String get shareMilestoneSubject => 'O meu fito de recuperación';

  @override
  String get weeklyReportReadyTitle => 'O teu informe semanal está listo';

  @override
  String get weeklyReportReadySubtitle => 'Toca para ver como foi a túa semana';

  @override
  String get howAreYouFeeling => 'Como te sentes?';

  @override
  String get moodTough => 'Difícil';

  @override
  String get moodOkay => 'Ben';

  @override
  String get moodGood => 'Moi ben';

  @override
  String get moneySaved => 'Diñeiro aforrado';

  @override
  String get caloriesSaved => 'Calorías aforradas';

  @override
  String get healthScore => 'Puntuación de saúde';

  @override
  String get drinksAvoided => 'Bebidas evitadas';

  @override
  String get estimated => 'Estimado';

  @override
  String get aiGenerated => 'Xerado por IA';

  @override
  String get daysCapsLabel => 'DÍAS';

  @override
  String get todaysMotivation => 'Motivación de hoxe';

  @override
  String get defaultMotivationQuote =>
      'Mantuviches con éxito o teu compromiso. Sigue aproveitando a onda do cambio positivo.';

  @override
  String get talkToCoach => 'Falar co adestrador';

  @override
  String get havingACraving => 'Teño un desexo';

  @override
  String get unlockWeeklyReportsTitle => 'Desbloquear informes semanais';

  @override
  String get unlockWeeklyReportsMessage =>
      'Mira os teus días sobrio, tendencias de ánimo e comentarios de IA personalizados cada semana. Pasa a Premium para desbloquealo.';

  @override
  String get maybeLater => 'Quizais máis tarde';

  @override
  String get upgrade => 'Mellorar';

  @override
  String get weeklyReportTitle => 'Informe semanal';

  @override
  String get weeklyReportsPremiumTitle =>
      'Os informes semanais son unha función Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Mira os teus días sobrio, tendencias de ánimo, desexos e comentarios de IA personalizados cada semana.';

  @override
  String get upgradeToPremium => 'Mellorar a Premium';

  @override
  String get couldNotGenerateReport =>
      'Non se puido xerar o teu informe agora mesmo.';

  @override
  String get tryAgainLower => 'Téntao de novo';

  @override
  String get statSoberDays => 'Días sobrio';

  @override
  String get statAvgMood => 'Ánimo medio';

  @override
  String get statCravings => 'Desexos';

  @override
  String get statMoneySaved => 'Diñeiro aforrado';

  @override
  String get coachFeedback => 'Comentarios do adestrador';

  @override
  String get journalInsights => 'Análise do diario';

  @override
  String get next => 'Seguinte';

  @override
  String get question1Title => 'Cal é o teu obxectivo';

  @override
  String get question1Subtitle => 'Elixe o obxectivo que máis che importa';

  @override
  String get goalQuitCompletely => 'Deixalo por completo';

  @override
  String get goalReduceDrinking => 'Reducir o consumo';

  @override
  String get goalTakeABreak => 'Facer un descanso';

  @override
  String get goalBuildHealthierHabits => 'Crear hábitos máis saudables';

  @override
  String get question3Title => 'Cuéntanos sobre a túa\nrutina';

  @override
  String get drinksPerWeek => 'Bebidas por semana';

  @override
  String get moneySpentPerWeek => 'Diñeiro gastado por semana';

  @override
  String get drinkingLevel => 'Nivel de consumo';

  @override
  String get triggersLabel => 'Desencadeantes';

  @override
  String get levelSocial => 'Social';

  @override
  String get levelRegular => 'Habitual';

  @override
  String get levelHeavy => 'Elevado';

  @override
  String get levelDependent => 'Dependente';

  @override
  String get triggerStress => 'Estrés';

  @override
  String get triggerLoneliness => 'Soidade';

  @override
  String get triggerHabit => 'Hábito';

  @override
  String get triggerSadness => 'Tristeza';

  @override
  String get triggerAnger => 'Rabaña';

  @override
  String get triggerBoredom => 'Aburrimento';

  @override
  String get triggerSocialPressure => 'Presión social';

  @override
  String get triggerCelebration => 'Celebración';

  @override
  String get triggerSleepProblems => 'Problemas de sono';

  @override
  String get triggerWorkPressure => 'Presión laboral';

  @override
  String get question4Title => 'Por que queres cambiar?';

  @override
  String get question4Subtitle => 'A túa razón axudará a motivarte.';

  @override
  String get reasonImproveHealth => 'Mellorar a miña saúde';

  @override
  String get reasonSaveMoney => 'Aforrar diñeiro';

  @override
  String get reasonFamily => 'Familia';

  @override
  String get reasonBetterSleep => 'Dormir mellor';

  @override
  String get reasonMentalClarity => 'Claridade mental';

  @override
  String get reasonFitness => 'Forma física';

  @override
  String get reasonSelfRespect => 'Autorrespecto';

  @override
  String get reasonCareer => 'Carreira profesional';

  @override
  String get milestoneUnlockedLabel => 'FITO DESBLOQUEADO';

  @override
  String incredibleNamePrefix(String name) {
    return 'Incrible, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount aforrados';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count evitadas';
  }

  @override
  String get shareMyMilestone => 'Compartir o meu fito';

  @override
  String get milestoneImageShareError =>
      'Non se puido crear a imaxe do fito. Por favor, téntao de novo.';

  @override
  String get dailyCheckInTitle => 'Rexistro diario';

  @override
  String get howAreYouFeelingToday => 'Como te sentes hoxe?';

  @override
  String get honestAnswerHelp =>
      'A túa resposta sincera axúdanos a apoiarte mellor';

  @override
  String get didYouDrinkToday => 'Bebiches hoxe?';

  @override
  String get noLabel => 'Non';

  @override
  String get yesLabel => 'Si';

  @override
  String get cravingLevelNow => 'Nivel de desexo agora mesmo?';

  @override
  String get anythingOnMind => 'Algo na mente?';

  @override
  String get optionalLabel => '(opcional)';

  @override
  String get dailyNoteHint =>
      'Escribe sobre o teu día, desencadeantes, logros...';

  @override
  String get alreadyCheckedInToday => 'Xa rexistrado hoxe';

  @override
  String get saveCheckIn => 'Gardar rexistro';

  @override
  String get checkInsHelpTrack =>
      'Os rexistros axudan a rastrexar o teu progreso co tempo';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Xa completaches o rexistro de hoxe.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Por favor, responde a ambas preguntas anteriores primeiro';

  @override
  String get checkInSaved => 'Rexistro gardado';

  @override
  String get cravingNone => 'Ningún';

  @override
  String get cravingLow => 'Baixo';

  @override
  String get cravingMedium => 'Medio';

  @override
  String get cravingStrong => 'Forte';

  @override
  String get moodBad => 'Malo';

  @override
  String get moodLow => 'Baixo';

  @override
  String get moodGreat => 'Excelente';

  @override
  String get sosSupportTitle => 'Apoio SOS';

  @override
  String notAloneMessage(String name) {
    return 'Non estás só/sóa, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Os desexos pasan. Elixe algo a continuación para axudarte neste momento.';

  @override
  String get breathingExercise => 'Exercicio de respiración';

  @override
  String get breathingExerciseSubtitle => 'Técnica guiada 4-7-8, 2 minutos';

  @override
  String get rideTheWave => 'Sube á onda';

  @override
  String get rideTheWaveSubtitle =>
      'Temporizador de 15 min: os desexos sempre pasan';

  @override
  String get copingTips => 'Consellos para afrontalo';

  @override
  String get copingTipsSubtitle =>
      'Estratexias personalizadas para os teus desencadeantes';

  @override
  String get talkToAiCoach => 'Falar co adestrador IA';

  @override
  String get talkToAiCoachSubtitle =>
      'Chatea co teu compañeiro de recuperación';

  @override
  String get callSomeone => 'Chamar a alguén';

  @override
  String get callSomeoneSubtitle => 'Contacta co teu contacto de confianza';

  @override
  String get contactsPermissionNeeded =>
      'Precísase permiso de contactos para chamar a un contacto.';

  @override
  String get beatenCravingsPrefix => 'Superaches os desexos ';

  @override
  String beatenCravingsCount(int count) {
    return '$count veces';
  }

  @override
  String get beatenCravingsSuffix => ' antes. Podes facelo de novo.';

  @override
  String get tellUsAboutYourself => 'Cóntanos sobre ti';

  @override
  String get detailsSubtitle =>
      'Esta información axúdanos a personalizar a túa recuperación e ofrecer análises precisas.';

  @override
  String get nameLabel => 'Nome';

  @override
  String get nameHint => 'ex., Alex Rivers';

  @override
  String get ageLabel => 'Idade';

  @override
  String get ageHint => 'ex., 32';

  @override
  String get sexAssignedAtBirth => 'Sexo asignado ao nacer';

  @override
  String get sexFemale => 'Feminino';

  @override
  String get sexMale => 'Masculino';

  @override
  String get heightLabel => 'Altura';

  @override
  String get weightLabel => 'Peso';

  @override
  String get heightHint => '170';

  @override
  String get weightHint => '70';

  @override
  String get dailyLimitReachedTitle => 'Límite diario alcanzado';

  @override
  String dailyLimitReachedMessage(int limit) {
    return 'Usaches os teus $limit mensaxes gratuítas de hoxe. Pasa a Premium para ter chat ilimitado.';
  }

  @override
  String get coachConnectError =>
      'Non me puiden conectar agora mesmo. Proba de novo nun momento.';

  @override
  String get clearConversationTitle => 'Limpar conversación?';

  @override
  String get clearConversationMessage =>
      'Isto eliminará permanentemente o teu historial de chat co adestrador.';

  @override
  String get clearLabel => 'Limpar';

  @override
  String get recoveryCoachTitle => 'Adestrador de recuperación';

  @override
  String get onlineLabel => 'En liña';

  @override
  String get clearConversationMenuItem => 'Limpar conversación';

  @override
  String chatGreeting(String name) {
    return 'Ola $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Estás no día $days da túa traxectoria. Estou aquí cando queiras falar.';
  }

  @override
  String get quickPromptsLabel => 'SUXESTIÓNS RÁPIDAS';

  @override
  String get promptCravingLabel => 'Teño un desexo';

  @override
  String get promptCravingSubtitle => 'Mantén os pés na terra, rápido';

  @override
  String get promptMotivationLabel => 'Preciso motivación';

  @override
  String get promptMotivationSubtitle => 'Un impulso cando é difícil';

  @override
  String get promptSocialLabel => 'Situación social';

  @override
  String get promptSocialSubtitle => 'Xestiona unha xuntanza';

  @override
  String get promptSlippedLabel => 'Ressupinei';

  @override
  String get promptSlippedSubtitle => 'Sen xulgamentos, só apoio';

  @override
  String get typeMessageHint => 'Escribe unha mensaxe...';

  @override
  String get editProfileTitle => 'Editar perfil';

  @override
  String couldNotSaveProfile(String error) {
    return 'Non se puido gardar o perfil: $error';
  }

  @override
  String get heightCmLabel => 'Altura (cm)';

  @override
  String get weightKgLabel => 'Peso (kg)';

  @override
  String get saveChangesLabel => 'Gardar cambios';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Análise e estatísticas avanzadas';

  @override
  String get featureUnlimitedJournal => 'Entradas de diario ilimitadas';

  @override
  String get featureUnlimitedChat => 'Chat ilimitado co adestrador IA';

  @override
  String get featureCommunityGroups => 'Grupos comunitarios exclusivos';

  @override
  String get featurePrioritySupport => 'Soporte de expertos prioritario';

  @override
  String get featureThemePacks => 'Paquetes de temas personalizados';

  @override
  String get featureDataExport => 'Exportación de datos';

  @override
  String get featureAdFree => 'Experiencia sen anuncios';

  @override
  String get premiumMemberTitle => 'Eres membro Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Desbloquea a túa experiencia\ncompleta de recuperación';

  @override
  String get premiumMemberSubtitle =>
      'Grazas por apoiar a túa recuperación; todas as funcións premium seguintes están desbloqueadas.';

  @override
  String get premiumJoinSubtitle =>
      'Únete a miles de persoas que están\nacelerando o seu proceso coas nosas\nferramentas premium e apoio personalizado.';

  @override
  String get monthlyPlanLabel => 'Mensual';

  @override
  String get perMonthSuffix => '/mes';

  @override
  String get cancelAnytimeLabel => 'Cancela cando queiras';

  @override
  String get yearlyPlanLabel => 'Anual';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Facturado anualmente a $amount';
  }

  @override
  String get bestValueLabel => 'Mellor valor';

  @override
  String get alreadyPremiumLabel => 'Xa es Premium ✓';

  @override
  String get startPremiumLabel => 'Comezar Premium';

  @override
  String get manageSubscriptionLabel =>
      'Xestiona ou cancela dende os axustes de subscrición do teu dispositivo.';

  @override
  String get noCommitmentLabel => 'Sen compromiso. Cancela cando queiras.';

  @override
  String get continueFreePlanLabel => 'Continuar co plan gratuíto';

  @override
  String get backToHomeLabel => 'Volver ao inicio';

  @override
  String get cancelPremiumLabel => 'Cancelar Premium';

  @override
  String get cancelPremiumTitle => 'Cancelar Premium?';

  @override
  String get cancelPremiumMessage =>
      'Perderás acceso a entradas de diario ilimitadas, chat con adestrador ilimitado, análises e informes semanais. Podes volver subscribirte cando queiras.';

  @override
  String get keepPremiumLabel => 'Manter Premium';

  @override
  String get nowPremiumMessage =>
      'Agora es Premium! Goza da túa experiencia de recuperación completa.';

  @override
  String get premiumCancelledMessage =>
      'Premium cancelado. Volviches ao plan gratuíto.';

  @override
  String get termsOfUseLabel => 'Termos de uso';

  @override
  String get navHomeLabel => 'Inicio';

  @override
  String get navStatsLabel => 'Estatísticas';

  @override
  String get navJournalLabel => 'Diario';

  @override
  String get navBadgesLabel => 'Insignias';

  @override
  String get navProfileLabel => 'Perfil';

  @override
  String get recoveryGoalsTitle => 'Obxectivos de recuperación';

  @override
  String get drinksPerWeekLabel => 'Bebidas por semana';

  @override
  String get quitReasonsLabel => 'Razóns para deixalo';

  @override
  String get quitReasonsHelperText => 'Separa varias razóns con comas.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'Non se puideron gardar os obxectivos de recuperación: $error';
  }

  @override
  String get goalHint => 'ex., Abstinencia total';

  @override
  String get drinksPerWeekHint => 'ex., 12';

  @override
  String get quitReasonsHint => 'ex., Saúde, Familia, Diñeiro';

  @override
  String get todaysPrompt => 'Tema de hoxe';

  @override
  String get defaultJournalPrompt => 'Que tes na mente hoxe?';

  @override
  String get aiJournalInsights => 'Análise do diario por IA';

  @override
  String get unlockJournalInsightsMessage =>
      'Desbloquea patróns semanais, tendencias de ánimo e análises personalizadas das túas entradas.';

  @override
  String get notEnoughJournalData =>
      'Aínda non hai datos suficientes; escribe algunhas entradas esta semana e volve comprobar.';

  @override
  String get openEntry => 'Abrir';

  @override
  String get editEntry => 'Editar';

  @override
  String get deleteEntry => 'Eliminar';

  @override
  String get searchJournalEntries => 'Buscar entradas...';

  @override
  String get writeNewEntry => 'Escribir nova entrada';

  @override
  String get recentEntries => 'Entradas recentes';

  @override
  String get noJournalEntriesYet =>
      'Aínda non hai entradas; escribe a túa primeira reflexión arriba.';

  @override
  String get noEntriesMatchFilters =>
      'Ningunha entrada coincide cos teus filtros.';

  @override
  String get weeklyJournalLimitReached => 'Límite semanal alcanzado';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Usaches as túas $limit entradas gratuítas esta semana. Pasa a Premium para entradas ilimitadas.';
  }

  @override
  String get newEntry => 'Nova entrada';

  @override
  String get writeYourThoughts => 'Escribe os teus pensamentos';

  @override
  String get saveEntry => 'Gardar entrada';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Quedan $remaining de $limit entradas gratuítas esta semana';
  }

  @override
  String get deleteEntryQuestion => 'Eliminar entrada?';

  @override
  String get deleteEntryConfirmation =>
      'Esta entrada eliminarase permanentemente. Esto non se pode desfacer.';

  @override
  String get journalEntryNotFound => 'Entrada non atopada';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Pode que esta entrada do diario fose eliminada.';

  @override
  String get goBack => 'Volver atrás';

  @override
  String get journalEntryTitle => 'Entrada do diario';

  @override
  String get moodStruggling => 'Loitando';

  @override
  String get moodUnwell => 'Mal';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => 'Que pasou hoxe?';

  @override
  String get trigger => 'Desencadeante';

  @override
  String get whatHelped => 'Que axudou';

  @override
  String get whatIllTryNextTime => 'Que tentarei a vindeira vez';

  @override
  String get journalPrivacyMessage =>
      'A túa reflexión é privada e gárdase no teu diario.';

  @override
  String get unlocked => 'Desbloqueado';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '$count día',
    );
    return 'Quedan $_temp0';
  }

  @override
  String daysCount(int count) {
    return '$count días';
  }

  @override
  String get firstReflection => 'Primeira\nreflexión';

  @override
  String get oneJournalEntry => '1 entrada do diario';

  @override
  String get openBook => 'Libro aberto';

  @override
  String get tenJournalEntries => '10 entradas do diario';

  @override
  String get dedicatedWriter => 'Escritor\ndedicado';

  @override
  String get thirtyJournalEntries => '30 entradas do diario';

  @override
  String get firstConversation => 'Primeira\nconversación';

  @override
  String get oneAiCoachChat => '1 chat con adestrador IA';

  @override
  String get keepTalking => 'Sigue falando';

  @override
  String get fiveConversations => '5 conversacións';

  @override
  String get coachCompanion => 'Compañeiro\nadestrador';

  @override
  String get twentyConversations => '20 conversacións';

  @override
  String get checkInHabit => 'Hábito de\nrexistro';

  @override
  String get sevenCheckIns => '7 rexistros';

  @override
  String get consistencyPro => 'Pro da\nconstancia';

  @override
  String get thirtyCheckIns => '30 rexistros';

  @override
  String get dedicatedJourney => 'Traxectoria\ndedicada';

  @override
  String get hundredCheckIns => '100 rexistros';

  @override
  String get goalGetter => 'Conseguidor de obxectivos';

  @override
  String get threeGoalsCompleted => '3 obxectivos completados';

  @override
  String get goalAchiever => 'Loxrador de\nobxectivos';

  @override
  String get tenGoalsCompleted => '10 obxectivos completados';

  @override
  String get firstSavings => 'Primeiros\naforros';

  @override
  String get fiveHundredSaved => '500 \$ aforrados';

  @override
  String get smartSaver => 'Aforrador intelixente';

  @override
  String get oneThousandSaved => '1.000 \$ aforrados';

  @override
  String get bigSaver => 'Gran aforrador';

  @override
  String get fiveThousandSaved => '5.000 \$ aforrados';

  @override
  String currencyProgress(String current, String target) {
    return '$current \$ de $target \$';
  }

  @override
  String countProgress(int current, int target) {
    return '$current de $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Sigue adiante: o teu primeiro fito estáte agardando!';

  @override
  String get badgesAndMilestones => 'Insignias e fitos';

  @override
  String get yourMilestoneJourney => 'A túa traxectoria de fitos';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fitos alcanzados.',
      one: '$count fito alcanzado.',
    );
    return '$_temp0\nToca para ver';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Desbloqueaches $unlocked de $total fitos na túa traxectoria.';
  }

  @override
  String get remaining => 'Restante';

  @override
  String get complete => 'Completado';

  @override
  String get nextMilestone => 'Seguinte fito';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% conseguido';
  }

  @override
  String get sobrietyMilestones => 'Fitos de sobriedade';

  @override
  String get journeyBadges => 'Insignias da traxectoria';

  @override
  String get bronze => 'BRONCE';

  @override
  String get silver => 'PRATA';

  @override
  String get gold => 'OURO';

  @override
  String get platinum => 'PLATINO';

  @override
  String get diamond => 'DIAMANTE';

  @override
  String get analyzingYourJourney => 'Analizando a túa traxectoria...';

  @override
  String get aiCreatingSanctuary =>
      'A nosa IA está creando o teu santuario personalizado.';

  @override
  String get understandingHabits => 'Entendendo os teus hábitos...';

  @override
  String get calculatingBaseline => 'Calculando a túa liña base...';

  @override
  String get personalizingPlan => 'Personalizando o teu plan...';

  @override
  String get finalizingSanctuary => 'Finalizando o teu santuario...';

  @override
  String get creatingYourPlan => 'Creando o teu plan...';

  @override
  String get personalizedPlanError =>
      'Non puidemos crear o teu plan personalizado. Por favor, téntao de novo.';

  @override
  String get retry => 'Reintentar';

  @override
  String get breathInhale => 'INHALA';

  @override
  String get breathHold => 'MANTÉN';

  @override
  String get breathExhale => 'EXHALA';

  @override
  String get breathDone => 'FEITO';

  @override
  String get breathGreatJob => 'Moi bo traballo!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesións hoxe',
      one: '$count sesión hoxe',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Finalizar exercicio';

  @override
  String get done => 'Feito';

  @override
  String get noCopingTipsYet => 'Aínda non hai consellos';

  @override
  String get copingStrategiesWillAppear =>
      'As túas estratexias personalizadas aparecerán aquí cando remate de xerarse o teu plan.';

  @override
  String get strategiesTailoredToTriggers =>
      'Estratexias adaptadas aos teus desencadeantes';

  @override
  String get cravingsPeakAndPass => 'Os desexos teñen un pico\ne pasan';

  @override
  String get rideTheWaveDescription =>
      'A maioría dos desexos pasan en 15 minutos. Non tes que actuar, só mantén o tipo connosco.';

  @override
  String get stayWithIt => 'mantente aí';

  @override
  String get youMadeIt => 'conseguíchelo';

  @override
  String get readyWhenYouAre => 'listo cando queiras';

  @override
  String get rideItAgain => 'Volver intentalo';

  @override
  String get start15MinuteTimer => 'Iniciar temporizador de 15 minutos';

  @override
  String get rideTheWaveCompletedMessage =>
      'Superaches a onda. Iso é forza real. 💪';

  @override
  String get myProgress => 'O meu progreso';

  @override
  String get weekLabel => 'Semana';

  @override
  String get monthLabel => 'Més';

  @override
  String get allLabel => 'Todo';

  @override
  String get daysSoberStatLabel => 'Días\nsobrio';

  @override
  String get savedStatLabel => 'Aforrado';

  @override
  String get avoidedStatLabel => 'Evitado';

  @override
  String get moodTrends => 'Tendencias de ánimo';

  @override
  String get cravingsPattern => 'Patrón de desexos';

  @override
  String get unlockLabel => 'Desbloquear';

  @override
  String get unlockFullStats => 'Desbloquear estatísticas completas';

  @override
  String get premiumStatsMessage =>
      'As tendencias de ánimo e patróns de desexos son funcións Premium. Actualiza para ver todo.';

  @override
  String get healthMilestonesWillAppear =>
      'Os teus fitos de saúde aparecerán aquí.';

  @override
  String get healthMilestones => 'Fitos de saúde';

  @override
  String dayNumber(int day) {
    return 'Día $day';
  }

  @override
  String get soberLabel => 'Sobrio';

  @override
  String get slipLabel => 'Ressupinación';

  @override
  String get noDataLabel => 'Sen datos';

  @override
  String get milestone24Hours => '24 Horas';

  @override
  String get milestoneOneWeek => 'Unha semana';

  @override
  String get milestoneOneMonth => 'Un mes';

  @override
  String get milestoneThreeMonths => 'Tres meses';

  @override
  String get milestoneSixMonths => 'Seis meses';

  @override
  String get milestoneOneYear => 'Un ano';

  @override
  String milestoneDayCount(int day) {
    return 'Fito do día $day';
  }

  @override
  String get maybeLaterLabel => 'Quizais máis tarde';

  @override
  String get cancelLabel => 'Cancelar';
}
