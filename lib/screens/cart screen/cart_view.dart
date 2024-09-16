import 'package:fashionapp/screens/cart%20screen/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:fashionapp/utils/app_colors.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final TextEditingController _promoController = TextEditingController();

  
  void incrementQuantity(int index) {
    setState(() {
      cartItems[index].quantity++;
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      if (cartItems[index].quantity > 1) {
        cartItems[index].quantity--;
      }
    });
  }

 
  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  double getSubtotal() {
    return cartItems.fold(
        0.0, (sum, item) => sum + (item.price * item.quantity));
  }

  void _showPaymentSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Payment Successful'),
          content:const  Text('Your payment has been processed successfully.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double subtotal = getSubtotal();
    const  double deliveryCharges = 5.0; 
    final double total = subtotal + deliveryCharges;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: TextStyle(color: AppColors.primaryColor),
        ),
        backgroundColor: AppColors.backgorndPrimaryColor,
      ),
      body: cartItems.isEmpty
          ? Center(child: Text("Your cart is empty"))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.backgorndPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 4,
                                spreadRadius: 2,
                                offset: Offset(0, 2), // Shadow position
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(item.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              item.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.capsuleLineColor,
                              ),
                            ),
                            subtitle: Text(
                                "Price: \$${item.price.toStringAsFixed(2)}"),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () => decrementQuantity(index),
                                  icon: Icon(Icons.remove_circle_outline,
                                      color: AppColors.primaryColor),
                                ),
                                Text(
                                  '${item.quantity}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.capsuleLineColor,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () => incrementQuantity(index),
                                  icon: Icon(Icons.add_circle_outline,
                                      color: AppColors.primaryColor),
                                ),
                                IconButton(
                                  onPressed: () => removeItem(index),
                                  icon: Icon(Icons.delete, color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: AppColors.backgorndPrimaryColor,
                    borderRadius:
                       const  BorderRadius.vertical(top: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset:const  Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      Container(
                        width: 300,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: AppColors.screenBackgroundColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _promoController,
                                decoration: const InputDecoration(
                                  hintText: 'Add promo code',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                
                              },
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                    color: AppColors.screenBackgroundColor),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.capsuleLineColor,
                            ),
                          ),
                          Text(
                            "\$${subtotal.toStringAsFixed(2)}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.capsuleLineColor,
                            ),
                          ),
                        ],
                      ),
                     const  SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Charges:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.capsuleLineColor,
                            ),
                          ),
                          Text(
                            "\$${deliveryCharges.toStringAsFixed(2)}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.capsuleLineColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.capsuleLineColor,
                            ),
                          ),
                          Text(
                            "\$${total.toStringAsFixed(2)}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.capsuleLineColor,
                            ),
                          ),
                        ],
                      ),
                     const SizedBox(height: 16),
                      
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            _showPaymentSuccessDialog(); 
                          },
                          child: Text('Proceed to Payment',
                              style: TextStyle(
                                  color: AppColors.screenBackgroundColor)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                AppColors.primaryColor, 
                            padding: EdgeInsets.symmetric(
                                horizontal: 100, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
