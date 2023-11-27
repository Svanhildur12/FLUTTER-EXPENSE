import 'package:flutter/material.dart';
import 'package:exp_app/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.tealAccent);

var kDarkColorScheme =
    ColorScheme.fromSeed(brightness: Brightness.dark, seedColor: Colors.brown);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.inversePrimary,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.inversePrimary,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
          ),
          textTheme: ThemeData.dark().textTheme.copyWith(
              bodyLarge:
                  TextStyle(color: kDarkColorScheme.onPrimaryContainer))),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.onPrimaryContainer,
        ),
        textTheme: ThemeData().textTheme.copyWith(
              bodyLarge: TextStyle(color: kColorScheme.onPrimaryContainer),
              titleLarge: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.inversePrimary,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.inversePrimary),
        ),
      ),
      // themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
