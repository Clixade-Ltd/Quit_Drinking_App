import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
import 'package:new_quit_drinking_app/screens/weekly_report/weekly_report_screen.dart';

import '../../../constants/app_colors.dart';
import '../../../models/daily_update_cache.dart';
import '../../../services/premium_service.dart';
import '../../../services/weekly_report_service.dart';

class TodayPromptCard extends StatefulWidget {
  const TodayPromptCard({
    super.key,
    required this.userData,
  });

  final Map<String, dynamic> userData;

  @override
  State<TodayPromptCard> createState() => _TodayPromptCardState();
}

class _TodayPromptCardState extends State<TodayPromptCard> {
  Future<String>? _promptFuture;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Runs after initState, when context is safely attached to the
    // widget tree, so Localizations.localeOf(context) works here.
    // The null-check guard makes sure the future is created only
    // once (not on every locale-independent rebuild).
    _promptFuture ??= _loadPrompt();
  }

  Future<String> _loadPrompt() {
    final languageCode = Localizations.localeOf(context).languageCode;

    return DailyUpdateCache.instance.getTodaysJournalPrompt(
      widget.userData,
      languageCode: languageCode,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.auto_awesome,
                size: 18,
                color: AppColors.primary,
              ),
              const SizedBox(width: 6),
              Text(
                l10n.todaysPrompt,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppColors.primary,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.22),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  l10n.aiGenerated,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          FutureBuilder<String>(
            future: _promptFuture,
            builder: (
                context,
                snapshot,
                ) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const SizedBox(
                  height: 18,
                  width: 18,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              }

              if (snapshot.hasError ||
                  !snapshot.hasData ||
                  snapshot.data!.trim().isEmpty) {
                return Text(
                  l10n.defaultJournalPrompt,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.4,
                    fontStyle: FontStyle.italic,
                    color: AppColors.textBlack,
                  ),
                );
              }

              return Text(
                '"${snapshot.data!.trim()}"',
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.4,
                  fontStyle: FontStyle.italic,
                  color: AppColors.textBlack,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// =========================================================
// AI JOURNAL INSIGHTS (premium-aware)
// =========================================================

class JournalInsightsPremiumCard extends StatefulWidget {
  const JournalInsightsPremiumCard({
    super.key,
    this.onTap,
  });

  /// Called ONLY when the user is NOT premium and taps the card.
  /// Hook this to your paywall / upgrade flow.
  final VoidCallback? onTap;

  @override
  State<JournalInsightsPremiumCard> createState() =>
      _JournalInsightsPremiumCardState();
}

class _JournalInsightsPremiumCardState
    extends State<JournalInsightsPremiumCard> {
  bool _isLoading = true;
  bool _isPremium = false;
  bool _hasError = false;
  List<String> _insights = [];

  @override
  void initState() {
    super.initState();
    _load();

    PremiumService.instance.addListener(_onPremiumChanged);
  }

  @override
  void dispose() {
    PremiumService.instance.removeListener(_onPremiumChanged);
    super.dispose();
  }

  void _onPremiumChanged() {
    if (!mounted) return;

    setState(() {
      _isLoading = true;
      _hasError = false;
    });

    _load();
  }

  Future<void> _load() async {
    final isPremium = await PremiumService.instance.isPremium();

    if (!mounted) return;

    if (!isPremium) {
      setState(() {
        _isPremium = false;
        _isLoading = false;
      });
      return;
    }

    try {
      final report =
      await WeeklyReportService.instance.getWeeklyReport();

      final insights = (report['journalInsights'] as List?)
          ?.map((e) => e.toString())
          .toList() ??
          <String>[];

      if (!mounted) return;

      setState(() {
        _isPremium = true;
        _insights = insights;
        _hasError = false;
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;

      setState(() {
        _isPremium = true;
        _hasError = true;
        _isLoading = false;
      });
    }
  }

  void _handleTap() {
    if (!_isPremium) {
      widget.onTap?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return InkWell(
      onTap: _isLoading ? null : _handleTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.08),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.primary.withOpacity(0.25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  _isPremium
                      ? Icons.auto_awesome
                      : Icons.lock_outline,
                  size: 18,
                  color: AppColors.primary,
                ),
                const SizedBox(width: 6),
                Text(
                  l10n.aiJournalInsights,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: AppColors.textBlack,
                  ),
                ),
                const Spacer(),
                if (!_isPremium)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.18),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      l10n.premiumBadgeLabel,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            if (_isLoading)
              const SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              )
            else if (!_isPremium)
              Text(
                l10n.unlockJournalInsightsMessage,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.4,
                  color: AppColors.textGrey,
                ),
              )
            else if (_hasError || _insights.isEmpty)
                Text(
                  l10n.notEnoughJournalData,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.4,
                    color: AppColors.textGrey,
                  ),
                )
              else
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final insight in _insights.take(3)) ...[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: Icon(
                              Icons.circle,
                              size: 5,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              insight,
                              style: const TextStyle(
                                fontSize: 13,
                                height: 1.4,
                                color: AppColors.textGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                    ],
                  ],
                ),
          ],
        ),
      ),
    );
  }
}