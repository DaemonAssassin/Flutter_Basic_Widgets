import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// UnconstrainedBox apnay child par koi constraints lgata. wo width or heigh unbound
// kar deta hai.

void main(List<String> args) {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox.expand(
          child: UnconstrainedBox(
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.black,
              width: 300.0,
              height: 300.0,
              child: const Text("hello"),
            ),
          ),
        ),
      ),
    );
  }
}
