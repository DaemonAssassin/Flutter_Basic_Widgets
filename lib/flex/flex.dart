import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(List<String> args) {
  runApp(const ABC());
}

class ABC extends StatelessWidget {
  const ABC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Flex(
            direction: Axis.horizontal,
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.amber,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                color: Colors.blue,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                color: Colors.green,
                width: 100.0,
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
