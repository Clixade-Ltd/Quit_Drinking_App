import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../services/analytics_service.dart';
import '../../services/home_dashboard_service.dart';
import '../../services/local_storage_service.dart';
import '../4_grids_screen/breathing_screen.dart';
import '../4_grids_screen/coping_tips_screen.dart';
import '../4_grids_screen/ride_the_wave_screen.dart';
import '../chat_screen/recovery_coach_chat_screen.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class CravingScreen extends StatefulWidget {
  const CravingScreen({super.key});

  @override
  State<CravingScreen> createState() => _CravingScreenState();
}

class _CravingScreenState extends State<CravingScreen> {
  static const String _cravingsBeatenKey = 'cravings_beaten_count';

  bool _isLoading = true;
  String _userName = 'there';
  int _cravingsBeaten = 0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  // ============================================================
  // LOAD DATA
  // ============================================================

  Future<void> _load() async {
    final name =
    await HomeDashboardService.instance.getUserName();

    final count =
    await _loadCravingsBeatenCount();

    if (!mounted) return;

    setState(() {
      _userName =
      (name != null && name.trim().isNotEmpty)
          ? name.trim().split(RegExp(r'\s+')).first
          : 'there';

      _cravingsBeaten = count;
      _isLoading = false;
    });

    // NEW — SOS/cravings screen opened
    AnalyticsService.instance.sosOpened();
  }

  // ============================================================
  // LOAD CRAVINGS BEATEN COUNT
  // ============================================================

  Future<int> _loadCravingsBeatenCount() async {
    try {
      final saved =
      await LocalStorageService.instance.getJson(
        _cravingsBeatenKey,
      );

      final raw = saved?['count'];

      if (raw is num) {
        return raw.toInt();
      }

      return 0;
    } catch (e) {
      debugPrint(
        'Error loading cravings beaten count: $e',
      );

      return 0;
    }
  }

  // ============================================================
  // CALL SOMEONE
  // ============================================================

  Future<void> _openPhoneToCallFriend() async {
    final l10n =
    AppLocalizations.of(context)!;

    // NEW — call someone tapped
    AnalyticsService.instance.callSomeoneTapped();

    try {
      debugPrint(
        'STEP 1: requesting permission...',
      );

      final granted =
      await FlutterContacts.requestPermission(
        readonly: true,
      );

      debugPrint(
        'STEP 1 RESULT: granted = $granted',
      );

      if (!granted) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                l10n.contactsPermissionNeeded,
              ),
              behavior:
              SnackBarBehavior.floating,
            ),
          );
        }

        return;
      }

      debugPrint(
        'STEP 2: opening external pick...',
      );

      final pickedContact =
      await FlutterContacts.openExternalPick();

      debugPrint(
        'STEP 2 RESULT: pickedContact = $pickedContact',
      );

      if (pickedContact == null) {
        return;
      }

      debugPrint(
        'STEP 3: fetching full contact...',
      );

      final fullContact =
      await FlutterContacts.getContact(
        pickedContact.id,
      );

      debugPrint(
        'STEP 3 RESULT: fullContact = $fullContact',
      );

      if (fullContact == null ||
          fullContact.phones.isEmpty) {
        return;
      }

      final phoneNumber =
          fullContact.phones.first.number;

      debugPrint(
        'STEP 4: calling number = $phoneNumber',
      );

      final uri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );

      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        debugPrint(
          'STEP 4 FAILED: canLaunchUrl returned false',
        );
      }
    } catch (e, st) {
      debugPrint(
        'ERROR picking contact or calling: $e',
      );

      debugPrint('$st');
    }
  }

  // ============================================================
  // RIDE THE WAVE
  // ============================================================

  Future<void> _openRideTheWave() async {
    // NEW — ride the wave started
    AnalyticsService.instance.rideTheWaveStarted();

    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) =>
        const RideTheWaveScreen(),
      ),
    );

    if (!mounted) return;

    final count =
    await _loadCravingsBeatenCount();

    if (!mounted) return;

    setState(() {
      _cravingsBeaten = count;
    });
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    final l10n =
    AppLocalizations.of(context)!;

    if (_isLoading) {
      return const Scaffold(
        backgroundColor:
        AppColors.dashboardBackground,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      backgroundColor:
      AppColors.dashboardBackground,

      body: SafeArea(
        child: Column(
          children: [
            // ==================================================
            // FIXED HEADER / APP BAR
            // ==================================================

            Padding(
              padding:
              const EdgeInsets.fromLTRB(
                8,
                12,
                16,
                8,
              ),
              child: Row(
                children: [
                  InkWell(
                    borderRadius:
                    BorderRadius.circular(24),
                    onTap: () =>
                        Navigator.of(context)
                            .maybePop(),
                    child: const SizedBox(
                      width: 44,
                      height: 44,
                      child: Icon(
                        Icons.arrow_back,
                        color:
                        AppColors.textBlack,
                        size: 22,
                      ),
                    ),
                  ),

                  const SizedBox(width: 4),

                  Expanded(
                    child: Text(
                      l10n.sosSupportTitle,
                      maxLines: 1,
                      overflow:
                      TextOverflow.ellipsis,
                      style:
                      const TextStyle(
                        fontWeight:
                        FontWeight.w600,
                        fontSize: 20,
                        color:
                        AppColors.textBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(
              height: 1,
              thickness: 1,
              color:
              AppColors.outlineGrey,
            ),

            // ==================================================
            // MAIN CONTENT
            //
            // FIX:
            // SingleChildScrollView prevents the 2px bottom
            // overflow on smaller screens.
            // ==================================================

            Expanded(
              child: SingleChildScrollView(
                physics:
                const BouncingScrollPhysics(),
                padding:
                const EdgeInsets.fromLTRB(
                  20,
                  15,
                  20,
                  24,
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.stretch,
                  children: [
                    // ==================================================
                    // WARNING ICON
                    // ==================================================

                    Container(
                      width: 68,
                      height: 68,
                      alignment:
                      Alignment.center,
                      decoration:
                      BoxDecoration(
                        shape:
                        BoxShape.circle,
                        color:
                        const Color(
                          0xFFDB7361,
                        ).withOpacity(0.12),
                      ),
                      child: const Icon(
                        Icons
                            .warning_amber_rounded,
                        color:
                        Color(0xFFDB7361),
                        size: 30,
                      ),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    // ==================================================
                    // TITLE
                    // ==================================================

                    Text(
                      l10n.notAloneMessage(
                        _userName,
                      ),
                      textAlign:
                      TextAlign.center,
                      style:
                      const TextStyle(
                        fontWeight:
                        FontWeight.w700,
                        fontSize: 22,
                        color:
                        AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(
                      height: 4,
                    ),

                    // ==================================================
                    // DESCRIPTION
                    // ==================================================

                    Text(
                      l10n.cravingsPassMessage,
                      textAlign:
                      TextAlign.center,
                      style:
                      const TextStyle(
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 14,
                        height: 1.4,
                        color:
                        AppColors.textGrey,
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    // ==================================================
                    // SOS OPTIONS
                    // ==================================================

                    _buildSosItem(
                      icon: Icons.air,
                      iconColor:
                      AppColors.primary,
                      title:
                      l10n.breathingExercise,
                      subtitle:
                      l10n.breathingExerciseSubtitle,
                      onTap: () {
                        // NEW — breathing exercise started
                        AnalyticsService.instance
                            .breathingExerciseStarted();

                        Navigator.of(
                          context,
                        ).push(
                          MaterialPageRoute(
                            builder: (_) =>
                            const BreathingScreen(),
                          ),
                        );
                      },
                    ),

                    _buildSosItem(
                      icon:
                      Icons
                          .access_time_outlined,
                      iconColor:
                      const Color(
                        0xFF3B82F6,
                      ),
                      title:
                      l10n.rideTheWave,
                      subtitle:
                      l10n.rideTheWaveSubtitle,
                      onTap:
                      _openRideTheWave,
                    ),

                    _buildSosItem(
                      icon:
                      Icons
                          .lightbulb_outline,
                      iconColor:
                      const Color(
                        0xFFE0A93B,
                      ),
                      title:
                      l10n.copingTips,
                      subtitle:
                      l10n.copingTipsSubtitle,
                      onTap: () {
                        // NEW — coping tips viewed
                        AnalyticsService.instance
                            .copingTipsViewed();

                        Navigator.of(
                          context,
                        ).push(
                          MaterialPageRoute(
                            builder: (_) =>
                            const CopingTipsScreen(),
                          ),
                        );
                      },
                    ),

                    _buildSosItem(
                      icon:
                      Icons.favorite_border,
                      iconColor:
                      const Color(
                        0xFF7C7CE0,
                      ),
                      title:
                      l10n.talkToAiCoach,
                      subtitle:
                      l10n.talkToAiCoachSubtitle,
                      onTap: () {
                        // NEW — chat opened
                        AnalyticsService.instance
                            .chatOpened();

                        Navigator.of(
                          context,
                        ).push(
                          MaterialPageRoute(
                            builder: (_) =>
                            const RecoveryCoachChatScreen(),
                          ),
                        );
                      },
                    ),

                    _buildSosItem(
                      icon:
                      Icons.call_outlined,
                      iconColor:
                      const Color(
                        0xFFE05656,
                      ),
                      title:
                      l10n.callSomeone,
                      subtitle:
                      l10n.callSomeoneSubtitle,
                      onTap:
                      _openPhoneToCallFriend,
                    ),

                    const SizedBox(
                      height: 2,
                    ),

                    // ==================================================
                    // ENCOURAGEMENT BANNER
                    // ==================================================

                    Container(
                      width: double.infinity,
                      padding:
                      const EdgeInsets
                          .symmetric(
                        horizontal: 18,
                        vertical: 16,
                      ),
                      decoration:
                      BoxDecoration(
                        color: AppColors
                            .primary
                            .withOpacity(0.12),
                        borderRadius:
                        BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: RichText(
                        textAlign:
                        TextAlign.center,
                        text: TextSpan(
                          style:
                          const TextStyle(
                            fontWeight:
                            FontWeight.w400,
                            fontSize: 14,
                            height: 1.4,
                            color:
                            AppColors.primary,
                          ),
                          children: [
                            TextSpan(
                              text: l10n
                                  .beatenCravingsPrefix,
                            ),
                            TextSpan(
                              text: l10n
                                  .beatenCravingsCount(
                                _cravingsBeaten,
                              ),
                              style:
                              const TextStyle(
                                fontWeight:
                                FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: l10n
                                  .beatenCravingsSuffix,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Extra bottom breathing room
                    // for smaller screens.
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // SOS ITEM
  // ============================================================

  Widget _buildSosItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding:
      const EdgeInsets.only(
        bottom: 8,
      ),
      child: InkWell(
        borderRadius:
        BorderRadius.circular(20),
        onTap: onTap,
        child: Container(
          padding:
          const EdgeInsets.all(14),
          decoration:
          BoxDecoration(
            color: AppColors.white,
            borderRadius:
            BorderRadius.circular(20),
            border: Border.all(
              color:
              AppColors.outlineGrey,
            ),
          ),
          child: Row(
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              // ==================================================
              // ICON
              // ==================================================

              Container(
                width: 48,
                height: 48,
                alignment:
                Alignment.center,
                decoration:
                BoxDecoration(
                  color: iconColor
                      .withOpacity(0.12),
                  borderRadius:
                  BorderRadius.circular(
                    14,
                  ),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 22,
                ),
              ),

              const SizedBox(
                width: 14,
              ),

              // ==================================================
              // TEXT
              // ==================================================

              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment
                      .start,
                  mainAxisSize:
                  MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow:
                      TextOverflow.ellipsis,
                      style:
                      const TextStyle(
                        fontWeight:
                        FontWeight.w600,
                        fontSize: 16,
                        color:
                        AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(
                      height: 2,
                    ),

                    Text(
                      subtitle,
                      maxLines: 2,
                      overflow:
                      TextOverflow.ellipsis,
                      style:
                      const TextStyle(
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 11,
                        height: 1.25,
                        color:
                        AppColors.textGrey,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                width: 8,
              ),

              // ==================================================
              // ARROW
              // ==================================================

              const Icon(
                Icons.chevron_right,
                color:
                AppColors.textLightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}