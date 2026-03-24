import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

  static const String headlineFont = 'Manrope';
  static const String bodyFont = 'Inter';

  static const TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(fontFamily: headlineFont, fontWeight: FontWeight.w800),
    displayMedium: TextStyle(fontFamily: headlineFont, fontWeight: FontWeight.w800),
    displaySmall: TextStyle(fontFamily: headlineFont, fontWeight: FontWeight.w700),
    headlineLarge: TextStyle(fontFamily: headlineFont, fontWeight: FontWeight.w800),
    headlineMedium: TextStyle(fontFamily: headlineFont, fontWeight: FontWeight.w700),
    headlineSmall: TextStyle(fontFamily: headlineFont, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontFamily: headlineFont, fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontFamily: headlineFont, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(fontFamily: headlineFont, fontWeight: FontWeight.w500),
    bodyLarge: TextStyle(fontFamily: bodyFont, fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(fontFamily: bodyFont, fontWeight: FontWeight.w400),
    bodySmall: TextStyle(fontFamily: bodyFont, fontWeight: FontWeight.w400),
    labelLarge: TextStyle(fontFamily: bodyFont, fontWeight: FontWeight.w600),
    labelMedium: TextStyle(fontFamily: bodyFont, fontWeight: FontWeight.w500),
    labelSmall: TextStyle(fontFamily: bodyFont, fontWeight: FontWeight.w500),
  );
}
