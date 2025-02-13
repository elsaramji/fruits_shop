// main.dart

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_shop/components/Home/views/home_view.dart';
import 'package:fruits_shop/core/helper/on_Generate.dart';
import 'package:fruits_shop/core/injection/Git_it.dart';
import 'package:fruits_shop/core/styles/color_style.dart';
import 'package:fruits_shop/firebase_options.dart';
import 'package:fruits_shop/generated/l10n.dart';
import 'package:fruits_shop/service/database/presence.dart';
import 'package:fruits_shop/service/state_management/BlocObservers/bloc_observers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = BlocObserverImpl();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Preferences.init();
  setupGetIt();
  runApp(const FruitHup());
}

class FruitHup extends StatelessWidget {
  const FruitHup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
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
      initialRoute: HomeView.id,
    );
  }
}
