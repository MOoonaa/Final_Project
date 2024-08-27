import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white, // Background color for light mode
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue, // Deprecated, use colorScheme instead
  ),
  colorScheme: const ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(color: Colors.black),
    bodyLarge: TextStyle(color: Colors.black),
  ),
);

final ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.blueGrey,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black, // Background color for dark mode
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blueGrey,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blueGrey, // Deprecated, use colorScheme instead
  ),
  colorScheme: const ColorScheme.dark(
    primary: Colors.blueGrey,
    secondary: Colors.grey,
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
  ),
);
