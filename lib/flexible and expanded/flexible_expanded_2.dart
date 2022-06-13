import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FlexibleExpanded2());
}

class FlexibleExpanded2 extends StatelessWidget {
  const FlexibleExpanded2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100.0,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                color: Colors.green,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
