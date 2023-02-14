import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:large/constants.dart';

import 'components/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'بوتیک لارج',
        ),
      ),
      body: const SafeArea(child: HomeBody()),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: kBgColor,
          backgroundColor: kBgColor,
          iconTheme:
              MaterialStateProperty.all(const IconThemeData(color: kTextColor)),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'vazir',
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: _selectedIndex,
          elevation: 0,
          onDestinationSelected: (value) => setState(() {
            _selectedIndex = value;
          }),
          destinations: const [
            NavigationDestination(
                selectedIcon: Icon(CupertinoIcons.rectangle_grid_2x2_fill),
                icon: Icon(CupertinoIcons.rectangle_grid_2x2),
                label: 'خانه'),
            NavigationDestination(
                selectedIcon: Icon(CupertinoIcons.bag_fill),
                icon: Icon(CupertinoIcons.bag),
                label: 'سبد خرید'),
            NavigationDestination(
                selectedIcon: Icon(CupertinoIcons.heart_fill),
                icon: Icon(CupertinoIcons.heart),
                label: 'مورد علاقه'),
          ],
        ),
      ),
    );
  }
}
