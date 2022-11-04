import 'package:flutter/material.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'package:shopping_cart/screens/screens.dart';

import 'home_screen.dart';
// import 'navpages/activity.dart';
import 'navpages/card.dart';
import 'navpages/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomeScreen(),
    const CardScreen(),
    // const Activity(),
    const Profile(),
  ];

  int currentIndex = 0;

  void onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTab,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.font,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: 10, // to hide label
        selectedFontSize: 10,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "Transactions",
            icon: Icon(Icons.payment_rounded),
          ),
          // BottomNavigationBarItem(
          //   label: "Search",
          //   icon: Icon(Icons.line_axis),
          // ),
          BottomNavigationBarItem(
            label: "My",
            icon: Icon(Icons.person_outlined),
          ),
        ],
      ),
    );
  }
}
