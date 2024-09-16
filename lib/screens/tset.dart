import 'package:fashionapp/screens/home/widgets/grid_for_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tset extends StatefulWidget {
  const Tset({super.key});

  @override
  State<Tset> createState() => _TsetState();
}

class _TsetState extends State<Tset> {
  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/product_1.PNG',
      'name': 'Brown Jacket',
      'price': 83.97,
      'rating': 4.5,
    },
    {
      'image': 'assets/images/product_2.PNG',
      'name': 'Red Dress',
      'price': 45.67,
      'rating': 4.0,
    },
    {
      'image': 'assets/images/product_3.PNG',
      'name': 'Blue Jeans',
      'price': 60.99,
      'rating': 4.7,
    },
    {
      'image': 'assets/images/product_4.PNG',
      'name': 'Black Shoes',
      'price': 120.00,
      'rating': 4.8,
    },
    {
      'image': 'assets/images/product_4.PNG',
      'name': 'Black Shoes',
      'price': 120.00,
      'rating': 4.8,
    },
    {
      'image': 'assets/images/product_4.PNG',
      'name': 'Black Shoes',
      'price': 120.00,
      'rating': 4.8,
    },
    {
      'image': 'assets/images/product_4.PNG',
      'name': 'Black Shoes',
      'price': 120.00,
      'rating': 4.8,
    },
    {
      'image': 'assets/images/product_4.PNG',
      'name': 'Black Shoes',
      'price': 120.00,
      'rating': 4.8,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                GridForProduct(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
