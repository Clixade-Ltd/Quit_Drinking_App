import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';

import '../../constants/app_colors.dart';
import '../../services/local_storage_service.dart';

class RideTheWaveScreen extends StatefulWidget {
  const RideTheWaveScreen({super.key});

  @override
  State<RideTheWaveScreen> createState() =>
      _RideTheWaveScreenState();
}

class _RideTheWaveScreenState
    extends State<RideTheWaveScreen> {
  static const Duration _timerDuration =
  Duration(minutes: 15);

  static const String _cravingsBeatenKey =
      'cravings_beaten_count';

  Timer? _countdownTimer;
  Duration _remaining = _timerDuration;
  bool _isTimerRunning = false;
  bool _isComplete = false;

  @override
  void dispose() {
    _countdownTimer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    setState(() {
      _isTimerRunning = true;
      _isComplete = false;
      _remaining = _timerDuration;
    });

    _countdownTimer = Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        if (!mounted) return;

        if (_remaining.inSeconds <= 1) {
          timer.cancel();

          setState(() {
            _remaining = Duration.zero;
            _isTimerRunning = false;
            _isComplete = true;
          });

          _onTimerComplete();
          return;
        }

        setState(() {
          _remaining -=
          const Duration(seconds: 1);
        });
      },
    );
  }

  void _cancelTimer() {
    _countdownTimer?.cancel();

    setState(() {
      _isTimerRunning = false;
      _remaining = _timerDuration;
    });
  }

  Future<void> _onTimerComplete() async {
    await _incrementCravingsBeaten();

    if (!mounted) return;

    final l10n = AppLocalizations.of(context)!;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          l10n.rideTheWaveCompletedMessage,
        ),
        backgroundColor: AppColors.primary,
      ),
    );
  }

  Future<void> _incrementCravingsBeaten() async {
    try {
      final storage =
          LocalStorageService.instance;

      final saved =
      await storage.getJson(_cravingsBeatenKey);

      final current =
          (saved?['count'] as num?)?.toInt() ?? 0;

      await storage.setJson(
        _cravingsBeatenKey,
        {'count': current + 1},
      );
    } catch (e) {
      debugPrint(
        'Ride the Wave — failed to persist count: $e',
      );
    }
  }

  String get _formattedRemaining {
    final minutes =
    _remaining.inMinutes
        .toString()
        .padLeft(2, '0');

    final seconds =
    (_remaining.inSeconds % 60)
        .toString()
        .padLeft(2, '0');

    return '$minutes:$seconds';
  }

  double get _progress =>
      1 -
          (_remaining.inSeconds /
              _timerDuration.inSeconds);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor:
      AppColors.dashboardBackground,
      body: SafeArea(
        child: Column(
          children: [
            // =========================
            // HEADER
            // =========================
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
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      l10n.rideTheWave,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.w700,
                        fontSize: 20,
                        color:
                        AppColors.textBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding:
                const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    Text(
                      l10n.cravingsPeakAndPass,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.w700,
                        fontSize: 26,
                        height: 1.2,
                        color:
                        AppColors.textBlack,
                      ),
                    ),

                    const SizedBox(height: 10),

                    SizedBox(
                      width: 280,
                      child: Text(
                        l10n.rideTheWaveDescription,
                        textAlign:
                        TextAlign.center,
                        style: const TextStyle(
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 15,
                          height: 1.4,
                          color:
                          AppColors
                              .textLightGrey,
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    // =========================
                    // TIMER RING
                    // =========================
                    SizedBox(
                      width: 220,
                      height: 220,
                      child: Stack(
                        alignment:
                        Alignment.center,
                        children: [
                          SizedBox(
                            width: 220,
                            height: 220,
                            child:
                            CircularProgressIndicator(
                              value:
                              _isTimerRunning ||
                                  _isComplete
                                  ? _progress.clamp(
                                0.0,
                                1.0,
                              )
                                  : 0,
                              strokeWidth: 14,
                              strokeCap:
                              StrokeCap.round,
                              backgroundColor:
                              AppColors
                                  .progressBarBackground,
                              valueColor:
                              const AlwaysStoppedAnimation<
                                  Color>(
                                AppColors.primary,
                              ),
                            ),
                          ),

                          Column(
                            mainAxisSize:
                            MainAxisSize.min,
                            children: [
                              Text(
                                _isComplete
                                    ? l10n.done
                                    : _formattedRemaining,
                                style:
                                const TextStyle(
                                  fontWeight:
                                  FontWeight.w700,
                                  fontSize: 36,
                                  color:
                                  AppColors
                                      .textBlack,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                _isTimerRunning
                                    ? l10n
                                    .stayWithIt
                                    : (_isComplete
                                    ? l10n
                                    .youMadeIt
                                    : l10n
                                    .readyWhenYouAre),
                                style:
                                const TextStyle(
                                  fontWeight:
                                  FontWeight.w500,
                                  fontSize: 13,
                                  letterSpacing:
                                  0.6,
                                  color:
                                  AppColors
                                      .textLightGrey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 40),

                    // =========================
                    // ACTION BUTTON
                    // =========================
                    if (_isTimerRunning)
                      InkWell(
                        borderRadius:
                        BorderRadius.circular(
                          9999,
                        ),
                        onTap: _cancelTimer,
                        child: Container(
                          padding:
                          const EdgeInsets
                              .symmetric(
                            horizontal: 28,
                            vertical: 14,
                          ),
                          decoration:
                          BoxDecoration(
                            color:
                            const Color(
                              0xFFD7E5E2,
                            ),
                            borderRadius:
                            BorderRadius
                                .circular(
                              9999,
                            ),
                          ),
                          child: Text(
                            l10n.cancel,
                            style:
                            const TextStyle(
                              fontWeight:
                              FontWeight.w600,
                              fontSize: 15,
                              color:
                              AppColors
                                  .textGrey,
                            ),
                          ),
                        ),
                      )
                    else
                      InkWell(
                        borderRadius:
                        BorderRadius.circular(
                          9999,
                        ),
                        onTap: _startTimer,
                        child: Container(
                          padding:
                          const EdgeInsets
                              .symmetric(
                            horizontal: 28,
                            vertical: 14,
                          ),
                          decoration:
                          BoxDecoration(
                            color:
                            AppColors.primary,
                            borderRadius:
                            BorderRadius
                                .circular(
                              9999,
                            ),
                          ),
                          child: Text(
                            _isComplete
                                ? l10n.rideItAgain
                                : l10n
                                .start15MinuteTimer,
                            style:
                            const TextStyle(
                              fontWeight:
                              FontWeight.w600,
                              fontSize: 15,
                              color:
                              AppColors.white,
                            ),
                          ),
                        ),
                      ),

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}