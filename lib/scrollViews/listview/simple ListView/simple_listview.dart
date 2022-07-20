import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ListViewWidget());
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          primary: true,
          reverse: false,
          cacheExtent: 200.0,
          children: [
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 1'),
              ),
            ),
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 2'),
              ),
            ),
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 3'),
              ),
            ),
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 4'),
              ),
            ),
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 5'),
              ),
            ),
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 6'),
              ),
            ),
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 7'),
              ),
            ),
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 8'),
              ),
            ),
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 9'),
              ),
            ),
            Container(
              color: Colors.lime.shade200,
              height: 200.0,
              alignment: Alignment.centerLeft,
              child: const ListTile(
                enabled: true,
                title: Text('Item 10'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
