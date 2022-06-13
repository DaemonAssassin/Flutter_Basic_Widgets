import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const LayoutBuilderWidget());

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                Container(
                  color: Colors.yellow,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(56.0),
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints inConstraints) {
                      return Row(
                        children: [
                          Container(
                            width: inConstraints.maxWidth * 0.5,
                            color: Colors.black,
                          ),
                          Container(
                            width: inConstraints.maxWidth * 0.5,
                            color: Colors.white,
                          ),
                        ],
                      );
                    }),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: constraints.maxHeight * 0.5,
                  width: constraints.maxWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(56.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints inConstraints) {
                        return Column(
                          children: [
                            Container(
                              height: inConstraints.maxHeight * 0.5,
                              color: Colors.black,
                            ),
                            Container(
                              height: inConstraints.maxHeight * 0.5,
                              color: Colors.white,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
