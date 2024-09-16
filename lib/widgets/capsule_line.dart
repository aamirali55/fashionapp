import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CapsuleLine extends StatelessWidget {
  const CapsuleLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Container(
          width: 90,
          height: 5,
          decoration: BoxDecoration(
            color: AppColors.capsuleLineColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
