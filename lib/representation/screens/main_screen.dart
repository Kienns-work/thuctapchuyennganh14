import 'package:bookinghotel/core/constants/colors_constants.dart';
import 'package:bookinghotel/core/constants/dimension_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const String routeName = "/main_screen";
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          Container(
            color: Colors.greenAccent,
          ),
          Container(
            color: Colors.redAccent,
          ),
          Container(
            color: Colors.lightBlue,
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) => {
          setState(() => {
                _currentIndex = index,
              })
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.house),
            title: Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.solidHeart),
            title: Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.briefcase),
            title: Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.solidUser),
            title: Text("Home"),
          ),
        ],
        selectedItemColor: ColorPalette.primaryColor,
        unselectedItemColor: ColorPalette.primaryColor.withOpacity(0.2),
        margin: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding),
      ),
    );
  }
}
