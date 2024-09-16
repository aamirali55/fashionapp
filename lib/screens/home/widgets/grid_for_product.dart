import 'package:fashionapp/screens/cart%20screen/product_screen.dart';
import 'package:fashionapp/screens/sign%20in%20&%20sign%20up/widgets/wishlist_widdget.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fashionapp/utils/app_images.dart';

class GridForProduct extends StatefulWidget {
  const GridForProduct({super.key});

  @override
  State<GridForProduct> createState() => _GridForProductState();
}

class _GridForProductState extends State<GridForProduct> {
  final List<Map<String, dynamic>> products = [
    {
      'image': JacketWomenImage.jacketForWomen10,
      'name': 'Brown Jacket',
      'price': 83.97,
      'rating': 4.5,
      'isFavorited': false,
      'category': "Female",
    },
    {
      'image': JacketMenImage.jacketForMen4,
      'name': 'Red Jacket',
      'price': 45.67,
      'rating': 4.0,
      'isFavorited': false,
      'category': "Men",
    },
    {
      'image': JacketWomenImage.jacketForWomen11,
      'name': 'Light Brown Jacket',
      'price': 60.99,
      'rating': 4.7,
      'isFavorited': false,
      'category': "Women",
    },
    {
      'image': JacketWomenImage.jacketForWomen12,
      'name': 'Silk Brown',
      'price': 120.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Women",
    },
    {
      'image': JacketMenImage.jacketForMen1,
      'name': 'Red Full Jacket',
      'price': 130.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "men",
    },
    {
      'image': JacketWomenImage.jacketForWomen2,
      'name': 'Jacket With Cap',
      'price': 110.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Women",
    },
    {
      'image': JacketMenImage.jacketForMen5,
      'name': 'White Shirt Men',
      'price': 150.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Men",
    },
    {
      'image': JacketMenImage.jacketForMen2,
      'name': 'Loz Jacket Men',
      'price': 100.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Men",
    },
    {
      'image': JacketWomenImage.jacketForWomen1,
      'name': 'Lether Full Jacket',
      'price': 180.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Woman",
    },
    {
      'image': JacketMenImage.jacketForMen3,
      'name': 'Lether Jacket',
      'price': 140.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Men",
    },
    {
      'image': JacketWomenImage.jacketForWomen3,
      'name': 'Silk Shirt',
      'price': 120.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Women",
    },
    {
      'image': JacketWomenImage.jacketForWomen4,
      'name': 'Fit Shirt',
      'price': 160.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Women",
    },
    {
      'image': JacketWomenImage.jacketForWomen5,
      'name': 'Summer Jacket',
      'price': 100.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Women",
    },
    {
      'image': JacketWomenImage.jacketForWomen6,
      'name': 'Full Dress',
      'price': 120.00,
      'rating': 4.8,
      'isFavorited': false,
      'category': "Woman",
    },
    {
      'image': JacketWomenImage.jacketForWomen7,
      'name': 'Simple Jacket',
      'price': 90.00,
      'rating': 5.0,
      'isFavorited': false,
      'category': "Woman",
    },
    {
      'image': JacketWomenImage.jacketForWomen8,
      'name': 'Half Shirt',
      'price': 100.00,
      'rating': 4.9,
      'isFavorited': false,
      'category': "women",
    },
    {
      'image': JacketWomenImage.jacketForWomen9,
      'name': 'Loz Shirt',
      'price': 120.00,
      'rating': 4.9,
      'isFavorited': false,
      'category': "Women",
    },
  ];

  void _toggleFavorite(int index) {
    setState(() {
      products[index]['isFavorited'] = !products[index]['isFavorited'];

      if (products[index]['isFavorited']) {
        // Add to wishlist if favorited
        WishlistWidget.addProduct(products[index]);
      } else {
        // Remove from wishlist if unfavorited
        WishlistWidget.removeProduct(products[index]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics:
          const NeverScrollableScrollPhysics(), // Prevent independent scrolling
      shrinkWrap: true, // Allow grid to shrink and take only the space needed
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        childAspectRatio: 0.6, // Adjust to fit more items if needed
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductScreen(
                            image: product['image'],
                            name: product['name'],
                            rating: product['rating'],
                            price: product['price'],
                            category: product['category'],
                          ),
                        ),
                      );
                    },
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.screenBackgroundColor,
                          image: DecorationImage(
                            image: AssetImage(product['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: IconButton(
                      icon: Icon(
                        product['isFavorited']
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: AppColors.primaryColor,
                        size: 30,
                      ),
                      onPressed: () => _toggleFavorite(index),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        product['name'],
                        style: TextStyle(
                          color: AppColors.capsuleLineColor,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star,
                      color: Color(0XffFCAF23),
                      size: 20,
                    ),
                    Text(
                      product['rating'].toString(),
                      style: TextStyle(color: AppColors.plainTextColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "\$${product['price']}",
                  style: TextStyle(
                    color: AppColors.capsuleLineColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
