import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:new_quit_drinking_app/firebase_options.dart';
import 'package:new_quit_drinking_app/l10n/app_localizations.dart';
import 'package:new_quit_drinking_app/screens/splash/splash_screen.dart';
import 'package:new_quit_drinking_app/services/analytics_service.dart';
import 'package:new_quit_drinking_app/theme/theme_controller.dart';

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

  // Saved light/dark choice load karo (runApp se pehle)
  await ThemeController.instance.load();

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
        return ListenableBuilder(
          listenable: ThemeController.instance,
          builder: (context, _) {
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

              // ======================================================
              // THEME (Light / Dark)
              // ======================================================
              themeMode: ThemeController.instance.mode,

              theme: ThemeData(
                brightness: Brightness.light,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color(0xFF006565),
                ),
              ),

              darkTheme: ThemeData(
                brightness: Brightness.dark,
                primaryColor: ThemeController.darkAccent,
                scaffoldBackgroundColor:
                    ThemeController.darkBackground,
                canvasColor: ThemeController.darkBackground,
                cardColor: ThemeController.darkCard,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: ThemeController.darkBackground,
                  brightness: Brightness.dark,
                ).copyWith(
                  primary: ThemeController.darkAccent,
                  onPrimary: Colors.white,
                  secondary: ThemeController.darkCard,
                  onSecondary: Colors.white,
                  surface: ThemeController.darkCard,
                  onSurface: Colors.white,
                  outline: Colors.white24,
                ),
                textTheme: ThemeData.dark().textTheme.apply(
                      bodyColor: Colors.white,
                      displayColor: Colors.white,
                    ),
                appBarTheme: const AppBarTheme(
                  backgroundColor: ThemeController.darkBackground,
                  foregroundColor: Colors.white,
                  surfaceTintColor: Colors.transparent,
                ),
                iconTheme: const IconThemeData(
                  color: Colors.white,
                ),
                dividerTheme: const DividerThemeData(
                  color: Colors.white24,
                ),
                dialogTheme: const DialogThemeData(
                  backgroundColor: ThemeController.darkCard,
                  titleTextStyle: TextStyle(color: Colors.white),
                  contentTextStyle: TextStyle(color: Colors.white70),
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeController.darkAccent,
                    foregroundColor: Colors.white,
                  ),
                ),
                filledButtonTheme: FilledButtonThemeData(
                  style: FilledButton.styleFrom(
                    backgroundColor: ThemeController.darkAccent,
                    foregroundColor: Colors.white,
                  ),
                ),
                inputDecorationTheme: const InputDecorationTheme(
                  labelStyle: TextStyle(color: Colors.white70),
                  hintStyle: TextStyle(color: Colors.white54),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white38),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),

              home: const SplashScreen(),
            );
          },
        );
      },
    );
  }
}