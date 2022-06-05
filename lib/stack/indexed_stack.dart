import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const DynamicStack(title: 'Indexed Stack'));
}

class DynamicStack extends StatefulWidget {
  const DynamicStack({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DynamicStack> createState() => _DynamicStackState();
}

class _DynamicStackState extends State<DynamicStack> {
  int _index = 0;
  final String _imgUrl1 =
      'https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
  final String _imgUrl2 =
      'https://images.pexels.com/photos/1535162/pexels-photo-1535162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
  final String _imgUrl3 =
      'https://images.pexels.com/photos/1226302/pexels-photo-1226302.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      title: widget.title,
      home: Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Container(
          color: Colors.amber,
          width: double.infinity,
          height: double.infinity,
          child: IndexedStack(
            sizing: StackFit.expand,
            alignment: Alignment.centerRight,
            index: _index,
            children: [
              Image.network(
                _imgUrl1,
                fit: BoxFit.fitWidth,
              ),
              Image.network(
                _imgUrl2,
                fit: BoxFit.fitWidth,
              ),
              Image.network(
                _imgUrl3,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _changeIndex,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  void _changeIndex() {
    if (_index == 2) {
      setState(() => _index = 0);
    } else {
      setState(() => _index++);
    }
  }
}
