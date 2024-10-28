import 'package:flutter/material.dart';
import 'package:waste_management_app/screens/auth/login_screen.dart';
import 'package:waste_management_app/screens/auth/signup_screen.dart';
import 'package:waste_management_app/screens/onboarding/onboarding_screen';
import 'package:waste_management_app/screens/onboarding/onboarding_screen1.dart';
import 'package:waste_management_app/screens/onboarding/onboarding_screen2.dart';
import 'package:waste_management_app/screens/onboarding/onboarding_screen3..dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const OnboardingPage1(),
    routes: {
     '/login' : (context) => LoginScreen(),
     '/signup': (context) => SignupScreen(),
     '/onboarding_screen1': (context) => const OnboardingPage1(),
     '/onboarding_screen2': (context) => const OnboardingPage2(),
     '/onboarding_screen3': (context) => const OnboardingPage3(),
    //  '/onboarding': (context) =>  const OnboardingScreen(),
    },
    
    );
  }


}
