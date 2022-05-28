import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Placeholder(
          color: Colors.pink,
          child: SizedBox(
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    ),
  );
}
