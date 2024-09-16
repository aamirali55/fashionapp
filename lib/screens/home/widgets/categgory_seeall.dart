import 'package:fashionapp/screens/Shope/all_product.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CateggorySeeall extends StatelessWidget {
  const CateggorySeeall({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Category",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.capsuleLineColor,
                  fontSize: 18),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProduct(),
                    ));
              },
              child: Text(
                "See All",
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProduct(),
                    ));
              },
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/categroy_pic1.PNG"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("T-Shirt"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProduct(),
                    ));
              },
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/categroy_pic2.PNG"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Pant"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProduct(),
                    ));
              },
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/categroy_pic3.PNG"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Dress"),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProduct(),
                    ));
              },
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/categroy_pic4.PNG"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Jacket"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
