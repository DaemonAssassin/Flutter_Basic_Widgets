import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.square),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cookie),
            ),
          ],
          leading: const Icon(Icons.circle),
        ),
      ),
    );
  }
}
