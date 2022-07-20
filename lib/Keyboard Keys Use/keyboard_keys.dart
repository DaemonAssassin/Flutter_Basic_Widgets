import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyAppWidget());
}

class MyAppWidget extends StatefulWidget {
  const MyAppWidget({Key? key}) : super(key: key);

  @override
  State<MyAppWidget> createState() => _MyAppWidgetState();
}

class _MyAppWidgetState extends State<MyAppWidget> {
  Color _color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Keyboard Keys'),
        ),
        body: RawKeyboardListener(
          focusNode: FocusNode(),
          autofocus: true,
          onKey: (RawKeyEvent rawKeyEvent) {
            if (rawKeyEvent.logicalKey == LogicalKeyboardKey.keyR) {
              _color = Colors.red;
            } else if (rawKeyEvent.logicalKey == LogicalKeyboardKey.keyG) {
              _color = Colors.green;
            }
            setState(() {
              _color;
            });
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: _color,
          ),
        ),
      ),
    );
  }
}
