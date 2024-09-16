import 'package:fashionapp/screens/cart%20screen/cart_view.dart';
import 'package:fashionapp/screens/chat%20Screen/chat_messages_page.dart';
import 'package:fashionapp/screens/home/home_view.dart';
import 'package:fashionapp/screens/profile/profile_page.dart';
import 'package:fashionapp/screens/wishlist%20screen/wishlist.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({super.key});

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedIndex = 0;

  void _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Define navigation logic based on the selected index
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CartView()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Wishlist()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ChatMessagesPage(
                    chatName: "AAmir",
                  )),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          width: 300,
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.capsuleLineColor,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(5, (index) {
              final bool isSelected = _selectedIndex == index;
              return Stack(
                alignment: Alignment.center,
                children: [
                  if (isSelected)
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  IconButton(
                    icon: Icon(
                      _getIcon(index),
                      color: isSelected ? AppColors.primaryColor : Colors.white,
                    ),
                    onPressed: () => _onIconTapped(index),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.add_shopping_cart;
      case 2:
        return Icons.favorite;
      case 3:
        return Icons.chat;
      case 4:
        return Icons.person;
      default:
        return Icons.home;
    }
  }
}
