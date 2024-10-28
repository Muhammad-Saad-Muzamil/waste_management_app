import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:waste_management_app/screens/auth/login_screen.dart';
import 'package:waste_management_app/screens/auth/signup_screen.dart';
import 'package:waste_management_app/screens/onboarding/onboarding_screen1.dart';
import 'package:waste_management_app/screens/onboarding/onboarding_screen2.dart';
import 'package:waste_management_app/screens/onboarding/onboarding_screen3..dart';

import 'package:waste_management_app/screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false;

  runApp(MyApp(hasSeenOnboarding: hasSeenOnboarding));
}

class MyApp extends StatelessWidget {
  final bool hasSeenOnboarding;

  const MyApp({required this.hasSeenOnboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/onboarding_screen1': (context) => const OnboardingPage1(),
        '/onboarding_screen2': (context) => const OnboardingPage2(),
        '/onboarding_screen3': (context) => const OnboardingPage3(),
      },
    );
  }
}
