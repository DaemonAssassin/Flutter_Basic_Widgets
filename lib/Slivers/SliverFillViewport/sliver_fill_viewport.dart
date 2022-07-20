import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyAppWidget());
}

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverFillViewport(
              padEnds: true,
              viewportFraction: 1.1,
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _buildListItem(index);
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    return Container(
      color: Colors.purple,
      height: 100.0,
      margin: const EdgeInsets.all(1.0),
      alignment: Alignment.center,
      child: Text(
        '$index',
        style: const TextStyle(
          fontSize: 96.0,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
