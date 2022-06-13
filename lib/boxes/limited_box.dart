import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FractionalSizedBoxWidget());
}

class FractionalSizedBoxWidget extends StatelessWidget {
  const FractionalSizedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UnconstrainedBox(
        child: LimitedBox(
          maxWidth: 600.0,
          maxHeight: 100.0,
          child: Container(
            color: Colors.green,
            width: 4000.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}
