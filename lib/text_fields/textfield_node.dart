import 'package:flutter/material.dart';
import 'package:pattern_formatter/date_formatter.dart';
import 'package:pattern_formatter/numeric_formatter.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final FocusNode _usernameNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _addressNode = FocusNode();
  final FocusNode _postalCodeNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SizedBox(
            width: 600.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: const InputDecoration(hintText: 'username'),
                  focusNode: _usernameNode,
                ),
                TextField(
                  decoration: const InputDecoration(hintText: 'email'),
                  focusNode: _emailNode,
                ),
                TextField(
                  decoration: const InputDecoration(hintText: '--/--/----'),
                  focusNode: _passwordNode,
                  keyboardType: TextInputType.number,
                  onEditingComplete: () {
                    _usernameNode.skipTraversal = !_usernameNode.skipTraversal;
                  },
                  inputFormatters: [
                    DateInputFormatter(),
                  ],
                  // maxLength: 19,
                ),
                TextField(
                  decoration: const InputDecoration(hintText: 'address'),
                  focusNode: _addressNode,
                ),
                TextField(
                  decoration: const InputDecoration(hintText: 'postal code'),
                  focusNode: _postalCodeNode,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                _passwordNode.requestFocus();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 30.0),
            FloatingActionButton(
              onPressed: () {
                _postalCodeNode.requestFocus();
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
