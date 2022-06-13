import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: 500.0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    borderOnForeground: false,
                    elevation: 8.0,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    semanticContainer: true,
                    surfaceTintColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      side: const BorderSide(color: Colors.purple, width: 5.0),
                    ),
                    color: Colors.yellow,
                    shadowColor: Colors.purple,
                    child: Image.asset('asset/images/apple.jpg'),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
                  const Card(
                    child: SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Mateen Mehmood",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
