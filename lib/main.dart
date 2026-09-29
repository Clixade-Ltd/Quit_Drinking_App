import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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

  // Load .env before anything that needs GEMINI_API_KEY.
  await dotenv.load(fileName: '.env');

  await ScreenUtil.ensureScreenSize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // IMPORTANT:
  // Notification permission is NOT requested here.
  // It will be requested after the last onboarding question.

  FlutterError.onError =
      FirebaseCrashlytics.instance.recordFlutterFatalError;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 915),
      minTextAdapt: true,
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