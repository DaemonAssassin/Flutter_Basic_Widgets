import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ColumnWidget());
}

// ignore: use_key_in_widget_constructors
class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
          width: 500.0,
          color: Colors.lime,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                width: 150,
                height: 150,
                child: const Text(
                  "Aaa",
                  style: TextStyle(fontSize: 56.0, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                width: 150,
                height: 150,
                child: const Text(
                  "Bbb",
                  style: TextStyle(fontSize: 36.0, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.red,
                width: 150,
                height: 150,
                child: const Text(
                  "Ccc",
                  style: TextStyle(fontSize: 36.0, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.grey,
                width: 150,
                height: 150,
                child: const Text(
                  "Ddd",
                  style: TextStyle(fontSize: 36.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
