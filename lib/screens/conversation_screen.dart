import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:slice_ui_chatapp_figma/widgets/bubbles_chat.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({
    Key? key,
    required this.contactName,
    required this.chatList,
  }) : super(key: key);

  final String contactName;
  final List chatList;

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  bool isExpanded = false;

  void _showPopupMenu() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.poll),
              title: Text('Create Poll'),
              onTap: () {
                // Add your poll creation logic here
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                PreferredSize(
                  preferredSize: const Size.fromHeight(92),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: AppBar(
                      leadingWidth: 40,
                      shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(48.0),
                          bottomRight: Radius.circular(48.0),
                        ),
                      ),
                      title: Text(
                        widget.contactName,
                        overflow: TextOverflow.fade,
                        style: Theme.of(context).appBarTheme.titleTextStyle,
                      ),
                      actions: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          icon: Icon(
                            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: widget.chatList.length,
                    itemBuilder: (context, index) {
                      var chat = widget.chatList[index];
                      return MyChatBubble(text: chat[0], isSender: chat[1]);
                    },
                  ),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: isExpanded ? 92 : -150,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "No of people: 10",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 8.0,
                    children: [
                      Chip(
                        label: Text("stocks"),
                        backgroundColor: Colors.purple.withOpacity(0.1),
                        labelStyle: TextStyle(color: Colors.purple),
                      ),
                      Chip(
                        label: Text("bonds"),
                        backgroundColor: Colors.purple.withOpacity(0.1),
                        labelStyle: TextStyle(color: Colors.purple),
                      ),
                      Chip(
                        label: Text("ETFs"),
                        backgroundColor: Colors.purple.withOpacity(0.1),
                        labelStyle: TextStyle(color: Colors.purple),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: MediaQuery.of(context).viewInsets,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 8,
                color: Colors.grey,
              )
            ],
            color: Colors.grey[100],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(36.0),
              topRight: Radius.circular(36.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 12.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.66,
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type here...",
                    hintStyle: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: _showPopupMenu,
                icon: const Icon(
                  IconlyLight.moreSquare,
                  size: 32.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
