import 'package:flutter/material.dart';

//? => If the list reached the minimum or maximum scroll
//? => Move between elements of a list.
//? => Listen ScrollNotifications.

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
  double currentScrollingPosition = 0;
  String message = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50.0,
            color: Colors.green,
            child: Center(
              child: Text(
                message,
                style: const TextStyle(fontSize: 36.0),
              ),
            ),
          ),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollStartNotification) {
                  _onStartScroll(scrollNotification.metrics);
                } else if (scrollNotification is ScrollUpdateNotification) {
                  _onUpdateScroll(scrollNotification.metrics);
                } else if (scrollNotification is ScrollEndNotification) {
                  _onEndScroll(scrollNotification.metrics);
                }
                return true;
              },
              child: _myListView(),
            ),
          ),
        ],
      ),
      floatingActionButton: buildFAOs(),
    );
  }

  _onStartScroll(ScrollMetrics metrics) {
    print("Scroll Start");
  }

  _onUpdateScroll(ScrollMetrics metrics) {
    print("Scroll Update");
  }

  _onEndScroll(ScrollMetrics metrics) {
    print("Scroll End");
  }

  Row buildFAOs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () {
            _scrollController.position.moveTo(
              0.0,
              duration: const Duration(seconds: 1),
              curve: Curves.bounceInOut,
            );
          },
          child: const Icon(Icons.arrow_upward),
        ),
        FloatingActionButton(
          onPressed: () {
            double end = _scrollController.position.maxScrollExtent;
            _scrollController.animateTo(
              end,
              duration: const Duration(seconds: 2),
              curve: Curves.slowMiddle,
            );
          },
          child: const Icon(Icons.arrow_downward),
        ),
        FloatingActionButton(
          onPressed: () {
            currentScrollingPosition = _scrollController.position.pixels;
            print(currentScrollingPosition);
            print('offset: ${_scrollController.offset}');
          },
          child: const Icon(Icons.save),
        ),
        FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(
              currentScrollingPosition,
              duration: const Duration(seconds: 2),
              curve: Curves.slowMiddle,
            );
          },
          child: const Icon(Icons.run_circle),
        ),
      ],
    );
  }

  Widget _myListView() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        return buildChild(index);
      },
    );
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

  void _onScrollModify(String message) {
    setState(() {
      this.message = message;
    });
  }
}
