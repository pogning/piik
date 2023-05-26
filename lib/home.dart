import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:undefined/AppBar.dart';
import 'package:undefined/MyMenu.dart';
import 'package:undefined/MyScreen.dart';
import 'package:undefined/PostMenu.dart';
import 'package:undefined/service/category.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    final test = ref.watch(typeProvider);
    return Scaffold(
      body: Column(
        children: [
          MyAppBar(),
          Row(
            children: [
              Row(
                children: [
                  MyMenu(),
                  ref.read(typeProvider.notifier).getter() == null
                      ? Container(
                          color: Colors.black,
                          height: MediaQuery.of(context).size.height - 60,
                          width: MediaQuery.of(context).size.width - 200,
                          child: Center(
                            child: Text(
                              "share your story",
                              style:
                                  TextStyle(fontSize: 50, color: Colors.white),
                            ),
                          ),
                        )
                      : MyScreen(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
