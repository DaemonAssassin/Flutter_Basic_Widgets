import 'package:flutter/material.dart';

// https://dartpad.dev/?id=b0d016329a88863670d9e9a8f0789245

void main(List<String> args) {
  runApp(const MaterialApp(
    home: MediaQueryWidget(),
  ));
}

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Orientation orientation = mediaQuery.orientation;
    double height = mediaQuery.size.height - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuery"),
      ),
      body: orientation == Orientation.portrait
          ? getPortraitLayout(mediaQuery)
          : getLandscapeLayout(mediaQuery),
    );
  }

  Widget getPortraitLayout(MediaQueryData mediaQuery) {
    double height = mediaQuery.size.height - kToolbarHeight;

    return Column(
      children: [
        Container(
          color: Colors.red,
          height: height / 2,
        ),
        Container(
          color: Colors.black,
          height: height / 2,
        ),
      ],
    );
  }

  Widget getLandscapeLayout(MediaQueryData mediaQuery) {
    double width = mediaQuery.size.width;

    return Row(
      children: [
        Container(
          color: Colors.red,
          width: width / 2,
        ),
        Container(
          color: Colors.black,
          width: width / 2,
        ),
      ],
    );
  }
}
