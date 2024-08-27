import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Define your light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      background: AppColors.backgroundLight,
      surface: AppColors.surfaceLight,
      error: AppColors.error,
      onPrimary: AppColors.textLight,
      onSecondary: AppColors.textDark,
      onBackground: AppColors.textDark,
      onSurface: AppColors.textDark,
      onError: AppColors.textLight,
    ),
    textTheme: GoogleFonts.montserratTextTheme(
      const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.textDark),
        displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppColors.textDark),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.textDark),
        titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.secondary),
        bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textDark),
        bodyMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.textDark),
        labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textLight),
        bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.secondary),
      ),
    ),
  );

  // Define your dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.surfaceDark,
      error: AppColors.error,
      onPrimary: AppColors.textLight,
      onSecondary: AppColors.textLight,
      onBackground: AppColors.textLight,
      onSurface: AppColors.textLight,
      onError: AppColors.textLight,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
      iconTheme: IconThemeData(color: AppColors.textLight),
      titleTextStyle: TextStyle(color: AppColors.textLight, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceDark, // Lighter gray for form fields
      hintStyle: TextStyle(color: AppColors.textLight.withOpacity(0.6)),
      labelStyle: const TextStyle(color: AppColors.textLight),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.secondary),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.secondary),
      ),
    ),
    textTheme: GoogleFonts.montserratTextTheme(
      const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.textLight),
        displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppColors.textLight),
        titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.textLight),
        titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.secondary),
        bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textLight),
        bodyMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.textLight),
        labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textDark),
        bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.secondary),
      ),
    ),
  );
}

// Define your color palette
class AppColors {
  // Core Palette
  static const Color primary = Color(0xFF000000); // Black
  static const Color secondary = Color(0xFF6E6E6E); // Medium Gray
  static const Color accent = Color(0xFF00A86B); // Green

  // Backgrounds
  static const Color backgroundLight = Color(0xFFFFFFFF); // White
  static const Color backgroundDark = Color(0xFF000000); // Black (updated)
  static const Color surfaceLight = Color(0xFFF5F5F5); // Light Gray
  static const Color surfaceDark = Color(0xFF1C1C1C); // Lighter Gray for surface

  // Text Colors
  static const Color textLight = Color(0xFFFFFFFF); // White Text
  static const Color textDark = Color(0xFF1C1C1C); // Dark Gray Text

  // Status Colors
  static const Color success = Color(0xFF28A745); // Success (Green)
  static const Color warning = Color(0xFFFFC107); // Warning (Amber)
  static const Color error = Color(0xFFDC3545); // Error (Red)
  static const Color info = Color(0xFF17A2B8); // Info (Cyan)

  // On Status Colors
  static const Color onSuccess = Color(0xFFFFFFFF); // White on Success
  static const Color onWarning = Color(0xFF1C1C1C); // Dark Gray on Warning
  static const Color onError = Color(0xFFFFFFFF); // White on Error
  static const Color onInfo = Color(0xFFFFFFFF); // White on Info
}

// Define screen size configuration
class SizeConfig {
  static double? screenW;
  static double? screenH;
  static double? blockH;
  static double? blockV;

  void init(BuildContext context) {
    screenW = MediaQuery.of(context).size.width;
    screenH = MediaQuery.of(context).size.height;
    blockH = screenW! / 100;
    blockV = screenH! / 100;
  }
}