import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:slice_ui_chatapp_figma/widgets/bubbles_chat.dart';
import 'polling.dart'; // Import the PollCreationWidget

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({
    Key? key,
    required this.contactName,
    required this.chatList,
  }) : super(key: key);

  final String contactName;
  final List<List<dynamic>> chatList;

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  bool isExpanded = false;
  List<Map<String, dynamic>> _polls = []; // List to store polls
  String? _selectedOption; // Store selected option
  List<List<dynamic>> _chatList = []; // Local copy of chat list
  TextEditingController _messageController = TextEditingController(); // Controller for the message input

  final List<String> _flaggedKeywords = [
  "scam",
  "fraud",
  "fake",
  "spam",
  "phishing",
  "Ponzi",
  "malware",
  "virus",
  "hack",
  "risk",
  "loss",
  "collapse",
  "crash",
  "bubble",
  "illegal",
  "warning",
  "alert",
  "danger",
  "compromise",
  "exploit",
  "vulnerability",
  "unauthorized",
  "misleading",
  "deceptive",
  "false",
  "embezzlement",
  "money laundering",
  "insider trading",
  "pump and dump",
  "get rich quick",
  "pyramid scheme",
  "investment opportunity",
  "exclusive offer",
  "free money",
  "limited time",
  "act now",
  "secret method",
  "no risk",
  "guaranteed returns",
  "click here",
  "sign up now",
  "buy now",
  "limited offer"
];// Keywords to flag

  @override
  void initState() {
    super.initState();
    _chatList = widget.chatList; // Initialize local chat list
  }

  void _showPopupMenu() {
    showModalBottomSheet(
      context: context,
      builder: (context) => PollCreationWidget(
        onPollCreated: (question, options) {
          setState(() {
            _polls.add({'question': question, 'options': options});
          });
          Navigator.pop(context); // Only close the modal
        },
      ),
    );
  }

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      bool isFlagged = _flaggedKeywords.any((keyword) => _messageController.text.contains(keyword));
      setState(() {
        _chatList.add(['Me', _messageController.text, true, isFlagged]); // Add new message to chat list
        _messageController.clear(); // Clear the input field
      });
    }
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
                  child: Stack(
                    children: [
                      ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 20,
                          );
                        },
                        itemCount: _chatList.length,
                        itemBuilder: (context, index) {
                          var chat = _chatList[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Column(
                              crossAxisAlignment: chat[2] ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chat[0], // Display user's name
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: chat[2] ? Colors.black : Colors.black,
                                  ),
                                ),
                                MyChatBubble(
                                  text: chat[1],
                                  isSender: chat[2],
                                  isFlagged: chat.length > 3 ? chat[3] : false, // Pass the flagged status
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      if (_polls.isNotEmpty)
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: _polls.map((poll) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      poll['question'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    ...poll['options'].map<Widget>((option) {
                                      return RadioListTile(
                                        title: Text(option),
                                        value: option,
                                        groupValue: _selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedOption = value as String?;
                                          });
                                        },
                                      );
                                    }).toList(),
                                  ],
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                    ],
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
              bottomLeft: Radius.circular(36.0),
              bottomRight: Radius.circular(36.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 4.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.558,
                child: TextFormField(
                  controller: _messageController, // Bind the controller to the TextFormField
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type here...",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(221, 34, 34, 34),
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
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: _sendMessage,
                icon: const Icon(
                  Icons.send,
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
