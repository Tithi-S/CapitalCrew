// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'home_page_tab_holder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screens = [
    const HomePageTabHolder(),
    AlertDialog(content: Container(color: Colors.blue, height: 60, width: 70)),
    const Center(
      child: Text(
        "Settings screen",
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  int sIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[sIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: sIndex,
        elevation: 0,
        iconSize: 28,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.home),
              label: '',
              activeIcon: Icon(IconlyBold.home)),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.addUser),
              label: '',
              activeIcon: Icon(IconlyBold.addUser)),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.setting),
              label: '',
              activeIcon: Icon(IconlyBold.setting)),
        ],
        onTap: (value) {
          setState(() {
            sIndex = value;
          });
        },
        selectedItemColor: Colors.purple,
      ),
    );
  }
}
