import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FractionalSizedBoxWidget());
}

class FractionalSizedBoxWidget extends StatelessWidget {
  const FractionalSizedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.black38,
            child: OverflowBox(
              maxWidth: double.infinity,
              child: SizedBox(
                width: 4000.0,
                height: 50,
                child: RaisedButton(
                  color: Color.fromARGB(100, 0, 128, 128),
                  child: Text('Woolha', style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
