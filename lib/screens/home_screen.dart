// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'home_page_tab_holder.dart';
import 'educationtab.dart'; // Import the EducationTab widget
import 'profilepage.dart'; // Import the ProfilePage widget

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    const HomePageTabHolder(),
    const EducationTab(), // Add the EducationTab widget here
    ProfilePage(), // Add the ProfilePage widget here
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
              icon: Icon(IconlyLight.user3),
              label: '',
              activeIcon: Icon(IconlyBold.user3)),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.bookmark),
              label: '',
              activeIcon: Icon(IconlyBold.bookmark)),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile),
              label: '',
              activeIcon: Icon(IconlyBold.profile)),
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
