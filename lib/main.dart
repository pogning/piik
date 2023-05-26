import 'package:flutter/material.dart';
import 'package:undefined/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MaterialApp(
      home: Undefined(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

@immutable
class Undefined extends StatefulWidget {
  const Undefined({super.key});

  @override
  State<Undefined> createState() => _UndefinedState();
}

class _UndefinedState extends State<Undefined> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Home(),
      ),
    );
  }
}
