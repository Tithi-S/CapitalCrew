import 'package:flutter/material.dart';
import 'package:slice_ui_chatapp_figma/models/contact_model.dart';
import 'package:slice_ui_chatapp_figma/screens/conversation_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contactsList.length,
      itemBuilder: (context, index) {
        var contact = contactsList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: InkWell(
            enableFeedback: false,
            excludeFromSemantics: false,
            autofocus: true,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConversationScreen(
                        imageUrl: contact.imageUrl,
                        chatList: contact.chatList,
                        contactName: contact.contactName),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                horizontalTitleGap: 12,
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(contact.imageUrl),
                ),
                title: Text(
                  contact.contactName,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: [
                    const Icon(
                      Icons.access_time_outlined,
                      size: 16,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      contact.newChat,
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(bottom: 20, right: 4),
                  child: Text(
                    contact.time,
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
