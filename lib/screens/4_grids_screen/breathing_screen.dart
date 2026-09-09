import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../models/breathing_session_store.dart';
import '../../services/analytics_service.dart';

enum _BreathPhase { inhale, hold, exhale }

class BreathingScreen extends StatefulWidget {
  const BreathingScreen({super.key});

  @override
  State<BreathingScreen> createState() => _BreathingScreenState();
}

class _BreathingScreenState extends State<BreathingScreen> {
  // inhale 4s, hold 7s, exhale 8s — one simple 19s cycle.
  static const int kInhaleSeconds = 4;
  static const int kHoldSeconds = 7;
  static const int kExhaleSeconds = 8;
  static const int kCycleTotalSeconds =
      kInhaleSeconds + kHoldSeconds + kExhaleSeconds;

  // Single cycle per session.
  static const int kSessionTotalSeconds = kCycleTotalSeconds;

  final AnalyticsService _analytics = AnalyticsService.instance;

  Timer? _timer;
  int _elapsedSeconds = 0;
  bool _sessionEnded = false;

  int get _remainingSeconds =>
      (kSessionTotalSeconds - _elapsedSeconds)
          .clamp(0, kSessionTotalSeconds);

  _BreathPhase get _currentPhase {
    final t = _elapsedSeconds;

    if (t < kInhaleSeconds) {
      return _BreathPhase.inhale;
    }

    if (t < kInhaleSeconds + kHoldSeconds) {
      return _BreathPhase.hold;
    }

    return _BreathPhase.exhale;
  }

  String _phaseLabel(AppLocalizations l10n) {
    switch (_currentPhase) {
      case _BreathPhase.inhale:
        return l10n.breathInhale;
      case _BreathPhase.hold:
        return l10n.breathHold;
      case _BreathPhase.exhale:
        return l10n.breathExhale;
    }
  }

  IconData get _phaseIcon {
    switch (_currentPhase) {
      case _BreathPhase.inhale:
        return Icons.arrow_upward_rounded;
      case _BreathPhase.hold:
        return Icons.pause_rounded;
      case _BreathPhase.exhale:
        return Icons.arrow_downward_rounded;
    }
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
    _analytics.breathingExerciseStarted();
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        if (!mounted) return;

        setState(() {
          _elapsedSeconds += 1;

          if (_elapsedSeconds >= kSessionTotalSeconds) {
            _finishSession(
              completedNaturally: true,
            );
          }
        });
      },
    );
  }

  void _finishSession({
    required bool completedNaturally,
  }) {
    _timer?.cancel();

    if (completedNaturally ||
        _elapsedSeconds >= kCycleTotalSeconds) {
      BreathingSessionStore.instance.recordSessionCompleted();
      _analytics.breathingExerciseCompleted();
    }

    if (!mounted) return;

    setState(() {
      _sessionEnded = true;
    });
  }

  void _onEndExercisePressed() {
    if (!_sessionEnded) {
      _finishSession(
        completedNaturally: false,
      );
    }

    Navigator.of(context).maybePop();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get _formattedRemaining {
    final minutes = _remainingSeconds ~/ 60;
    final seconds = _remainingSeconds % 60;

    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final double sessionProgress =
    (_elapsedSeconds / kSessionTotalSeconds)
        .clamp(0.0, 1.0);

    final int sessionsToday =
        BreathingSessionStore.instance.sessionsCompletedToday;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primary,
              Color(0xFF0B3D3B),
            ],
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  // App bar
                  Padding(
                    padding:
                    const EdgeInsets.fromLTRB(4, 8, 20, 4),
                    child: Row(
                      children: [
                        InkWell(
                          borderRadius:
                          BorderRadius.circular(24),
                          onTap: () =>
                              Navigator.of(context).maybePop(),
                          child: const Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: AppColors.white,
                              size: 22,
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Expanded(
                          child: Text(
                            l10n.breathingExercise,
                            style: const TextStyle(
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w700,
                              fontSize: 19,
                              letterSpacing: 0.1,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Slim overall session progress bar
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 24),
                    child: ClipRRect(
                      borderRadius:
                      BorderRadius.circular(999),
                      child: LinearProgressIndicator(
                        value: sessionProgress,
                        minHeight: 3,
                        backgroundColor:
                        AppColors.white.withOpacity(0.15),
                        valueColor:
                        const AlwaysStoppedAnimation(
                          AppColors.progressbar,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        // Breathing animation
                        SizedBox(
                          width: 240,
                          height: 240,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 220,
                                height: 220,
                                child: Lottie.asset(
                                  'assets/animations/breathing_bg.json',
                                  fit: BoxFit.contain,
                                  repeat: true,
                                ),
                              ),

                              // Static center circle with phase label.
                              Container(
                                width: 126,
                                height: 126,
                                alignment: Alignment.center,
                                decoration:
                                const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.divider,
                                ),
                                child: AnimatedSwitcher(
                                  duration:
                                  const Duration(
                                    milliseconds: 250,
                                  ),
                                  child: _sessionEnded
                                      ? Column(
                                    key: const ValueKey('done'),
                                    mainAxisSize:
                                    MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.check_rounded,
                                        color:
                                        AppColors.white,
                                        size: 22,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        l10n.breathDone,
                                        style: const TextStyle(
                                          fontFamily:
                                          'SF Pro',
                                          fontWeight:
                                          FontWeight.w700,
                                          fontSize: 13,
                                          letterSpacing: 0.8,
                                          color:
                                          AppColors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                      : Column(
                                    key: ValueKey(
                                      _phaseLabel(l10n),
                                    ),
                                    mainAxisSize:
                                    MainAxisSize.min,
                                    children: [
                                      Icon(
                                        _phaseIcon,
                                        color:
                                        AppColors.progressbar,
                                        size: 18,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        _phaseLabel(l10n),
                                        style:
                                        const TextStyle(
                                          fontFamily:
                                          'SF Pro',
                                          fontWeight:
                                          FontWeight.w700,
                                          fontSize: 13,
                                          letterSpacing: 0.8,
                                          color:
                                          AppColors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 40),

                        Text(
                          _sessionEnded
                              ? '0:00'
                              : _formattedRemaining,
                          style: const TextStyle(
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: AppColors.white,
                          ),
                        ),

                        const SizedBox(height: 4),

                        Text(
                          _sessionEnded
                              ? l10n.breathGreatJob
                              : l10n.remaining,
                          style: TextStyle(
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color:
                            AppColors.white.withOpacity(0.85),
                          ),
                        ),

                        const SizedBox(height: 18),

                        // Sessions-completed badge
                        Container(
                          padding:
                          const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 7,
                          ),
                          decoration: BoxDecoration(
                            color:
                            AppColors.white.withOpacity(0.16),
                            borderRadius:
                            BorderRadius.circular(999),
                          ),
                          child: Row(
                            mainAxisSize:
                            MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons
                                    .local_fire_department_rounded,
                                size: 14,
                                color:
                                AppColors.progressbar,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                l10n.breathSessionsToday(
                                  sessionsToday,
                                ),
                                style: TextStyle(
                                  fontFamily: 'SF Pro',
                                  fontWeight:
                                  FontWeight.w600,
                                  fontSize: 12,
                                  color: AppColors.white
                                      .withOpacity(0.9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.only(bottom: 40),
                    child: SizedBox(
                      width: 220,
                      height: 50,
                      child: OutlinedButton(
                        onPressed:
                        _onEndExercisePressed,
                        style: OutlinedButton.styleFrom(
                          backgroundColor:
                          AppColors.white
                              .withOpacity(0.08),
                          side: BorderSide(
                            color:
                            AppColors.white
                                .withOpacity(0.5),
                            width: 1.2,
                          ),
                          shape:
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(9999),
                          ),
                        ),
                        child: Text(
                          _sessionEnded
                              ? l10n.done
                              : l10n.endExercise,
                          style: const TextStyle(
                            fontFamily: 'SF Pro',
                            fontWeight:
                            FontWeight.w600,
                            fontSize: 15,
                            color:
                            AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}