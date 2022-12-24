import 'package:flutter/material.dart';
import '/util/bubble_stories.dart';
import '/util/user_post.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List names = [
    'asd',
    'qwe',
    'zxc',
    'asd',
    'qwe',
    'zxc',
    'asd',
    'qwe',
    'zxc',
    'asd',
    'qwe',
    'zxc',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Instagram',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(name: names[index]);
                  })),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (BuildContext context, int index) {
                return UserPosts(
                  name: names[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
