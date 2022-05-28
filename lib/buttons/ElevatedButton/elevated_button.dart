import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ElevatedButtonWidget());
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            //! autofocus
            //! clipBehavior
            //! focusNode
            onLongPress: () {},
            //* Button style 2 way uses.
            //* 1 -> ButtonStyle Constructor
            //* 2 -> ElevatedButton.styleFrom() method
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              alignment: Alignment.center,
              //! disabledMouseCursor
              animationDuration: const Duration(seconds: 2),
              elevation: 20.0,
              enableFeedback: true,
              //! enabledMouseCursor
              // maximumSize: const Size(600, 300),
              // minimumSize: const Size(300, 150),
              // fixedSize: const Size.fromHeight(500.0),
              primary: Colors.limeAccent,
              //* onSurface: Colors.pink, // used for disabled button.
              shadowColor: Colors.black,
              // shape: const StadiumBorder(
              //   side: BorderSide(width: 3.0, color: Colors.red),
              // ),
              // side: BorderSide(),
              //! splashFactory
              //! tapTargetSize
            ),
            child: const Text('StadiumBorder', style: TextStyle(fontSize: 48)),
          ),
        ),
      ),
    );
  }
}
