import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FractionalSizedBoxWidget());
}

class FractionalSizedBoxWidget extends StatelessWidget {
  const FractionalSizedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: 500,
          height: 500,
          color: Colors.lime,
          child: FractionallySizedBox(
            widthFactor: 0.7,
            heightFactor: 0.2,
            child: ElevatedButton(
              child: const Text("Click Me"),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
