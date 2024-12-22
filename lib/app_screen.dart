import 'package:final_project/view/favorite.dart';
import 'package:final_project/view/home.dart';
import 'package:final_project/view/setting.dart';
import 'package:final_project/view/tabBar/food_layout/food_layout.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> with TickerProviderStateMixin {
  int myIndex = 0;
  final List<Widget> widgets = [
    const Home(),
    const Scaffold(),
    const Favorite(),
    const Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[myIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: myIndex,
        indicatorColor: const Color(0xffEA580C),
        onDestinationSelected: (value) {
          setState(() {
            myIndex = value;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.receipt_long_outlined), label: 'Recipe'),
          NavigationDestination(
              icon: Icon(Icons.favorite_border_outlined), label: 'Favorite'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
