import 'package:flutter/material.dart';
import 'dart:math';

// https://medium.com/flutter-community/flutter-listview-and-scrollphysics-a-detailed-look-7f0912df2754

void main(List<String> args) {
  runApp(const MyListView());
}

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _myListView(),
      ),
    );
  }

  Widget _myListView() {
    List<Color> colorList = [
      Colors.green,
      Colors.yellow,
      Colors.red,
      Colors.pink,
      Colors.lime,
      Colors.purple,
      Colors.orange,
      Colors.indigo,
    ];
    Random random = Random();
    return ListView(
      scrollDirection: Axis.vertical,
      reverse: false,
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
      physics: const BouncingScrollPhysics(),
      prototypeItem: const Text(
        'Hello',
        style: TextStyle(fontSize: 48.0),
      ),
      // itemExtent: 400,
      children: [
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
          width: 100.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
        Container(
          color: colorList[random.nextInt(colorList.length)],
          height: 200.0,
        ),
      ],
    );
  }
}
