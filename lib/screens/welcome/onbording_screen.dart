import 'package:fashionapp/screens/sign%20in%20&%20sign%20up/sign_in.dart';
import 'package:fashionapp/widgets/capsule_line.dart';
import 'package:flutter/material.dart';
import 'package:fashionapp/utils/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "image": "assets/images/page_view_pic1.PNG",
      "title": "Seamless ",
      "subtitle": "Shopping Experience",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipising elit. Proin vestibulum Placerat"
    },
    {
      "image": "assets/images/page_view_pic2.PNG",
      "title": "Wishlist: Where Fashion\n",
      "subtitle": "Dream Begin",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipising elit. Proin vestibulum Placerat"
    },
    {
      "image": "assets/images/page_view_pic3.PNG",
      "title": "Swift ",
      "subtitle": "And Reliable\n Delivery",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipising elit. Proin vestibulum Placerat"
    },
  ];

  void _nextPage() {
    if (_currentPage < _onboardingData.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  Widget _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_onboardingData.length, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? AppColors.primaryColor : Colors.grey,
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: _onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      color: AppColors.screenBackgroundColor,
                      height: 22,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (_currentPage < _onboardingData.length - 1)
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignIn()));
                                  },
                                  child: Text(
                                    "Skip",
                                    style: TextStyle(
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 418,
                        color: AppColors.screenBackgroundColor,
                        child: Image.asset(_onboardingData[index]["image"]!)),
                    const SizedBox(height: 20),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: _onboardingData[index]["title"],
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                        TextSpan(
                          text: _onboardingData[index]["subtitle"],
                          style: TextStyle(color: AppColors.capsuleLineColor),
                        )
                      ]),
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      _onboardingData[index]["description"]!,
                      style: const TextStyle(
                        color: Color(0xff7B7B7B),
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
            Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _currentPage > 0
                      ? Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primaryColor,
                              width: 1,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundColor: AppColors.screenBackgroundColor,
                            child: IconButton(
                              color: AppColors.primaryColor,
                              onPressed: _previousPage,
                              icon: const Icon(Icons.arrow_back),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                  _buildDots(),
                  _currentPage == _onboardingData.length - 1
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignIn()));
                          },
                          child: Text(
                            "Finish",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        )
                      : CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          child: IconButton(
                            color: AppColors.screenBackgroundColor,
                            onPressed: _nextPage,
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        ),
                ],
              ),
            ),
            const CapsuleLine(),
          ],
        ),
      ),
      backgroundColor: AppColors.screenBackgroundColor,
    );
  }
}
