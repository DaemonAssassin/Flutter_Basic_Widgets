import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ListViewWidget());
  // ListView()
  // ListView.builder()
  // ListView.seperated
  // ListView.custom()
}

class ListViewWidget extends StatelessWidget {
  ListViewWidget({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.lightBlue.shade300,
    Colors.orange.shade300,
    Colors.green.shade300,
    Colors.pink.shade300,
    Colors.red.shade300,
    Colors.purple.shade300,
    Colors.blue.shade300,
    Colors.brown.shade300,
    Colors.yellow.shade300,
    Colors.indigo.shade300,
  ];
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(),
        body: ListView(
          scrollDirection: Axis.vertical,
          cacheExtent: 300.0,
          addAutomaticKeepAlives: false,
          // itemExtent: 100,
          padding: const EdgeInsets.all(16.0),
          physics: const BouncingScrollPhysics(),
          // reverse: true,
          // prototypeItem: getPrototypeItem(),
          primary: true,
          children: [
            buildListChild(1),
            buildListChild(2),
            buildListChild(3),
            buildListChild(4),
            buildListChild(5),
            buildListChild(6),
            buildListChild(7),
            buildListChild(8),
            buildListChild(9),
            buildListChild(10),
            buildListChild(11),
            buildListChild(12),
            buildListChild(13),
            buildListChild(14),
            buildListChild(15),
          ],
        ),
      ),
    );
  }

  Widget buildListChild(int item) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        color: getRandomColor(),
        height: 150.0,
        // margin: const EdgeInsets.symmetric(vertical: 2.0),
        alignment: Alignment.centerLeft,
        child: ListTile(
          title: Text(
            'Item $item',
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }

  Color getRandomColor() {
    return colors[random.nextInt(colors.length)];
  }

  Widget getPrototypeItem() {
    return const Text(
      'Hello',
      style: TextStyle(fontSize: 48.0),
    );
  }
}
