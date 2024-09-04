// main.dart

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_shop/components/futures/splash/view/splash.dart';

import 'package:fruits_shop/core/helper/on_Generate.dart';
import 'package:fruits_shop/firebase_options.dart';
import 'package:fruits_shop/service/database/presence.dart';
import 'package:fruits_shop/core/styles/color_style.dart';
import 'package:fruits_shop/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FruitHup());
}

class FruitHup extends StatelessWidget {
  const FruitHup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: AppColors.primaryWhite,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primaryWhite,
          scrolledUnderElevation: 0,
          centerTitle: true,
        ),
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (setting) => ongenerate(setting),
      initialRoute: Splash.route,
    );
  }
}
