import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LAndNotification extends StatefulWidget {
  const LAndNotification({super.key});

  @override
  State<LAndNotification> createState() => _LAndNotificationState();
}

class _LAndNotificationState extends State<LAndNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Location",
            style: TextStyle(color: AppColors.plainTextColor),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: AppColors.primaryColor,
              ),
              Text(
                "New York, USA",
                style: TextStyle(
                    color: AppColors.capsuleLineColor,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: const Color(0xffF1F1F1),
                child: Icon(
                  Icons.notifications,
                  color: AppColors.capsuleLineColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
