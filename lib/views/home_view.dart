import 'package:flutter/material.dart';
import 'package:task7/views/chat_list_view.dart';
import 'package:task7/views/story_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    // todo
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/Me.jpg'),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'chats',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          actions: const [
            Icon(Icons.camera_alt_rounded),
            SizedBox(width: 10),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.edit_square,
              ),
            ),
          ],
        ),
        body: Center(
          child: Center(
            child: CustomScrollView(
              slivers: [
                // todo
                SliverToBoxAdapter(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 400,
                        height: 50,
                        color: const Color(0xffe7e7f1),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(width: 10),
                              Text(
                                'search',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // todo
                const SliverToBoxAdapter(
                  child: StoryListView(),
                ),
                // todo
                const SliverToBoxAdapter(
                  child: ChatList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
