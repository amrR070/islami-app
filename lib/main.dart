import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/Aheadeth_Details/ahadeth_details.dart';
import 'package:islami_app/home/HomeScreen.dart';
import 'package:islami_app/quran_details/QuranDetails.dart';
import 'package:islami_app/style/AppStyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami App',
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: ThemeMode.dark,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"),
        Locale("ar"),
      ],
      locale: Locale("ar"),
      initialRoute: HomeScreen.routname,
      routes: {
        HomeScreen.routname: (_)=>HomeScreen(),
        QuranDetails.routeName: (context) => QuranDetails(),
        AhadethDetails.routeName: (context) => AhadethDetails(),
      },
    );
  }
}
