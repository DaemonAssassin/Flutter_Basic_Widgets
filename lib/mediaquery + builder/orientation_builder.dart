import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/usama/container_as_button.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: OrientationBuilderWidget(),
  ));
}

class OrientationBuilderWidget extends StatelessWidget {
  const OrientationBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuery"),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return orientation == Orientation.landscape
              ? getLandscapeLayout(mediaQueryData.size)
              : getPortraitLayout(mediaQueryData.size);
        },
      ),
    );
  }

  Widget getPortraitLayout(Size size) {
    double height = size.height - kToolbarHeight;
    return Column(
      children: [
        Container(
          height: height * 0.3,
          color: Colors.purple,
        ),
        Container(
          height: height * 0.7,
          color: Colors.yellow,
        ),
      ],
    );
  }

  Widget getLandscapeLayout(Size size) {
    double width = size.width;
    return Row(
      children: [
        Container(
          width: width * 0.3,
          color: Colors.purple,
        ),
        Container(
          width: width * 0.7,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
