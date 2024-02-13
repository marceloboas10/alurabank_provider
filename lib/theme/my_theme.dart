import 'package:alurabank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Raleway',
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  cardColor: const Color(0xFF4B4B4B),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
    titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
    titleSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
  ),
);
