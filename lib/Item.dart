import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:undefined/mockup/dummy.dart';

Widget PostItem(PostData post) {
  return Consumer(builder: (context, ref, child) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 30.0),
          child: Row(children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(post.imageurl),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              post.name,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(
              width: 10,
            ),
            Text('${post.collected} collected',
                style: TextStyle(color: Colors.white, fontSize: 12)),
          ]),
        ),
        Container(
            margin: const EdgeInsets.only(top: 15, left: 30, bottom: 6),
            child: Text(
              post.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )),
        SizedBox(
          height: 10,
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 6, left: 30, right: 28),
            child: Text(
              post.post,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            )),
        SizedBox(
          height: 20,
        ),
        Divider(
          color: Colors.white.withOpacity(0.3),
          thickness: 0.5,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  });
}
