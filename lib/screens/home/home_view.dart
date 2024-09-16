import 'package:fashionapp/screens/home/widgets/navigation_container.dart';
import 'package:flutter/material.dart';
import 'package:fashionapp/screens/home/widgets/categgory_seeall.dart';
import 'package:fashionapp/screens/home/widgets/filter_widget.dart';
import 'package:fashionapp/screens/home/widgets/flash_sale.dart';
import 'package:fashionapp/screens/home/widgets/grid_for_product.dart';
import 'package:fashionapp/screens/home/widgets/location_&_notification_widget.dart';
import 'package:fashionapp/screens/home/widgets/product_division.dart';
import 'package:fashionapp/screens/home/widgets/search_text_field_widget.dart';
import 'package:fashionapp/screens/home/widgets/slide_container_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LAndNotification(),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: SearchTextFieldWidget()),
                      SizedBox(width: 10),
                      FilterWidget(),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 25),
                          SlideContainerWidget(),
                          SizedBox(height: 15),
                          CateggorySeeall(),
                          SizedBox(height: 15),
                          FlashSale(),
                          SizedBox(height: 15),
                          ProductDivision(),
                          SizedBox(height: 20),
                          GridForProduct(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          NavigationContainer(),
        ],
      ),
      backgroundColor: Color(0xffF8F8F8),
    );
  }
}
