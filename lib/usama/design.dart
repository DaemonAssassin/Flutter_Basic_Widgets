import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              height: 100.0,
              color: Colors.amber,
              child: const Center(child: Text("Hello")),
            ),
            Container(
              height: 100.0,
              color: Colors.blue,
              child: const Center(child: Text("Hello")),
            ),
            Container(
              height: 100.0,
              color: Colors.red,
              child: const Center(child: Text("Hello")),
            ),
            Image.asset(
              'asset/images/cat.jpg',
              // width: 300.0,
              // height: 300.0,
            ),
          ],
        ),
      ),
    );
  }
}
