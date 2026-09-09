// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get skip => 'Omitir';

  @override
  String get continueButton => 'Continuar';

  @override
  String get getStarted => 'Comenzar';

  @override
  String get onboardingTitle1 => 'Toma el control de tu vida';

  @override
  String get onboardingSubtitle1 =>
      'Sigue tu progreso, celebra cada logro y sé más saludable día a día.';

  @override
  String get onboardingTitle2 => 'Tu compañero de recuperación con IA';

  @override
  String get onboardingSubtitle2 =>
      'Recibe orientación personalizada, hábitos saludables, recordatorios de motivación e informes de progreso diseñados para tu camino.';

  @override
  String get goodMorning => 'Buenos días';

  @override
  String get goodAfternoon => 'Buenas tardes';

  @override
  String get goodEvening => 'Buenas tardes';

  @override
  String get goodNight => 'Buenas noches';

  @override
  String get embracingClarity => 'Abrazando la claridad, un día a la vez.';

  @override
  String get streakLabel => 'RACHA';

  @override
  String get goalLabel => 'Objetivo';

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
      'Desbloquea toda tu experiencia de recuperación';

  @override
  String get accountAndSupport => 'CUENTA Y SOPORTE';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get privacyPolicySubtitle =>
      'Gestiona el uso compartido de datos y la seguridad de tu cuenta';

  @override
  String get termsOfService => 'Términos del servicio';

  @override
  String get termsOfServiceSubtitle =>
      'Preguntas frecuentes, contáctanos y recursos';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String get shareAppSubtitle => 'Comparte la aplicación con tus amigos';

  @override
  String get resetData => 'Restablecer datos';

  @override
  String get resetDataSubtitle => 'Borra todo lo guardado en este dispositivo';

  @override
  String get resetAllDataTitle => '¿Restablecer todos los datos?';

  @override
  String get resetAllDataMessage =>
      'Esto borrará todo lo guardado en este dispositivo — perfil, entradas del diario y progreso — y no se puede deshacer.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get reset => 'Restablecer';

  @override
  String get chooseFromGallery => 'Elegir de la galería';

  @override
  String get takePhoto => 'Tomar foto';

  @override
  String get removePhoto => 'Eliminar foto';

  @override
  String couldNotUpdatePhoto(String error) {
    return 'No se pudo actualizar la foto: $error';
  }

  @override
  String couldNotRemovePhoto(String error) {
    return 'No se pudo eliminar la foto: $error';
  }

  @override
  String get photoTooLarge =>
      'La foto es demasiado grande incluso después de comprimirla. Prueba con otra.';

  @override
  String get unableToLoadProfile => 'No se pudo cargar tu perfil';

  @override
  String get pleaseTryAgain => 'Inténtalo de nuevo.';

  @override
  String get tryAgain => 'Intentar de nuevo';

  @override
  String get profileNotFound => 'Perfil no encontrado';

  @override
  String get refresh => 'Actualizar';

  @override
  String get noProfileDataFound =>
      'Aún no se encontraron datos del perfil en este dispositivo.';

  @override
  String couldNotResetData(String error) {
    return 'No se pudieron restablecer los datos: $error';
  }

  @override
  String get navHome => 'Inicio';

  @override
  String get navStats => 'Estadísticas';

  @override
  String get navJournal => 'Diario';

  @override
  String get navBadges => 'Insignias';

  @override
  String get navProfile => 'Perfil';

  @override
  String featureComingSoon(String feature) {
    return '$feature estará disponible pronto.';
  }

  @override
  String get appWordmark => 'BIENESTAR';

  @override
  String get appTitle => 'Dejar de beber';

  @override
  String get splashSubtitle => 'Da el primer paso hacia una\nvida sin alcohol';

  @override
  String get preparingJourney => 'Preparando tu\ncamino';

  @override
  String get taskMorningMeditation => 'Meditación matutina (10 min)';

  @override
  String get taskReadChapter => 'Lee el capítulo 4 de \"The Sober Diaries\"';

  @override
  String get taskEveningJournal => 'Diario de gratitud de la tarde';

  @override
  String get close => 'Cerrar';

  @override
  String get youAreDoingGreat => '¡Lo estás haciendo genial!';

  @override
  String get shareMilestone => 'Compartir logro';

  @override
  String shareMilestoneMessage(int days) {
    return '¡Estoy en el día $days de mi camino de recuperación! 💪';
  }

  @override
  String get shareMilestoneSubject => 'Mi logro de recuperación';

  @override
  String get weeklyReportReadyTitle => 'Tu informe semanal está listo';

  @override
  String get weeklyReportReadySubtitle => 'Toca para ver cómo fue tu semana';

  @override
  String get howAreYouFeeling => '¿Cómo te sientes?';

  @override
  String get moodTough => 'Difícil';

  @override
  String get moodOkay => 'Bien';

  @override
  String get moodGood => 'Bien';

  @override
  String get moneySaved => 'Dinero ahorrado';

  @override
  String get caloriesSaved => 'Calorías ahorradas';

  @override
  String get healthScore => 'Puntuación de salud';

  @override
  String get drinksAvoided => 'Bebidas evitadas';

  @override
  String get estimated => 'Estimado';

  @override
  String get aiGenerated => 'Generado por IA';

  @override
  String get daysCapsLabel => 'DÍAS';

  @override
  String get todaysMotivation => 'Motivación de hoy';

  @override
  String get defaultMotivationQuote =>
      'Has mantenido con éxito tu compromiso. Sigue aprovechando la ola del cambio positivo.';

  @override
  String get talkToCoach => 'Hablar con el coach';

  @override
  String get havingACraving => 'Tengo ganas de beber';

  @override
  String get unlockWeeklyReportsTitle => 'Desbloquea los informes semanales';

  @override
  String get unlockWeeklyReportsMessage =>
      'Consulta tus días sin alcohol, tendencias de ánimo y comentarios personalizados de IA cada semana. Actualiza a Premium para desbloquearlos.';

  @override
  String get maybeLater => 'Quizás más tarde';

  @override
  String get upgrade => 'Actualizar';

  @override
  String get weeklyReportTitle => 'Informe semanal';

  @override
  String get weeklyReportsPremiumTitle =>
      'Los informes semanales son una función Premium';

  @override
  String get weeklyReportsPremiumMessage =>
      'Consulta tus días sin alcohol, tendencias de ánimo, deseos de beber y comentarios personalizados de IA cada semana.';

  @override
  String get upgradeToPremium => 'Actualizar a Premium';

  @override
  String get couldNotGenerateReport =>
      'No se pudo generar tu informe en este momento.';

  @override
  String get tryAgainLower => 'Intentar de nuevo';

  @override
  String get statSoberDays => 'Días sin alcohol';

  @override
  String get statAvgMood => 'Ánimo promedio';

  @override
  String get statCravings => 'Deseos';

  @override
  String get statMoneySaved => 'Dinero ahorrado';

  @override
  String get coachFeedback => 'Comentarios del coach';

  @override
  String get journalInsights => 'Información del diario';

  @override
  String get next => 'Siguiente';

  @override
  String get question1Title => '¿Cuál es tu objetivo?';

  @override
  String get question1Subtitle => 'Elige el objetivo que más\nte importa';

  @override
  String get goalQuitCompletely => 'Dejarlo por completo';

  @override
  String get goalReduceDrinking => 'Reducir el consumo';

  @override
  String get goalTakeABreak => 'Tomar un descanso';

  @override
  String get goalBuildHealthierHabits => 'Crear hábitos más saludables';

  @override
  String get question3Title => 'Cuéntanos sobre tu\nrutina';

  @override
  String get drinksPerWeek => 'Bebidas por semana';

  @override
  String get moneySpentPerWeek => 'Dinero gastado por semana';

  @override
  String get drinkingLevel => 'Nivel de consumo';

  @override
  String get triggersLabel => 'Desencadenantes';

  @override
  String get levelSocial => 'Social';

  @override
  String get levelRegular => 'Regular';

  @override
  String get levelHeavy => 'Alto';

  @override
  String get levelDependent => 'Dependiente';

  @override
  String get triggerStress => 'Estrés';

  @override
  String get triggerLoneliness => 'Soledad';

  @override
  String get triggerHabit => 'Hábito';

  @override
  String get triggerSadness => 'Tristeza';

  @override
  String get triggerAnger => 'Enfado';

  @override
  String get triggerBoredom => 'Aburrimiento';

  @override
  String get triggerSocialPressure => 'Presión social';

  @override
  String get triggerCelebration => 'Celebración';

  @override
  String get triggerSleepProblems => 'Problemas de sueño';

  @override
  String get triggerWorkPressure => 'Presión laboral';

  @override
  String get question4Title => '¿Por qué quieres cambiar?';

  @override
  String get question4Subtitle => 'Tu motivo te ayudará a mantenerte motivado.';

  @override
  String get reasonImproveHealth => 'Mejorar mi salud';

  @override
  String get reasonSaveMoney => 'Ahorrar dinero';

  @override
  String get reasonFamily => 'Familia';

  @override
  String get reasonBetterSleep => 'Dormir mejor';

  @override
  String get reasonMentalClarity => 'Claridad mental';

  @override
  String get reasonFitness => 'Forma física';

  @override
  String get reasonSelfRespect => 'Respeto propio';

  @override
  String get reasonCareer => 'Carrera';

  @override
  String get milestoneUnlockedLabel => 'LOGRO DESBLOQUEADO';

  @override
  String incredibleNamePrefix(String name) {
    return '¡Increíble, $name!';
  }

  @override
  String amountSavedLabel(String amount) {
    return '$amount ahorrados';
  }

  @override
  String drinksAvoidedLabel(String count) {
    return '$count evitadas';
  }

  @override
  String get shareMyMilestone => 'Compartir mi logro';

  @override
  String get milestoneImageShareError =>
      'No se pudo crear la imagen del logro. Inténtalo de nuevo.';

  @override
  String get dailyCheckInTitle => 'Registro diario';

  @override
  String get howAreYouFeelingToday => '¿Cómo te sientes hoy?';

  @override
  String get honestAnswerHelp =>
      'Tu respuesta sincera nos ayuda a apoyarte mejor';

  @override
  String get didYouDrinkToday => '¿Bebiste hoy?';

  @override
  String get noLabel => 'No';

  @override
  String get yesLabel => 'Sí';

  @override
  String get cravingLevelNow => '¿Qué intensidad tienen tus ganas ahora?';

  @override
  String get anythingOnMind => '¿Tienes algo en mente?';

  @override
  String get optionalLabel => '(opcional)';

  @override
  String get dailyNoteHint =>
      'Escribe sobre tu día, desencadenantes, logros...';

  @override
  String get alreadyCheckedInToday => 'Ya has hecho el registro de hoy';

  @override
  String get saveCheckIn => 'Guardar registro';

  @override
  String get checkInsHelpTrack =>
      'Los registros ayudan a seguir tu progreso con el tiempo';

  @override
  String get alreadyCompletedTodayCheckIn =>
      'Ya has completado el registro de hoy.';

  @override
  String get pleaseAnswerBothQuestions =>
      'Responde primero a las dos preguntas anteriores';

  @override
  String get checkInSaved => 'Registro guardado';

  @override
  String get cravingNone => 'Ninguno';

  @override
  String get cravingLow => 'Bajo';

  @override
  String get cravingMedium => 'Medio';

  @override
  String get cravingStrong => 'Fuerte';

  @override
  String get moodBad => 'Mal';

  @override
  String get moodLow => 'Bajo';

  @override
  String get moodGreat => 'Genial';

  @override
  String get sosSupportTitle => 'Asistencia SOS';

  @override
  String notAloneMessage(String name) {
    return 'No estás solo/a, $name';
  }

  @override
  String get cravingsPassMessage =>
      'Las ganas pasan. Elige algo de abajo que te ayude a superar este momento.';

  @override
  String get breathingExercise => 'Ejercicio de respiración';

  @override
  String get breathingExerciseSubtitle => 'Técnica guiada 4-7-8, 2 minutos';

  @override
  String get rideTheWave => 'Supera la ola';

  @override
  String get rideTheWaveSubtitle =>
      'Temporizador de 15 min — las ganas siempre pasan';

  @override
  String get copingTips => 'Consejos para afrontar la situación';

  @override
  String get copingTipsSubtitle =>
      'Estrategias personalizadas para tus desencadenantes';

  @override
  String get talkToAiCoach => 'Hablar con el coach de IA';

  @override
  String get talkToAiCoachSubtitle => 'Habla con tu compañero de recuperación';

  @override
  String get callSomeone => 'Llamar a alguien';

  @override
  String get callSomeoneSubtitle => 'Contacta con una persona de confianza';

  @override
  String get contactsPermissionNeeded =>
      'Se necesita permiso para acceder a los contactos y llamar a uno.';

  @override
  String get beatenCravingsPrefix => 'Has superado las ganas ';

  @override
  String beatenCravingsCount(int count) {
    return '$count veces';
  }

  @override
  String get beatenCravingsSuffix => ' antes. Puedes hacerlo de nuevo.';

  @override
  String get tellUsAboutYourself => 'Cuéntanos sobre ti';

  @override
  String get detailsSubtitle =>
      'Esta información nos ayuda a personalizar tu camino de recuperación y ofrecerte información precisa.';

  @override
  String get nameLabel => 'Nombre';

  @override
  String get nameHint => 'p. ej., Alex Rivers';

  @override
  String get ageLabel => 'Edad';

  @override
  String get ageHint => 'p. ej., 32';

  @override
  String get sexAssignedAtBirth => 'Sexo asignado al nacer';

  @override
  String get sexFemale => 'Mujer';

  @override
  String get sexMale => 'Hombre';

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
    return 'Has usado los $limit mensajes gratuitos de hoy. Actualiza a Premium para tener chat ilimitado con el coach.';
  }

  @override
  String get coachConnectError =>
      'No he podido conectarme en este momento. Inténtalo de nuevo dentro de un momento.';

  @override
  String get clearConversationTitle => '¿Borrar conversación?';

  @override
  String get clearConversationMessage =>
      'Esto eliminará permanentemente tu historial de chat con el coach.';

  @override
  String get clearLabel => 'Borrar';

  @override
  String get recoveryCoachTitle => 'Coach de recuperación';

  @override
  String get onlineLabel => 'En línea';

  @override
  String get clearConversationMenuItem => 'Borrar conversación';

  @override
  String chatGreeting(String name) {
    return 'Hola $name 👋';
  }

  @override
  String chatDaysIntro(int days) {
    return 'Estás en el día $days de tu camino. Estoy aquí cuando quieras hablar de lo que estás viviendo.';
  }

  @override
  String get quickPromptsLabel => 'PREGUNTAS RÁPIDAS';

  @override
  String get promptCravingLabel => 'Tengo ganas de beber';

  @override
  String get promptCravingSubtitle => 'Recupera la calma rápidamente';

  @override
  String get promptMotivationLabel => 'Necesito motivación';

  @override
  String get promptMotivationSubtitle => 'Un impulso cuando es difícil';

  @override
  String get promptSocialLabel => 'Situación social';

  @override
  String get promptSocialSubtitle => 'Cómo afrontar una reunión';

  @override
  String get promptSlippedLabel => 'Tuve un desliz';

  @override
  String get promptSlippedSubtitle => 'Sin juicios, solo apoyo';

  @override
  String get typeMessageHint => 'Escribe un mensaje...';

  @override
  String get editProfileTitle => 'Editar perfil';

  @override
  String couldNotSaveProfile(String error) {
    return 'No se pudo guardar el perfil: $error';
  }

  @override
  String get heightCmLabel => 'Altura (cm)';

  @override
  String get weightKgLabel => 'Peso (kg)';

  @override
  String get saveChangesLabel => 'Guardar cambios';

  @override
  String get premiumBadgeLabel => 'PREMIUM';

  @override
  String get featureAdvancedInsights => 'Información y análisis avanzados';

  @override
  String get featureUnlimitedJournal => 'Entradas ilimitadas en el diario';

  @override
  String get featureUnlimitedChat => 'Chat ilimitado con el coach de IA';

  @override
  String get featureCommunityGroups => 'Grupos exclusivos de la comunidad';

  @override
  String get featurePrioritySupport => 'Asistencia prioritaria de expertos';

  @override
  String get featureThemePacks => 'Paquetes de temas personalizados';

  @override
  String get featureDataExport => 'Exportación de datos';

  @override
  String get featureAdFree => 'Experiencia sin anuncios';

  @override
  String get premiumMemberTitle => 'Eres miembro Premium';

  @override
  String get unlockFullRecoveryTitle =>
      'Desbloquea toda tu\nexperiencia de recuperación';

  @override
  String get premiumMemberSubtitle =>
      'Gracias por apoyar tu camino de recuperación — todas las funciones Premium que aparecen abajo están desbloqueadas.';

  @override
  String get premiumJoinSubtitle =>
      'Únete a una comunidad de miles de personas que\naceleran su camino de recuperación con nuestras\nherramientas Premium y apoyo personalizado.';

  @override
  String get monthlyPlanLabel => 'Mensual';

  @override
  String get perMonthSuffix => '/mes.';

  @override
  String get cancelAnytimeLabel => 'Cancela cuando quieras';

  @override
  String get yearlyPlanLabel => 'Anual';

  @override
  String billedAnnuallyLabel(String amount) {
    return 'Facturado anualmente por $amount';
  }

  @override
  String get bestValueLabel => 'Mejor valor';

  @override
  String get alreadyPremiumLabel => 'Eres Premium ✓';

  @override
  String get startPremiumLabel => 'Empezar Premium';

  @override
  String get manageSubscriptionLabel =>
      'Gestiona o cancela desde los ajustes de suscripción de tu dispositivo.';

  @override
  String get noCommitmentLabel => 'Sin compromiso. Cancela cuando quieras.';

  @override
  String get continueFreePlanLabel => 'Continuar con el plan gratuito';

  @override
  String get backToHomeLabel => 'Volver al inicio';

  @override
  String get cancelPremiumLabel => 'Cancelar Premium';

  @override
  String get cancelPremiumTitle => '¿Cancelar Premium?';

  @override
  String get cancelPremiumMessage =>
      'Perderás acceso a las entradas ilimitadas del diario, el chat ilimitado con el coach, los análisis de estadísticas y los informes semanales. Puedes volver a suscribirte en cualquier momento.';

  @override
  String get keepPremiumLabel => 'Mantener Premium';

  @override
  String get nowPremiumMessage =>
      '¡Ya tienes Premium! Disfruta de toda tu experiencia de recuperación.';

  @override
  String get premiumCancelledMessage =>
      'Premium cancelado. Has vuelto al plan gratuito.';

  @override
  String get termsOfUseLabel => 'Términos de uso';

  @override
  String get navHomeLabel => 'Inicio';

  @override
  String get navStatsLabel => 'Estadísticas';

  @override
  String get navJournalLabel => 'Diario';

  @override
  String get navBadgesLabel => 'Insignias';

  @override
  String get navProfileLabel => 'Perfil';

  @override
  String get recoveryGoalsTitle => 'Objetivos de recuperación';

  @override
  String get drinksPerWeekLabel => 'Bebidas por semana';

  @override
  String get quitReasonsLabel => 'Motivos para dejarlo';

  @override
  String get quitReasonsHelperText => 'Separa varios motivos con una coma.';

  @override
  String couldNotSaveRecoveryGoals(String error) {
    return 'No se pudieron guardar los objetivos de recuperación: $error';
  }

  @override
  String get goalHint => 'p. ej., Abstinencia completa';

  @override
  String get drinksPerWeekHint => 'p. ej., 12';

  @override
  String get quitReasonsHint => 'p. ej., Salud, Familia, Dinero';

  @override
  String get todaysPrompt => 'Pregunta de hoy';

  @override
  String get defaultJournalPrompt => '¿Qué tienes en mente hoy?';

  @override
  String get aiJournalInsights => 'Información del diario con IA';

  @override
  String get unlockJournalInsightsMessage =>
      'Desbloquea patrones semanales, tendencias de ánimo e información personalizada de tus entradas del diario.';

  @override
  String get notEnoughJournalData =>
      'Aún no hay suficientes datos — escribe algunas entradas esta semana y vuelve a consultar.';

  @override
  String get openEntry => 'Abrir';

  @override
  String get editEntry => 'Editar';

  @override
  String get deleteEntry => 'Eliminar';

  @override
  String get searchJournalEntries => 'Buscar entradas...';

  @override
  String get writeNewEntry => 'Escribir nueva entrada';

  @override
  String get recentEntries => 'Entradas recientes';

  @override
  String get noJournalEntriesYet =>
      'Aún no hay entradas en el diario — escribe arriba tu primera reflexión.';

  @override
  String get noEntriesMatchFilters =>
      'Ninguna entrada coincide con tus filtros.';

  @override
  String get weeklyJournalLimitReached => 'Límite semanal alcanzado';

  @override
  String weeklyJournalLimitMessage(int limit) {
    return 'Has utilizado las $limit entradas gratuitas del diario de esta semana. Actualiza a Premium para obtener entradas ilimitadas.';
  }

  @override
  String get newEntry => 'Nueva entrada';

  @override
  String get writeYourThoughts => 'Escribe tus pensamientos';

  @override
  String get saveEntry => 'Guardar entrada';

  @override
  String freeEntriesLeftThisWeek(String remaining, String limit) {
    return 'Te quedan $remaining de $limit entradas gratuitas esta semana';
  }

  @override
  String get deleteEntryQuestion => '¿Eliminar entrada?';

  @override
  String get deleteEntryConfirmation =>
      'Esta entrada se eliminará permanentemente. No se puede deshacer.';

  @override
  String get journalEntryNotFound => 'Entrada no encontrada';

  @override
  String get journalEntryMayHaveBeenDeleted =>
      'Es posible que esta entrada del diario haya sido eliminada.';

  @override
  String get goBack => 'Volver';

  @override
  String get journalEntryTitle => 'Entrada del diario';

  @override
  String get moodStruggling => 'Con dificultades';

  @override
  String get moodUnwell => 'Mal';

  @override
  String get moodNeutral => 'Neutral';

  @override
  String get whatHappenedToday => '¿Qué pasó hoy?';

  @override
  String get trigger => 'Desencadenante';

  @override
  String get whatHelped => 'Qué ayudó';

  @override
  String get whatIllTryNextTime => 'Qué intentaré la próxima vez';

  @override
  String get journalPrivacyMessage =>
      'Tu reflexión es privada y está guardada en tu diario.';

  @override
  String get unlocked => 'Desbloqueado';

  @override
  String daysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's',
      one: '',
    );
    return '$count día$_temp0 restantes';
  }

  @override
  String daysCount(int count) {
    return '$count días';
  }

  @override
  String get firstReflection => 'Primera\nreflexión';

  @override
  String get oneJournalEntry => '1 entrada del diario';

  @override
  String get openBook => 'Abrir libro';

  @override
  String get tenJournalEntries => '10 entradas del diario';

  @override
  String get dedicatedWriter => 'Escritor/a\ndedicado/a';

  @override
  String get thirtyJournalEntries => '30 entradas del diario';

  @override
  String get firstConversation => 'Primera\nconversación';

  @override
  String get oneAiCoachChat => '1 chat con el coach de IA';

  @override
  String get keepTalking => 'Seguir hablando';

  @override
  String get fiveConversations => '5 conversaciones';

  @override
  String get coachCompanion => 'Compañero/a\ndel coach';

  @override
  String get twentyConversations => '20 conversaciones';

  @override
  String get checkInHabit => 'Hábito de\nregistro';

  @override
  String get sevenCheckIns => '7 registros';

  @override
  String get consistencyPro => 'Experto/a en\nconstancia';

  @override
  String get thirtyCheckIns => '30 registros';

  @override
  String get dedicatedJourney => 'Camino\ndedicado';

  @override
  String get hundredCheckIns => '100 registros';

  @override
  String get goalGetter => 'Alcanzador de objetivos';

  @override
  String get threeGoalsCompleted => '3 objetivos completados';

  @override
  String get goalAchiever => 'Logrador de\nobjetivos';

  @override
  String get tenGoalsCompleted => '10 objetivos completados';

  @override
  String get firstSavings => 'Primer\nahorro';

  @override
  String get fiveHundredSaved => '\$500 ahorrados';

  @override
  String get smartSaver => 'Ahorrador inteligente';

  @override
  String get oneThousandSaved => '\$1.000 ahorrados';

  @override
  String get bigSaver => 'Gran ahorrador';

  @override
  String get fiveThousandSaved => '\$5.000 ahorrados';

  @override
  String currencyProgress(String current, String target) {
    return '\$$current de \$$target';
  }

  @override
  String countProgress(int current, int target) {
    return '$current de $target';
  }

  @override
  String get firstMilestoneWaiting =>
      'Sigue adelante — ¡tu primer logro te está esperando!';

  @override
  String get badgesAndMilestones => 'Insignias y logros';

  @override
  String get yourMilestoneJourney => 'Tu camino de logros';

  @override
  String milestonesAchieved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's',
      one: '',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 's',
      one: '',
    );
    return '$count logro$_temp0 conseguido$_temp1.\nToca para ver';
  }

  @override
  String unlockedMilestonesMessage(int unlocked, int total) {
    return 'Has desbloqueado $unlocked de $total logros en tu camino.';
  }

  @override
  String get remaining => 'Restantes';

  @override
  String get complete => 'Completado';

  @override
  String get nextMilestone => 'Próximo logro';

  @override
  String percentThere(String subtitle, int percent) {
    return '$subtitle · $percent% conseguido';
  }

  @override
  String get sobrietyMilestones => 'Logros de sobriedad';

  @override
  String get journeyBadges => 'Insignias del camino';

  @override
  String get bronze => 'BRONCE';

  @override
  String get silver => 'PLATA';

  @override
  String get gold => 'ORO';

  @override
  String get platinum => 'PLATINO';

  @override
  String get diamond => 'DIAMANTE';

  @override
  String get analyzingYourJourney => 'Analizando tu camino...';

  @override
  String get aiCreatingSanctuary =>
      'Nuestra IA está creando tu espacio personalizado.';

  @override
  String get understandingHabits => 'Comprendiendo tus hábitos...';

  @override
  String get calculatingBaseline => 'Calculando tu línea de base...';

  @override
  String get personalizingPlan => 'Personalizando tu plan...';

  @override
  String get finalizingSanctuary => 'Finalizando tu espacio personalizado...';

  @override
  String get creatingYourPlan => 'Creando tu plan...';

  @override
  String get personalizedPlanError =>
      'No pudimos crear tu plan personalizado. Inténtalo de nuevo.';

  @override
  String get retry => 'Reintentar';

  @override
  String get breathInhale => 'INHALA';

  @override
  String get breathHold => 'MANTÉN';

  @override
  String get breathExhale => 'EXHALA';

  @override
  String get breathDone => 'LISTO';

  @override
  String get breathGreatJob => '¡Muy bien!';

  @override
  String breathSessionsToday(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesiones hoy',
      one: '$count sesión hoy',
    );
    return '$_temp0';
  }

  @override
  String get endExercise => 'Finalizar ejercicio';

  @override
  String get done => 'Listo';

  @override
  String get noCopingTipsYet => 'Aún no hay consejos';

  @override
  String get copingStrategiesWillAppear =>
      'Tus estrategias personalizadas aparecerán aquí cuando termine de generarse tu plan de recuperación.';

  @override
  String get strategiesTailoredToTriggers =>
      'Estrategias adaptadas a tus desencadenantes';

  @override
  String get cravingsPeakAndPass =>
      'Las ganas alcanzan su punto máximo\ny luego pasan';

  @override
  String get rideTheWaveDescription =>
      'La mayoría de las ganas pasan en 15 minutos. No tienes que actuar — simplemente supéralas con nosotros.';

  @override
  String get stayWithIt => 'sigue adelante';

  @override
  String get youMadeIt => 'lo lograste';

  @override
  String get readyWhenYouAre => 'cuando estés listo/a';

  @override
  String get rideItAgain => 'Superarla de nuevo';

  @override
  String get start15MinuteTimer => 'Iniciar temporizador de 15 minutos';

  @override
  String get rideTheWaveCompletedMessage =>
      'Superaste la ola. Eso es verdadera fortaleza. 💪';

  @override
  String get myProgress => 'Mi progreso';

  @override
  String get weekLabel => 'Semana';

  @override
  String get monthLabel => 'Mes';

  @override
  String get allLabel => 'Todo';

  @override
  String get daysSoberStatLabel => 'Días\nsin alcohol';

  @override
  String get savedStatLabel => 'Ahorrado';

  @override
  String get avoidedStatLabel => 'Evitado';

  @override
  String get moodTrends => 'Tendencias de ánimo';

  @override
  String get cravingsPattern => 'Patrón de deseos';

  @override
  String get unlockLabel => 'Desbloquear';

  @override
  String get unlockFullStats => 'Desbloquear estadísticas completas';

  @override
  String get premiumStatsMessage =>
      'Las tendencias de ánimo y los patrones de deseos son funciones Premium. Actualiza para ver tus estadísticas completas.';

  @override
  String get healthMilestonesWillAppear =>
      'Tus logros de salud aparecerán aquí.';

  @override
  String get healthMilestones => 'Logros de salud';

  @override
  String dayNumber(int day) {
    return 'Día $day';
  }

  @override
  String get soberLabel => 'Sin alcohol';

  @override
  String get slipLabel => 'Desliz';

  @override
  String get noDataLabel => 'Sin datos';

  @override
  String get milestone24Hours => '24 horas';

  @override
  String get milestoneOneWeek => 'Una semana';

  @override
  String get milestoneOneMonth => 'Un mes';

  @override
  String get milestoneThreeMonths => 'Tres meses';

  @override
  String get milestoneSixMonths => 'Seis meses';

  @override
  String get milestoneOneYear => 'Un año';

  @override
  String milestoneDayCount(int day) {
    return 'Logro del día $day';
  }

  @override
  String get maybeLaterLabel => 'Quizás más tarde';

  @override
  String get cancelLabel => 'Cancelar';
}
