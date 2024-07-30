// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'chats_screen.dart';

class HomePageTabHolder extends StatefulWidget {
  const HomePageTabHolder({Key? key}) : super(key: key);

  @override
  State<HomePageTabHolder> createState() => _HomePageTabHolderState();
}

class _HomePageTabHolderState extends State<HomePageTabHolder> {
  List<Widget> tabsScreen = [
    const ChatScreen(),
    const Center(
      child: Text(
        "Screen",
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
      length: 2,
      child: SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize:
                    Size.fromHeight(AppBar().preferredSize.height * 1.9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Size.fromHeight(AppBar().preferredSize.height)
                                  .height *
                              0.64,
                          width: MediaQuery.of(context).size.width * 0.65,
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4.0),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              IconlyLight.scan,
                              color: Colors.black54,
                              weight: 900,
                              size: 24,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 36.0,
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 8.0,
                    // ),
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
                        // Tab(
                        //   text: "Calls",
                        // ),
                      ],
                      labelColor: Colors.purple,
                      indicatorColor: Colors.purple,
                    ),
                  ],
                )),
            body: tabsScreen[tabIndex]),
      ),
    );
  }
}
