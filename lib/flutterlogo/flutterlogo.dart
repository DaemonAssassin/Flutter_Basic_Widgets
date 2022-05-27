import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FlutterLogoWidget());
}

class FlutterLogoWidget extends StatefulWidget {
  const FlutterLogoWidget({Key? key}) : super(key: key);

  @override
  State<FlutterLogoWidget> createState() => _FlutterLogoWidgetState();
}

class _FlutterLogoWidgetState extends State<FlutterLogoWidget> {
  double size = 100;

  void increaseSize() {
    setState(() {
      size += 50;
      if (size == 500) size = 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: size,
                style: FlutterLogoStyle.horizontal,
                textColor: Colors.black,
                duration: const Duration(seconds: 2),
                curve: Curves.bounceInOut,
              ),
              ElevatedButton(
                onPressed: increaseSize,
                child: const Text("Press Me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
