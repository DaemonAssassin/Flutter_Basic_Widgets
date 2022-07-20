import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ListViewSeparatedWidget());
}

class ListViewSeparatedWidget extends StatelessWidget {
  ListViewSeparatedWidget({Key? key}) : super(key: key);
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('ListView Widget'),
        // ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                // shrinkWrap: true,
                dragStartBehavior: DragStartBehavior.down,
                itemBuilder: (BuildContext context, int index) {
                  return _buildListItem(index + 1);
                },
                itemCount: 50,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: colorList[random.nextInt(colorList.length)],
                    height: 24,
                    thickness: 4,
                    indent: 30,
                    endIndent: 30,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    return Container(
      color: Colors.orange,
      height: 100,
      child: Center(
        child: Text(
          'Element $index',
          style: const TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
