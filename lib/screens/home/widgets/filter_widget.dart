import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor:
          AppColors.primaryColor, // Replace with AppColors.primaryColor
      child: const Icon(
        Icons.tune,
        color: Colors.white, // Replace with AppColors.capsuleLineColor
      ),
    );
  }
}
