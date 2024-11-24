import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/provider/system.dart';

final SystemProvider systemProvider = Get.put(SystemProvider());
const fontFamily = 'NotoSerifJP';
const fontWeight = FontWeight.w400;

TextTheme getLightTextTheme() {
  return const TextTheme(
    labelSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 10,
    ),
    labelMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 12,
    ),
    labelLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 12,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 14,
    ),
    bodyLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 16,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 18,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 20,
    ),
    headlineLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 22,
    ),
    titleSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 12,
    ),
    titleMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 14,
    ),
    titleLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 16,
    ),
    displaySmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 24,
    ),
    displayMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 28,
    ),
    displayLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.black,
      fontSize: 32,
    ),
  );
}

TextTheme getDarkTextTheme() {
  return const TextTheme(
    labelSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 10,
    ),
    labelMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 12,
    ),
    labelLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 12,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 14,
    ),
    bodyLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 16,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 18,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 20,
    ),
    headlineLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 22,
    ),
    titleSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 12,
    ),
    titleMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 14,
    ),
    titleLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 16,
    ),
    displaySmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 24,
    ),
    displayMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 28,
    ),
    displayLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: Colors.white,
      fontSize: 32,
    ),
  );
}
