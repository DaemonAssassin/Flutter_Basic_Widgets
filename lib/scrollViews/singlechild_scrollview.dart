import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(List<String> args) {
  runApp(const SingleCSV());
}

class SingleCSV extends StatelessWidget {
  const SingleCSV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200.0,
                color: Colors.yellow,
              ),
              Container(
                height: 200.0,
                color: Colors.purple,
              ),
              Container(
                height: 200.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
