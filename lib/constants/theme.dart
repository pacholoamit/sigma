import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

// Todo: Determine Font Family

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Color(0xFF37B7DB),
      accentColor: Color(0xFF5af5e1),
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      cardTheme: CardTheme(
        color: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.cyan,
      accentColor: Colors.cyanAccent,
      primaryColor: Color(0xFF37B7DB),
      backgroundColor: Color(0xFF0B233C),
      scaffoldBackgroundColor: Color(0xFF0B233C),
      cardTheme: CardTheme(
        color: Color(0xFF142D4D),
      ),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Color(0xFF081A2D),
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3))),
      iconTheme: IconThemeData(
        color: Colors.cyan,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            textStyle: TextStyle(fontSize: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(150))),
      ),
      textTheme: TextTheme(
        caption: TextStyle(color: Colors.white),
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    );
  }
}
