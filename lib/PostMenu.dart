import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:undefined/Menu.dart';
import 'package:undefined/Post.dart';
import 'package:undefined/service/category.dart';
import 'package:undefined/service/post.dart';

class PostBar extends StatefulWidget {
  const PostBar({super.key});

  @override
  State<PostBar> createState() => _PostBarState();
}

class _PostBarState extends State<PostBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Consumer(builder: (context, ref, child) {
        final state = ref.watch(postProvider);
        return Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            PostContainer(state[0], ref),
            PostContainer(state[1], ref),
            PostContainer(state[2], ref),
            PostContainer(state[3], ref),
            PostContainer(state[4], ref),
            PostContainer(state[5], ref),
            PostContainer(state[6], ref),
          ],
        );
      }),
    );
  }
}
