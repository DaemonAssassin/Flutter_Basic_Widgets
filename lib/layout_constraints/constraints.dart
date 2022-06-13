import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        body: getElement(),
      ),
    );
  }
}

Widget getElement() {
  return SizedBox.expand(
    child: Container(
      color: Colors.blueAccent,
      child: Column(
        children: const [
          Text(
              'Hello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!\nHello!'),
          Text('Goodbye!'),
        ],
      ),
    ),
  );
}
