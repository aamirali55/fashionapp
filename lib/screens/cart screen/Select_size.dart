import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SelectSize extends StatefulWidget {
  const SelectSize({super.key});

  @override
  State<SelectSize> createState() => _SelectSizeState();
}

class _SelectSizeState extends State<SelectSize> {
  String selectedContainer = "S";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainer = "S";
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: selectedContainer == "S"
                  ? AppColors.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.backgorndPrimaryColor),
            ),
            height: 35,
            width: 35,
            child: Center(
              child: Text(
                "S",
                style: TextStyle(
                  fontSize: 20,
                  color: selectedContainer == "S"
                      ? Colors.white
                      : AppColors.capsuleLineColor,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainer = "M";
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: selectedContainer == "M"
                  ? AppColors.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.backgorndPrimaryColor),
            ),
            height: 35,
            width: 35,
            child: Center(
              child: Text(
                "M",
                style: TextStyle(
                  fontSize: 20,
                  color: selectedContainer == "M"
                      ? Colors.white
                      : AppColors.capsuleLineColor,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainer = "L";
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: selectedContainer == "L"
                  ? AppColors.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.backgorndPrimaryColor),
            ),
            height: 35,
            width: 35,
            child: Center(
              child: Text(
                "L",
                style: TextStyle(
                  fontSize: 20,
                  color: selectedContainer == "L"
                      ? Colors.white
                      : AppColors.capsuleLineColor,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainer = "XL";
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: selectedContainer == "XL"
                  ? AppColors.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.backgorndPrimaryColor),
            ),
            height: 35,
            width: 45,
            child: Center(
              child: Text(
                "XL",
                style: TextStyle(
                  fontSize: 20,
                  color: selectedContainer == "XL"
                      ? Colors.white
                      : AppColors.capsuleLineColor,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainer = "XXL";
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: selectedContainer == "XXL"
                  ? AppColors.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.backgorndPrimaryColor),
            ),
            height: 35,
            width: 50,
            child: Center(
              child: Text(
                "XXL",
                style: TextStyle(
                  fontSize: 20,
                  color: selectedContainer == "XXL"
                      ? Colors.white
                      : AppColors.capsuleLineColor,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainer = "XXXL";
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: selectedContainer == "XXXL"
                  ? AppColors.primaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.backgorndPrimaryColor),
            ),
            height: 35,
            width: 60,
            child: Center(
              child: Text(
                "XXXL",
                style: TextStyle(
                  fontSize: 20,
                  color: selectedContainer == "XXXL"
                      ? Colors.white
                      : AppColors.capsuleLineColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
