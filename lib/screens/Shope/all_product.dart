import 'package:fashionapp/screens/home/widgets/grid_for_product.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'All Products',
          style: TextStyle(color: AppColors.screenBackgroundColor),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(child: GridForProduct()),
      ),
    );
  }
}
