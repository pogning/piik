import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:undefined/model/toggle.dart';
import 'package:undefined/service/category.dart';

Widget PostContainer(PostToggle postToggle, WidgetRef ref) {
  return Consumer(
    builder: (context, ref, child) => GestureDetector(
      child: Container(
        padding: const EdgeInsets.only(top: 6),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
        height: 40,
        width: 95,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black.withOpacity(0)),
        child: Text(postToggle.post.toString(),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              color:
                  postToggle.active ? Colors.limeAccent.shade700 : Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )),
      ),
      onTap: () {
        ref.read(typeProvider.notifier).toggleHasPick(postToggle.post, true);
      },
    ),
  );
}
