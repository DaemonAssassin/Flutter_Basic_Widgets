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
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            addSemanticIndexes: false,
            (BuildContext context, int index) {
              return _buildListItem();
            },
            childCount: 50,
          ),
        ),
      ),
    );
  }

  Widget _buildListItem() {
    // return Container(
    //   height: 100.0,
    //   color: Colors.orange,
    // );
    return SizedBox(
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        children: [
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
          _buildIListItem(),
        ],
      ),
    );
  }

  Widget _buildIListItem() {
    return Container(
      width: 200.0,
      color: Colors.orange,
      margin: const EdgeInsets.all(3.0),
    );
  }
}
