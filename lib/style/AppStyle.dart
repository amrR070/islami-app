import 'package:flutter/material.dart';

class AppStyle{
  static bool isDark = false;
  static Color lightPrimaryColor = Color(0xFFB7935F);
  static Color darkPrimaryColor = Color(0xFF141A2E);
  static Color darkSecondary = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: Colors.black
      ),
        bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Colors.black
      ),
      bodySmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: lightPrimaryColor
      ),
      bodyLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white
      )
    ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
              color :Colors.black
          ),
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
        seedColor: Colors.white,
        primary: lightPrimaryColor,
        secondary: lightPrimaryColor.withOpacity(0.57),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
          tertiary: lightPrimaryColor,

      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(

        backgroundColor: lightPrimaryColor,
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
        color: lightPrimaryColor,
        thickness: 2,
      )
  );
  static ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: darkPrimaryColor
      ),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: Colors.white
          ),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: darkSecondary
          ),
          bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: darkSecondary
          ),
          bodyLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black
          )
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color :Colors.white
          ),
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
          )
      ),
      cardTheme: CardTheme(
          margin: EdgeInsets.all(20),
          color: darkPrimaryColor,
          surfaceTintColor: darkPrimaryColor,
          elevation: 30
      ),
      iconTheme: IconThemeData(),
      buttonTheme: ButtonThemeData(),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.black,
        primary: darkPrimaryColor,
        secondary: darkPrimaryColor.withOpacity(0.57),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        tertiary: darkSecondary
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(

        backgroundColor: darkPrimaryColor,
        unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 30
        ),
        selectedIconTheme: IconThemeData(
            color: darkSecondary,
            size: 30
        ),
        selectedItemColor: darkSecondary,
        unselectedItemColor: Colors.white,
      ),
      dividerTheme: DividerThemeData(
        color: darkSecondary,
        thickness: 2,
      )
  );
}