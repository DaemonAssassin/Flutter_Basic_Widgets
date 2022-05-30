import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const NetworkImageWidget());

class NetworkImageWidget extends StatefulWidget {
  const NetworkImageWidget({Key? key}) : super(key: key);

  @override
  State<NetworkImageWidget> createState() => _NetworkImageWidgetState();
}

class _NetworkImageWidgetState extends State<NetworkImageWidget> {
  final _imageUrl =
      'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=600';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Image.network(
            _imageUrl,
            errorBuilder: (context, error, stackTrace) {
              return const Text(
                'Error 404',
                style: TextStyle(
                  fontSize: 36.0,
                  backgroundColor: Colors.black,
                  color: Colors.white,
                ),
              );
            },
            // loadingBuilder: (
            //   BuildContext context,
            //   Widget child,
            //   ImageChunkEvent? loadingProgress,
            // ) {
            //   if (loadingProgress == null) return child;
            //   return const Center(
            //     child: Text(
            //       'Image Loading',
            //       style: TextStyle(
            //         fontSize: 36.0,
            //       ),
            //     ),
            //   );
            // },
            frameBuilder: (
              BuildContext context,
              Widget child,
              int? frame,
              bool wasSynchronouslyLoaded,
            ) {
              return AnimatedOpacity(
                opacity: frame == null ? 0 : 1,
                duration: const Duration(seconds: 3),
                curve: Curves.decelerate,
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
