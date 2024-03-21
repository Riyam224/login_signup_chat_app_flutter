import 'package:flutter/material.dart';
import 'package:task7/models/chat_model.dart';

class StoryListView extends StatelessWidget {
  const StoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.only(left: 5),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(chats[index].img),
                ),
              ));
        },
      ),
    );
  }
}
