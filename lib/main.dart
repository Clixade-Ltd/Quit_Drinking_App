import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:new_quit_drinking_app/firebase_options.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
import 'package:new_quit_drinking_app/screens/splash/splash_screen.dart';
import 'package:new_quit_drinking_app/services/analytics_service.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ScreenUtil setup — same approach as AI Video Generator
  await ScreenUtil.ensureScreenSize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseMessaging.instance.requestPermission();

  FlutterError.onError =
      FirebaseCrashlytics.instance.recordFlutterFatalError;

  final token = await FirebaseMessaging.instance.getToken();
  print('FCM TOKEN: $token');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Reference design size from AI Video Generator
      designSize: const Size(412, 915),

      // Makes text responsive
      minTextAdapt: true,

      // Supports tablets / split screen
      splitScreenMode: true,

      builder: (context, child) {
        return MaterialApp(
          title: 'Quit Drinking',
          debugShowCheckedModeBanner: false,

          navigatorObservers: [
            AnalyticsService.instance.observer,
          ],

          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          supportedLocales: const [
            Locale('en'),
            Locale('ur'),
            Locale('ar'),
            Locale('tr'),
          ],

          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
            ),
          ),

          home: const SplashScreen(),
        );
      },
    );
  }
}