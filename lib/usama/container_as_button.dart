import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            color: Colors.orange,
            child: Text(
              "hello",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              tooltip: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cookie),
              label: 'Cookie',
              tooltip: 'Cookie',
            ),
          ],
          backgroundColor: Colors.pink,
          enableFeedback: true,
        ),
        floatingActionButton: MyBuilder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () {},
            );
          },
        ),
      ),
    );
  }
}

class MyBuilder extends StatelessWidget {
  const MyBuilder({Key? key, required this.builder}) : super(key: key);

  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    return builder(context);
  }
}
