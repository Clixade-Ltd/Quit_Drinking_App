import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'package:new_quit_drinking_app/constants/app_colors.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/premium_plan_screen.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/edit_profile_screen.dart';
import 'package:new_quit_drinking_app/screens/bottom_nav/profile/recovery_goals_screen.dart';
import 'package:new_quit_drinking_app/services/home_dashboard_service.dart';
import 'package:new_quit_drinking_app/services/local_storage_service.dart';
import 'package:new_quit_drinking_app/services/analytics_service.dart';

//import '../../details/details_screen.dart';

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
        throw StateError(
          'No profile data found on this device yet.',
        );
      }

      final days = await _service.getDaysSober();

      if (!mounted) return;

      setState(() {
        _profileData = profile;
        _daysSober = days;
        _isLoading = false;
      });
    } catch (e, stackTrace) {
      debugPrint(
        'PROFILE LOAD ERROR: $e\n$stackTrace',
      );

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

    if (hour < 12) {
      return l10n.goodMorning;
    }

    if (hour < 17) {
      return l10n.goodAfternoon;
    }

    if (hour < 21) {
      return l10n.goodEvening;
    }

    return l10n.goodNight;
  }

  String _goal(AppLocalizations l10n) {
    return _stringValue(
      'goal',
      fallback: 'Not set',
    );
  }

  Uint8List? get _photoBytes {
    final b64 = _profileData?['photoBase64'] as String?;

    if (b64 == null || b64.isEmpty) {
      return null;
    }

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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                Icons.photo_library_outlined,
                color: AppColors.primary,
                size: 24.sp,
              ),
              title: Text(
                l10n.chooseFromGallery,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                _pickAndUploadPhoto(
                  ImageSource.gallery,
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.camera_alt_outlined,
                color: AppColors.primary,
                size: 24.sp,
              ),
              title: Text(
                l10n.takePhoto,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                _pickAndUploadPhoto(
                  ImageSource.camera,
                );
              },
            ),
            if (hasPhoto)
              ListTile(
                leading: Icon(
                  Icons.delete_outline,
                  color: Colors.redAccent,
                  size: 24.sp,
                ),
                title: Text(
                  l10n.removePhoto,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 14.sp,
                  ),
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
  // FULLSCREEN PHOTO PREVIEW
  // =====================================================================

  void _showFullScreenPhoto() {
    final photoBytes = _photoBytes;

    if (photoBytes == null) return;

    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        barrierColor: Colors.black87,
        pageBuilder: (
          context,
          animation,
          secondaryAnimation,
        ) {
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
                        width: 280.w,
                        height: 280.w,
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

  Future<void> _pickAndUploadPhoto(
    ImageSource source,
  ) async {
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
        aspectRatio: const CropAspectRatio(
          ratioX: 1,
          ratioY: 1,
        ),
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

      setState(() {
        _isUploadingPhoto = true;
      });

      final bytes = await File(
        cropped.path,
      ).readAsBytes();

      final base64Str = base64Encode(bytes);

      if (base64Str.length > 900000) {
        throw StateError(
          l10n.photoTooLarge,
        );
      }

      await _service.setProfilePhotoBase64(
        base64Str,
      );

      if (!mounted) return;

      setState(() {
        _profileData = {
          ...?_profileData,
          'photoBase64': base64Str,
        };
        _isUploadingPhoto = false;
      });

      _analytics.profilePhotoChanged(
        source == ImageSource.gallery
            ? 'gallery'
            : 'camera',
      );
    } catch (e) {
      if (!mounted) return;

      setState(() {
        _isUploadingPhoto = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l10n.couldNotUpdatePhoto(
              e.toString(),
            ),
          ),
        ),
      );
    }
  }

  Future<void> _removePhoto() async {
    final l10n = AppLocalizations.of(context)!;

    try {
      setState(() {
        _isUploadingPhoto = true;
      });

      await _service.removeProfilePhoto();

      if (!mounted) return;

      setState(() {
        _profileData?.remove('photoBase64');
        _isUploadingPhoto = false;
      });

      _analytics.profilePhotoChanged(
        'removed',
      );
    } catch (e) {
      if (!mounted) return;

      setState(() {
        _isUploadingPhoto = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l10n.couldNotRemovePhoto(
              e.toString(),
            ),
          ),
        ),
      );
    }
  }

  // =====================================================================
  // PREMIUM
  // =====================================================================

  void _openPremiumPlan(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const PremiumPlanScreen(),
      ),
    );
  }

  // =====================================================================
  // EDIT PROFILE / RECOVERY GOALS
  // =====================================================================

  Future<void> _openEditProfile(
    BuildContext context,
  ) async {
    final updated = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (_) => const EditProfileScreen(),
      ),
    );

    if (updated == true) {
      _loadProfile();
      _analytics.profileUpdated();
    }
  }

  Future<void> _openRecoveryGoals(
    BuildContext context,
  ) async {
    final updated = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (_) => const RecoveryGoalsScreen(),
      ),
    );

    if (updated == true) {
      _loadProfile();
      _analytics.profileUpdated();
    }
  }

  Future<void> _resetData(
    BuildContext context,
  ) async {
    final l10n = AppLocalizations.of(context)!;

    final shouldReset = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            l10n.resetAllDataTitle,
            style: TextStyle(
              fontSize: 18.sp,
            ),
          ),
          content: Text(
            l10n.resetAllDataMessage,
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text(
                l10n.cancel,
                style: TextStyle(
                  color: AppColors.textGrey,
                  fontSize: 14.sp,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text(
                l10n.reset,
                style: TextStyle(
                  color: AppColors.alertColor,
                  fontSize: 14.sp,
                ),
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

      // Navigator.of(context).pushAndRemoveUntil(
      //   MaterialPageRoute(
      //     builder: (_) => const DetailsScreen(),
      //   ),
      //   (route) => false,
      // );
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            l10n.couldNotResetData(
              e.toString(),
            ),
          ),
        ),
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
        top: true,
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                18.w,
                12.h,
                18.w,
                0,
              ),
              child: _buildTopBar(l10n),
            ),
            Expanded(
              child: _buildBody(l10n),
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // BODY
  // =====================================================================

  Widget _buildBody(
    AppLocalizations l10n,
  ) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
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
        padding: EdgeInsets.fromLTRB(
          18.w,
          16.h,
          18.w,
          80.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            
            // _buildProfileHeaderCard(l10n),

            // SizedBox(height: 18.h),

            _buildPremiumPlan(l10n),

            SizedBox(height: 20.h),

            _buildAccountSupport(l10n),

            SizedBox(height: 25.h),

            Center(
              child: Text(
                'Sober Flow v2.4.1',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp,
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

  Widget _buildErrorState(
    AppLocalizations l10n,
  ) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 52.sp,
              color: AppColors.textLightGrey,
            ),

            SizedBox(height: 16.h),

            Text(
              l10n.unableToLoadProfile,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: AppColors.textBlack,
              ),
            ),

            SizedBox(height: 8.h),

            Text(
              _errorMessage ?? l10n.pleaseTryAgain,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.sp,
                color: AppColors.textGrey,
              ),
            ),

            SizedBox(height: 20.h),

            ElevatedButton(
              onPressed: _loadProfile,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
                elevation: 0,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 12.h,
                ),
              ),
              child: Text(
                l10n.tryAgain,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // EMPTY STATE
  // =====================================================================

  Widget _buildEmptyState(
    AppLocalizations l10n,
  ) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_off_outlined,
              size: 52.sp,
              color: AppColors.textLightGrey,
            ),

            SizedBox(height: 16.h),

            Text(
              l10n.profileNotFound,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: AppColors.textBlack,
              ),
            ),

            SizedBox(height: 20.h),

            ElevatedButton(
              onPressed: _loadProfile,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 12.h,
                ),
              ),
              child: Text(
                l10n.refresh,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // TOP BAR
  // =====================================================================

  Widget _buildTopBar(
  AppLocalizations l10n,
) {
  return Row(
    children: [
      const Spacer(),

      SizedBox(
        width: 42.w,
        height: 42.w,
        child: Icon(
          Icons.notifications_none,
          color: AppColors.primary,
          size: 22.sp,
        ),
      ),
    ],
  );
}

  // =====================================================================
  // PROFILE HEADER
  // =====================================================================

  Widget _buildProfileHeaderCard(
    AppLocalizations l10n,
  ) {
    final photoBytes = _photoBytes;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        20.w,
        28.h,
        20.w,
        24.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(40.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.textBlack.withOpacity(0.03),
            blurRadius: 25.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: _showPhotoOptions,
            onLongPress:
                photoBytes != null
                    ? _showFullScreenPhoto
                    : null,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Hero(
                  tag: 'profile-photo',
                  child: Container(
                    width: 105.w,
                    height: 105.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.iconBackground,
                      border: Border.all(
                        color: AppColors.white,
                        width: 4.w,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.textBlack
                              .withOpacity(0.09),
                          blurRadius: 8.r,
                          offset: Offset(0, 3.h),
                        ),
                      ],
                      image: photoBytes != null
                          ? DecorationImage(
                              image: MemoryImage(
                                photoBytes,
                              ),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: photoBytes == null
                        ? Icon(
                            Icons.person,
                            color: AppColors.primary,
                            size: 48.sp,
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
                      child: Center(
                        child: SizedBox(
                          width: 24.w,
                          height: 24.w,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.w,
                            valueColor:
                                const AlwaysStoppedAnimation<Color>(
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

          SizedBox(height: 20.h),

          Text(
            _displayName,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28.sp,
              color: AppColors.textBlack,
            ),
          ),

          SizedBox(height: 6.h),

          Text(
            l10n.embracingClarity,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 1.4,
              color: AppColors.textGrey,
            ),
          ),

          SizedBox(height: 18.h),

          IntrinsicHeight(
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: _buildProfileStat(
                    label: l10n.streakLabel,
                    value: l10n.daysStreak(
                      _daysSober,
                    ),
                  ),
                ),

                SizedBox(width: 10.w),

                Expanded(
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

  Widget _buildPremiumPlan(
    AppLocalizations l10n,
  ) {
    return InkWell(
      onTap: () => _openPremiumPlan(context),
      borderRadius: BorderRadius.circular(28.r),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 16.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(28.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.12),
              blurRadius: 16.r,
              offset: Offset(0, 5.h),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 42.w,
              height: 42.w,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.16),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.workspace_premium_outlined,
                color: AppColors.white,
                size: 22.sp,
              ),
            ),

            SizedBox(width: 12.w),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.premiumPlan,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: AppColors.white,
                    ),
                  ),

                  SizedBox(height: 3.h),

                  Text(
                    l10n.premiumPlanSubtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.sp,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),

            Icon(
              Icons.chevron_right,
              color: AppColors.white,
              size: 22.sp,
            ),
          ],
        ),
      ),
    );
  }

  // =====================================================================
  // ACCOUNT & SUPPORT
  // =====================================================================

  Widget _buildAccountSupport(
    AppLocalizations l10n,
  ) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 6.w),
          child: Text(
            l10n.accountAndSupport,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              letterSpacing: 0.5,
              color: AppColors.textGrey,
            ),
          ),
        ),

        SizedBox(height: 10.h),

        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(34.r),
          ),
          child: Column(
            children: [
              _buildMenuItem(
                icon: Icons.lock_outline,
                iconColor: AppColors.primary,
                title: l10n.privacyPolicy,
                subtitle: l10n.privacyPolicySubtitle,
                onTap: () {
                  _showComingSoon(
                    l10n.privacyPolicy,
                    l10n,
                  );
                },
              ),

              _buildDivider(),

              _buildMenuItem(
                icon: Icons.help_outline,
                iconColor: AppColors.primary,
                title: l10n.termsOfService,
                subtitle: l10n.termsOfServiceSubtitle,
                onTap: () {
                  _showComingSoon(
                    l10n.termsOfService,
                    l10n,
                  );
                },
              ),

              _buildDivider(),

              _buildMenuItem(
                icon: Icons.share,
                iconColor: AppColors.primary,
                title: l10n.shareApp,
                subtitle: l10n.shareAppSubtitle,
                onTap: () {
                  _showComingSoon(
                    l10n.shareApp,
                    l10n,
                  );
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
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 9.sp,
              letterSpacing: 0.6,
              color: AppColors.textGrey,
            ),
          ),

          SizedBox(height: 3.h),

          Text(
            value,
            textAlign: TextAlign.center,
            maxLines: allowGrow ? 2 : 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
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
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 15.h,
        ),
        child: Row(
          children: [
            Container(
              width: 38.w,
              height: 38.w,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.09),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 19.sp,
              ),
            ),

            SizedBox(width: 12.w),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      color: titleColor,
                    ),
                  ),

                  if (subtitle.isNotEmpty) ...[
                    SizedBox(height: 2.h),

                    Text(
                      subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        height: 1.3,
                        color: AppColors.textGrey,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            Icon(
              Icons.chevron_right,
              color: AppColors.textLightGrey,
              size: 20.sp,
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
    return Divider(
      height: 1.h,
      thickness: 1.h,
      indent: 68.w,
      endIndent: 0,
      color: AppColors.outlineGrey,
    );
  }

  // =====================================================================
  // COMING SOON
  // =====================================================================

  void _showComingSoon(
    String feature,
    AppLocalizations l10n,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          l10n.featureComingSoon(feature),
        ),
      ),
    );
  }
}