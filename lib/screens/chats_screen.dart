// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<Widget> tabsScreen = [
    const Center(
      child: Text(
        "Chats Screen",
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const Center(
      child: Text(
        "Friends Screen",
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const Center(
      child: Text(
        "Calls Screen",
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
            appBar: TabBar(
              onTap: (value) {
                tabIndex = value;
                setState(() {
                  
                });
              },
              tabs:const [
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Friends",
                ),
                Tab(
                  text: "Calls",
                ),
              ],
              
              labelColor: Colors.purple,
              indicatorColor:  Colors.purple,

            ),
            body: tabsScreen[tabIndex]),
      ),
    );
  }
}
