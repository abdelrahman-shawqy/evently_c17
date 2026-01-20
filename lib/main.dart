import 'package:evently_c17/screens/home_screen/home_screen.dart';
import 'package:evently_c17/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: OnboardingScreen.routeName,
      routes: {
        OnboardingScreen.routeName:(context)=>OnboardingScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
      },
    );
  }
}
