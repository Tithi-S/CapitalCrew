// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'joinnewgrp.dart';
import 'chats_screen.dart';

class HomePageTabHolder extends StatefulWidget {
  const HomePageTabHolder({Key? key}) : super(key: key);

  @override
  State<HomePageTabHolder> createState() => _HomePageTabHolderState();
}

class _HomePageTabHolderState extends State<HomePageTabHolder> {
  int tabIndex = 0;
  String selectedFilter = 'All';

  final List<String> filterOptions = [
    'All',
    'Stocks',
    'Equity',
    'Mutual Funds',
    'Debt Funds',
    'ETFs',
    'RD'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight + 100), // Adjust height as needed
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding to the sides
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0), // Padding between search bar and filter
                              child: TextFormField(
                                cursorColor: Colors.grey,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(IconlyLight.search),
                                  prefixIconColor: Colors.black54,
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(0.4),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ),
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                          DropdownButton<String>(
                            value: selectedFilter,
                            icon: const Icon(IconlyLight.filter),
                            elevation: 16,
                            style: const TextStyle(color: Colors.purple),
                            underline: Container(
                              height: 2,
                              color: Colors.purple,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedFilter = newValue!;
                              });
                            },
                            items: filterOptions
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TabBar(
                      onTap: (value) {
                        tabIndex = value;
                        setState(() {});
                      },
                      tabs: const [
                        Tab(
                          text: "Your Investment Groups",
                        ),
                        Tab(
                          text: "Join new group",
                        ),
                      ],
                      labelColor: Colors.purple,
                      indicatorColor: Colors.purple,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    TabBarView(
                      children: [
                        const ChatScreen(displayContactsCount: 2), // Your Investment Groups
                        const JoinNewGroupTab(), // Join New Group
                      ],
                    ),
                    if (tabIndex == 1)
                      Positioned(
                        bottom: 16.0,
                        right: 16.0,
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            // Handle create new community action
                          },
                          icon: const Icon(Icons.add, color: Colors.white),
                          label: const Text(
                            'Create New Community',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.purple,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
