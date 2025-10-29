import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blueGrey[300],
    foregroundColor: Colors.black,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.blueGrey[300],
  ),
  colorScheme: ColorScheme.light(
    background: Colors.blueGrey[100],
    primary: Colors.blueGrey.shade900,
    secondary: Colors.black,
    onPrimary: Colors.blueGrey,
    onSecondary: Colors.white,
  ),
  // textTheme: TextTheme(
  //   titleLarge:
  // )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(backgroundColor: Colors.blueGrey[900]),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.blueGrey[900],
  ),
  colorScheme: ColorScheme.dark(
    background: Colors.blueGrey[800],
    primary: Colors.blueGrey,
    secondary: Colors.white24,
    onPrimary: Colors.blueGrey,
    onSecondary: Colors.blueGrey,
  ),
);
