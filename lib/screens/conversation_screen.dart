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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(isExpanded ? 150 : 92),
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
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.contactName,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                ),
                if (isExpanded)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "No of people: 10",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Tags: stocks, bonds, ETFs",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
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
      body: SafeArea(
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
                width: MediaQuery.of(context).size.width * 0.44,
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
                onPressed: () {},
                icon: const Icon(
                  IconlyLight.camera,
                  size: 32.0,
                ),
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  IconlyLight.moreSquare,
                  size: 32.0,
                ),
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(
                  IconlyLight.voice,
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
