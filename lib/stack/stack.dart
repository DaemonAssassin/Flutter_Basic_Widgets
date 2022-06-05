import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyStack());
}

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black,
            width: 500.0,
            height: 500.0,
            child: Stack(
              // fit: StackFit.passthrough,
              alignment: Alignment.bottomRight,
              // clipBehavior: Clip.none,
              textDirection: TextDirection.rtl,

              children: [
                Container(
                  color: Colors.orange,
                  height: 250.0,
                  width: 250.0,
                ),
                Align(
                  alignment: Alignment.topRight,
                  heightFactor: 0.1,
                  child: Container(
                    color: Colors.pink,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                Positioned.fill(
                  top: -10,
                  left: 0,
                  child: Container(
                    color: Colors.purple,
                    width: 100.0,
                    height: 100.0,
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
