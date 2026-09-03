import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../constants/app_colors.dart';
import '../../services/home_dashboard_service.dart';
import '../../services/local_storage_service.dart';
import '../../services/recovery_coach_chat_service.dart';
import '../../services/premium_service.dart';
import '../../services/chat_usage_service.dart';

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

  static const String _chatStorageKey = 'recovery_coach_chat_history';

  // ============================================================
  // FREE-TIER LIMIT
  // ============================================================

  static const int _freeDailyLimit = 3;

  // ============================================================
  // CONTROLLERS
  // ============================================================

  final TextEditingController _messageController = TextEditingController();

  final ScrollController _scrollController = ScrollController();

  // ============================================================
  // SERVICES
  // ============================================================

  final LocalStorageService _storage = LocalStorageService.instance;

  final HomeDashboardService _dashboardService =
      HomeDashboardService.instance;

  final RecoveryCoachChatService _coachService =
      RecoveryCoachChatService.instance;

  // ============================================================
  // CHAT MESSAGES
  // ============================================================

  final List<Map<String, String>> _messages = <Map<String, String>>[];

  // ============================================================
  // STATE
  // ============================================================

  bool _isLoading = true;
  bool _isSending = false;

  int _daysSober = 0;

  String _userName = 'there';

  bool _isPremium = false;
  int _messagesUsedToday = 0;

  // ============================================================
  // INIT
  // ============================================================

  @override
  void initState() {
    super.initState();
    _loadChat();
  }

  // ============================================================
  // DISPOSE
  // ============================================================

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  // ============================================================
  // LOAD CHAT
  // ============================================================

  Future<void> _loadChat() async {
    try {
      // ----------------------------------------------------------
      // LOAD LOCAL CHAT
      // ----------------------------------------------------------

      final Map<String, dynamic>? saved =
      await _storage.getJson(_chatStorageKey);

      // ----------------------------------------------------------
      // LOAD USER DATA
      // ----------------------------------------------------------

      final days = await _dashboardService.getDaysSober();

      final name = await _dashboardService.getUserName();

      // ----------------------------------------------------------
      // LOAD PREMIUM + USAGE STATE
      // ----------------------------------------------------------

      final isPremium = await PremiumService.instance.isPremium();

      final messagesUsedToday =
      await ChatUsageService.instance.getTodayCount();

      // ----------------------------------------------------------
      // CLEAR CURRENT MEMORY
      // ----------------------------------------------------------

      _messages.clear();

      // ----------------------------------------------------------
      // READ SAVED CHAT
      // ----------------------------------------------------------

      if (saved != null) {
        final rawMessages = saved['messages'];

        if (rawMessages is List) {
          for (final item in rawMessages) {
            if (item is Map) {
              final role = item['role']?.toString().trim();

              final text = item['text']?.toString().trim();

              if ((role == 'user' || role == 'model') &&
                  text != null &&
                  text.isNotEmpty) {
                _messages.add({
                  'role': role!,
                  'text': text,
                });
              }
            }
          }
        }
      }

      // ----------------------------------------------------------
      // UPDATE STATE
      // ----------------------------------------------------------

      if (!mounted) return;

      setState(() {
        _daysSober = days;

        if (name != null && name.trim().isNotEmpty) {
          _userName = name.trim().split(RegExp(r'\s+')).first;
        } else {
          _userName = 'there';
        }

        _isPremium = isPremium;
        _messagesUsedToday = messagesUsedToday;

        _isLoading = false;
      });

      _scrollToBottom();
    } catch (e) {
      debugPrint('Recovery Coach load error: $e');

      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });
    }
  }

  // ============================================================
  // SAVE CHAT LOCALLY
  // ============================================================

  Future<void> _saveChat() async {
    try {
      await _storage.setJson(
        _chatStorageKey,
        {
          'messages': _messages
              .map(
                (message) => {
              'role': message['role'],
              'text': message['text'],
            },
          )
              .toList(),
        },
      );
    } catch (e) {
      debugPrint('Recovery Coach save error: $e');
    }
  }

  // ============================================================
  // SEND MESSAGE
  // ============================================================

  Future<void> _sendMessage([String? quickPrompt]) async {
    final text = (quickPrompt ?? _messageController.text).trim();

    // ----------------------------------------------------------
    // VALIDATE
    // ----------------------------------------------------------

    if (text.isEmpty || _isSending) {
      return;
    }

    final loc = AppLocalizations.of(context)!;

    // ----------------------------------------------------------
    // FREE-TIER DAILY LIMIT
    // ----------------------------------------------------------

    if (!_isPremium && _messagesUsedToday >= _freeDailyLimit) {
      _showPaywallDialog(
        title: loc.dailyLimitReachedTitle,
        message: loc.dailyLimitReachedMessage(_freeDailyLimit),
      );
      return;
    }

    // ----------------------------------------------------------
    // CLEAR INPUT
    // ----------------------------------------------------------

    _messageController.clear();

    // ----------------------------------------------------------
    // ADD USER MESSAGE TO UI
    // ----------------------------------------------------------

    setState(() {
      _messages.add({
        'role': 'user',
        'text': text,
      });

      _isSending = true;
    });

    _scrollToBottom();

    // ----------------------------------------------------------
    // SAVE USER MESSAGE LOCALLY
    // ----------------------------------------------------------

    await _saveChat();

    try {
      // ========================================================
      // GET PROFILE
      // ========================================================

      final profile = await _dashboardService.getProfile() ??
          <String, dynamic>{};

      // ========================================================
      // GET STATS
      // ========================================================

      final stats = await _dashboardService.getStats();

      // ========================================================
      // BUILD USER DATA
      // ========================================================

      final userData = <String, dynamic>{
        'name': profile['name'] ?? _userName,
        'goal': profile['goal'] ?? 'Reduce drinking',
        'drinkingLevel': profile['drinkingLevel'] ?? '',
        'drinksPerWeek': profile['drinksPerWeek'] ?? 0,
        'triggers': profile['triggers'] ?? <dynamic>[],
        'quitReasons': profile['quitReasons'] ?? <dynamic>[],
        'daysSober': _daysSober,
        'currentStreak': _daysSober,
        'moneySaved': stats['moneySaved'] ?? 0,
        'drinksAvoided': stats['drinksAvoided'] ?? 0,
      };

      // ========================================================
      // CREATE GEMINI HISTORY
      // ========================================================

      final conversationHistory = <Map<String, dynamic>>[];

      for (final message in _messages) {
        final role = message['role'];

        final messageText = message['text'];

        if (role == null ||
            messageText == null ||
            messageText.trim().isEmpty) {
          continue;
        }

        if (role != 'user' && role != 'model') {
          continue;
        }

        conversationHistory.add({
          'role': role,
          'text': messageText.trim(),
        });
      }

      // ========================================================
      // DEBUG
      // ========================================================

      debugPrint('================================================');
      debugPrint('RECOVERY COACH');
      debugPrint('Messages: ${conversationHistory.length}');
      debugPrint(
        'Latest role: '
            '${conversationHistory.isNotEmpty ? conversationHistory.last['role'] : 'NONE'}',
      );
      debugPrint(
        'Latest text: '
            '${conversationHistory.isNotEmpty ? conversationHistory.last['text'] : 'NONE'}',
      );
      debugPrint('================================================');

      // ========================================================
      // SEND TO GEMINI
      // ========================================================

      final response = await _coachService.sendMessage(
        userData: userData,
        conversationHistory: conversationHistory,
      );

      // ========================================================
      // ADD AI RESPONSE
      // ========================================================

      if (!mounted) return;

      setState(() {
        _messages.add({
          'role': 'model',
          'text': response,
        });

        _isSending = false;
      });

      // ========================================================
      // RECORD USAGE (only on success — a failed send shouldn't
      // cost the user a free message)
      // ========================================================

      final updatedCount =
      await ChatUsageService.instance.incrementTodayCount();

      if (mounted) {
        setState(() {
          _messagesUsedToday = updatedCount;
        });
      }

      // ========================================================
      // SAVE COMPLETE CHAT
      // ========================================================

      await _saveChat();

      _scrollToBottom();
    } catch (e) {
      // ========================================================
      // ERROR
      // ========================================================

      debugPrint('================================================');
      debugPrint('RECOVERY COACH ERROR');
      debugPrint(e.toString());
      debugPrint('================================================');

      if (!mounted) return;

      // --------------------------------------------------------
      // REMOVE FAILED USER MESSAGE
      // --------------------------------------------------------

      if (_messages.isNotEmpty &&
          _messages.last['role'] == 'user' &&
          _messages.last['text'] == text) {
        _messages.removeLast();
      }

      setState(() {
        _isSending = false;
      });

      await _saveChat();

      // --------------------------------------------------------
      // SHOW ERROR
      // --------------------------------------------------------

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.coachConnectError),
        ),
      );

      _scrollToBottom();
    }
  }

  // ============================================================
  // PAYWALL DIALOG
  // ============================================================

  Future<void> _showPaywallDialog({
    required String title,
    required String message,
  }) {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          title: Text(
            title,
            style: const TextStyle(
              color: AppColors.textBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          content: Text(
            message,
            style: const TextStyle(color: AppColors.textGrey),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Maybe later'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // TODO: navigate to PremiumPlanScreen once its route
                // is reachable from here.
              },
              child: const Text(
                'Upgrade',
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // ============================================================
  // QUICK PROMPT
  // ============================================================

  void _sendQuickPrompt(String prompt) {
    _sendMessage(prompt);
  }

  // ============================================================
  // SCROLL
  // ============================================================

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) {
        return;
      }

      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    });
  }

  // ============================================================
  // CLEAR CHAT
  // ============================================================

  Future<void> _clearChat() async {
    final loc = AppLocalizations.of(context)!;

    final shouldClear = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          title: Text(
            loc.clearConversationTitle,
            style: const TextStyle(
              color: AppColors.textBlack,
              fontWeight: FontWeight.w700,
            ),
          ),
          content: Text(
            loc.clearConversationMessage,
            style: const TextStyle(color: AppColors.textGrey),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text(
                loc.clearLabel,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );

    if (shouldClear != true) {
      return;
    }

    // ----------------------------------------------------------
    // CLEAR MEMORY
    // ----------------------------------------------------------

    _messages.clear();

    // ----------------------------------------------------------
    // CLEAR LOCAL STORAGE
    // ----------------------------------------------------------

    await _storage.setJson(
      _chatStorageKey,
      {
        'messages': <Map<String, String>>[],
      },
    );

    if (!mounted) return;

    setState(() {});

    _scrollToBottom();
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: AppColors.dashboardBackground,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final hasMessages = _messages.isNotEmpty;

    return Scaffold(
      backgroundColor: AppColors.dashboardBackground,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),

            const Divider(
              height: 1,
              thickness: 1,
              color: AppColors.outlineGrey,
            ),

            Expanded(
              child: hasMessages ? _buildChatMessages() : _buildEmptyChat(),
            ),

            _buildMessageInput(),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // HEADER
  // ============================================================

  Widget _buildHeader() {
    final loc = AppLocalizations.of(context)!;
    final hasMessages = _messages.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
      child: Row(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(24),
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const SizedBox(
              width: 44,
              height: 44,
              child: Icon(
                Icons.chevron_left,
                color: AppColors.textBlack,
                size: 32,
              ),
            ),
          ),

          const SizedBox(width: 4),

          Container(
            width: 44,
            height: 44,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFE0F3EF),
            ),
            child: const Icon(
              Icons.favorite_border,
              color: AppColors.primary,
              size: 25,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  loc.recoveryCoachTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: AppColors.textBlack,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  loc.onlineLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),

          if (hasMessages)
            PopupMenuButton<String>(
              icon: const Icon(
                Icons.more_vert,
                color: AppColors.textGrey,
              ),
              onSelected: (value) {
                if (value == 'clear') {
                  _clearChat();
                }
              },
              itemBuilder: (_) => [
                PopupMenuItem(
                  value: 'clear',
                  child: Text(loc.clearConversationMenuItem),
                ),
              ],
            ),
        ],
      ),
    );
  }

  // ============================================================
  // EMPTY CHAT
  // ============================================================

  Widget _buildEmptyChat() {
    final loc = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
      child: Column(
        children: [
          // --------------------------------------------------------
          // HERO AVATAR
          // --------------------------------------------------------

          Container(
            width: 92,
            height: 92,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.primary,
                  AppColors.primary.withOpacity(0.7),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.28),
                  blurRadius: 26,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: const Icon(
              Icons.favorite,
              color: AppColors.white,
              size: 38,
            ),
          ),

          const SizedBox(height: 22),

          // --------------------------------------------------------
          // GREETING
          // --------------------------------------------------------

          Text(
            loc.chatGreeting(_userName),
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: AppColors.textBlack,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            loc.chatDaysIntro(_daysSober),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              height: 1.5,
              color: AppColors.textGrey,
            ),
          ),

          const SizedBox(height: 34),

          // --------------------------------------------------------
          // SECTION DIVIDER
          // --------------------------------------------------------

          Row(
            children: [
              const Expanded(
                child: Divider(
                  color: AppColors.outlineGrey,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  loc.quickPromptsLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.8,
                    color: AppColors.textLightGrey,
                  ),
                ),
              ),
              const Expanded(
                child: Divider(
                  color: AppColors.outlineGrey,
                  thickness: 1,
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          // --------------------------------------------------------
          // QUICK PROMPT CARDS
          // --------------------------------------------------------

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.35,
            children: [
              _buildQuickPrompt(
                icon: Icons.local_fire_department_outlined,
                label: loc.promptCravingLabel,
                subtitle: loc.promptCravingSubtitle,
                iconColor: const Color(0xFFE96B45),
              ),
              _buildQuickPrompt(
                icon: Icons.auto_awesome,
                label: loc.promptMotivationLabel,
                subtitle: loc.promptMotivationSubtitle,
                iconColor: const Color(0xFFE8A51C),
              ),
              _buildQuickPrompt(
                icon: Icons.people_outline,
                label: loc.promptSocialLabel,
                subtitle: loc.promptSocialSubtitle,
                iconColor: const Color(0xFF3985C6),
              ),
              _buildQuickPrompt(
                icon: Icons.sentiment_dissatisfied_outlined,
                label: loc.promptSlippedLabel,
                subtitle: loc.promptSlippedSubtitle,
                iconColor: const Color(0xFFD95353),
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
      controller: _scrollController,
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 20),
      itemCount: _messages.length + (_isSending ? 1 : 0),
      itemBuilder: (context, index) {
        if (_isSending && index == _messages.length) {
          return _buildTypingIndicator();
        }

        final message = _messages[index];

        final role = message['role'];

        final text = message['text'] ?? '';

        if (role == 'user') {
          return Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: _buildUserMessage(text),
          );
        }

        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: _buildCoachMessage(text),
        );
      },
    );
  }

  // ============================================================
  // COACH MESSAGE
  // ============================================================

  Widget _buildCoachMessage(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFE0F3EF),
          ),
          child: const Icon(
            Icons.favorite_border,
            color: AppColors.primary,
            size: 23,
          ),
        ),

        const SizedBox(width: 10),

        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border.all(color: AppColors.outlineGrey),
            ),
            child: MarkdownBody(
              data: text,
              selectable: true,
              styleSheet: MarkdownStyleSheet(
                p: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  height: 1.45,
                  color: AppColors.textBlack,
                ),
                strong: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  height: 1.45,
                  color: AppColors.textBlack,
                ),
                em: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  height: 1.45,
                  color: AppColors.textBlack,
                ),
                listBullet: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.textBlack,
                ),
                h1: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: AppColors.textBlack,
                ),
                h2: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: AppColors.textBlack,
                ),
                h3: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColors.textBlack,
                ),
                code: const TextStyle(
                  fontSize: 13,
                  backgroundColor: Color(0xFFF0F0F0),
                  color: AppColors.textBlack,
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

  Widget _buildUserMessage(String text) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 310),
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 14,
        ),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            height: 1.45,
            color: AppColors.white,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFE0F3EF),
          ),
          child: const Icon(
            Icons.favorite_border,
            color: AppColors.primary,
            size: 23,
          ),
        ),

        const SizedBox(width: 10),

        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.outlineGrey),
          ),
          child: const SizedBox(
            width: 30,
            height: 16,
            child: Center(
              child: Text(
                '•••',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 3,
                  color: AppColors.textGrey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // QUICK PROMPT
  // ============================================================

  Widget _buildQuickPrompt({
    required IconData icon,
    required String label,
    required String subtitle,
    required Color iconColor,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        _sendQuickPrompt(label);
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.outlineGrey),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 18, color: iconColor),
            ),
            const Spacer(),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: AppColors.textBlack,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 11,
                color: AppColors.textGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // MESSAGE INPUT
  // ============================================================

  Widget _buildMessageInput() {
    final loc = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
      decoration: BoxDecoration(
        color: AppColors.dashboardBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              constraints: const BoxConstraints(
                minHeight: 52,
                maxHeight: 120,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: AppColors.outlineGrey),
              ),
              child: TextField(
                controller: _messageController,
                enabled: !_isSending,
                minLines: 1,
                maxLines: 4,
                textInputAction: TextInputAction.newline,
                style: const TextStyle(
                  fontSize: 15,
                  color: AppColors.textBlack,
                ),
                decoration: InputDecoration(
                  hintText: loc.typeMessageHint,
                  hintStyle: const TextStyle(
                    color: AppColors.textLightGrey,
                    fontSize: 15,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),
                  border: InputBorder.none,
                ),
                onSubmitted: (_) {
                  if (!_isSending) {
                    _sendMessage();
                  }
                },
              ),
            ),
          ),

          const SizedBox(width: 10),

          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: _isSending
                ? null
                : () {
              _sendMessage();
            },
            child: Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _isSending
                    ? AppColors.primary.withOpacity(0.5)
                    : AppColors.primary,
              ),
              child: const Icon(
                Icons.send_outlined,
                color: AppColors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}