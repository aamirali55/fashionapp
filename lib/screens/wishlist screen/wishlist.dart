import 'package:fashionapp/screens/sign%20in%20&%20sign%20up/widgets/wishlist_widdget.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';
// Import the WishlistWidget class

class Wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get wishlist products from WishlistWidget
    List<Map<String, dynamic>> wishListProducts =
        WishlistWidget.wishListProducts;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Wishlist",
          style: TextStyle(color: AppColors.primaryColor),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: AppColors.primaryColor),
      ),
      body: wishListProducts.isNotEmpty
          ? GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 10,
                childAspectRatio: 0.6,
              ),
              itemCount: wishListProducts.length,
              itemBuilder: (context, index) {
                final product = wishListProducts[index];
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(product['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          product['name'],
                          style: TextStyle(
                            color: AppColors.capsuleLineColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "\$${product['price']}",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          : Center(
              child: Text("Your wishlist is empty."),
            ),
    );
  }
}
