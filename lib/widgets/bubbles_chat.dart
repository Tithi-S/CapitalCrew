import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class MyChatBubble extends StatelessWidget {
  const MyChatBubble({super.key, required this.text, required this.isSender});
  final String text;
  final bool isSender;
  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
      text: text,
      tail: false,
      isSender: isSender,
      color: isSender ? Colors.grey[300]! : Colors.purple[400]!,

      // delivered: true,
    );
  }
}
