import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName="OnboardingScreen";
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
