import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),

          //* centerTitle
          // centerTitle: true,

          //* actions
          //* actionsIconTheme
          // actions: [
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.smoke_free)),
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.smoke_free)),
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.smoke_free)),
          //   IconButton(onPressed: () {}, icon: const Icon(Icons.smoke_free)),
          // ],

          // actionsIconTheme: const IconThemeData(
          //   color: Colors.white,
          //   opacity: 0.2,
          //   shadows: [
          //     Shadow(
          //       color: Colors.black,
          //       blurRadius: 30,
          //       offset: Offset(2, 2),
          //     ),
          //   ],
          //   size: 32.0,
          // ),

          //* leading
          // leading: const IconButton(onPressed: null, icon: Icon(Icons.abc)),

          //* automaticallyImplyLeading
          // automaticallyImplyLeading: false,

          //* backgroundColor
          // backgroundColor: Colors.lime,

          //* backwardsCompatibility @deprecated
          // backwardsCompatibility: ,

          //* bottom
          //* bottomOpacity
          // bottomOpacity: 0.5,
          // bottom: AppBar(
          //   actions: [
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(
          //         Icons.home,
          //         color: Colors.black,
          //       ),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(
          //         Icons.percent,
          //         color: Colors.black,
          //       ),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(
          //         Icons.people,
          //         color: Colors.black,
          //       ),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(
          //         Icons.car_crash,
          //         color: Colors.black,
          //       ),
          //     ),
          //   ],
          // ),

          //* elevation.
          // elevation: 8.0,

          excludeHeaderSemantics: true,

          //* brightness
          //* systemOverlayStyle
          // systemOverlayStyle: const SystemUiOverlayStyle(
          //   statusBarBrightness: Brightness.light,
          //   statusBarColor: Colors.green,
          //   statusBarIconBrightness: Brightness.light,
          //   systemNavigationBarColor: Colors.pink,
          //   systemNavigationBarDividerColor: Colors.red,
          //   systemNavigationBarIconBrightness: Brightness.light,
          // ),
          //* shape
          // shape: RoundedRectangleBorder(
          //   side: const BorderSide(color: Colors.red, width: 5.0),
          //   borderRadius: BorderRadius.circular(20.0),
          // ),
          // shape: const StadiumBorder(
          //   side: BorderSide(color: Colors.red, width: 5.0),
          // ),
        ),
      ),
    );
  }
}
