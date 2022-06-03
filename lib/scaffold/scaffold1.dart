import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
  // https://www.flutterant.com/scaffold-class-in-flutter/
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(child: Text('PTCL. Hello to the past.')),
        backgroundColor: Colors.white70,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          autofocus: true,
          backgroundColor: Colors.purple,
          disabledElevation: 0.0,
          elevation: 24.0,
          enableFeedback: true,
          focusColor: Colors.purple,
          focusElevation: 8.0,
          mouseCursor: MaterialStateMouseCursor.clickable,
          foregroundColor: Colors.white,
          heroTag: 'Hello',
          highlightElevation: 30.0,
          hoverColor: Colors.pink,
          hoverElevation: 16.0,
          isExtended: true,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashColor: Colors.blue,
          tooltip: 'Add',
          shape: const ContinuousRectangleBorder(),
          label: const Text('Hello Bro'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.place),
              label: 'HOme',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.car_crash),
              activeIcon: Icon(Icons.bus_alert),
              label: 'Car',
            ),
          ],
        ),
        extendBody: true,
        bottomSheet: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.lime,
        ),
      ),
    );
  }
}
