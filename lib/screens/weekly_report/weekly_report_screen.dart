import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/premium_plan_screen.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../services/premium_service.dart';
import '../../services/weekly_report_service.dart';

class WeeklyReportScreen extends StatefulWidget {
  const WeeklyReportScreen({super.key});

  @override
  State<WeeklyReportScreen> createState() => _WeeklyReportScreenState();
}

class _WeeklyReportScreenState extends State<WeeklyReportScreen> {
  bool _isLoading = true;
  bool _isPremium = false;
  bool _hasError = false;

  List<String> _journalInsights = [];
  Map<String, dynamic> _summary = {};

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load({bool forceRegenerate = false}) async {
    setState(() {
      _isLoading = true;
      _hasError = false;
    });

    final isPremium = await PremiumService.instance.isPremium();

    if (!isPremium) {
      if (!mounted) return;
      setState(() {
        _isPremium = false;
        _isLoading = false;
      });
      return;
    }

    try {
      final report = await WeeklyReportService.instance.getWeeklyReport(
        forceRegenerate: forceRegenerate,
      );

      final insights = (report['journalInsights'] as List?)
          ?.map((e) => e.toString())
          .toList() ??
          <String>[];

      final summaryRaw = report['weeklySummary'];
      final summary = summaryRaw is Map
          ? Map<String, dynamic>.from(summaryRaw)
          : <String, dynamic>{};

      if (!mounted) return;
      setState(() {
        _isPremium = true;
        _journalInsights = insights;
        _summary = summary;
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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.dashboardBackground,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(l10n),
            Expanded(child: _buildBody(l10n)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 16, 10),
      child: Row(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(24),
            onTap: () => Navigator.of(context).pop(),
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
          Expanded(
            child: Text(
              l10n.weeklyReportTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppColors.textBlack,
              ),
            ),
          ),
          if (_isPremium && !_isLoading)
            InkWell(
              borderRadius: BorderRadius.circular(24),
              onTap: () => _load(forceRegenerate: true),
              child: const SizedBox(
                width: 44,
                height: 44,
                child: Icon(
                  Icons.refresh,
                  color: AppColors.textGrey,
                  size: 22,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildBody(AppLocalizations l10n) {
    if (!_isPremium && !_isLoading) {
      return _buildPaywall(l10n);
    }

    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      );
    }

    if (_hasError) {
      return _buildErrorState(l10n);
    }

    return _buildReport(l10n);
  }

  Widget _buildPaywall(AppLocalizations l10n) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.insights_outlined,
              size: 48,
              color: AppColors.primary,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.weeklyReportsPremiumTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: AppColors.textBlack,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.weeklyReportsPremiumMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                height: 1.4,
                color: AppColors.textGrey,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const PremiumPlanScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                l10n.upgradeToPremium,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(AppLocalizations l10n) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline,
              size: 40,
              color: AppColors.textLightGrey,
            ),
            const SizedBox(height: 12),
            Text(
              l10n.couldNotGenerateReport,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: AppColors.textGrey),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () => _load(forceRegenerate: true),
              child: Text(
                l10n.tryAgainLower,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReport(AppLocalizations l10n) {
    final soberDays = _summary['soberDays'];
    final avgMood = _summary['avgMood'];
    final cravingCount = _summary['cravingCount'];
    final moneySaved = _summary['moneySaved'];
    final feedback = _summary['overallFeedback']?.toString();

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.5,
            children: [
              _statTile(
                label: l10n.statSoberDays,
                value: soberDays != null ? '$soberDays/7' : '—',
              ),
              _statTile(
                label: l10n.statAvgMood,
                value: avgMood?.toString() ?? '—',
              ),
              _statTile(
                label: l10n.statCravings,
                value: cravingCount?.toString() ?? '—',
              ),
              _statTile(
                label: l10n.statMoneySaved,
                value: moneySaved != null ? '\$$moneySaved' : '—',
              ),
            ],
          ),

          if (feedback != null && feedback.trim().isNotEmpty) ...[
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.outlineGrey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite_border,
                        size: 18,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        l10n.coachFeedback,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: AppColors.textBlack,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    feedback,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: AppColors.textGrey,
                    ),
                  ),
                ],
              ),
            ),
          ],

          if (_journalInsights.isNotEmpty) ...[
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.outlineGrey),
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
                        l10n.journalInsights,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: AppColors.textBlack,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  for (final insight in _journalInsights) ...[
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
                              fontSize: 14,
                              height: 1.45,
                              color: AppColors.textBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _statTile({required String label, required String value}) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.outlineGrey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.textGrey,
            ),
          ),
        ],
      ),
    );
  }
}