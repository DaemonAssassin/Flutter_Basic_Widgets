import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyAppWidget());
}

class MyAppWidget extends StatefulWidget {
  const MyAppWidget({Key? key}) : super(key: key);

  @override
  State<MyAppWidget> createState() => _MyAppWidgetState();
}

class _MyAppWidgetState extends State<MyAppWidget> {
  Color color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        appBar: AppBar(),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
              'Hello',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
