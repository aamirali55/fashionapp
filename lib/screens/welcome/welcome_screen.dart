import 'dart:ui';

import 'package:fashionapp/screens/sign%20in%20&%20sign%20up/sign_in.dart';
import 'package:fashionapp/screens/welcome/onbording_screen.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:fashionapp/widgets/capsule_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 90),
          Container(
            height: 370,
            color: AppColors.screenBackgroundColor,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.0),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/welcome1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/welcome2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/welcome3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "The ",
                  style: TextStyle(color: Color(0xff1F2029)),
                ),
                TextSpan(
                  text: "Fashion App ",
                  style: TextStyle(color: Color(0xff704F38)),
                ),
                TextSpan(
                  text: "That\n",
                  style: TextStyle(color: Color(0xff1F2029)),
                ),
                TextSpan(
                  text: "Makes You Look Your Best",
                  style: TextStyle(color: Color(0xff1F2029)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Lorem ispsum dolor sit amet, consectetour\n adipiscing elit,sed do eliusmod tempor incididunt",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xff7B7B7B)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ButtonStyle(
                  minimumSize: const WidgetStatePropertyAll<Size>(
                    Size(315, 45),
                  ),
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    AppColors.primaryColor,
                  )),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnboardingScreen()));
              },
              child: const Text(
                "Let's Get Started",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          const SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          const CapsuleLine(),
        ],
      ),
      backgroundColor: AppColors.screenBackgroundColor,
    );
  }
}
