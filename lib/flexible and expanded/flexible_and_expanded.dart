import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const FlexibleExpanded());

class FlexibleExpanded extends StatelessWidget {
  const FlexibleExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100.0,
                width: 100.0,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                height: 100.0,
                width: 100.0,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100.0,
                width: 100.0,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.black,
                height: 100.0,
                width: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
