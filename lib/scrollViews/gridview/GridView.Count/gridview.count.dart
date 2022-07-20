import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: MyAppWidget(),
  ));
}

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        children: [
          _buildGridItem(1),
          _buildGridItem(2),
          _buildGridItem(3),
          _buildGridItem(4),
          _buildGridItem(5),
          _buildGridItem(6),
          _buildGridItem(6),
          _buildGridItem(7),
          _buildGridItem(8),
          _buildGridItem(9),
          _buildGridItem(10),
          _buildGridItem(11),
          _buildGridItem(12),
          _buildGridItem(13),
          _buildGridItem(14),
          _buildGridItem(15),
          _buildGridItem(16),
          _buildGridItem(17),
          _buildGridItem(18),
          _buildGridItem(19),
          _buildGridItem(20),
          _buildGridItem(21),
          _buildGridItem(22),
          _buildGridItem(23),
          _buildGridItem(24),
          _buildGridItem(25),
        ],
      ),
    );
  }

  Widget _buildGridItem(int index) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      child: Text(
        '$index',
        style: const TextStyle(
          fontSize: 48.0,
          fontWeight: FontWeight.bold,
          color: Colors.purple,
        ),
      ),
    );
  }
}
