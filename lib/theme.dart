import 'package:flutter/material.dart';

ColorScheme kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

ColorScheme kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

final kTheme = ThemeData(useMaterial3: true).copyWith(
  colorScheme: kColorScheme,

  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: kColorScheme.onPrimaryContainer,
    foregroundColor: kColorScheme.primaryContainer,
    centerTitle: true,
  ),
  cardTheme: CardThemeData().copyWith(
    color: kColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kColorScheme.primaryContainer,
    ),
  ),
  textTheme: ThemeData().textTheme.copyWith(
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: kColorScheme.onSecondaryContainer,
    ),
  ),
);

final kDarkTheme = ThemeData.dark(useMaterial3: true).copyWith(
  colorScheme: kDarkColorScheme,

  cardTheme: CardThemeData().copyWith(
    color: kDarkColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),

    elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kDarkColorScheme.primaryContainer,
      foregroundColor: kDarkColorScheme.onPrimaryContainer,
    ),
  ),

  //   appBarTheme: const AppBarTheme().copyWith(
  //   backgroundColor: kDarkColorScheme.primaryContainer,
  //   foregroundColor: kDarkColorScheme.onPrimaryContainer,
  //   centerTitle: true,
  // ),
);