import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double height = mediaQuery.size.height - kToolbarHeight;
    height = height - (mediaQuery.viewPadding.top);
    final width = mediaQuery.size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.orange,
              height: height * 0.3,
            ),
            Container(
              color: Colors.blue,
              height: height * 0.7,
              child: Row(
                children: [
                  Container(
                    color: Colors.red,
                    width: width * 0.3,
                  ),
                  Container(
                    color: Colors.pink,
                    width: width * 0.7,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
