import 'dart:async';

import 'package:fashionapp/screens/welcome/welcome_screen.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:fashionapp/widgets/capsule_line.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Image.asset("assets/images/logo.PNG")),
          const CapsuleLine(),
        ],
      ),
      backgroundColor: AppColors.screenBackgroundColor,
    );
  }
}
