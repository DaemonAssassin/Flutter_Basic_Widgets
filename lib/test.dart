import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green,
        child: const Center(
          widthFactor: 2.0,
          heightFactor: 2.0,
          child: Text('Hello'),
        ),
      ),
    ),
  ));
}
