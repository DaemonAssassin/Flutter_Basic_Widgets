import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// https://medium.com/@diegoveloper/flutter-lets-know-the-scrollcontroller-and-scrollnotification-652b2685a4ac

void main(List<String> args) {
  runApp(const MaterialApp(home: MyListView()));
}

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final ScrollController _scrollController = ScrollController();
  double currentPosition = 0;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        _scrollController.position.pixels == 0
            ? print('Top ${_scrollController.position.pixels}')
            : print('Bottom ${_scrollController.position.pixels}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myListView(),
      floatingActionButton: SizedBox(
        // color: Colors.amber,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                _scrollController.animateTo(
                  0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeIn,
                );
              },
              child: const Icon(Icons.arrow_upward),
            ),
            FloatingActionButton(
              onPressed: () {
                double end = _scrollController.position.maxScrollExtent;
                _scrollController.animateTo(
                  end,
                  duration: const Duration(seconds: 1),
                  curve: Curves.bounceOut,
                );
              },
              child: const Icon(Icons.arrow_downward),
            ),
            FloatingActionButton(
              onPressed: () {
                currentPosition = _scrollController.position.pixels;
                print(currentPosition);
              },
              child: const Icon(Icons.save),
            ),
            FloatingActionButton(
              onPressed: () {
                _scrollController.animateTo(
                  currentPosition,
                  duration: const Duration(seconds: 1),
                  curve: Curves.decelerate,
                );
              },
              child: const Icon(Icons.run_circle),
            ),
          ],
        ),
      ),
    );
  }

  Widget _myListView() {
    return ListView.builder(
        dragStartBehavior: DragStartBehavior.start,
        controller: _scrollController,
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return buildChild(index);
        });
  }

  Container buildChild(int item) {
    return Container(
      color: Colors.blue.shade100,
      height: 150.0,
      margin: const EdgeInsets.only(
        top: 2.0,
        left: 2.0,
        right: 2.0,
      ),
      child: Center(
        child: Text(
          'Item ${item + 1}',
          style: const TextStyle(fontSize: 36.0),
        ),
      ),
    );
  }
}
