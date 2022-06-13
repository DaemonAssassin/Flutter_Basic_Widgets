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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 300.0,
                maxHeight: 400.0,
                minWidth: 300.0,
                maxWidth: 400.0,
              ),
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
