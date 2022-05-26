import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: Colors.amber,
          ),
          //* shape
          // shape: RoundedRectangleBorder(
          //   side: const BorderSide(color: Colors.red, width: 5.0),
          //   borderRadius: BorderRadius.circular(20.0),
          // ),
          // shape: const StadiumBorder(
          //   side: BorderSide(color: Colors.red, width: 5.0),
          // ),
        ),
      ),
    );
  }
}
