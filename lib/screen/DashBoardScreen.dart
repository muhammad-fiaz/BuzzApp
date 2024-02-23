import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/fragment/CartFragment.dart';
import 'package:buzz/fragment/FavoriteFragment.dart';
import 'package:buzz/fragment/HomeFragment.dart';
import 'package:buzz/fragment/ProfileFragment.dart';
import 'package:buzz/fragment/SearchFragment.dart';


class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    const HomeFragment(),
    SearchFragment(),
    const CartFragment(),
    FavoriteFragment(),
    const ProfileFragment(),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '', activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '', activeIcon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: '', activeIcon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: '', activeIcon: Icon(Icons.favorite)),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: '', activeIcon: Icon(Icons.person)),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: const Color(0xff9e9e9e),
        selectedItemColor: context.iconColor,
        iconSize: 24,
        selectedFontSize: 14,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedFontSize: 14,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: tabs[selectedIndex],
    );
  }
}
