import 'package:flutter/material.dart';
import 'package:waste_management_app/screens/auth/login_screen.dart';
import 'package:waste_management_app/screens/auth/signup_screen.dart';

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
    home: LoginScreen(),
    routes: {
     '/login' : (context) => LoginScreen(),
     '/signup': (context) => SignupScreen()
    },
    
    );
  }


}
