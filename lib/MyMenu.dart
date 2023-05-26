import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:undefined/Menu.dart';
import 'package:undefined/service/category.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 60,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.black87,
      ),
      child: Consumer(builder: (context, ref, child) {
        final state = ref.watch(typeProvider);
        return Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            MenuContainer(state[0], ref),
            MenuContainer(state[1], ref),
            MenuContainer(state[2], ref),
            MenuContainer(state[3], ref),
            MenuContainer(state[4], ref),
            MenuContainer(state[5], ref),
            MenuContainer(state[6], ref),
          ],
        );
      }),
    );
  }
}
