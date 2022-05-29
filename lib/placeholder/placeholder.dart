import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Placeholder(
          color: Colors.pink,
          child: Text('{lorem}'),
        ),
      ),
    ),
  );
}
