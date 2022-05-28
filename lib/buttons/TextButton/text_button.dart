import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const TextButtonWidget());
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton.icon(
            icon: const Icon(Icons.g_mobiledata),
            label: const Text(
              'Mateen',
              // style: TextStyle(color: Colors.purple),
            ),
            style: TextButton.styleFrom(
              primary: Colors.amber,
            ),
            onPressed: () {},
          ),
          //   child: TextButton(
          //     onPressed: () {},
          //     onLongPress: () {},
          //     // autofocus: true,
          //     // clipBehavior
          //     // focusNode
          //     // key
          //     // onFocusChange
          //     // onHover: (bool isHovered) {
          //     //   if (isHovered) {
          //     //     print("Hovered");
          //     //   }
          //     // },
          //     style: TextButton.styleFrom(
          //       onSurface: Colors.green,
          //       backgroundColor: Colors.black,
          //       padding:
          //           const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
          //       side: const BorderSide(color: Colors.orange, width: 2.0),
          //     ),
          //     child: const Text("Pressss Me"),
          //   ),
          // ),
        ),
      ),
    );
  }
}
