import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:undefined/service/category.dart';

class MyAppBar extends ConsumerStatefulWidget {
  const MyAppBar({super.key});

  @override
  ConsumerState<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends ConsumerState<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    final test = ref.watch(typeProvider);
    return Container(
      decoration: const BoxDecoration(
          color: Colors.black87,
          border: Border(bottom: BorderSide(color: Colors.black, width: 1))),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: 150,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.black.withOpacity(0)),
              ),
              onPressed: () {
                ref.read(typeProvider.notifier).cleanToggleCategory();
              },
              child: Text(
                "Post Me",
                style:
                    TextStyle(fontSize: 20, color: Colors.limeAccent.shade700),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 30,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.limeAccent.shade700,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Connect Wallet",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
