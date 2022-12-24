import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //divider
        Divider(),
        // above of the post
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(Icons.menu),
            )
          ],
        ),
        // The post
        Container(
          height: 500,
          color: Colors.grey[300],
        ),
        //under the post
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_outline)
            ],
          ),
        ),
        //liked by
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'Ribal19 ',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Text('and '),
              Text(
                '20 others',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        //Coments
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 15),
          child: RichText(
              textAlign: TextAlign.left,
              text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: 'Ribal19: ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: 'You look so amazing like always  <3 <3 <3 <3',
                    )
                  ])),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
