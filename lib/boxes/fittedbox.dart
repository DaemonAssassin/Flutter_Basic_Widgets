import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FittedBoxWidget());
}

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({Key? key}) : super(key: key);

  final String _url =
      'https://images.pexels.com/photos/12365973/pexels-photo-12365973.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            // alignment: Alignment.centerRight,
            child: Image.network(
              _url,
            ),
          ),
        ),
      ),
    );
  }
}
