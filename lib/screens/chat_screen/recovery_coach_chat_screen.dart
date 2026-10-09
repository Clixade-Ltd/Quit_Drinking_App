import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import '../../constants/app_colors.dart';
import '../../services/home_dashboard_service.dart';
import '../../services/local_storage_service.dart';
import '../../services/recovery_coach_chat_service.dart';
import '../../services/premium_service.dart';
import '../../services/chat_usage_service.dart';
import '../../services/analytics_service.dart';

import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class RecoveryCoachChatScreen extends StatefulWidget {
  const RecoveryCoachChatScreen({super.key});

  @override
  State<RecoveryCoachChatScreen> createState() =>
      _RecoveryCoachChatScreenState();
}

class _RecoveryCoachChatScreenState
    extends State<RecoveryCoachChatScreen> {
  // ============================================================
  // LOCAL STORAGE
  // ============================================================

  static const String _chatsStorageKey =
      'recovery_coach_chats_v2';

  static const String _legacyChatStorageKey =
      'recovery_coach_chat_history';

  // ============================================================
  // FREE-TIER LIMIT
  // ============================================================

  static const int _freeDailyLimit = 6;

  // ============================================================
  // CONTROLLERS / KEYS
  // ============================================================

  final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  final TextEditingController _messageController =
      TextEditingController();

  final ScrollController _scrollController =
      ScrollController();

  // ============================================================
  // SERVICES
  // ============================================================

  final LocalStorageService _storage =
      LocalStorageService.instance;

  final HomeDashboardService _dashboardService =
      HomeDashboardService.instance;

  final RecoveryCoachChatService _coachService =
      RecoveryCoachChatService.instance;

  final AnalyticsService _analytics =
      AnalyticsService.instance;

  // ============================================================
  // VOICE
  // ============================================================

  final stt.SpeechToText _speech =
      stt.SpeechToText();

  bool _speechAvailable = false;
  bool _isListening = false;

  // ============================================================
  // CHATS
  // ============================================================

  final List<Map<String, dynamic>> _chats =
      <Map<String, dynamic>>[];

  final List<Map<String, String>> _messages =
      <Map<String, String>>[];

  String _activeChatId = '';

  // ============================================================
  // STATE
  // ============================================================

  bool _isLoading = true;
  bool _isSending = false;

  int _daysSober = 0;
  String _userName = 'there';

  bool _isPremium = false;
  int _messagesUsedToday = 0;

    bool get _isDark => AppColors.isDark(context);
    Color get _chatSurface =>
      AppColors.surface(context, light: AppColors.white);
    Color get _chatPrimaryText =>
      AppColors.primaryText(context, light: AppColors.textBlack);
    Color get _chatSecondaryText =>
      AppColors.secondaryText(context, light: AppColors.textGrey);
    Color get _chatAccent => AppColors.accent(context);
    Color get _chatAccentText =>
      _isDark ? Colors.white : _chatAccent;
    Color get _chatBorder =>
      _isDark ? _chatAccent : AppColors.outlineGrey;

  // ============================================================
  // INIT / DISPOSE
  // ============================================================

  @override
  void initState() {
    super.initState();

    _loadChat();
    _initSpeech();
    _analytics.chatOpened();
  }

  @override
  void dispose() {
    _speech.cancel();
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  String _newChatId() {
    return DateTime.now()
        .microsecondsSinceEpoch
        .toString();
  }

  // ============================================================
  // VOICE INPUT
  // ============================================================

  Future<void> _initSpeech() async {
    try {
      _speechAvailable = await _speech.initialize(
        onStatus: (status) {
          if ((status == 'done' ||
                  status == 'notListening') &&
              mounted) {
            setState(() {
              _isListening = false;
            });
          }
        },
        onError: (error) {
          debugPrint(
            'Speech error: ${error.errorMsg}',
          );

          if (mounted) {
            setState(() {
              _isListening = false;
            });
          }
        },
      );
    } catch (e) {
      debugPrint(
        'Speech init error: $e',
      );

      _speechAvailable = false;
    }
  }

  Future<void> _toggleListening() async {
    if (_isSending) return;

    // Stop if already listening.
    if (_isListening) {
      await _speech.stop();

      if (mounted) {
        setState(() {
          _isListening = false;
        });
      }

      return;
    }

    // Try to initialise again.
    if (!_speechAvailable) {
      await _initSpeech();
    }

    if (!_speechAvailable) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Voice input is not available. Please allow microphone access.',
          ),
        ),
      );

      return;
    }

    _dismissKeyboard();

    setState(() {
      _isListening = true;
    });

    await _speech.listen(
      onResult: (result) {
        if (!mounted) return;

        setState(() {
          _messageController.text =
              result.recognizedWords;

          _messageController.selection =
              TextSelection.fromPosition(
            TextPosition(
              offset:
                  _messageController.text.length,
            ),
          );
        });
      },
      listenFor:
          const Duration(seconds: 60),
      pauseFor:
          const Duration(seconds: 4),
      listenOptions:
          stt.SpeechListenOptions(
        partialResults: true,
        cancelOnError: true,
      ),
    );
  }

  Future<void> _stopListeningIfNeeded() async {
    if (_isListening) {
      await _speech.stop();

      if (mounted) {
        setState(() {
          _isListening = false;
        });
      }
    }
  }

  // ============================================================
  // HELPERS
  // ============================================================

  List<Map<String, String>> _parseMessages(
    dynamic raw,
  ) {
    final result =
        <Map<String, String>>[];

    if (raw is List) {
      for (final item in raw) {
        if (item is Map) {
          final role =
              item['role']?.toString().trim();

          final text =
              item['text']?.toString().trim();

          if ((role == 'user' ||
                  role == 'model') &&
              text != null &&
              text.isNotEmpty) {
            result.add({
              'role': role!,
              'text': text,
            });
          }
        }
      }
    }

    return result;
  }

  String _makeTitle(String text) {
    final clean = text
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();

    if (clean.isEmpty) {
      return 'New chat';
    }

    return clean.length > 40
        ? '${clean.substring(0, 40)}…'
        : clean;
  }

  String _formatDate(String iso) {
    final date =
        DateTime.tryParse(iso);

    if (date == null) {
      return '';
    }

    final now = DateTime.now();

    final today = DateTime(
      now.year,
      now.month,
      now.day,
    );

    final day = DateTime(
      date.year,
      date.month,
      date.day,
    );

    final diff =
        today.difference(day).inDays;

    if (diff == 0) {
      return 'Today';
    }

    if (diff == 1) {
      return 'Yesterday';
    }

    return '${date.day}/${date.month}/${date.year}';
  }

  // ============================================================
  // LOAD CHAT
  // ============================================================

  Future<void> _loadChat() async {
    try {
      final Map<String, dynamic>? saved =
          await _storage.getJson(
        _chatsStorageKey,
      );

      final days =
          await _dashboardService
              .getDaysSober();

      final name =
          await _dashboardService
              .getUserName();

      final isPremium =
          await PremiumService
              .instance
              .isPremium();

      final messagesUsedToday =
          await ChatUsageService
              .instance
              .getTodayCount();

      _chats.clear();
      _messages.clear();

      String activeId = '';

      if (saved != null &&
          saved['chats'] is List) {
        // ======================================================
        // NEW FORMAT
        // ======================================================

        for (final c
            in (saved['chats'] as List)) {
          if (c is! Map) continue;

          final msgs =
              _parseMessages(
            c['messages'],
          );

          if (msgs.isEmpty) continue;

          _chats.add({
            'id':
                c['id']?.toString() ??
                    _newChatId(),
            'title':
                c['title']?.toString() ??
                    _makeTitle(
                      msgs.first['text']!,
                    ),
            'updatedAt':
                c['updatedAt']
                        ?.toString() ??
                    DateTime.now()
                        .toIso8601String(),
            'messages': msgs,
          });
        }

        activeId =
            saved['activeId']
                    ?.toString() ??
                '';
      } else {
        // ======================================================
        // MIGRATE OLD SINGLE CHAT
        // ======================================================

        final Map<String, dynamic>? legacy =
            await _storage.getJson(
          _legacyChatStorageKey,
        );

        final legacyMsgs =
            _parseMessages(
          legacy?['messages'],
        );

        if (legacyMsgs.isNotEmpty) {
          final id = _newChatId();

          _chats.add({
            'id': id,
            'title': _makeTitle(
              legacyMsgs
                      .firstWhere(
                        (m) =>
                            m['role'] ==
                            'user',
                        orElse: () =>
                            legacyMsgs.first,
                      )['text'] ??
                  '',
            ),
            'updatedAt':
                DateTime.now()
                    .toIso8601String(),
            'messages': legacyMsgs,
          });

          activeId = id;
        }
      }

      // ========================================================
      // OPEN ACTIVE CHAT
      // ========================================================

      final activeIndex =
          _chats.indexWhere(
        (c) => c['id'] == activeId,
      );

      if (activeIndex != -1) {
        _activeChatId = activeId;

        _messages.addAll(
          List<Map<String, String>>.from(
            (_chats[activeIndex]
                    ['messages']
                as List)
                .map(
              (m) =>
                  Map<String, String>.from(
                m as Map,
              ),
            ),
          ),
        );
      } else {
        _activeChatId =
            _newChatId();
      }

      if (!mounted) return;

      setState(() {
        _daysSober = days;

        if (name != null &&
            name.trim().isNotEmpty) {
          _userName = name
              .trim()
              .split(
                RegExp(r'\s+'),
              )
              .first;
        } else {
          _userName = 'there';
        }

        _isPremium = isPremium;
        _messagesUsedToday =
            messagesUsedToday;

        _isLoading = false;
      });

      _scrollToBottom();
    } catch (e) {
      debugPrint(
        'Recovery Coach load error: $e',
      );

      if (_activeChatId.isEmpty) {
        _activeChatId =
            _newChatId();
      }

      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });
    }
  }

  // ============================================================
  // SAVE CHAT
  // ============================================================

  Future<void> _persist() async {
    try {
      await _storage.setJson(
        _chatsStorageKey,
        {
          'activeId': _activeChatId,
          'chats': _chats,
        },
      );
    } catch (e) {
      debugPrint(
        'Recovery Coach save error: $e',
      );
    }
  }

  Future<void> _saveChat() async {
    final index =
        _chats.indexWhere(
      (c) => c['id'] == _activeChatId,
    );

    if (_messages.isEmpty) {
      if (index != -1) {
        _chats.removeAt(index);
      }
    } else {
      final firstUser =
          _messages.firstWhere(
        (m) => m['role'] == 'user',
        orElse: () =>
            _messages.first,
      );

      final entry =
          <String, dynamic>{
        'id': _activeChatId,
        'title': _makeTitle(
          firstUser['text'] ?? '',
        ),
        'updatedAt':
            DateTime.now()
                .toIso8601String(),
        'messages': _messages
            .map(
              (m) => {
                'role': m['role'],
                'text': m['text'],
              },
            )
            .toList(),
      };

      if (index == -1) {
        _chats.add(entry);
      } else {
        _chats[index] = entry;
      }
    }

    await _persist();
  }

  // ============================================================
  // NEW CHAT
  // ============================================================

  Future<void> _startNewChat() async {
    if (_isSending) return;

    await _stopListeningIfNeeded();
    _dismissKeyboard();

    if (_scaffoldKey.currentState
            ?.isEndDrawerOpen ??
        false) {
      Navigator.of(context).pop();
    }

    _messageController.clear();

    setState(() {
      _messages.clear();
      _activeChatId = _newChatId();
    });

    await _persist();
  }

  // ============================================================
  // OPEN CHAT
  // ============================================================

  Future<void> _openChat(
    String id,
  ) async {
    if (_isSending) return;

    final index =
        _chats.indexWhere(
      (c) => c['id'] == id,
    );

    if (index == -1) return;

    await _stopListeningIfNeeded();
    _dismissKeyboard();

    if (_scaffoldKey.currentState
            ?.isEndDrawerOpen ??
        false) {
      Navigator.of(context).pop();
    }

    _messageController.clear();

    setState(() {
      _activeChatId = id;

      _messages
        ..clear()
        ..addAll(
          List<Map<String, String>>.from(
            (_chats[index]['messages']
                    as List)
                .map(
              (m) =>
                  Map<String, String>.from(
                m as Map,
              ),
            ),
          ),
        );
    });

    await _persist();

    _scrollToBottom();
  }

  // ============================================================
  // DELETE CHAT
  // ============================================================

  Future<void> _confirmDeleteChat(
    String id,
  ) async {
    if (_isSending &&
        id == _activeChatId) {
      return;
    }

    final shouldDelete =
        await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          backgroundColor:
              _chatSurface,
          shape:
              RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(
              20,
            ),
          ),
          title: Text(
            'Delete this chat?',
            style: TextStyle(
              color: _chatPrimaryText,
              fontWeight:
                  FontWeight.w700,
              fontSize: 19,
            ),
          ),
          content: Text(
            'This conversation will be permanently deleted.',
            style: TextStyle(
              color: _chatSecondaryText,
              height: 1.4,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(
                dialogContext,
              ).pop(false),
              child: Text(
                AppLocalizations.of(
                  context,
                )!
                    .cancelLabel,
              ),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.of(
                dialogContext,
              ).pop(true),
              child: const Text(
                'Delete',
                style: TextStyle(
                  color:
                      Colors.redAccent,
                  fontWeight:
                      FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (shouldDelete != true) {
      return;
    }

    _chats.removeWhere(
      (c) => c['id'] == id,
    );

    if (id == _activeChatId) {
      _messages.clear();
      _activeChatId =
          _newChatId();
      _messageController.clear();
    }

    await _persist();

    _analytics.chatCleared();

    if (!mounted) return;

    setState(() {});
  }

  // ============================================================
  // SEND MESSAGE
  // ============================================================

  Future<void> _sendMessage([
    String? quickPrompt,
  ]) async {
    await _stopListeningIfNeeded();

    final text =
        (quickPrompt ??
                _messageController.text)
            .trim();

    if (text.isEmpty ||
        _isSending) {
      return;
    }

    final loc =
        AppLocalizations.of(context)!;

    // ==========================================================
    // FREE-TIER DAILY LIMIT
    // ==========================================================

    if (!_isPremium &&
        _messagesUsedToday >=
            _freeDailyLimit) {
      _analytics
          .chatDailyLimitReached();

      _showPaywallDialog(
        title:
            loc.dailyLimitReachedTitle,
        message:
            loc.dailyLimitReachedMessage(
          _freeDailyLimit,
        ),
      );

      return;
    }

    // ==========================================================
    // IMPORTANT:
    // Clear the input immediately after capturing the text.
    // This also clears voice-to-text content.
    // ==========================================================

    _messageController.clear();

    if (mounted) {
      setState(() {
        _messages.add({
          'role': 'user',
          'text': text,
        });

        _isSending = true;
      });
    }

    _scrollToBottom();

    await _saveChat();

    try {
      final profile =
          await _dashboardService
                  .getProfile() ??
              <String, dynamic>{};

      final stats =
          await _dashboardService
              .getStats();

      final userData =
          <String, dynamic>{
        'name':
            profile['name'] ??
                _userName,
        'goal':
            profile['goal'] ??
                'Reduce drinking',
        'drinkingLevel':
            profile['drinkingLevel'] ??
                '',
        'drinksPerWeek':
            profile['drinksPerWeek'] ??
                0,
        'triggers':
            profile['triggers'] ??
                <dynamic>[],
        'quitReasons':
            profile['quitReasons'] ??
                <dynamic>[],
        'daysSober':
            _daysSober,
        'currentStreak':
            _daysSober,
        'moneySaved':
            stats['moneySaved'] ?? 0,
        'drinksAvoided':
            stats['drinksAvoided'] ??
                0,
      };

      final conversationHistory =
          <Map<String, dynamic>>[];

      for (final message
          in _messages) {
        final role =
            message['role'];

        final messageText =
            message['text'];

        if (role == null ||
            messageText == null ||
            messageText.trim().isEmpty) {
          continue;
        }

        if (role != 'user' &&
            role != 'model') {
          continue;
        }

        conversationHistory.add({
          'role': role,
          'text':
              messageText.trim(),
        });
      }

      final response =
          await _coachService
              .sendMessage(
        userData: userData,
        conversationHistory:
            conversationHistory,
      );

      if (!mounted) return;

      setState(() {
        _messages.add({
          'role': 'model',
          'text': response,
        });

        _isSending = false;

        // Make absolutely sure the input
        // remains empty after a voice send.
        _messageController.clear();
      });

      _analytics.chatMessageSent(
        isQuickPrompt:
            quickPrompt != null,
        promptLabel:
            quickPrompt,
      );

      final updatedCount =
          await ChatUsageService
              .instance
              .incrementTodayCount();

      if (mounted) {
        setState(() {
          _messagesUsedToday =
              updatedCount;

          // Keep the field empty after
          // successful response as well.
          _messageController.clear();
        });
      }

      await _saveChat();

      _scrollToBottom();
    } catch (e) {
      debugPrint(
        'RECOVERY COACH ERROR: $e',
      );

      _analytics.chatError(
        e.toString(),
      );

      if (!mounted) return;

      if (_messages.isNotEmpty &&
          _messages.last['role'] ==
              'user' &&
          _messages.last['text'] ==
              text) {
        _messages.removeLast();
      }

      setState(() {
        _isSending = false;

        // Also clear after an error so
        // the voice message does not remain
        // in the input field.
        _messageController.clear();
      });

      await _saveChat();

      if (!mounted) return;

      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(
              context,
            )!
                .coachConnectError,
          ),
        ),
      );

      _scrollToBottom();
    }
  }

  // ============================================================
  // PAYWALL
  // ============================================================

  Future<void> _showPaywallDialog({
    required String title,
    required String message,
  }) {
    _analytics.paywallViewed(
      'recovery_coach_chat',
    );

    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor:
              _chatSurface,
          shape:
              RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(
              20,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: _chatPrimaryText,
              fontWeight:
                  FontWeight.w700,
            ),
          ),
          content: Text(
            message,
            style: TextStyle(
              color: _chatSecondaryText,
              height: 1.4,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                _analytics
                    .paywallDismissed(
                  'recovery_coach_chat',
                );

                Navigator.of(context)
                    .pop();
              },
              child: Text(
                AppLocalizations.of(
                  context,
                )!
                    .maybeLaterLabel,
              ),
            ),
            TextButton(
              onPressed: () {
                _analytics
                    .premiumPurchaseStarted(
                  'unknown',
                );

                Navigator.of(context)
                    .pop();

                // TODO:
                // Navigate to PremiumPlanScreen.
              },
              child: Text(
                'Upgrade',
                style: TextStyle(
                  color: _chatAccentText,
                  fontWeight:
                      FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _sendQuickPrompt(
    String prompt,
  ) {
    _sendMessage(prompt);
  }

  // ============================================================
  // SCROLL
  // ============================================================

  void _scrollToBottom() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) {
      if (!_scrollController
          .hasClients) {
        return;
      }

      _scrollController.animateTo(
        _scrollController
            .position.maxScrollExtent,
        duration:
            const Duration(
          milliseconds: 250,
        ),
        curve:
            Curves.easeOut,
      );
    });
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(
    BuildContext context,
  ) {
    if (_isLoading) {
      return Scaffold(
        backgroundColor: AppColors.pageBackground(
          context,
          light: AppColors.dashboardBackground,
        ),
        body: Center(
          child:
              CircularProgressIndicator(),
        ),
      );
    }

    final hasMessages =
        _messages.isNotEmpty;

    return PopScope(
      canPop: true,
      onPopInvokedWithResult:
          (didPop, result) {
        _dismissKeyboard();
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColors.pageBackground(
          context,
          light: AppColors.dashboardBackground,
        ),
        resizeToAvoidBottomInset:
            true,
        endDrawer:
            _buildHistoryDrawer(),
        body: SafeArea(
          child: Column(
            children: [
              _buildHeader(),

              Divider(
                height: 1,
                thickness: 1,
                color: _chatBorder,
              ),

              Expanded(
                child: hasMessages
                    ? _buildChatMessages()
                    : _buildEmptyChat(),
              ),

              _buildMessageInput(),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================
  // HISTORY DRAWER
  // ============================================================

  Widget _buildHistoryDrawer() {
    final sorted =
        List<Map<String, dynamic>>.from(
      _chats,
    )..sort(
        (a, b) =>
            (b['updatedAt'] as String)
                .compareTo(
          a['updatedAt'] as String,
        ),
      );

    return Drawer(
      backgroundColor:
          AppColors.pageBackground(
        context,
        light: AppColors.dashboardBackground,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            // ==================================================
            // DRAWER HEADER
            // ==================================================

            Padding(
              padding:
                  const EdgeInsets.fromLTRB(
                20,
                20,
                20,
                12,
              ),
              child: Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration:
                        BoxDecoration(
                      color: _isDark
                          ? _chatSurface
                          : const Color(0xFFE0F3EF),
                      borderRadius:
                          BorderRadius
                              .circular(
                        13,
                      ),
                    ),
                    child:
                      Icon(
                      Icons
                          .chat_bubble_outline,
                      color:
                        _chatAccent,
                      size: 21,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      children: [
                        Text(
                          'Chat history',
                            style:
                              TextStyle(
                            fontWeight:
                                FontWeight
                                    .w700,
                            fontSize: 19,
                            color: _chatPrimaryText,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Continue a previous conversation',
                            style:
                              TextStyle(
                            fontWeight:
                                FontWeight
                                    .w400,
                            fontSize: 12,
                            color: _chatSecondaryText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // ==================================================
            // NEW CHAT BUTTON
            // ==================================================

            Padding(
              padding:
                  const EdgeInsets.fromLTRB(
                16,
                8,
                16,
                12,
              ),
              child: SizedBox(
                width:
                    double.infinity,
                child:
                    ElevatedButton.icon(
                  onPressed:
                      _isSending
                          ? null
                          : _startNewChat,
                  icon:
                      const Icon(
                    Icons.add,
                    color:
                        AppColors.white,
                  ),
                  label:
                      const Text(
                    'New chat',
                    style:
                        TextStyle(
                      color:
                          AppColors
                              .white,
                      fontWeight:
                          FontWeight
                              .w600,
                      fontSize: 15,
                    ),
                  ),
                  style:
                      ElevatedButton
                          .styleFrom(
                    backgroundColor: _chatAccent,
                    disabledBackgroundColor:
                      _chatAccent.withValues(
                      alpha:
                          0.45,
                    ),
                    padding:
                        const EdgeInsets
                            .symmetric(
                      vertical: 14,
                    ),
                    elevation: 0,
                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius
                              .circular(
                        14,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Divider(
              height: 1,
              color: _chatBorder,
            ),

            // ==================================================
            // SAVED CHATS
            // ==================================================

            Expanded(
              child: sorted.isEmpty
                  ? Center(
                      child: Padding(
                        padding:
                            EdgeInsets
                                .all(
                          24,
                        ),
                        child: Column(
                          mainAxisSize:
                              MainAxisSize
                                  .min,
                          children: [
                            Icon(
                              Icons
                                  .chat_bubble_outline,
                              size: 42,
                                color: _chatSecondaryText,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'No saved chats yet',
                              style:
                                  TextStyle(
                                color: _chatSecondaryText,
                                fontWeight:
                                    FontWeight
                                        .w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ListView
                      .separated(
                      padding:
                          const EdgeInsets
                              .symmetric(
                        vertical: 8,
                      ),
                      itemCount:
                          sorted.length,
                        separatorBuilder:
                          (_, __) =>
                            Divider(
                        height: 1,
                        indent: 16,
                        endIndent: 16,
                        color: _chatBorder,
                      ),
                      itemBuilder:
                          (context, index) {
                        final chat =
                            sorted[index];

                        final id =
                            chat['id']
                                as String;

                        final isActive =
                            id ==
                                _activeChatId;

                        return Padding(
                          padding:
                              const EdgeInsets
                                  .symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          child:
                              Material(
                            color: isActive
                                ? _chatAccent.withValues(
                                    alpha:
                                        0.08,
                                  )
                                : Colors
                                    .transparent,
                            borderRadius:
                                BorderRadius
                                    .circular(
                              14,
                            ),
                            child:
                                InkWell(
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                14,
                              ),
                              onTap: () =>
                                  _openChat(
                                id,
                              ),
                              child:
                                  Padding(
                                padding:
                                    const EdgeInsets
                                        .symmetric(
                                  horizontal:
                                      8,
                                  vertical:
                                      8,
                                ),
                                child:
                                    Row(
                                  children: [
                                    Container(
                                      width:
                                          40,
                                      height:
                                          40,
                                      decoration:
                                          BoxDecoration(
                                        color: isActive
                                            ? _chatAccent.withValues(
                                                alpha:
                                                    0.12,
                                              )
                                            : _chatSurface,
                                        borderRadius:
                                            BorderRadius
                                                .circular(
                                          12,
                                        ),
                                      ),
                                      child:
                                          Icon(
                                        Icons
                                            .chat_bubble_outline,
                                        color: isActive
                                          ? _chatAccent
                                          : _chatSecondaryText,
                                        size:
                                            19,
                                      ),
                                    ),
                                    const SizedBox(
                                      width:
                                          10,
                                    ),
                                    Expanded(
                                      child:
                                          Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment
                                                .start,
                                        children: [
                                          Text(
                                            chat['title']
                                                as String,
                                            maxLines:
                                                1,
                                            overflow:
                                                TextOverflow
                                                    .ellipsis,
                                            style:
                                                TextStyle(
                                              fontWeight: isActive
                                                  ? FontWeight
                                                      .w700
                                                  : FontWeight
                                                      .w500,
                                              fontSize:
                                                  14,
                                                color: _chatPrimaryText,
                                            ),
                                          ),
                                          const SizedBox(
                                            height:
                                                3,
                                          ),
                                          Text(
                                            _formatDate(
                                              chat['updatedAt']
                                                  as String,
                                            ),
                                            style:
                                              TextStyle(
                                              fontSize:
                                                  11,
                                                color: _chatSecondaryText,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      tooltip:
                                          'Delete chat',
                                      splashRadius:
                                          22,
                                      icon:
                                          const Icon(
                                        Icons
                                            .delete_outline,
                                        color:
                                            Colors
                                                .redAccent,
                                        size:
                                            21,
                                      ),
                                      onPressed:
                                          () =>
                                              _confirmDeleteChat(
                                        id,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // HEADER
  // ============================================================

  Widget _buildHeader() {
    final loc =
        AppLocalizations.of(context)!;

    return Padding(
      padding:
          const EdgeInsets.fromLTRB(
        12,
        10,
        8,
        10,
      ),
      child: Row(
        children: [
          // ==================================================
          // BACK
          // ==================================================

          InkWell(
            borderRadius:
                BorderRadius.circular(24),
            onTap: () {
              _dismissKeyboard();
              Navigator.of(context).pop();
            },
            child: SizedBox(
              width: 44,
              height: 44,
              child: Icon(
                Icons.chevron_left,
                color: _chatPrimaryText,
                size: 32,
              ),
            ),
          ),

          const SizedBox(
            width: 4,
          ),

          // ==================================================
          // COACH ICON
          // ==================================================

          Container(
            width: 44,
            height: 44,
            decoration:
                BoxDecoration(
              shape: BoxShape.circle,
              color: _isDark
                  ? _chatSurface
                  : const Color(0xFFE0F3EF),
            ),
            child: Icon(
              Icons.favorite_border,
              color: _chatAccent,
              size: 25,
            ),
          ),

          const SizedBox(
            width: 12,
          ),

          // ==================================================
          // TITLE
          // ==================================================

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment
                      .start,
              children: [
                Text(
                  loc.recoveryCoachTitle,
                    style:
                      TextStyle(
                    fontWeight:
                        FontWeight.w700,
                    fontSize: 18,
                    color: _chatPrimaryText,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  loc.onlineLabel,
                    style:
                      TextStyle(
                    fontWeight:
                        FontWeight.w500,
                    fontSize: 14,
                    color: _chatAccentText,
                  ),
                ),
              ],
            ),
          ),

          // ==================================================
          // VERTICAL THREE DOTS / HISTORY
          // ==================================================

          Padding(
            padding:
                const EdgeInsets.only(
              left: 4,
            ),
            child: Material(
              color:
                  Colors.transparent,
              child: InkWell(
                borderRadius:
                    BorderRadius.circular(
                  14,
                ),
                onTap: () {
                  _dismissKeyboard();

                  _scaffoldKey
                      .currentState
                      ?.openEndDrawer();
                },
                child: Container(
                  width: 44,
                  height: 44,
                  decoration:
                      BoxDecoration(
                    color: _chatSurface,
                    borderRadius:
                        BorderRadius.circular(
                      14,
                    ),
                    border: Border.all(
                      color:
                          AppColors
                              .outlineGrey,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black
                                .withValues(
                          alpha: 0.035,
                        ),
                        blurRadius: 8,
                        offset:
                            const Offset(
                          0,
                          2,
                        ),
                      ),
                    ],
                  ),
                 child: Icon(
  Icons.menu,
  color: _chatSecondaryText,
  size: 24,
),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // EMPTY CHAT
  // ============================================================

  Widget _buildEmptyChat() {
    final loc =
        AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding:
          const EdgeInsets.fromLTRB(
        24,
        40,
        24,
        24,
      ),
      child: Column(
        children: [
          // ==================================================
          // COACH HERO ICON
          // ==================================================

          Container(
            width: 92,
            height: 92,
            decoration:
                BoxDecoration(
              shape:
                  BoxShape.circle,
              gradient:
                  LinearGradient(
                begin:
                    Alignment.topLeft,
                end:
                    Alignment.bottomRight,
                colors: [
                  _chatAccent,
                  _chatAccent
                      .withValues(
                    alpha: 0.70,
                  ),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors
                      .primary
                      .withValues(
                    alpha: 0.28,
                  ),
                  blurRadius: 26,
                  offset:
                      const Offset(
                    0,
                    12,
                  ),
                ),
              ],
            ),
            child: const Icon(
              Icons.favorite,
              color:
                  AppColors.white,
              size: 38,
            ),
          ),

          const SizedBox(
            height: 22,
          ),

          Text(
            loc.chatGreeting(
              _userName,
            ),
            style:
                TextStyle(
              fontWeight:
                  FontWeight.w700,
              fontSize: 24,
                color: _chatPrimaryText,
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          Text(
            loc.chatDaysIntro(
              _daysSober,
            ),
            textAlign:
                TextAlign.center,
            style:
              TextStyle(
              fontWeight:
                  FontWeight.w400,
              fontSize: 15,
              height: 1.5,
                color: _chatSecondaryText,
            ),
          ),

          const SizedBox(
            height: 34,
          ),

          // ==================================================
          // QUICK PROMPTS TITLE
          // ==================================================

          Row(
            children: [
              Expanded(
                child: Divider(
                  color: _chatBorder,
                  thickness: 1,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets
                        .symmetric(
                  horizontal: 12,
                ),
                child: Text(
                  loc.quickPromptsLabel,
                    style:
                      TextStyle(
                    fontWeight:
                        FontWeight.w600,
                    fontSize: 12,
                    letterSpacing:
                        0.8,
                    color: _chatSecondaryText,
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  color: _chatBorder,
                  thickness: 1,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 18,
          ),

          // ==================================================
          // QUICK PROMPTS
          // ==================================================

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.35,
            children: [
              _buildQuickPrompt(
                icon: Icons
                    .local_fire_department_outlined,
                label:
                    loc.promptCravingLabel,
                subtitle:
                    loc.promptCravingSubtitle,
                iconColor:
                    const Color(
                  0xFFE96B45,
                ),
              ),
              _buildQuickPrompt(
                icon:
                    Icons.auto_awesome,
                label:
                    loc.promptMotivationLabel,
                subtitle:
                    loc.promptMotivationSubtitle,
                iconColor:
                    const Color(
                  0xFFE8A51C,
                ),
              ),
              _buildQuickPrompt(
                icon:
                    Icons.people_outline,
                label:
                    loc.promptSocialLabel,
                subtitle:
                    loc.promptSocialSubtitle,
                iconColor:
                    const Color(
                  0xFF3985C6,
                ),
              ),
              _buildQuickPrompt(
                icon: Icons
                    .sentiment_dissatisfied_outlined,
                label:
                    loc.promptSlippedLabel,
                subtitle:
                    loc.promptSlippedSubtitle,
                iconColor:
                    const Color(
                  0xFFD95353,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ============================================================
  // CHAT MESSAGES
  // ============================================================

  Widget _buildChatMessages() {
    return ListView.builder(
      controller:
          _scrollController,
      padding:
          const EdgeInsets.fromLTRB(
        16,
        24,
        16,
        20,
      ),
      itemCount:
          _messages.length +
              (_isSending ? 1 : 0),
      itemBuilder:
          (context, index) {
        if (_isSending &&
            index == _messages.length) {
          return _buildTypingIndicator();
        }

        final message =
            _messages[index];

        final role =
            message['role'];

        final text =
            message['text'] ?? '';

        return Padding(
          padding:
              const EdgeInsets.only(
            bottom: 18,
          ),
          child: role == 'user'
              ? _buildUserMessage(
                  text,
                )
              : _buildCoachMessage(
                  text,
                ),
        );
      },
    );
  }

  // ============================================================
  // COACH MESSAGE
  // ============================================================

  Widget _buildCoachMessage(
    String text,
  ) {
    return Row(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration:
            BoxDecoration(
            shape:
                BoxShape.circle,
          color: _isDark
            ? _chatSurface
            : const Color(0xFFE0F3EF),
          ),
          child: Icon(
            Icons.favorite_border,
          color: _chatAccent,
            size: 23,
          ),
        ),

        const SizedBox(
          width: 10,
        ),

        Flexible(
          child: Container(
            padding:
                const EdgeInsets
                    .symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            decoration:
                BoxDecoration(
                color: _chatSurface,
              borderRadius:
                  const BorderRadius
                      .only(
                topLeft:
                    Radius.circular(4),
                topRight:
                    Radius.circular(20),
                bottomLeft:
                    Radius.circular(20),
                bottomRight:
                    Radius.circular(20),
              ),
              border: Border.all(
                color: _chatBorder,
              ),
            ),
            child:
                MarkdownBody(
              data: text,
              selectable: true,
              styleSheet:
                  MarkdownStyleSheet(
                p:
                    TextStyle(
                  fontWeight:
                      FontWeight.w400,
                  fontSize: 15,
                  height: 1.45,
                    color: _chatPrimaryText,
                ),
                strong:
                    TextStyle(
                  fontWeight:
                      FontWeight.w700,
                  fontSize: 15,
                  height: 1.45,
                    color: _chatPrimaryText,
                ),
                em:
                    TextStyle(
                  fontStyle:
                      FontStyle.italic,
                  fontSize: 15,
                  height: 1.45,
                    color: _chatPrimaryText,
                ),
                listBullet:
                    TextStyle(
                  fontWeight:
                      FontWeight.w400,
                  fontSize: 15,
                    color: _chatPrimaryText,
                ),
                h1:
                    TextStyle(
                  fontWeight:
                      FontWeight.w700,
                  fontSize: 18,
                    color: _chatPrimaryText,
                ),
                h2:
                    TextStyle(
                  fontWeight:
                      FontWeight.w700,
                  fontSize: 17,
                    color: _chatPrimaryText,
                ),
                h3:
                    TextStyle(
                  fontWeight:
                      FontWeight.w700,
                  fontSize: 16,
                    color: _chatPrimaryText,
                ),
                code:
                    TextStyle(
                  fontSize: 13,
                  backgroundColor: _isDark
                      ? AppColors.pageBackground(
                          context,
                          light: const Color(0xFFF0F0F0),
                        )
                      : const Color(0xFFF0F0F0),
                    color: _chatPrimaryText,
                ),
                blockSpacing: 8,
                listIndent: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // USER MESSAGE
  // ============================================================

  Widget _buildUserMessage(
    String text,
  ) {
    return Align(
      alignment:
          Alignment.centerRight,
      child: Container(
        constraints:
            const BoxConstraints(
          maxWidth: 310,
        ),
        padding:
            const EdgeInsets
                .symmetric(
          horizontal: 18,
          vertical: 14,
        ),
        decoration:
            BoxDecoration(
          color: AppColors.isDark(context)
              ? const Color(0xFF1976D2)
              : AppColors.primary,
          borderRadius:
              BorderRadius.only(
            topLeft:
                Radius.circular(20),
            topRight:
                Radius.circular(4),
            bottomLeft:
                Radius.circular(20),
            bottomRight:
                Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style:
              TextStyle(
            fontWeight:
                FontWeight.w500,
            fontSize: 15,
            height: 1.45,
            color: AppColors.primaryText(
              context,
              light: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // TYPING INDICATOR
  // ============================================================

  Widget _buildTypingIndicator() {
    return Row(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration:
            BoxDecoration(
            shape:
                BoxShape.circle,
          color: _isDark
            ? _chatSurface
            : const Color(0xFFE0F3EF),
          ),
          child: Icon(
            Icons.favorite_border,
          color: _chatAccent,
            size: 23,
          ),
        ),

        const SizedBox(
          width: 10,
        ),

        Container(
          padding:
              const EdgeInsets
                  .symmetric(
            horizontal: 18,
            vertical: 15,
          ),
          decoration:
              BoxDecoration(
            color: _chatSurface,
            borderRadius:
                BorderRadius.circular(
              20,
            ),
            border: Border.all(
                color: _chatBorder,
            ),
          ),
          child: SizedBox(
            width: 30,
            height: 16,
            child: Center(
              child: Text(
                '•••',
                style:
                    TextStyle(
                  fontSize: 18,
                  letterSpacing: 3,
                    color: _chatSecondaryText,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // QUICK PROMPT CARD
  // ============================================================

  Widget _buildQuickPrompt({
    required IconData icon,
    required String label,
    required String subtitle,
    required Color iconColor,
  }) {
    return Material(
      color:
          Colors.transparent,
      child: InkWell(
        borderRadius:
            BorderRadius.circular(
          20,
        ),
        onTap: () {
          _sendQuickPrompt(
            label,
          );
        },
        child: Container(
          padding:
              const EdgeInsets.all(
            14,
          ),
          decoration:
              BoxDecoration(
            color: _chatSurface,
            borderRadius:
                BorderRadius.circular(
              20,
            ),
            border: Border.all(
                color: _chatBorder,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black
                    .withValues(
                  alpha: 0.03,
                ),
                blurRadius: 12,
                offset:
                    const Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment
                    .start,
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration:
                    BoxDecoration(
                  color: iconColor
                      .withValues(
                    alpha: 0.12,
                  ),
                  shape:
                      BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  size: 18,
                  color:
                      iconColor,
                ),
              ),

              const Spacer(),

              Text(
                label,
                maxLines: 1,
                overflow:
                    TextOverflow.ellipsis,
                style:
                  TextStyle(
                  fontWeight:
                      FontWeight.w600,
                  fontSize: 14,
                    color: _chatPrimaryText,
                ),
              ),

              const SizedBox(
                height: 3,
              ),

              Text(
                subtitle,
                maxLines: 1,
                overflow:
                    TextOverflow.ellipsis,
                style:
                  TextStyle(
                  fontWeight:
                      FontWeight.w400,
                  fontSize: 11,
                    color: _chatSecondaryText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================
  // MESSAGE INPUT
  // ============================================================

  Widget _buildMessageInput() {
    final loc =
        AppLocalizations.of(context)!;

    final int remaining =
        (_freeDailyLimit -
                _messagesUsedToday)
            .clamp(
      0,
      _freeDailyLimit,
    );

    return Container(
      padding:
          const EdgeInsets.fromLTRB(
        16,
        10,
        16,
        16,
      ),
      decoration:
          BoxDecoration(
        color: AppColors.pageBackground(
          context,
          light: AppColors.dashboardBackground,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withValues(
              alpha: 0.04,
            ),
            blurRadius: 12,
            offset:
                const Offset(
              0,
              -3,
            ),
          ),
        ],
      ),
      child: Column(
        mainAxisSize:
            MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment:
                CrossAxisAlignment
                    .end,
            children: [
              // ==================================================
              // TEXT FIELD
              // ==================================================

              Expanded(
                child: Container(
                  constraints:
                      const BoxConstraints(
                    minHeight: 52,
                    maxHeight: 120,
                  ),
                  decoration:
                      BoxDecoration(
                    color: _chatSurface,
                    borderRadius:
                        BorderRadius.circular(
                      28,
                    ),
                    border: _isListening
                        ? Border.all(
                            color: Colors.redAccent,
                          )
                        : _isDark
                            ? null
                            : Border.all(
                                color: _chatBorder,
                              ),
                  ),
                  child:
                      TextField(
                    controller:
                        _messageController,
                    enabled:
                        !_isSending,
                    minLines: 1,
                    maxLines: 4,
                    textInputAction:
                        TextInputAction
                            .newline,
                    style:
                      TextStyle(
                      fontSize: 15,
                        color: _chatPrimaryText,
                    ),
                    decoration:
                        InputDecoration(
                      hintText:
                          _isListening
                              ? 'Listening…'
                              : loc
                                  .typeMessageHint,
                      hintStyle:
                          TextStyle(
                        color: _isDark
                            ? Colors.white70
                            : AppColors.textLightGrey,
                        fontSize: 15,
                      ),
                      contentPadding:
                          const EdgeInsets
                              .symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                      border:
                          InputBorder.none,
                        enabledBorder:
                          InputBorder.none,
                        focusedBorder:
                          InputBorder.none,
                        disabledBorder:
                          InputBorder.none,
                        errorBorder:
                          InputBorder.none,
                        focusedErrorBorder:
                          InputBorder.none,
                    ),
                    onSubmitted: (_) {
                      if (!_isSending) {
                        _sendMessage();
                      }
                    },
                  ),
                ),
              ),

              const SizedBox(
                width: 8,
              ),

              // ==================================================
              // MIC
              // ==================================================

              Material(
                color:
                    Colors.transparent,
                child: InkWell(
                  borderRadius:
                      BorderRadius.circular(
                    30,
                  ),
                  onTap: _isSending
                      ? null
                      : _toggleListening,
                  child:
                      AnimatedContainer(
                    duration:
                        const Duration(
                      milliseconds: 180,
                    ),
                    width: 54,
                    height: 54,
                    decoration:
                        BoxDecoration(
                      shape:
                          BoxShape.circle,
                      color: _isListening
                          ? Colors
                              .redAccent
                            : _chatSurface,
                      border:
                          Border.all(
                        color: _isListening
                            ? Colors
                                .redAccent
                            : _chatBorder,
                      ),
                      boxShadow: [
                        if (!_isListening)
                          BoxShadow(
                            color: Colors
                                .black
                                .withValues(
                              alpha:
                                  0.025,
                            ),
                            blurRadius:
                                8,
                            offset:
                                const Offset(
                              0,
                              2,
                            ),
                          ),
                      ],
                    ),
                    child: Icon(
                      _isListening
                          ? Icons.stop
                          : Icons
                              .mic_none,
                      color:
                          _isListening
                              ? AppColors
                                  .white
                                : _chatAccent,
                      size: 25,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                width: 8,
              ),

              // ==================================================
              // SEND
              // ==================================================

              Material(
                color:
                    Colors.transparent,
                child: InkWell(
                  borderRadius:
                      BorderRadius.circular(
                    30,
                  ),
                  onTap: _isSending
                      ? null
                      : () {
                          _sendMessage();
                        },
                  child:
                      AnimatedContainer(
                    duration:
                        const Duration(
                      milliseconds: 180,
                    ),
                    width: 54,
                    height: 54,
                    decoration:
                        BoxDecoration(
                      shape:
                          BoxShape.circle,
                      color: _isSending
                            ? _chatAccent.withValues(
                              alpha:
                                  0.5,
                            )
                            : _chatAccent,
                    ),
                    child:
                        const Icon(
                      Icons
                          .send_outlined,
                      color:
                          AppColors.white,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // ==================================================
          // FREE MESSAGES LEFT
          // ==================================================

          if (!_isPremium)
            Padding(
              padding:
                  const EdgeInsets.only(
                top: 8,
              ),
              child: Text(
                '$remaining / $_freeDailyLimit free messages left today',
                style:
                    TextStyle(
                  fontSize: 12,
                  color: remaining == 0
                      ? Colors
                          .redAccent
                        : _chatSecondaryText,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
