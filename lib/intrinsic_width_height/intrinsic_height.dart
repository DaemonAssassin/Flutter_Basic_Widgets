import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyIntrinsicHeight());
}

class MyIntrinsicHeight extends StatelessWidget {
  const MyIntrinsicHeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(color: Colors.orange, width: 100, height: 200),
                Container(color: Colors.blue, width: 100, height: 100),
                Container(color: Colors.green, width: 100, height: 150),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
