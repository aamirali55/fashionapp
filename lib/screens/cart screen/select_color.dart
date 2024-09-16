import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SelectColor extends StatelessWidget {
  const SelectColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Color: ",
          style: TextStyle(color: AppColors.capsuleLineColor, fontSize: 15),
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffD4A88E),
              radius: 13,
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color(0xff89665C),
              radius: 13,
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color(0xffD99567),
              radius: 13,
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color(0xffB17552),
              radius: 13,
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color(0xffB9775B),
              radius: 13,
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color(0xff252525),
              radius: 13,
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ],
    );
  }
}
