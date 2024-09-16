import 'package:fashionapp/screens/Shope/all_product.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProductDivision extends StatefulWidget {
  const ProductDivision({super.key});

  @override
  State<ProductDivision> createState() => _ProductDivisionState();
}

class _ProductDivisionState extends State<ProductDivision> {
  String selectedContainer = "All";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllProduct(),
                  ));
              setState(() {
                selectedContainer =
                    "All"; // Set "All" as the selected container
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedContainer == "All"
                    ? AppColors.primaryColor // Highlight when selected
                    : Colors.transparent, // Reset color when not selected
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.backgorndPrimaryColor),
              ),
              height: 33,
              width: 52,
              child: Center(
                child: Text(
                  "All",
                  style: TextStyle(
                    color: selectedContainer == "All"
                        ? Colors.white // White text when selected
                        : AppColors
                            .capsuleLineColor, // Original text color when not selected
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllProduct(),
                  ));
              setState(() {
                selectedContainer =
                    "Newest"; // Set "Newest" as the selected container
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedContainer == "Newest"
                    ? AppColors.primaryColor // Highlight when selected
                    : Colors.transparent, // Reset color when not selected
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.backgorndPrimaryColor),
              ),
              height: 33,
              width: 70,
              child: Center(
                child: Text(
                  "Newest",
                  style: TextStyle(
                    color: selectedContainer == "Newest"
                        ? Colors.white // White text when selected
                        : AppColors
                            .capsuleLineColor, // Original text color when not selected
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllProduct(),
                  ));
              setState(() {
                selectedContainer =
                    "Popular"; // Set "Newest" as the selected container
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedContainer == "Popular"
                    ? AppColors.primaryColor // Highlight when selected
                    : Colors.transparent, // Reset color when not selected
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.backgorndPrimaryColor),
              ),
              height: 33,
              width: 75,
              child: Center(
                child: Text(
                  "Popular",
                  style: TextStyle(
                    color: selectedContainer == "Popular"
                        ? Colors.white // White text when selected
                        : AppColors
                            .capsuleLineColor, // Original text color when not selected
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllProduct(),
                  ));
              setState(() {
                selectedContainer =
                    "Man"; // Set "Newest" as the selected container
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedContainer == "Man"
                    ? AppColors.primaryColor // Highlight when selected
                    : Colors.transparent, // Reset color when not selected
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.backgorndPrimaryColor),
              ),
              height: 33,
              width: 60,
              child: Center(
                child: Text(
                  "Man",
                  style: TextStyle(
                    color: selectedContainer == "Man"
                        ? Colors.white // White text when selected
                        : AppColors
                            .capsuleLineColor, // Original text color when not selected
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllProduct(),
                  ));
              setState(() {
                selectedContainer =
                    "Woman"; // Set "Newest" as the selected container
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedContainer == "Woman"
                    ? AppColors.primaryColor // Highlight when selected
                    : Colors.transparent, // Reset color when not selected
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.backgorndPrimaryColor),
              ),
              height: 33,
              width: 80,
              child: Center(
                child: Text(
                  "Woman",
                  style: TextStyle(
                    color: selectedContainer == "Woman"
                        ? Colors.white // White text when selected
                        : AppColors
                            .capsuleLineColor, // Original text color when not selected
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
