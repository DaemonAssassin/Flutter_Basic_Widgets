import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const RowWidget());
}

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.yellow,
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.purple,
                  width: 200,
                  height: 200,
                  child: const Text(
                    "A",
                    style: TextStyle(fontSize: 80.0, color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.blueGrey,
                  width: 200,
                  height: 200,
                  child: const Text(
                    "B",
                    style: TextStyle(fontSize: 48.0, color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  width: 200,
                  height: 200,
                  child: const Text(
                    "C",
                    style: TextStyle(fontSize: 48.0, color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  width: 200,
                  height: 200,
                  child: const Text(
                    "D",
                    style: TextStyle(fontSize: 48.0, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
