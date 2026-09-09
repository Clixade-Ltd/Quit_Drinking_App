import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'package:new_quit_drinking_app/constants/app_colors.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/premium_plan_screen.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/edit_profile_screen.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/recovery_goals_screen.dart';
import 'package:new_quit_drinking_app/services/home_dashboard_service.dart';
import 'package:new_quit_drinking_app/services/local_storage_service.dart';
import 'package:new_quit_drinking_app/services/analytics_service.dart';

import '../../details/details_screen.dart';

import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final HomeDashboardService _service = HomeDashboardService.instance;

  final AnalyticsService _analytics = AnalyticsService.instance;

  bool _isLoading = true;
  String? _errorMessage;

  Map<String, dynamic>? _profileData;

  int _daysSober = 0;

  bool _isUploadingPhoto = false;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  // =====================================================================
  // LOAD PROFILE FROM LOCAL STORAGE
  // =====================================================================

  Future<void> _loadProfile() async {
    if (!mounted) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final profile = await _service.getProfile();

      if (profile == null) {
        throw StateError('No profile data found on this device yet.');
      }

      final days = await _service.getDaysSober();

      if (!mounted) return;

      setState(() {
        _profileData = profile;
        _daysSober = days;
        _isLoading = false;
      });
    } catch (e, stackTrace) {
      debugPrint('PROFILE LOAD ERROR: $e\n$stackTrace');
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _errorMessage = e.toString();
      });
    }
  }

  // =====================================================================
  // HELPERS
  // =====================================================================

  String _stringValue(
      String key, {
        String fallback = 'Not provided',
      }) {
    final value = _profileData?[key];

    if (value == null) return fallback;

    final text = value.toString().trim();

    if (text.isEmpty) return fallback;

    return text;
  }

  String get _displayName {
    final name = _profileData?['name'];

    if (name == null) return 'there';

    final text = name.toString().trim();

    return text.isEmpty ? 'there' : text;
  }

  String _greeting(AppLocalizations l10n) {
    final hour = DateTime.now().hour;
    if (hour < 12) return l10n.goodMorning;
    if (hour < 17) return l10n.goodAfternoon;
    if (hour < 21) return l10n.goodEvening;
    return l10n.goodNight;
  }

  String _goal(AppLocalizations l10n) {
    return _stringValue('goal', fallback: 'Not set');
  }

  Uint8List? get _photoBytes {
    final b64 = _profileData?['photoBase64'] as String?;
    if (b64 == null || b64.isEmpty) return null;
    try {
      return base64Decode(b64);
    } catch (_) {
      return null;
    }
  }

  // =====================================================================
  // PROFILE PHOTO
  // =====================================================================

  void _showPhotoOptions() {
    final l10n = AppLocalizations.of(context)!;
    final hasPhoto = _photoBytes != null;

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(
                Icons.photo_library_outlined,
                color: AppColors.primary,
              ),
              title: Text(l10n.chooseFromGallery),
              onTap: () {
                Navigator.pop(context);
                _pickAndUploadPhoto(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.camera_alt_outlined,
                color: AppColors.primary,
              ),
              title: Text(l10n.takePhoto),
              onTap: () {
                Navigator.pop(context);
                _pickAndUploadPhoto(ImageSource.camera);
              },
            ),
            if (hasPhoto)
              ListTile(
                leading: const Icon(
                  Icons.delete_outline,
                  color: Colors.redAccent,
                ),
                title: Text(
                  l10n.removePhoto,
                  style: const TextStyle(color: Colors.redAccent),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _removePhoto();
                },
              ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // FULLSCREEN PHOTO PREVIEW (long press on avatar)
  // =====================================================================

  void _showFullScreenPhoto() {
    final photoBytes = _photoBytes;
    if (photoBytes == null) return;

    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        barrierColor: Colors.black87,
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Hero(
                    tag: 'profile-photo',
                    child: ClipOval(
                      child: Image.memory(
                        photoBytes,
                        width: 280,
                        height: 280,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _pickAndUploadPhoto(ImageSource source) async {
    final l10n = AppLocalizations.of(context)!;

    try {
      final picker = ImagePicker();

      final picked = await picker.pickImage(
        source: source,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 85,
      );

      if (picked == null) return;

      final cropped = await ImageCropper().cropImage(
        sourcePath: picked.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        compressQuality: 70,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Crop Photo',
            toolbarColor: AppColors.primary,
            toolbarWidgetColor: Colors.white,
            lockAspectRatio: true,
            cropStyle: CropStyle.circle,
          ),
          IOSUiSettings(
            title: 'Crop Photo',
            aspectRatioLockEnabled: true,
            cropStyle: CropStyle.circle,
          ),
        ],
      );

      if (cropped == null) return;

      setState(() => _isUploadingPhoto = true);

      final bytes = await File(cropped.path).readAsBytes();
      final base64Str = base64Encode(bytes);

      if (base64Str.length > 900000) {
        throw StateError(l10n.photoTooLarge);
      }

      await _service.setProfilePhotoBase64(base64Str);

      if (!mounted) return;

      setState(() {
        _profileData = {
          ...?_profileData,
          'photoBase64': base64Str,
        };
        _isUploadingPhoto = false;
      });

      _analytics.profilePhotoChanged(
        source == ImageSource.gallery ? 'gallery' : 'camera',
      );
    } catch (e) {
      if (!mounted) return;
      setState(() => _isUploadingPhoto = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.couldNotUpdatePhoto(e.toString()))),
      );
    }
  }

  Future<void> _removePhoto() async {
    final l10n = AppLocalizations.of(context)!;

    try {
      setState(() => _isUploadingPhoto = true);

      await _service.removeProfilePhoto();

      if (!mounted) return;

      setState(() {
        _profileData?.remove('photoBase64');
        _isUploadingPhoto = false;
      });

      _analytics.profilePhotoChanged('removed');
    } catch (e) {
      if (!mounted) return;
      setState(() => _isUploadingPhoto = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.couldNotRemovePhoto(e.toString()))),
      );
    }
  }

  // =====================================================================
  // PREMIUM
  // =====================================================================

  void _openPremiumPlan(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const PremiumPlanScreen()),
    );
  }

  // =====================================================================
  // EDIT PROFILE / RECOVERY GOALS
  // =====================================================================

  Future<void> _openEditProfile(BuildContext context) async {
    final updated = await Navigator.of(context).push<bool>(
      MaterialPageRoute(builder: (_) => const EditProfileScreen()),
    );

    if (updated == true) {
      _loadProfile();
      _analytics.profileUpdated();
    }
  }

  Future<void> _openRecoveryGoals(BuildContext context) async {
    final updated = await Navigator.of(context).push<bool>(
      MaterialPageRoute(builder: (_) => const RecoveryGoalsScreen()),
    );

    if (updated == true) {
      _loadProfile();
      _analytics.profileUpdated();
    }
  }

  Future<void> _resetData(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;

    final shouldReset = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(l10n.resetAllDataTitle),
          content: Text(l10n.resetAllDataMessage),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(
                l10n.cancel,
                style: const TextStyle(color: AppColors.textGrey),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(
                l10n.reset,
                style: const TextStyle(color: AppColors.alertColor),
              ),
            ),
          ],
        );
      },
    );

    if (shouldReset != true) return;

    try {
      await LocalStorageService.instance.clearAll();

      _analytics.dataResetConfirmed();

      if (!mounted) return;

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const DetailsScreen()),
            (route) => false,
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.couldNotResetData(e.toString()))),
      );
    }
  }

  // =====================================================================
  // BUILD
  // =====================================================================

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.dashboardBackground,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 12, 18, 0),
              child: _buildTopBar(l10n),
            ),
            Expanded(child: _buildBody(l10n)),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(l10n),
    );
  }

  // =====================================================================
  // BODY
  // =====================================================================

  Widget _buildBody(AppLocalizations l10n) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      );
    }

    if (_errorMessage != null) {
      return _buildErrorState(l10n);
    }

    if (_profileData == null) {
      return _buildEmptyState(l10n);
    }

    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: _loadProfile,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(18, 16, 18, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileHeaderCard(l10n),
            const SizedBox(height: 18),
            _buildPremiumPlan(l10n),
            const SizedBox(height: 20),
            _buildAccountSupport(l10n),
            const SizedBox(height: 25),
            const Center(
              child: Text(
                'Sober Flow v2.4.1',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: AppColors.textLightGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // ERROR STATE
  // =====================================================================

  Widget _buildErrorState(AppLocalizations l10n) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 52,
              color: AppColors.textLightGrey,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.unableToLoadProfile,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppColors.textBlack,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _errorMessage ?? l10n.pleaseTryAgain,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 13, color: AppColors.textGrey),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _loadProfile,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
                elevation: 0,
              ),
              child: Text(l10n.tryAgain),
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
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_off_outlined,
              size: 52,
              color: AppColors.textLightGrey,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.profileNotFound,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppColors.textBlack,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _loadProfile,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
              ),
              child: Text(l10n.refresh),
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // TOP BAR
  // =====================================================================

  Widget _buildTopBar(AppLocalizations l10n) {
    final photoBytes = _photoBytes;

    return Row(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primary, width: 1.5),
            color: AppColors.iconBackground,
            image: photoBytes != null
                ? DecorationImage(
              image: MemoryImage(photoBytes),
              fit: BoxFit.cover,
            )
                : null,
          ),
          child: photoBytes == null
              ? const Icon(
            Icons.person_outline,
            color: AppColors.primary,
            size: 22,
          )
              : null,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            '${_greeting(l10n)}, $_displayName',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColors.primary,
            ),
          ),
        ),
        Container(
          width: 42,
          height: 42,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.notifications_none,
            color: AppColors.primary,
            size: 22,
          ),
        ),
      ],
    );
  }

  // =====================================================================
  // PROFILE HEADER
  // =====================================================================

  Widget _buildProfileHeaderCard(AppLocalizations l10n) {
    final photoBytes = _photoBytes;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: AppColors.textBlack.withOpacity(0.03),
            blurRadius: 25,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: _showPhotoOptions,
            onLongPress: photoBytes != null ? _showFullScreenPhoto : null,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Hero(
                  tag: 'profile-photo',
                  child: Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.iconBackground,
                      border: Border.all(color: AppColors.white, width: 4),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.textBlack.withOpacity(0.09),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      image: photoBytes != null
                          ? DecorationImage(
                        image: MemoryImage(photoBytes),
                        fit: BoxFit.cover,
                      )
                          : null,
                    ),
                    child: photoBytes == null
                        ? const Icon(
                      Icons.person,
                      color: AppColors.primary,
                      size: 48,
                    )
                        : null,
                  ),
                ),
                if (_isUploadingPhoto)
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            _displayName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
              color: AppColors.textBlack,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            l10n.embracingClarity,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 1.4,
              color: AppColors.textGrey,
            ),
          ),
          const SizedBox(height: 18),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildProfileStat(
                  label: l10n.streakLabel,
                  value: l10n.daysStreak(_daysSober),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: _buildProfileStat(
                    label: l10n.goalLabel,
                    value: _goal(l10n),
                    allowGrow: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =====================================================================
  // PREMIUM PLAN
  // =====================================================================

  Widget _buildPremiumPlan(AppLocalizations l10n) {
    return InkWell(
      onTap: () => _openPremiumPlan(context),
      borderRadius: BorderRadius.circular(28),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.12),
              blurRadius: 16,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.16),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.workspace_premium_outlined,
                color: AppColors.white,
                size: 22,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.premiumPlan,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    l10n.premiumPlanSubtitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: AppColors.white, size: 22),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // ACCOUNT & SUPPORT
  // =====================================================================

  Widget _buildAccountSupport(AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Text(
            l10n.accountAndSupport,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              letterSpacing: 0.5,
              color: AppColors.textGrey,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(34),
          ),
          child: Column(
            children: [
              _buildMenuItem(
                icon: Icons.lock_outline,
                iconColor: AppColors.primary,
                title: l10n.privacyPolicy,
                subtitle: l10n.privacyPolicySubtitle,
                onTap: () {
                  _showComingSoon(l10n.privacyPolicy, l10n);
                },
              ),
              _buildDivider(),
              _buildMenuItem(
                icon: Icons.help_outline,
                iconColor: AppColors.primary,
                title: l10n.termsOfService,
                subtitle: l10n.termsOfServiceSubtitle,
                onTap: () {
                  _showComingSoon(l10n.termsOfService, l10n);
                },
              ),
              _buildDivider(),
              _buildMenuItem(
                icon: Icons.share,
                iconColor: AppColors.primary,
                title: l10n.shareApp,
                subtitle: l10n.shareAppSubtitle,
                onTap: () {
                  _showComingSoon(l10n.shareApp, l10n);
                },
              ),
              _buildDivider(),
              _buildMenuItem(
                icon: Icons.restart_alt,
                iconColor: AppColors.alertColor,
                title: l10n.resetData,
                subtitle: l10n.resetDataSubtitle,
                titleColor: AppColors.alertColor,
                onTap: () => _resetData(context),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // =====================================================================
  // PROFILE STAT
  // =====================================================================

  Widget _buildProfileStat({
    required String label,
    required String value,
    bool allowGrow = false,
  }) {
    return Container(
      constraints: allowGrow
          ? const BoxConstraints(minWidth: 116)
          : const BoxConstraints(minWidth: 116, maxWidth: 150),
      width: allowGrow ? double.infinity : null,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 9,
              letterSpacing: 0.6,
              color: AppColors.textGrey,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            value,
            textAlign: TextAlign.center,
            maxLines: allowGrow ? null : 1,
            overflow: allowGrow ? TextOverflow.visible : TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  // =====================================================================
  // MENU ITEM
  // =====================================================================

  Widget _buildMenuItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    Color titleColor = AppColors.textBlack,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        child: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.09),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor, size: 19),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: titleColor,
                    ),
                  ),
                  if (subtitle.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        height: 1.3,
                        color: AppColors.textGrey,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColors.textLightGrey,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // DIVIDER
  // =====================================================================

  Widget _buildDivider() {
    return const Divider(
      height: 1,
      thickness: 1,
      indent: 68,
      endIndent: 0,
      color: AppColors.outlineGrey,
    );
  }

  // =====================================================================
  // BOTTOM NAV
  // =====================================================================

  Widget _buildBottomNavigationBar(AppLocalizations l10n) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.textBlack.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          _buildBottomItem(
            icon: Icons.home_outlined,
            label: l10n.navHome,
            selected: false,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          _buildBottomItem(
            icon: Icons.bar_chart_outlined,
            label: l10n.navStats,
            selected: false,
            onTap: () {},
          ),
          _buildBottomItem(
            icon: Icons.edit_note_outlined,
            label: l10n.navJournal,
            selected: false,
            onTap: () {},
          ),
          _buildBottomItem(
            icon: Icons.emoji_events_outlined,
            label: l10n.navBadges,
            selected: false,
            onTap: () {},
          ),
          _buildBottomItem(
            icon: Icons.person_outline,
            label: l10n.navProfile,
            selected: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  // =====================================================================
  // BOTTOM NAV ITEM
  // =====================================================================

  Widget _buildBottomItem({
    required IconData icon,
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 32,
              decoration: BoxDecoration(
                color: selected ? AppColors.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                icon,
                color: selected ? AppColors.white : AppColors.textLightGrey,
                size: 20,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                fontSize: 10,
                color: selected ? AppColors.primary : AppColors.textLightGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // COMING SOON
  // =====================================================================

  void _showComingSoon(String feature, AppLocalizations l10n) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.featureComingSoon(feature))),
    );
  }
}