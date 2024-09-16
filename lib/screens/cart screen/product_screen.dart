import 'package:fashionapp/screens/cart%20screen/Select_size.dart';
import 'package:fashionapp/screens/cart%20screen/add_cart_container.dart';
import 'package:fashionapp/screens/cart%20screen/select_color.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final String image;
  final String name;
  final double rating;
  final double price;
  final String category;

  const ProductScreen({
    super.key,
    required this.name,
    required this.rating,
    required this.price,
    required this.category,
    required this.image,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String selectedContainer = "S";

  @override
  Widget build(BuildContext context) {
   
    const  double addCartContainerHeight = 80.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgorndPrimaryColor,
        title: const Text('Product Details'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding:const  EdgeInsets.only(
                bottom: addCartContainerHeight), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.category, 
                            style: TextStyle(color: AppColors.plainTextColor),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.star,
                            color: Color(0XffFCAF23),
                            size: 20,
                          ),
                          Text(
                            widget.rating.toStringAsFixed(
                                1), 
                            style: TextStyle(color: AppColors.plainTextColor),
                          ),
                        ],
                      ),
                     const  SizedBox(height: 16),
                      Text(
                        widget.name, 
                        style: TextStyle(
                          color: AppColors.capsuleLineColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                     const  SizedBox(height: 16),
                      Text(
                        "Price: \$${widget.price.toStringAsFixed(2)}", 
                        style: TextStyle(
                          color: AppColors.capsuleLineColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                     const  SizedBox(height: 16),
                      Text(
                        "Product Details",
                        style: TextStyle(
                          color: AppColors.capsuleLineColor,
                          fontSize: 18,
                        ),
                      ),
                     const  SizedBox(height: 10),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing\nVivamus lacinia odio vitae vestibulum Curabitur\nvehicula neque non quam cursus, nec aliquet sem faucibus.",
                        style: TextStyle(color: AppColors.plainTextColor),
                      ),
                     const  SizedBox(height: 16),
                      Text(
                        "Select Size",
                        style: TextStyle(
                          color: AppColors.capsuleLineColor,
                          fontSize: 18,
                        ),
                      ),
                     const  SizedBox(height: 8),
                      const SelectSize(),
                      const SizedBox(height: 16),
                      Text(
                        "Select Color",
                        style: TextStyle(
                          color: AppColors.capsuleLineColor,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const SelectColor(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AddCartContainer(
            price: widget.price,
            name: widget.name,
            image: widget.image,
            context: context, 
          ),
        ],
      ),
    );
  }
}
