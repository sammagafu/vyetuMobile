import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Define your light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: GoogleFonts.montserratTextTheme(
      ThemeData.light().textTheme,
    ),
    scaffoldBackgroundColor: Colors.white, colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.accent,
    ).copyWith(secondary: AppColors.accent),
  );

  // Define your dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    textTheme: GoogleFonts.montserratTextTheme(
      ThemeData.dark().textTheme,
    ),
    scaffoldBackgroundColor: Colors.black, colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.accent,
    ).copyWith(secondary: AppColors.accent),
  );
}

// Define your color palette
class AppColors {
  static const Color primary = Color(0xFF6200EE);
  static const Color accent = Color(0xFF03DAC6);
// Add more colors as needed
}
