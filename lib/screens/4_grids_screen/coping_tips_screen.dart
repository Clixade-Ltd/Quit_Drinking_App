import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../theme/theme_controller.dart';
import '../../services/home_dashboard_service.dart';
import '../../services/analytics_service.dart';

class CopingTipsScreen extends StatefulWidget {
  const CopingTipsScreen({super.key});

  @override
  State<CopingTipsScreen> createState() => _CopingTipsScreenState();
}

class _CopingTipsScreenState extends State<CopingTipsScreen> {
  final AnalyticsService _analytics = AnalyticsService.instance;

  bool get _isDark => AppColors.isDark(context);

  bool _isLoading = true;

  // trigger name -> list of strategies
  final Map<String, List<String>> _copingStrategies = {};

  @override
  void initState() {
    super.initState();
    _load();
    _analytics.copingTipsViewed();
  }

  Future<void> _load() async {
    try {
      final aiPlan =
      await HomeDashboardService.instance.getAIPlan();

      _copingStrategies.clear();

      final rawStrategies = aiPlan?['copingStrategies'];

      if (rawStrategies is Map) {
        rawStrategies.forEach((key, value) {
          final trigger = key.toString().trim();

          if (trigger.isEmpty) return;

          if (value is List) {
            final tips = value
                .map((tip) => tip.toString().trim())
                .where((tip) => tip.isNotEmpty)
                .toList();

            if (tips.isNotEmpty) {
              _copingStrategies[trigger] = tips;
            }
          }
        });
      }
    } catch (e) {
      debugPrint('Coping Tips load error: $e');
    }

    if (!mounted) return;

    setState(() => _isLoading = false);
  }

  static const List<Color> _triggerColors = [
    AppColors.primary,
    Color(0xFF3B82F6),
    Color(0xFFE0A93B),
    Color(0xFFDB7361),
    Color(0xFF7C7CE0),
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.pageBackground(
        context,
        light: AppColors.dashboardBackground,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // =========================
            // HEADER
            // =========================
            Padding(
              padding:
              const EdgeInsets.fromLTRB(8, 12, 16, 8),
              child: Row(
                children: [
                  InkWell(
                    borderRadius:
                    BorderRadius.circular(24),
                    onTap: () =>
                        Navigator.of(context).maybePop(),
                    child: SizedBox(
                      width: 44,
                      height: 44,
                      child: Icon(
                        Icons.arrow_back,
                        color: _isDark
                          ? Colors.white
                          : AppColors.textBlack,
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      l10n.copingTips,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: _isDark
                          ? Colors.white
                          : AppColors.textBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Divider(
              height: 1,
              thickness: 1,
              color: _isDark
                  ? ThemeController.darkAccent
                  : AppColors.outlineGrey,
            ),

            Expanded(
              child: _isLoading
                  ? Center(
                child: CircularProgressIndicator(
                  color: AppColors.accent(context),
                ),
              )
                  : _copingStrategies.isEmpty
                  ? _buildEmptyState(l10n)
                  : _buildStrategyList(l10n),
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // EMPTY STATE
  // =====================================================================

  Widget _buildEmptyState(AppLocalizations l10n) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _isDark
                  ? ThemeController.darkCard
                  : const Color(0xFFE0A93B).withOpacity(0.12),
              ),
              child: const Icon(
                Icons.lightbulb_outline,
                color: Color(0xFFE0A93B),
                size: 34,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              l10n.noCopingTipsYet,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: _isDark
                  ? Colors.white
                  : AppColors.textBlack,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.copingStrategiesWillAppear,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                height: 1.4,
                color: _isDark
                  ? Colors.white70
                  : AppColors.textGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // STRATEGY LIST
  // =====================================================================

  Widget _buildStrategyList(AppLocalizations l10n) {
    final triggers =
    _copingStrategies.keys.toList();

    return SingleChildScrollView(
      padding:
      const EdgeInsets.fromLTRB(20, 20, 20, 28),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Text(
            l10n.strategiesTailoredToTriggers,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
                color: _isDark
                  ? Colors.white70
                  : AppColors.textGrey,
            ),
          ),

          const SizedBox(height: 18),

          for (int i = 0; i < triggers.length; i++)
            _buildTriggerCard(
              trigger: triggers[i],
              tips:
              _copingStrategies[triggers[i]] ??
                  const [],
                color: _isDark
                  ? ThemeController.darkAccent
                  : _triggerColors[i % _triggerColors.length],
            ),
        ],
      ),
    );
  }

  Widget _buildTriggerCard({
    required String trigger,
    required List<String> tips,
    required Color color,
  }) {
    return Container(
      margin:
      const EdgeInsets.only(bottom: 14),
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: _isDark
          ? ThemeController.darkCard
          : AppColors.white,
        borderRadius:
        BorderRadius.circular(20),
        border: Border.all(
            color: _isDark
              ? ThemeController.darkAccent
              : AppColors.outlineGrey,
        ),
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: _isDark
                      ? ThemeController.darkAccent.withOpacity(0.30)
                      : color.withOpacity(0.12),
                  borderRadius:
                  BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.bolt_outlined,
                  color: color,
                  size: 18,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  trigger,
                  style: TextStyle(
                    fontWeight:
                    FontWeight.w700,
                    fontSize: 16,
                    color: _isDark
                      ? Colors.white
                      : AppColors.textBlack,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          for (final tip in tips)
            Padding(
              padding:
              const EdgeInsets.only(
                bottom: 10,
              ),
              child: Row(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(
                      top: 6,
                    ),
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration:
                      BoxDecoration(
                        shape:
                        BoxShape.circle,
                        color: color,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      tip,
                      style: TextStyle(
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 14,
                        height: 1.45,
                        color: _isDark
                          ? Colors.white
                          : AppColors.textBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
