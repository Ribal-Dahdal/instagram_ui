// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../util/bubble_stories.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          // appBar: AppBar(),
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                ),
                Column(children: [
                  Text(
                    '4',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Posts'),
                ]),
                Column(children: [
                  Text(
                    '211',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Followers'),
                ]),
                Column(children: [
                  Text(
                    '200',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Following'),
                ])
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ribal19',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('19/6'),
                Text('22 years'),
                Text('Gemini'),
                Text('Brazil & RM'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Edit Profile',
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Ad ',
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'Insights',
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BubbleStories(name: 'Highlight 1'),
                BubbleStories(name: 'Highlight 2'),
                BubbleStories(name: 'Highlight 3'),
                BubbleStories(name: 'Highlight 4'),
                BubbleStories(name: 'Highlight 1'),
                BubbleStories(name: 'Highlight 2'),
                BubbleStories(name: 'Highlight 3'),
                BubbleStories(name: 'Highlight 4'),
              ],
            ),
          ),
          TabBar(tabs: [
            Tab(
              icon: Icon(Icons.grid_3x3_outlined),
            ),
            Tab(
              icon: Icon(Icons.video_call),
            ),
            Tab(
              icon: Icon(Icons.shop),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ])
        ],
      )),
    );
  }
}
