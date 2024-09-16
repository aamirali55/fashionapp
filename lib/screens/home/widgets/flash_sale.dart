import 'dart:async';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({super.key});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  late Timer _timer;
  Duration _countdownDuration =
      const Duration(hours: 1); // Set initial duration (1 hour)

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (_countdownDuration.inSeconds > 0) {
          _countdownDuration -= const Duration(seconds: 1);
        } else {
          _timer.cancel(); // Stop the timer when countdown is complete
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String twoDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final hours = twoDigits(_countdownDuration.inHours);
    final minutes = twoDigits(_countdownDuration.inMinutes.remainder(60));
    final seconds = twoDigits(_countdownDuration.inSeconds.remainder(60));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Flash Sale",
          style: TextStyle(
              color: AppColors.capsuleLineColor,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        Row(
          children: [
            Text(
              "Closing in : ",
              style: TextStyle(color: AppColors.plainTextColor),
            ),
            // Container for Hours
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:
                    AppColors.backgorndPrimaryColor, // Custom background color
              ),
              child: Center(
                child: Text(
                  hours,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.primaryColor), // Custom text color
                ),
              ),
            ),
            // Separator :
            Text(
              " : ",
              style: TextStyle(
                  color: AppColors.capsuleLineColor), // Custom text color
            ),
            // Container for Minutes
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:
                    AppColors.backgorndPrimaryColor, // Custom background color
              ),
              child: Center(
                child: Text(
                  minutes,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.primaryColor), // Custom text color
                ),
              ),
            ),
            // Separator :
            Text(
              " : ",
              style: TextStyle(
                  color: AppColors.capsuleLineColor), // Custom text color
            ),
            // Container for Seconds
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:
                    AppColors.backgorndPrimaryColor, // Custom background color
              ),
              child: Center(
                child: Text(
                  seconds,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.primaryColor), // Custom text color
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
