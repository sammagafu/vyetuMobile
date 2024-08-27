import 'package:flutter/material.dart';
import 'theme/theme.dart'; // Import the theme.dart file
import 'views/landing.dart';
import 'views/auth/login.dart';
import 'views/auth/register.dart';
import 'views/auth/forgetpass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Themed App',
      theme: AppTheme.lightTheme, // Apply the light theme
      darkTheme: AppTheme.darkTheme, // Apply the dark theme
      themeMode: ThemeMode.system, // Automatically switch based on system settings
      home: const OnboardingScreen(), // Your onboarding screen
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const Registration(),
        'reset-password': (context) => const ForgotPassword(),
      },
    );
  }
}
