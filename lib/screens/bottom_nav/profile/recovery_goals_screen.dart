import 'package:flutter/material.dart';

import 'package:new_quit_drinking_app/constants/app_colors.dart';
import 'package:new_quit_drinking_app/services/home_dashboard_service.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class RecoveryGoalsScreen extends StatefulWidget {
  const RecoveryGoalsScreen({super.key});

  @override
  State<RecoveryGoalsScreen> createState() => _RecoveryGoalsScreenState();
}

class _RecoveryGoalsScreenState extends State<RecoveryGoalsScreen> {
  final HomeDashboardService _service = HomeDashboardService.instance;

  final TextEditingController _goalController = TextEditingController();
  // final TextEditingController _quitTimingController = TextEditingController();
  final TextEditingController _drinksController = TextEditingController();
  // final TextEditingController _spendingController = TextEditingController();
  final TextEditingController _reasonsController = TextEditingController();

  static const List<String> _dayNames = [
    'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun',
  ];
  static const List<String> _dayLetters = [
    'M', 'T', 'W', 'T', 'F', 'S', 'S',
  ];

  final Set<String> _selectedDays = {};

  bool _isLoading = true;
  bool _isSaving = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final profile = await _service.getProfile();

      if (profile == null) {
        throw StateError('No profile data found on this device yet.');
      }

      _goalController.text = (profile['goal'] ?? '').toString();
      // _quitTimingController.text = (profile['quitTiming'] ?? '').toString();
      _drinksController.text = (profile['drinksPerWeek'] ?? '').toString();
      // _spendingController.text =
      //     (profile['averageWeeklySpending'] ?? '').toString();

      final reasons = profile['quitReasons'];
      if (reasons is List) {
        _reasonsController.text = reasons.map((r) => r.toString()).join(', ');
      }

      final days = profile['mostCommonDrinkingDays'];
      if (days is List) {
        _selectedDays
          ..clear()
          ..addAll(days.map((d) => d.toString()));
      }

      if (!mounted) return;
      setState(() => _isLoading = false);
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _errorMessage = e.toString();
      });
    }
  }

  Future<void> _save() async {
    setState(() => _isSaving = true);

    try {
      final reasons = _reasonsController.text
          .split(',')
          .map((r) => r.trim())
          .where((r) => r.isNotEmpty)
          .toList();

      // NOTE: assumes HomeDashboardService exposes `updateProfile`,
      // which merges these fields into the existing stored profile.
      // If that method doesn't exist yet on your service, add it (or
      // tell me the real method name and I'll swap this call).
      await _service.updateProfile({
        'goal': _goalController.text.trim(),
        // 'quitTiming': _quitTimingController.text.trim(),
        'drinksPerWeek': int.tryParse(_drinksController.text.trim()) ?? 0,
        // 'averageWeeklySpending':
        // int.tryParse(_spendingController.text.trim()) ?? 0,
        'mostCommonDrinkingDays': _selectedDays.toList(),
        'quitReasons': reasons,
      });

      if (!mounted) return;
      Navigator.of(context).pop(true);
    } catch (e) {
      if (!mounted) return;
      setState(() => _isSaving = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context)!.couldNotSaveRecoveryGoals(
              e.toString(),
            ),
          ),
        ),
      );
    }
  }

  void _toggleDay(String day) {
    setState(() {
      if (_selectedDays.contains(day)) {
        _selectedDays.remove(day);
      } else {
        _selectedDays.add(day);
      }
    });
  }

  @override
  void dispose() {
    _goalController.dispose();
    // _quitTimingController.dispose();
    _drinksController.dispose();
    // _spendingController.dispose();
    _reasonsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.dashboardBackground,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(6, 12, 16, 4),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).maybePop(),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.textBlack,
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    loc.recoveryGoalsTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: AppColors.textBlack,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: _buildBody(loc)),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(AppLocalizations loc) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      );
    }

    if (_errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            _errorMessage!,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.textGrey),
          ),
        ),
      );
    }

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLabel(loc.goalLabel),
                const SizedBox(height: 8),
                _buildTextField(
                  controller: _goalController,
                  hint: loc.goalHint,
                ),

                const SizedBox(height: 20),

                // _buildLabel('Quit timing'),
                // const SizedBox(height: 8),
                // _buildTextField(
                //   controller: _quitTimingController,
                //   hint: 'e.g., Starting today',
                // ),

                const SizedBox(height: 15),

                _buildLabel(loc.drinksPerWeekLabel),
                const SizedBox(height: 8),
                _buildTextField(
                  controller: _drinksController,
                  hint: loc.drinksPerWeekHint,
                  keyboardType: TextInputType.number,
                ),

                const SizedBox(height: 20),

                // _buildLabel('Average weekly spending'),
                // const SizedBox(height: 8),
                // _buildTextField(
                //   controller: _spendingController,
                //   hint: 'e.g., 80',
                //   prefix: '\$',
                //   keyboardType: TextInputType.number,
                // ),

                // const SizedBox(height: 20),

                // _buildLabel('Most common drinking day'),
                // const SizedBox(height: 10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: List.generate(_dayNames.length, (i) {
                //     final dayName = _dayNames[i];
                //     final isSelected = _selectedDays.contains(dayName);
                //
                //     return InkWell(
                //       onTap: () => _toggleDay(dayName),
                //       customBorder: const CircleBorder(),
                //       child: Container(
                //         width: 38,
                //         height: 38,
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: isSelected
                //               ? AppColors.primary
                //               : AppColors.white,
                //           border: Border.all(
                //             color: isSelected
                //                 ? AppColors.primary
                //                 : AppColors.outlineGrey,
                //           ),
                //         ),
                //         child: Text(
                //           _dayLetters[i],
                //           style: TextStyle(
                //             fontWeight: FontWeight.w600,
                //             fontSize: 14,
                //             color: isSelected
                //                 ? AppColors.white
                //                 : AppColors.textGrey,
                //           ),
                //         ),
                //       ),
                //     );
                //   }),
                // ),

                const SizedBox(height: 15),

                _buildLabel(loc.quitReasonsLabel),
                const SizedBox(height: 4),
                Text(
                  loc.quitReasonsHelperText,
                  style: const TextStyle(fontSize: 12, color: AppColors.textGrey),
                ),
                const SizedBox(height: 8),
                _buildTextField(
                  controller: _reasonsController,
                  hint: loc.quitReasonsHint,
                  maxLines: 3,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
          child: SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: _isSaving ? null : _save,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9999),
                ),
              ),
              child: _isSaving
                  ? const SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                ),
              )
                  : Text(
                loc.saveChangesLabel,
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: AppColors.textBlack,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    String prefix = '',
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.outlineGrey2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        style: const TextStyle(fontSize: 16, color: AppColors.textBlack),
        decoration: InputDecoration(
          hintText: hint,
          prefixText: prefix.isEmpty ? null : prefix,
          hintStyle: const TextStyle(color: AppColors.textLightGrey),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
      ),
    );
  }
}