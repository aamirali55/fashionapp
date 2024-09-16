import 'package:fashionapp/screens/cart%20screen/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:fashionapp/utils/app_colors.dart';

class AddCartContainer extends StatelessWidget {
  final String name;
  final String image;
  final double price;
  final String? size;
  final BuildContext context; 

  const AddCartContainer({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    this.size, 
    required this.context,
  });

  void _addToCart() {
 
    CartItem? existingItem = cartItems.firstWhere(
      (item) => item.name == name && item.size == size,
      orElse: () => CartItem(name: '', image: '', price: 0, size: ''),
    );

    if (existingItem.name.isNotEmpty) {
    
      existingItem.quantity++;
    } else {
      
      CartItem newItem = CartItem(
        name: name,
        image: image,
        price: price,
        size: size ?? '', 
      );
      cartItems.add(newItem);
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$name has been added to your cart'),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
          color: AppColors.backgorndPrimaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Price \n\$${price.toStringAsFixed(2)}",
                style: TextStyle(
                  color: AppColors.plainTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _addToCart(); 
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                  height: 50,
                  width: 230,
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
