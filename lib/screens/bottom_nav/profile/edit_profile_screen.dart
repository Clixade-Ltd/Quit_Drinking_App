import 'package:flutter/material.dart';

import 'package:new_quit_drinking_app/constants/app_colors.dart';
import 'package:new_quit_drinking_app/services/home_dashboard_service.dart';

import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final HomeDashboardService _service = HomeDashboardService.instance;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  static const List<String> _sexOptions = ['Female', 'Male'];
  String _selectedSex = 'Female';

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

      _nameController.text = (profile['name'] ?? '').toString();
      _ageController.text = (profile['age'] ?? '').toString();
      _heightController.text = (profile['heightCm'] ?? '').toString();
      _weightController.text = (profile['weightKg'] ?? '').toString();

      final sex = profile['sex']?.toString();
      if (sex != null && _sexOptions.contains(sex)) {
        _selectedSex = sex;
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
      // NOTE: assumes HomeDashboardService exposes `updateProfile`,
      // which merges these fields into the existing stored profile.
      // If that method doesn't exist yet on your service, add it (or
      // tell me the real method name and I'll swap this call).
      await _service.updateProfile({
        'name': _nameController.text.trim(),
        'age': int.tryParse(_ageController.text.trim()) ?? 0,
        'sex': _selectedSex,
        'heightCm': double.tryParse(_heightController.text.trim()) ?? 0,
        'weightKg': double.tryParse(_weightController.text.trim()) ?? 0,
      });

      if (!mounted) return;
      Navigator.of(context).pop(true);
    } catch (e) {
      if (!mounted) return;
      setState(() => _isSaving = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context)!.couldNotSaveProfile(e.toString()),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _heightController.dispose();
    _weightController.dispose();
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
                    loc.editProfileTitle,
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
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLabel('Name'),
                const SizedBox(height: 8),
                _buildTextField(controller: _nameController, hint: 'e.g., Alex Rivers'),

                const SizedBox(height: 20),

                _buildLabel('Age'),
                const SizedBox(height: 8),
                _buildTextField(
                  controller: _ageController,
                  hint: 'e.g., 32',
                  keyboardType: TextInputType.number,
                ),

                const SizedBox(height: 20),

                _buildLabel('Sex assigned at birth'),
                const SizedBox(height: 8),
                _buildSexToggle(),

                const SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildLabel(loc.heightCmLabel),
                          const SizedBox(height: 8),
                          _buildTextField(
                            controller: _heightController,
                            hint: '170',
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildLabel(loc.weightKgLabel),
                          const SizedBox(height: 8),
                          _buildTextField(
                            controller: _weightController,
                            hint: '70',
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.outlineGrey2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 16, color: AppColors.textBlack),
        decoration: InputDecoration(
          hintText: hint,
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

  Widget _buildSexToggle() {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.outlineGrey2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: _sexOptions.map((option) {
          final bool isSelected = _selectedSex == option;

          return Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => setState(() => _selectedSex = option),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  option,
                  style: TextStyle(
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                    fontSize: 14,
                    color: isSelected ? AppColors.textBlack : AppColors.textGrey,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}