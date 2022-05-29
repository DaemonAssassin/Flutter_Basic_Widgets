import 'dart:ui';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TextWidget());
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text("Text Widget App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac rhoncus enim. Mauris hendrerit eu neque vel feugiat. Pellentesque quis.',
                //! key
                //! locale
                // maxLines: 2,
                // overflow: TextOverflow.ellipsis,
                semanticsLabel: 'Text Widget Explaining Paragraph',
                //? strutStyle
                // https://stackoverflow.com/questions/56799068/what-is-the-strutstyle-in-the-flutter-text-widget
                // https://www.woolha.com/tutorials/flutter-using-strutstyle-widget-examples
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                // textScaleFactor: 2,
                // textHeightBehavior: TextHeightBehavior(
                //     applyHeightToFirstAscent: true,
                //     applyHeightToLastDescent: true,
                //     leadingDistribution: TextLeadingDistribution.proportional),
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle(
                  backgroundColor: Colors.orange,
                  // color: Colors.black,
                  fontSize: 36.0,
                  // fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900,
                  // wordSpacing: 3.0,
                  // letterSpacing: 3.0,
                  // shadows: [
                  //   const Shadow(
                  //     color: Colors.black54,
                  //     offset: Offset(1, 1),
                  //     blurRadius: 2,
                  //   ),
                  // ],
                  height: 2.0,
                  // overflow: TextOverflow.ellipsis,
                  //! locale
                  // decoration: TextDecoration.underline,
                  // decorationColor: Colors.black,
                  // decorationStyle: TextDecorationStyle.wavy,
                  // decorationThickness: 2.0,
                  fontFamily: "JosefinSans",
                  leadingDistribution: TextLeadingDistribution.even,
                  debugLabel: "Main Text Style",
                  fontFamilyFallback: ['NotoBhaiJan'],
                  //! fontFeatures
                  // foreground: Paint()
                  //   ..style = PaintingStyle.stroke
                  //   ..strokeWidth = 1.0
                  //   ..color = Colors.purple,

                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2.0
                    ..color = Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
