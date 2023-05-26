import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:undefined/Item.dart';
import 'package:undefined/mockup/collection.dart';
import 'package:undefined/mockup/dummy.dart';
import 'package:undefined/mockup/post.dart';
import 'package:undefined/service/category.dart';

class MyScreen extends ConsumerStatefulWidget {
  const MyScreen({super.key});

  @override
  ConsumerState<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends ConsumerState<MyScreen> {
  @override
  Widget build(BuildContext context) {
    final test = ref.watch(typeProvider);
    return Container(
      width: MediaQuery.of(context).size.width - 200,
      height: MediaQuery.of(context).size.height - 60,
      color: Colors.black,
      child: Row(
        children: [
          Container(
            width: 300,
            color: Colors.black54,
          ),
          Container(
            color: Colors.grey.shade900,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            width: MediaQuery.of(context).size.width - 900,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  width: MediaQuery.of(context).size.width - 900,
                  height: 125,
                  color: Colors.blue.withOpacity(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/lens.png'),
                            ),
                            SizedBox(
                              child: Column(children: [
                                const SizedBox(
                                  height: 90,
                                ),
                                Text(
                                  "@Seoul.travel",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.grey.shade800,
                                ),
                              ),
                              onPressed: () {},
                              child: const Text("Follow"),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.grey.shade800,
                                ),
                              ),
                              onPressed: () {},
                              child: Text("Channel Post"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          TabBar(
                            tabs: [
                              Tab(text: 'Post'),
                              Tab(text: 'Vote'),
                              Tab(text: 'Collection'),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height - 300,
                            child: TabBarView(
                              children: [
                                ListView.builder(
                                    key: const PageStorageKey("Post"),
                                    itemCount: postList.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                          child: PostItem(
                                            postList[index],
                                          ),
                                        ),
                                      );
                                    }),
                                ListView.builder(
                                    key: const PageStorageKey("Vote"),
                                    itemCount: voteList.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Center(
                                          child: PostItem(
                                            voteList[index],
                                          ),
                                        ),
                                      );
                                    }),
                                GridView.builder(
                                    key: const PageStorageKey("Collection"),
                                    itemCount: collectionList.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 12,
                                      mainAxisSpacing: 12,
                                    ),
                                    itemBuilder: ((context, index) {
                                      List<Color> _color = [
                                        Colors.teal.shade300,
                                        Colors.grey.shade400,
                                        Colors.yellow.shade500,
                                        Colors.blueAccent.shade200,
                                      ];
                                      return Container(
                                        color: _color[index],
                                        child: Center(
                                            child: Text(
                                          collectionList[index],
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      );
                                    })),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
