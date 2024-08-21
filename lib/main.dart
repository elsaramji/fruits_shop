// main.dart

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_shop/core/helper/on_Generate.dart';
import 'package:fruits_shop/generated/l10n.dart';
import 'package:fruits_shop/views/Futures/Splash/view/splash.dart';

void main() {
  runApp(const FruitHup());
}

class FruitHup extends StatelessWidget {
  const FruitHup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
