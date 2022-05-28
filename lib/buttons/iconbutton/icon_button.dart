import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
            color: Colors.white,
            disabledColor: Colors.red,
            tooltip: "Home",
            alignment: Alignment.center,
            autofocus: true,
            enableFeedback: true,
            focusColor: Colors.black,
            highlightColor: Colors.blue,
            hoverColor: Colors.green,
            iconSize: 80.0,
            padding: const EdgeInsets.all(30.0),
            splashColor: Colors.purple,
            splashRadius: 60.0,
          ),
        ),
      ),
    ),
  );
}
