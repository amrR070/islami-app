import 'package:flutter/material.dart';
import 'package:islami_app/home/HomeScreen.dart';
import 'package:islami_app/quran_details/QuranDetails.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )
        ),
        cardTheme: CardTheme(
          margin: EdgeInsets.all(20),
          color: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 50
        ),
        iconTheme: IconThemeData(),
        buttonTheme: ButtonThemeData(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Color(0xFFB7935F),
          secondary: Color(0xFFB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black,

        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(

          backgroundColor: Color(0xFFB7935F),
          unselectedIconTheme: IconThemeData(
              color: Colors.white,
            size: 30
          ),
          selectedIconTheme: IconThemeData(
              color: Colors.black,
              size: 30
          ),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        ),
        dividerTheme: DividerThemeData(
          color: Color(0xFFB7935F),
          thickness: 2,
        )
      ),
      initialRoute: HomeScreen.routname,
      routes: {
        HomeScreen.routname: (_)=>HomeScreen(),
        QuranDetails.routeName: (context) => QuranDetails()
      },
    );
  }
}
