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
          slivers: [
            SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.0,
              children: [
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
                _buildListItem(10),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    print(index);
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
