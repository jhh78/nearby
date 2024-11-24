import 'package:flutter/material.dart';

TextTheme getTextTheme() {
  const fontFamily = 'NotoSerifJP';
  const fontWeight = FontWeight.w400;
  const color = Colors.black;

  return const TextTheme(
    labelSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 10,
    ),
    labelMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 12,
    ),
    labelLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 12,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 14,
    ),
    bodyLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 16,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 18,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 20,
    ),
    headlineLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 22,
    ),
    titleSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 12,
    ),
    titleMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 14,
    ),
    titleLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 16,
    ),
    displaySmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 24,
    ),
    displayMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 28,
    ),
    displayLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      fontSize: 32,
    ),
  );
}
