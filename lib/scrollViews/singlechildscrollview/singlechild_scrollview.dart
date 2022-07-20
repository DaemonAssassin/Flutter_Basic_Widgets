import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const SingleCSV());
}

class SingleCSV extends StatelessWidget {
  const SingleCSV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            scrollDirection: Axis.vertical,
            // physics: const ScrollPhysics(),
            // physics: const NeverScrollableScrollPhysics(),
            // physics: const BouncingScrollPhysics(),
            // physics: const ClampingScrollPhysics(),
            // physics: const FixedExtentScrollPhysics(),
            // physics: const PageScrollPhysics(),
            physics: const RangeMaintainingScrollPhysics(),
            reverse: false,
            clipBehavior: Clip.none,

            child: Column(
              children: [
                Container(color: Colors.orange, height: 400),
                Container(color: Colors.blue, height: 400),
                Container(color: Colors.green, height: 400),
                Container(color: Colors.red, height: 400),
                Container(color: Colors.orange, height: 400),
                Container(color: Colors.blue, height: 400),
                Container(color: Colors.green, height: 400),
                Container(color: Colors.red, height: 400),
                Container(color: Colors.orange, height: 400),
                Container(color: Colors.blue, height: 400),
                Container(color: Colors.green, height: 400),
                Container(color: Colors.red, height: 400),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
