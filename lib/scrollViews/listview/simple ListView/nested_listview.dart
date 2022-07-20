import 'package:flutter/material.dart';

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
    return ListView(
      children: [
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        SizedBox(
          height: 300,
          child: ListView(
            // shrinkWrap: true,
            children: [
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
              buildChild(Colors.yellow),
            ],
          ),
        ),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
        buildChild(Colors.purple),
      ],
    );
  }

  Container buildChild(Color color) {
    return Container(
      color: color,
      height: 150.0,
      margin: const EdgeInsets.only(top: 2.0, left: 2.0, right: 2.0),
    );
  }
}
