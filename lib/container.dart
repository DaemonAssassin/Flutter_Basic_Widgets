import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

//* Container Properties.
//! 1. child
//! 2. color
//! 3. margin
//! 4. padding
//! 5. height
//! 6. Width
//! 7. alignment
//! 8. constraints
//! 9. transform
//! 10. decoration
//! .....

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Container',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Container(
            // color: Colors.purple,
            width: 600.0,
            height: 300.0,
            alignment: Alignment.center,

            padding: const EdgeInsets.all(36.0),
            // padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 10.0),
            // padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
            // padding: EdgeInsets.zero,
            // padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),

            // margin: const EdgeInsets.all(50.0),

            // constraints: const BoxConstraints(
            //   maxHeight: 300.0,
            //   maxWidth: 300.0,
            //   minHeight: 200.0,
            //   minWidth: 200.0,
            // ),
            // constraints: const BoxConstraints.expand(
            //   width: 300.0,
            //   height: 300.0,
            // ),
            // constraints: BoxConstraints.loose(const Size(500.0, 200.0)),
            //  works with alignment.
            // constraints: BoxConstraints.tight(const Size(500.0, 200.0)),
            // constraints: const BoxConstraints.tightFor(
            //   width: 200,
            //   height: 200,
            // ),
            // constraints: const BoxConstraints.tightForFinite(
            //   height: 300.0,
            //   width: 300.0,
            // ),

            // transform: Matrix4.rotationZ(0.3),

            decoration: BoxDecoration(
              //* https://medium.com/jlouage/flutter-boxdecoration-cheat-sheet-72cedaa1ba20
              color: Colors.orange,
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.black,
              //     width: 5.0,
              //     style: BorderStyle.solid,
              //   ),
              // ),
              //   border: Border.fromBorderSide(
              //     BorderSide(
              //       color: Colors.black,
              //       width: 5.0,
              //       style: BorderStyle.solid,
              //     ),
              //   ),

              // border: Border.symmetric(
              //   vertical: BorderSide(
              //     color: Colors.black,
              //     width: 5.0,
              //     style: BorderStyle.solid,
              //   ),
              // ),

              // border: Border.lerp(
              //   const Border(
              //     top: BorderSide(
              //       color: Colors.red,
              //       style: BorderStyle.solid,
              //       width: 10.0,
              //     ),
              //   ),
              //   const Border(
              //     top: BorderSide(
              //       color: Colors.green,
              //       style: BorderStyle.solid,
              //       width: 10.0,
              //     ),
              //   ),
              //   0.6,
              // ),
              // border: Border.merge(
              //   const Border(
              //     top: BorderSide(
              //       color: Colors.red,
              //       width: 10.0,
              //       style: BorderStyle.solid,
              //     ),
              //     right: BorderSide(
              //       color: Colors.green,
              //       width: 10.0,
              //       style: BorderStyle.solid,
              //     ),
              //   ),
              //   const Border(
              //     bottom: BorderSide(
              //       color: Colors.green,
              //       width: 10.0,
              //       style: BorderStyle.solid,
              //     ),
              //     right: BorderSide(
              //       color: Colors.green,
              //       width: 10.0,
              //       style: BorderStyle.solid,
              //     ),
              //   ),
              // ),
              border: Border.all(width: 5.0),

              //* https://www.woolha.com/tutorials/flutter-using-boxborder-examples
              //* https://medium.com/jlouage/flutter-boxdecoration-cheat-sheet-72cedaa1ba20
              // borderRadius: BorderRadius.zero,
              // borderRadius:
              //     const BorderRadius.all(Radius.elliptical(30.0, 50.0)),
              // borderRadius: const BorderRadius.horizontal(
              //   left: Radius.circular(20.0),
              //   right: Radius.circular(20.0),
              // ),
              // borderRadius: const BorderRadius.vertical(
              //   top: Radius.circular(20.0),
              //   bottom: Radius.circular(20.0),
              // ),
              // borderRadius:
              //     const BorderRadius.only(topLeft: Radius.circular(20.0)),
              // borderRadius: BorderRadius.lerp(
              //   BorderRadius.circular(20.0),
              //   BorderRadius.circular(5.0),
              //   0.8,
              // ),

              // boxShadow: const [
              //   BoxShadow(
              //     color: Colors.grey,
              //     offset: Offset(15.0, 10.0),
              //     blurRadius: 10.0,
              //     spreadRadius: 3.0,
              //   ),
              // ],

              // shape: BoxShape.circle,

              // gradient: const LinearGradient(
              //   colors: [Colors.green, Colors.yellow],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
              // gradient: const RadialGradient(
              //   colors: [Colors.green, Colors.yellow],
              // ),

              // foregroundDecoration: const BoxDecoration(
              //   color: Color.fromARGB(255, 0, 255, 34),
              // ),

              // gradient: const LinearGradient(
              //   colors: [
              //     Colors.amber,
              //     Colors.pink,
              //     Colors.green,
              //     Colors.blue,
              //   ],
              //   begin: Alignment.centerRight,
              //   end: Alignment.centerLeft,
              //   stops: [0.2, 0.5, 0.8, 1.0],
              // ),

              gradient: const RadialGradient(
                colors: [
                  Colors.black,
                  Colors.white,
                  Colors.purple,
                  Colors.orange,
                ],
              ),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1462396881884-de2c07cb95ed?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580',
                ),
                fit: BoxFit.scaleDown,
                // repeat: ImageRepeat.repeatX,
                // matchTextDirection: true,
              ),
            ),

            child: const Text(
              'I am Mateen',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
