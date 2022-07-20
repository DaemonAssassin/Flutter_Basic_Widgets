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
        appBar: AppBar(),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _buildListItem(index);
                },
                childCount: 3,
                semanticIndexOffset: 50,
              ),
              itemExtent: 100.0,
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              // Switch for different overscroll behavior in your layout.
              // If your ScrollPhysics do not allow for overscroll, setting
              // fillOverscroll to true will have no effect.
              fillOverscroll: true,
              child: Center(
                child: Text(
                  'Mateen',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      color: Colors.purple,
      height: 100.0,
      alignment: Alignment.center,
      child: Text(
        '$index',
        style: const TextStyle(
          fontSize: 48.0,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
