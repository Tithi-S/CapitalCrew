import 'package:flutter/material.dart';
import 'package:slice_ui_chatapp_figma/models/contact_model.dart';
import 'package:slice_ui_chatapp_figma/screens/conversation_screen.dart';

class JoinNewGroupTab extends StatelessWidget {
  const JoinNewGroupTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<Contact> remainingContacts = contactsList.skip(2).toList();

    return ListView.builder(
      itemCount: remainingContacts.length,
      itemBuilder: (context, index) {
        var contact = remainingContacts[index];
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
                    chatList: contact.chatList,
                    contactName: contact.contactName,
                  ),
                ),
              );
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
                title: Text(
                  contact.contactName,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: [
                    // Display tag1 if it's not empty
                    if (contact.tag1.isNotEmpty) ...[
                      Container(
                        margin: const EdgeInsets.only(right: 4.0),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Colors.purple.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Text(
                          contact.tag1,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ],
                    // Display tag2 if it's not empty
                    if (contact.tag2.isNotEmpty) ...[
                      Container(
                        margin: const EdgeInsets.only(right: 4.0),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Colors.purple.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Text(
                          contact.tag2,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ],
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
