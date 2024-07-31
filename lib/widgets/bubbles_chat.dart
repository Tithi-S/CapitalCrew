import 'package:flutter/material.dart';

class MyChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool isFlagged;

  const MyChatBubble({
    Key? key,
    required this.text,
    required this.isSender,
    this.isFlagged = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 4.0),
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: isSender ? const Color.fromARGB(255, 222, 217, 217) : Colors.purple,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: isSender ? Colors.black : Colors.white,
                ),
              ),
              if (isFlagged)
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    "flagged message",
                    style: TextStyle(
                      color: isSender ? Colors.red : Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
