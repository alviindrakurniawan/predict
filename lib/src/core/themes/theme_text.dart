import 'package:flutter/material.dart';

import '../config/config.dart';

class AppTextStyle {
  // ==================== Display TextStyle ====================

  static TextStyle displayLarge = const TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.25,
    height: 64 / 57,
  );

  static TextStyle displayMedium = const TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 52 / 45,
  );

  static TextStyle displaySmall = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 44 / 36,
  );

  // ==================== Heading TextStyle ====================

  static TextStyle headlineLarge = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 40 / 32,
  );

  static TextStyle headlineMedium = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 36 / 28,
  );

  static TextStyle headlineSmall = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 32 / 24,
  );

  // ==================== Title TextStyle ====================

  static TextStyle titleLarge = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 26 / 20,
  );

  static TextStyle titleLargeGrey = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      height: 26 / 20,
      color: Colors.grey);

  static TextStyle titleGreen20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Color(0xFF006400),
    letterSpacing: 0,
  );

  static TextStyle title18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );

  static TextStyle titleMedium = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.15,
    height: 24 / 16,
  );

  static TextStyle titleSmall = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.1,
    height: 20 / 14,
  );

  static TextStyle title12 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.1,
    height: 18 / 12,
  );

  // ==================== Body TextStyle ====================

  static TextStyle body18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 24 / 18,
  );

  static TextStyle bodyLarge = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 24 / 16,
  );

  static TextStyle bodyMedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 20 / 14,
  );

  static TextStyle bodySmall = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 16 / 12,
  );

  // ==================== Label TextStyle ====================

  static TextStyle labelLarge = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 22 / 18,
  );

  static TextStyle label16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
    height: 21 / 16,
  );

  static TextStyle label14 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
    height: 20 / 14,
  );

  static TextStyle labelMedium = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
    height: 16 / 12,
  );

  static TextStyle labelSmall = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 16 / 11,
  );

  // ==================== 600 TextStyle ====================

  static TextStyle body16W600 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4,
    color: Color(0xFF212121),
    height: 21 / 16,
  );
  static TextStyle body14W600 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4,
    color: Color(0xFF212121),
    height: 20 / 14,
  );
  static TextStyle body12W600 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4,
    color: Color(0xFF212121),
    height: 14 / 12,
  );
  static TextStyle body10W600 = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4,
    color: Color(0xFF212121),
    height: 14 / 10,
  );

  static TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );

  static TextTheme get dark => textTheme.apply(
      fontFamily: Config.fontFamily,
      displayColor: const Color(0xFFFFFFFF),
      //.withOpacity(0.8),
      bodyColor: const Color(0xFFA9A9A9)
      //.withOpacity(0.8),
      );

  static TextTheme get light => textTheme.apply(
      fontFamily: Config.fontFamily,
      displayColor: const Color(0xFF006400),
      //.withOpacity(0.8),
      bodyColor: const Color(0xFF212121)
      //.withOpacity(0.8),
      );
}
