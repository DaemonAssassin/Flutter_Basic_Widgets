import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FlexibleExpanded2());
}

class FlexibleExpanded2 extends StatelessWidget {
  const FlexibleExpanded2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                height: 100.0,
                color: Colors.black,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                height: 100.0,
                color: Colors.black,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
            Flexible(
              flex: 2,
              child: SizedBox(
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        height: 100.0,
                        color: Colors.black,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        height: 100.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
