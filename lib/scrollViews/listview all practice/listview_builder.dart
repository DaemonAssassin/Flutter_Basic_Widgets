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
        appBar: AppBar(
          title: const Text('ListView.Builder'),
        ),
        body: ListView.builder(
          addAutomaticKeepAlives: false,
          itemCount: 80,
          itemBuilder: (BuildContext context, int index) {
            return _buildListItem(index + 1);
          },
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    return ListTile(
      title: Text(
        'Index $index',
        style: const TextStyle(
          fontSize: 48.0,
          fontWeight: FontWeight.bold,
          color: Colors.purple,
        ),
      ),
    );
  }
}
