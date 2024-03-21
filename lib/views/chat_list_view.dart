import 'package:flutter/material.dart';
import 'package:task7/models/chat_model.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 15),
        child: ListView.builder(
          // todo
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(chats[index].img),
              ),
              title: Text(
                chats[index].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Text(chats[index].msg),
                  const SizedBox(width: 15),
                  Text(chats[index].clock)
                ],
              ),
              trailing: chats[index].icon,
            );
          },
        ),
      ),
    );
  }
}
