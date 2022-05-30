import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final _imageUrl =
      'https://images.pexels.com/photos/11471250/pexels-photo-11471250.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Image'),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/apple.jpg',
          color: Colors.grey,
          colorBlendMode: BlendMode.darken,
          width: 600,
          height: 300,
          alignment: Alignment.centerRight,
          fit: BoxFit.cover,
          //! centerSlice
          //! bundle
          cacheHeight: 300,
          cacheWidth: 300,
          excludeFromSemantics: false,
          semanticLabel: 'Apple image',
          filterQuality: FilterQuality.high,
          matchTextDirection: true,
          repeat: ImageRepeat.repeat,
          scale: 0.2,
          gaplessPlayback: true,
          frameBuilder: (
            BuildContext context,
            Widget child,
            int? frame,
            bool wasSynchronouslyLoaded,
          ) {
            if (wasSynchronouslyLoaded) {
              return const Text(
                "Hello",
                style: TextStyle(fontSize: 48.0),
              );
            }
            return Container(
              decoration: BoxDecoration(
                border: Border.all(width: 5.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: AnimatedOpacity(
                opacity: frame == null ? 0 : 1,
                duration: const Duration(seconds: 3),
                curve: Curves.decelerate,
                child: child,
              ),
            );
          },
          // loadingBuilder: (
          //   BuildContext context,
          //   Widget child,
          //   ImageChunkEvent? loadingProgress,
          // ) {
          //   if (loadingProgress == null) {
          //     return child;
          //   }
          //   return Center(
          //     child: CircularProgressIndicator(
          //       value: loadingProgress.expectedTotalBytes != null
          //           ? loadingProgress.cumulativeBytesLoaded /
          //               loadingProgress.expectedTotalBytes!
          //           : null,
          //     ),
          //   );
          // },
        ),
      ),
    );
  }
}
