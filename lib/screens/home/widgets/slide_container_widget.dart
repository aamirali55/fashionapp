import 'dart:async';
import 'package:fashionapp/screens/Shope/all_product.dart';
import 'package:flutter/material.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideContainerWidget extends StatefulWidget {
  const SlideContainerWidget({super.key});

  @override
  State<SlideContainerWidget> createState() => _SlideContainerWidgetState();
}

class _SlideContainerWidgetState extends State<SlideContainerWidget> {
  PageController? _pageController;
  int _currentPage = 0;
  final List<String> _backgroundImages = [
    'assets/images/home_view_slide1.PNG',
    'assets/images/home_view_slide2.PNG',
    'assets/images/home_view_slide3.PNG',
    'assets/images/home_view_slide4.PNG',
    'assets/images/home_view_slide1.PNG',
  ];

  final List<Map<String, String>> _textContent = [
    {
      "title": "New Collection",
      "description": "Discount 50% For\nthe first transaction"
    },
    {"title": "Summer Sale", "description": "Up to 70% off on\nselected items"},
    {
      "title": "Exclusive Offer",
      "description": "Get a free gift\nwith your first order"
    },
    {"title": "Limited Time", "description": "Buy 1 Get 1 Free\non all items"},
    {
      "title": "Shop the Trend",
      "description": "Latest fashion\ntrends now available"
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _backgroundImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController?.animateToPage(
        _currentPage,
        duration:const  Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 450,
          height: 190,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _backgroundImages.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(_backgroundImages[index]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _textContent[index]['title']!,
                        style: TextStyle(
                          color: AppColors.capsuleLineColor,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _textContent[index]['description']!,
                        style: TextStyle(
                          color: AppColors.plainTextColor,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllProduct(),
                              ));
                        },
                        child: const Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        SmoothPageIndicator(
          controller: _pageController!,
          count: _backgroundImages.length,
          effect: WormEffect(
            dotHeight: 9,
            dotWidth: 9,
            activeDotColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
