{
  "@@locale": "pt",

  "skip": "Ignorar",
  "continueButton": "Continuar",
  "getStarted": "Começar",

  "onboardingTitle1": "Assuma o controlo da sua vida",
  "onboardingSubtitle1": "Acompanhe a sua jornada, celebre cada conquista e torne-se mais saudável um dia de cada vez.",
  "onboardingTitle2": "O seu companheiro de recuperação com IA",
  "onboardingSubtitle2": "Receba orientação personalizada, hábitos saudáveis, lembretes motivacionais e relatórios de progresso adaptados à sua jornada.",

  "maybeLaterLabel": "Talvez mais tarde",
  "@maybeLaterLabel": {
    "description": "Button to dismiss the paywall dialog without upgrading"
  },
  "cancelLabel": "Cancelar",
  "@cancelLabel": {
    "description": "Generic cancel button label"
  },

  "goodMorning": "Bom dia",
  "goodAfternoon": "Boa tarde",
  "goodEvening": "Boa noite",
  "goodNight": "Boa noite",

  "embracingClarity": "Abraçando a clareza, um dia de cada vez.",
  "streakLabel": "SEQUÊNCIA",
  "goalLabel": "META",
  "daysStreak": "{count, plural, one{{count} dia} other{{count} dias}}",
  "@daysStreak": {
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  },

  "premiumPlan": "Plano Premium",
  "premiumPlanSubtitle": "Desbloqueie toda a sua experiência de recuperação",

  "accountAndSupport": "CONTA E SUPORTE",
  "privacyPolicy": "Política de Privacidade",
  "privacyPolicySubtitle": "Gerencie o compartilhamento de dados e a segurança da conta",
  "termsOfService": "Termos de Serviço",
  "termsOfServiceSubtitle": "Perguntas frequentes, contacte-nos e recursos",
  "shareApp": "Partilhar aplicação",
  "shareAppSubtitle": "Partilhe a aplicação com os seus amigos",
  "resetData": "Repor dados",
  "resetDataSubtitle": "Apague tudo o que está guardado neste dispositivo",

  "resetAllDataTitle": "Repor todos os dados?",
  "resetAllDataMessage": "Isto apagará tudo o que está guardado neste dispositivo — perfil, entradas do diário e progresso — e não pode ser desfeito.",
  "cancel": "Cancelar",
  "reset": "Repor",

  "chooseFromGallery": "Escolher da Galeria",
  "takePhoto": "Tirar fotografia",
  "removePhoto": "Remover fotografia",
  "couldNotUpdatePhoto": "Não foi possível atualizar a fotografia: {error}",
  "@couldNotUpdatePhoto": {
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },
  "couldNotRemovePhoto": "Não foi possível remover a fotografia: {error}",
  "@couldNotRemovePhoto": {
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },
  "photoTooLarge": "Esta fotografia é demasiado grande mesmo após a compressão — tente escolher outra.",

  "unableToLoadProfile": "Não foi possível carregar o seu perfil",
  "pleaseTryAgain": "Tente novamente.",
  "tryAgain": "Tentar novamente",
  "profileNotFound": "Perfil não encontrado",
  "refresh": "Atualizar",
  "noProfileDataFound": "Ainda não foram encontrados dados do perfil neste dispositivo.",

  "couldNotResetData": "Não foi possível repor os dados: {error}",
  "@couldNotResetData": {
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },

  "navHome": "Início",
  "navStats": "Estatísticas",
  "navJournal": "Diário",
  "navBadges": "Distintivos",
  "navProfile": "Perfil",

  "featureComingSoon": "{feature} estará disponível em breve.",
  "@featureComingSoon": {
    "placeholders": {
      "feature": {
        "type": "String"
      }
    }
  },

  "appWordmark": "BEM-ESTAR",
  "appTitle": "Deixar de Beber",
  "splashSubtitle": "Dê o primeiro passo rumo a uma\nvida sem álcool",
  "preparingJourney": "A preparar a\nsua jornada",

  "taskMorningMeditation": "Meditação matinal (10 min)",
  "taskReadChapter": "Leia o capítulo 4 de \"The Sober Diaries\"",
  "taskEveningJournal": "Diário de gratidão à noite",

  "close": "Fechar",
  "youAreDoingGreat": "Está a sair-se muito bem!",
  "shareMilestone": "Partilhar marco",
  "shareMilestoneMessage": "Estou no dia {days} da minha jornada de recuperação! 💪",
  "@shareMilestoneMessage": {
    "placeholders": {
      "days": {
        "type": "int"
      }
    }
  },
  "shareMilestoneSubject": "O meu marco de recuperação",

  "weeklyReportReadyTitle": "O seu relatório semanal está pronto",
  "weeklyReportReadySubtitle": "Toque para ver como correu a sua semana",

  "howAreYouFeeling": "Como se está a sentir?",
  "moodTough": "Difícil",
  "moodOkay": "Está bem",
  "moodGood": "Bem",

  "moneySaved": "Dinheiro poupado",
  "caloriesSaved": "Calorias poupadas",
  "healthScore": "Pontuação de saúde",
  "drinksAvoided": "Bebidas evitadas",
  "estimated": "Estimado",
  "aiGenerated": "Gerado por IA",
  "daysCapsLabel": "DIAS",

  "todaysMotivation": "Motivação de hoje",
  "defaultMotivationQuote": "Manteve com sucesso o seu compromisso. Continue a aproveitar esta onda de mudança positiva.",

  "talkToCoach": "Falar com o coach",
  "havingACraving": "Estou com vontade de beber",

  "unlockWeeklyReportsTitle": "Desbloquear relatórios semanais",
  "unlockWeeklyReportsMessage": "Veja os seus dias sem álcool, tendências de humor e feedback personalizado da IA todas as semanas. Faça upgrade para Premium para desbloquear.",
  "maybeLater": "Talvez mais tarde",
  "upgrade": "Fazer upgrade",

  "weeklyReportTitle": "Relatório semanal",
  "weeklyReportsPremiumTitle": "Os relatórios semanais são uma funcionalidade Premium",
  "weeklyReportsPremiumMessage": "Veja os seus dias sem álcool, tendências de humor, desejos e feedback personalizado da IA todas as semanas.",
  "upgradeToPremium": "Fazer upgrade para Premium",
  "couldNotGenerateReport": "Não foi possível gerar o seu relatório agora.",
  "tryAgainLower": "Tentar novamente",

  "statSoberDays": "Dias sem álcool",
  "statAvgMood": "Humor médio",
  "statCravings": "Desejos",
  "statMoneySaved": "Dinheiro poupado",
  "coachFeedback": "Feedback do coach",
  "journalInsights": "Insights do diário",

  "next": "Seguinte",

  "question1Title": "Qual é o seu objetivo?",
  "question1Subtitle": "Escolha o objetivo que mais\nimporta para si",
  "goalQuitCompletely": "Parar completamente",
  "goalReduceDrinking": "Reduzir o consumo",
  "goalTakeABreak": "Fazer uma pausa",
  "goalBuildHealthierHabits": "Criar hábitos mais saudáveis",

  "question3Title": "Conte-nos sobre a sua\nrotina",
  "drinksPerWeek": "Bebidas por semana",
  "moneySpentPerWeek": "Dinheiro gasto por semana",
  "drinkingLevel": "Nível de consumo",
  "triggersLabel": "Gatilhos",
  "levelSocial": "Social",
  "levelRegular": "Regular",
  "levelHeavy": "Elevado",
  "levelDependent": "Dependente",
  "triggerStress": "Stress",
  "triggerLoneliness": "Solidão",
  "triggerHabit": "Hábito",
  "triggerSadness": "Tristeza",
  "triggerAnger": "Raiva",
  "triggerBoredom": "Tédio",
  "triggerSocialPressure": "Pressão social",
  "triggerCelebration": "Celebração",
  "triggerSleepProblems": "Problemas de sono",
  "triggerWorkPressure": "Pressão no trabalho",

  "question4Title": "Porque quer mudar?",
  "question4Subtitle": "A sua razão ajudará a mantê-lo motivado.",
  "reasonImproveHealth": "Melhorar a minha saúde",
  "reasonSaveMoney": "Poupar dinheiro",
  "reasonFamily": "Família",
  "reasonBetterSleep": "Dormir melhor",
  "reasonMentalClarity": "Clareza mental",
  "reasonFitness": "Condicionamento físico",
  "reasonSelfRespect": "Respeito próprio",
  "reasonCareer": "Carreira",

  "milestoneUnlockedLabel": "MARCO DESBLOQUEADO",
  "incredibleNamePrefix": "Incrível, {name}!",
  "@incredibleNamePrefix": {
    "placeholders": {
      "name": {
        "type": "String"
      }
    }
  },
  "amountSavedLabel": "{amount} poupados",
  "@amountSavedLabel": {
    "placeholders": {
      "amount": {
        "type": "String"
      }
    }
  },
  "drinksAvoidedLabel": "{count} evitadas",
  "@drinksAvoidedLabel": {
    "placeholders": {
      "count": {
        "type": "String"
      }
    }
  },
  "shareMyMilestone": "Partilhar o meu marco",
  "milestoneImageShareError": "Não foi possível criar a imagem do marco. Tente novamente.",

  "dailyCheckInTitle": "Check-in diário",
  "howAreYouFeelingToday": "Como se está a sentir hoje?",
  "honestAnswerHelp": "A sua resposta honesta ajuda-nos a apoiá-lo melhor",
  "didYouDrinkToday": "Bebeu hoje?",
  "noLabel": "Não",
  "yesLabel": "Sim",
  "cravingLevelNow": "Qual é o nível de desejo neste momento?",
  "anythingOnMind": "Tem alguma coisa em mente?",
  "optionalLabel": "(opcional)",
  "dailyNoteHint": "Escreva sobre o seu dia, gatilhos, conquistas...",
  "alreadyCheckedInToday": "Já fez o check-in de hoje",
  "saveCheckIn": "Guardar check-in",
  "checkInsHelpTrack": "Os check-ins ajudam a acompanhar o seu progresso ao longo do tempo",
  "alreadyCompletedTodayCheckIn": "Já completou o check-in de hoje.",
  "pleaseAnswerBothQuestions": "Responda primeiro às duas perguntas acima",
  "checkInSaved": "Check-in guardado",
  "cravingNone": "Nenhum",
  "cravingLow": "Baixo",
  "cravingMedium": "Médio",
  "cravingStrong": "Forte",
  "moodBad": "Mau",
  "moodLow": "Baixo",
  "moodOkay": "Está bem",
  "moodGood": "Bom",
  "moodGreat": "Ótimo",

  "sosSupportTitle": "Suporte SOS",
  "notAloneMessage": "Não está sozinho, {name}",
  "@notAloneMessage": {
    "placeholders": {
      "name": {
        "type": "String"
      }
    }
  },
  "cravingsPassMessage": "Os desejos passam. Escolha uma opção abaixo para o ajudar a ultrapassar este momento.",
  "breathingExercise": "Exercício de respiração",
  "breathingExerciseSubtitle": "Técnica guiada 4-7-8, 2 minutos",
  "rideTheWave": "Aguente a onda",
  "rideTheWaveSubtitle": "Temporizador de 15 min — os desejos passam sempre",
  "copingTips": "Dicas para lidar com a situação",
  "copingTipsSubtitle": "Estratégias personalizadas para os seus gatilhos",
  "talkToAiCoach": "Falar com o coach de IA",
  "talkToAiCoachSubtitle": "Converse com o seu companheiro de recuperação",
  "callSomeone": "Ligar a alguém",
  "callSomeoneSubtitle": "Contacte a sua pessoa de confiança",
  "contactsPermissionNeeded": "É necessária permissão para aceder aos contactos para ligar a um contacto.",
  "beatenCravingsPrefix": "Já venceu os desejos ",
  "beatenCravingsCount": "{count} vezes",
  "@beatenCravingsCount": {
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  },
  "beatenCravingsSuffix": " antes. Consegue fazê-lo novamente.",

  "tellUsAboutYourself": "Conte-nos sobre si",
  "detailsSubtitle": "Estas informações ajudam-nos a personalizar a sua jornada de recuperação e a fornecer informações precisas.",
  "nameLabel": "Nome",
  "nameHint": "ex.: Alex Rivers",
  "ageLabel": "Idade",
  "ageHint": "ex.: 32",
  "sexAssignedAtBirth": "Sexo atribuído à nascença",
  "sexFemale": "Feminino",
  "sexMale": "Masculino",
  "heightLabel": "Altura",
  "weightLabel": "Peso",
  "heightHint": "170",
  "weightHint": "70",

  "dailyLimitReachedTitle": "Limite diário atingido",
  "dailyLimitReachedMessage": "Utilizou todas as {limit} mensagens gratuitas de hoje. Faça upgrade para Premium para ter chat ilimitado com o coach.",
  "@dailyLimitReachedMessage": {
    "placeholders": {
      "limit": {
        "type": "int"
      }
    }
  },
  "coachConnectError": "Não consegui estabelecer ligação agora. Tente novamente daqui a pouco.",
  "clearConversationTitle": "Limpar conversa?",
  "clearConversationMessage": "O histórico da conversa com o coach será removido permanentemente.",
  "clearLabel": "Limpar",
  "recoveryCoachTitle": "Coach de recuperação",
  "onlineLabel": "Online",
  "clearConversationMenuItem": "Limpar conversa",
  "chatGreeting": "Olá {name} 👋",
  "@chatGreeting": {
    "placeholders": {
      "name": {
        "type": "String"
      }
    }
  },
  "chatDaysIntro": "Está no dia {days} da sua jornada. Estou aqui sempre que quiser conversar sobre o que está a acontecer.",
  "@chatDaysIntro": {
    "placeholders": {
      "days": {
        "type": "int"
      }
    }
  },
  "quickPromptsLabel": "SUGESTÕES RÁPIDAS",
  "promptCravingLabel": "Estou com vontade de beber",
  "promptCravingSubtitle": "Recupere a calma rapidamente",
  "promptMotivationLabel": "Preciso de motivação",
  "promptMotivationSubtitle": "Um incentivo quando está difícil",
  "promptSocialLabel": "Situação social",
  "promptSocialSubtitle": "Lide com uma reunião social",
  "promptSlippedLabel": "Tive uma recaída",
  "promptSlippedSubtitle": "Sem julgamentos, apenas apoio",
  "typeMessageHint": "Escreva uma mensagem...",

  "editProfileTitle": "Editar perfil",
  "couldNotSaveProfile": "Não foi possível guardar o perfil: {error}",
  "@couldNotSaveProfile": {
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },
  "heightCmLabel": "Altura (cm)",
  "weightKgLabel": "Peso (kg)",
  "saveChangesLabel": "Guardar alterações",

  "premiumBadgeLabel": "PREMIUM",
  "featureAdvancedInsights": "Insights e análises avançadas",
  "featureUnlimitedJournal": "Entradas ilimitadas no diário",
  "featureUnlimitedChat": "Chat ilimitado com o coach de IA",
  "featureCommunityGroups": "Grupos exclusivos da comunidade",
  "featurePrioritySupport": "Suporte prioritário de especialistas",
  "featureThemePacks": "Pacotes de temas personalizados",
  "featureDataExport": "Exportação de dados",
  "featureAdFree": "Experiência sem anúncios",
  "premiumMemberTitle": "É membro Premium",
  "unlockFullRecoveryTitle": "Desbloqueie toda a sua\nexperiência de recuperação",
  "premiumMemberSubtitle": "Obrigado por apoiar a sua jornada de recuperação — todas as funcionalidades Premium abaixo estão desbloqueadas.",
  "premiumJoinSubtitle": "Junte-se a uma comunidade de milhares de pessoas que estão\na acelerar a sua jornada de recuperação com as nossas\nferramentas Premium e suporte personalizado.",
  "monthlyPlanLabel": "Mensal",
  "perMonthSuffix": "/mês",
  "cancelAnytimeLabel": "Cancele a qualquer momento",
  "yearlyPlanLabel": "Anual",
  "billedAnnuallyLabel": "Faturado anualmente por {amount}",
  "@billedAnnuallyLabel": {
    "placeholders": {
      "amount": {
        "type": "String"
      }
    }
  },
  "bestValueLabel": "Melhor valor",
  "alreadyPremiumLabel": "É Premium ✓",
  "startPremiumLabel": "Começar Premium",
  "manageSubscriptionLabel": "Gira ou cancele a partir das definições de subscrição do seu dispositivo.",
  "noCommitmentLabel": "Sem compromisso. Cancele a qualquer momento.",
  "continueFreePlanLabel": "Continuar com o plano gratuito",
  "backToHomeLabel": "Voltar ao início",
  "cancelPremiumLabel": "Cancelar Premium",
  "cancelPremiumTitle": "Cancelar Premium?",
  "cancelPremiumMessage": "Perderá acesso a entradas ilimitadas no diário, chat ilimitado com o coach, insights de estatísticas e relatórios semanais. Pode subscrever novamente a qualquer momento.",
  "keepPremiumLabel": "Manter Premium",
  "nowPremiumMessage": "Agora é Premium! Desfrute da sua experiência completa de recuperação.",
  "premiumCancelledMessage": "Premium cancelado. Voltou ao plano gratuito.",
  "termsOfUseLabel": "Termos de utilização",

  "navHomeLabel": "Início",
  "navStatsLabel": "Estatísticas",
  "navJournalLabel": "Diário",
  "navBadgesLabel": "Distintivos",
  "navProfileLabel": "Perfil",

  "recoveryGoalsTitle": "Objetivos de recuperação",
  "drinksPerWeekLabel": "Bebidas por semana",
  "quitReasonsLabel": "Motivos para deixar de beber",
  "quitReasonsHelperText": "Separe vários motivos com uma vírgula.",
  "couldNotSaveRecoveryGoals": "Não foi possível guardar os objetivos de recuperação: {error}",
  "@couldNotSaveRecoveryGoals": {
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },

  "goalHint": "ex.: Abstinência completa",
  "drinksPerWeekHint": "ex.: 12",
  "quitReasonsHint": "ex.: Saúde, Família, Dinheiro",

  "todaysPrompt": "Pergunta de hoje",
  "defaultJournalPrompt": "O que está a pensar hoje?",
  "aiJournalInsights": "Insights de IA do diário",
  "unlockJournalInsightsMessage": "Desbloqueie padrões semanais, tendências de humor e insights personalizados a partir das suas entradas do diário.",
  "notEnoughJournalData": "Ainda não há dados suficientes — escreva algumas entradas esta semana e volte a verificar.",
  "openEntry": "Abrir",
  "editEntry": "Editar",
  "deleteEntry": "Eliminar",
  "searchJournalEntries": "Pesquisar entradas...",
  "writeNewEntry": "Escrever nova entrada",
  "recentEntries": "Entradas recentes",
  "noJournalEntriesYet": "Ainda não há entradas no diário — escreva a sua primeira reflexão acima.",
  "noEntriesMatchFilters": "Nenhuma entrada corresponde aos seus filtros.",

  "weeklyJournalLimitReached": "Limite semanal atingido",
  "weeklyJournalLimitMessage": "Utilizou todas as {limit} entradas gratuitas desta semana. Faça upgrade para Premium para ter entradas ilimitadas.",
  "@weeklyJournalLimitMessage": {
    "placeholders": {
      "limit": {
        "type": "int"
      }
    }
  },

  "newEntry": "Nova entrada",
  "writeYourThoughts": "Escreva os seus pensamentos",
  "saveEntry": "Guardar entrada",
  "freeEntriesLeftThisWeek": "{remaining} de {limit} entradas gratuitas restantes esta semana",
  "@freeEntriesLeftThisWeek": {
    "placeholders": {
      "remaining": {
        "type": "String"
      },
      "limit": {
        "type": "String"
      }
    }
  },

  "deleteEntryQuestion": "Eliminar entrada?",
  "deleteEntryConfirmation": "Esta entrada será eliminada permanentemente. Esta ação não pode ser desfeita.",

  "journalEntryNotFound": "Entrada não encontrada",
  "journalEntryMayHaveBeenDeleted": "Esta entrada do diário pode ter sido eliminada.",
  "goBack": "Voltar",
  "journalEntryTitle": "Entrada do diário",

  "moodStruggling": "Com dificuldades",
  "moodUnwell": "Mal",
  "moodNeutral": "Neutro",

  "whatHappenedToday": "O que aconteceu hoje?",
  "trigger": "Gatilho",
  "whatHelped": "O que ajudou",
  "whatIllTryNextTime": "O que vou tentar da próxima vez",
  "journalPrivacyMessage": "A sua reflexão é privada e está guardada no seu diário.",

  "unlocked": "Desbloqueado",
  "daysLeft": "{count} dia{count, plural, =1{} other{s}} restante",
  "@daysLeft": {
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  },
  "daysCount": "{count} dias",
  "@daysCount": {
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  },
  "firstReflection": "Primeira\nreflexão",
  "oneJournalEntry": "1 entrada no diário",
  "openBook": "Abrir livro",
  "tenJournalEntries": "10 entradas no diário",
  "dedicatedWriter": "Escritor\ndedicado",
  "thirtyJournalEntries": "30 entradas no diário",
  "firstConversation": "Primeira\nconversa",
  "oneAiCoachChat": "1 chat com o coach de IA",
  "keepTalking": "Continue a conversar",
  "fiveConversations": "5 conversas",
  "coachCompanion": "Companheiro\ndo coach",
  "twentyConversations": "20 conversas",
  "checkInHabit": "Hábito de\ncheck-in",
  "sevenCheckIns": "7 check-ins",
  "consistencyPro": "Profissional da\nconsistência",
  "thirtyCheckIns": "30 check-ins",
  "dedicatedJourney": "Jornada\ndedicada",
  "hundredCheckIns": "100 check-ins",
  "goalGetter": "Conquistador de objetivos",
  "threeGoalsCompleted": "3 objetivos concluídos",
  "goalAchiever": "Conquistador\nde objetivos",
  "tenGoalsCompleted": "10 objetivos concluídos",
  "firstSavings": "Primeira\npoupança",
  "fiveHundredSaved": "$500 poupados",
  "smartSaver": "Poupador inteligente",
  "oneThousandSaved": "$1.000 poupados",
  "bigSaver": "Grande poupador",
  "fiveThousandSaved": "$5.000 poupados",
  "currencyProgress": "${current} de ${target}",
  "@currencyProgress": {
    "placeholders": {
      "current": {
        "type": "String"
      },
      "target": {
        "type": "String"
      }
    }
  },
  "countProgress": "{current} de {target}",
  "@countProgress": {
    "placeholders": {
      "current": {
        "type": "int"
      },
      "target": {
        "type": "int"
      }
    }
  },
  "firstMilestoneWaiting": "Continue — o seu primeiro marco está à sua espera!",
  "badgesAndMilestones": "Distintivos e marcos",
  "yourMilestoneJourney": "A sua jornada de marcos",
  "milestonesAchieved": "{count} marco{count, plural, =1{} other{s}} alcançado.\nToque para ver",
  "@milestonesAchieved": {
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  },
  "unlockedMilestonesMessage": "Desbloqueou {unlocked} de {total} marcos na sua jornada.",
  "@unlockedMilestonesMessage": {
    "placeholders": {
      "unlocked": {
        "type": "int"
      },
      "total": {
        "type": "int"
      }
    }
  },
  "remaining": "Restante",
  "complete": "Concluído",
  "nextMilestone": "Próximo marco",
  "percentThere": "{subtitle} · {percent}% concluído",
  "@percentThere": {
    "placeholders": {
      "subtitle": {
        "type": "String"
      },
      "percent": {
        "type": "int"
      }
    }
  },
  "sobrietyMilestones": "Marcos de sobriedade",
  "journeyBadges": "Distintivos da jornada",
  "bronze": "BRONZE",
  "silver": "PRATA",
  "gold": "OURO",
  "platinum": "PLATINA",
  "diamond": "DIAMANTE",

  "analyzingYourJourney": "A analisar a sua jornada...",
  "aiCreatingSanctuary": "A nossa IA está a criar o seu espaço de recuperação personalizado.",
  "understandingHabits": "A compreender os hábitos...",
  "calculatingBaseline": "A calcular a sua linha de base...",
  "personalizingPlan": "A personalizar o seu plano...",
  "finalizingSanctuary": "A finalizar o seu espaço de recuperação...",
  "creatingYourPlan": "A criar o seu plano...",
  "personalizedPlanError": "Não foi possível criar o seu plano personalizado. Tente novamente.",
  "retry": "Tentar novamente",

  "breathInhale": "INSPIRAR",
  "breathHold": "SUSTER",
  "breathExhale": "EXPIRAR",
  "breathDone": "CONCLUÍDO",
  "breathGreatJob": "Muito bem!",
  "breathSessionsToday": "{count, plural, one{{count} sessão hoje} other{{count} sessões hoje}}",
  "@breathSessionsToday": {
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  },
  "endExercise": "Terminar exercício",
  "done": "Concluído",

  "noCopingTipsYet": "Ainda não há dicas para lidar com a situação",
  "copingStrategiesWillAppear": "As suas estratégias personalizadas para lidar com a situation aparecerão aqui assim que o seu plano de recuperação terminar de ser gerado.",
  "strategiesTailoredToTriggers": "Estratégias adaptadas aos seus gatilhos",

  "cravingsPeakAndPass": "Os desejos atingem o pico\ne passam",
  "rideTheWaveDescription": "A maioria dos desejos passa em 15 minutos. Não precisa de agir sobre eles — simplesmente aguente a onda connosco.",
  "stayWithIt": "continue",
  "youMadeIt": "conseguiu",
  "readyWhenYouAre": "quando estiver pronto",
  "rideItAgain": "Aguentar novamente",
  "start15MinuteTimer": "Iniciar temporizador de 15 minutos",
  "rideTheWaveCompletedMessage": "Aguentou a onda. Isso é força verdadeira. 💪",

  "myProgress": "O meu progresso",
  "weekLabel": "Semana",
  "monthLabel": "Mês",
  "allLabel": "Tudo",
  "daysSoberStatLabel": "Dias\nsem álcool",
  "savedStatLabel": "Poupado",
  "avoidedStatLabel": "Evitado",
  "moodTrends": "Tendências de humor",
  "cravingsPattern": "Padrão de desejos",
  "unlockLabel": "Desbloquear",
  "unlockFullStats": "Desbloquear estatísticas completas",
  "premiumStatsMessage": "As tendências de humor e os padrões de desejos são funcionalidades Premium. Faça upgrade para ver as suas estatísticas completas.",
  "healthMilestonesWillAppear": "Os seus marcos de saúde aparecerão aqui.",
  "healthMilestones": "Marcos de saúde",
  "dayNumber": "Dia {day}",
  "@dayNumber": {
    "placeholders": {
      "day": {
        "type": "int"
      }
    }
  },
  "soberLabel": "Sem álcool",
  "slipLabel": "Recaída",
  "noDataLabel": "Sem dados",

  "milestone24Hours": "24 horas",
  "milestoneOneWeek": "Uma semana",
  "milestoneOneMonth": "Um mês",
  "milestoneThreeMonths": "Três meses",
  "milestoneSixMonths": "Seis meses",
  "milestoneOneYear": "Um ano",
  "milestoneDayCount": "Marco do dia {day}",
  "@milestoneDayCount": {
    "placeholders": {
      "day": {
        "type": "int"
      }
    }
  }
}