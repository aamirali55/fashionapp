import 'package:fashionapp/screens/profile/help_center.dart';
import 'package:fashionapp/screens/profile/my_order_page.dart';
import 'package:fashionapp/screens/profile/payent_method_page.dart';
import 'package:fashionapp/screens/profile/setting_page.dart';
import 'package:fashionapp/screens/profile/widget/liat_tile_custem.dart';
import 'package:fashionapp/screens/sign%20in%20&%20sign%20up/sign_in.dart';
import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          leading: const SizedBox(),
          title: Text(
            "My Profile",
            style: TextStyle(
                color: AppColors.screenBackgroundColor,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                fontFamily: "main_font",
                letterSpacing: 1),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile.jpg"),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      alignment: const Alignment(-1, 1),
                      height: 120,
                      width: 120,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        style: IconButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            side: BorderSide(
                                color: Colors.grey.shade100, width: 2)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Aamir Ali",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: "main_font",
                      letterSpacing: 1),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTileItem(
                  title: "Your Profile",
                  tileIcon: const Icon(Icons.person_2_outlined),
                  onTap: () {},
                ),
                ListTileItem(
                  title: "Payment Methods",
                  tileIcon: const Icon(Icons.credit_card),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PaymentMethodsPage()));
                  },
                ),
                ListTileItem(
                  title: "My Orders",
                  tileIcon: const Icon(Icons.list_alt),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyOrderPage()));
                  },
                ),
                ListTileItem(
                  title: "Settings",
                  tileIcon: const Icon(Icons.settings),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
                  },
                ),
                ListTileItem(
                  title: "Help Center",
                  tileIcon: const Icon(Icons.info_outline),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HelpCenterPage()));
                  },
                ),
                ListTileItem(
                  title: "Privacy Policy",
                  tileIcon: const Icon(Icons.lock_outline),
                  onTap: () {},
                ),
                ListTileItem(
                  title: "Invite Friends",
                  tileIcon: const Icon(Icons.person_add),
                  onTap: () {},
                ),
                ListTileItem(
                  title: "Log Out",
                  tileIcon: const Icon(Icons.logout_outlined),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const SignIn()));
                  },
                ),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ));
  }
}
