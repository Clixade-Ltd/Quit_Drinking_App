import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _pushNotifications = true;
  bool _emailNotifications = false;
  bool _darkMode = false;
  bool _biometricLogin = true;
  String _language = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dashboardBackground,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.primary),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          _sectionHeader('Account'),
          _tile(
            icon: Icons.person_outline,
            title: 'Edit Profile',
            onTap: () {},
          ),
          _tile(
            icon: Icons.lock_outline,
            title: 'Change Password',
            onTap: () {},
          ),
          _switchTile(
            icon: Icons.fingerprint,
            title: 'Biometric Login',
            value: _biometricLogin,
            onChanged: (v) => setState(() => _biometricLogin = v),
          ),

          const SizedBox(height: 12),
          _sectionHeader('Notifications'),
          _switchTile(
            icon: Icons.notifications_outlined,
            title: 'Push Notifications',
            value: _pushNotifications,
            onChanged: (v) => setState(() => _pushNotifications = v),
          ),
          _switchTile(
            icon: Icons.email_outlined,
            title: 'Email Notifications',
            value: _emailNotifications,
            onChanged: (v) => setState(() => _emailNotifications = v),
          ),

          const SizedBox(height: 12),
          _sectionHeader('Preferences'),
          _switchTile(
            icon: Icons.dark_mode_outlined,
            title: 'Dark Mode',
            value: _darkMode,
            onChanged: (v) => setState(() => _darkMode = v),
          ),
          _tile(
            icon: Icons.language_outlined,
            title: 'Language',
            trailingText: _language,
            onTap: () => _showLanguagePicker(context),
          ),

          const SizedBox(height: 12),
          _sectionHeader('Support'),
          _tile(
            icon: Icons.help_outline,
            title: 'Help Center',
            onTap: () {},
          ),
          _tile(
            icon: Icons.privacy_tip_outlined,
            title: 'Privacy Policy',
            onTap: () {},
          ),
          _tile(
            icon: Icons.description_outlined,
            title: 'Terms of Service',
            onTap: () {},
          ),
          _tile(
            icon: Icons.info_outline,
            title: 'About',
            trailingText: 'v1.0.0',
            onTap: () {},
          ),

          const SizedBox(height: 12),
          _tile(
            icon: Icons.logout,
            title: 'Log Out',
            titleColor: Colors.red,
            iconColor: Colors.red,
            onTap: () => _confirmLogout(context),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _sectionHeader(String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.grey,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _tile({
    required IconData icon,
    required String title,
    String? trailingText,
    Color? titleColor,
    Color? iconColor,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: iconColor ?? AppColors.primary),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: titleColor ?? Colors.black87,
          ),
        ),
        trailing: trailingText != null
            ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              trailingText,
              style: const TextStyle(color: Colors.grey),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        )
            : const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _switchTile({
    required IconData icon,
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SwitchListTile(
        secondary: Icon(icon, color: AppColors.primary),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        value: value,
        activeColor: AppColors.primary,
        onChanged: onChanged,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  void _showLanguagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        final languages = ['English', 'Spanish', 'French', 'Arabic', 'Urdu'];
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: languages
                .map((lang) => ListTile(
              title: Text(lang),
              trailing: lang == _language
                  ? const Icon(Icons.check, color: AppColors.primary)
                  : null,
              onTap: () {
                setState(() => _language = lang);
                Navigator.pop(context);
              },
            ))
                .toList(),
          ),
        );
      },
    );
  }

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Log Out'),
        content: const Text('Are you sure you want to log out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // TODO: hook up actual logout logic
            },
            child: const Text('Log Out', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}