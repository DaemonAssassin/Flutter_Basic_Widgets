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
          //* titleSpacing
          // titleSpacing: 100.0,

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
          //* leading width
          // leading: IconButton(onPressed: () {}, icon: const Icon(Icons.cookie)),
          // leadingWidth: 100.0,

          // primary: ,

          //* automaticallyImplyLeading
          // automaticallyImplyLeading: false,

          //* backgroundColor
          // backgroundColor: Colors.lime,

          //* backwardsCompatibility @deprecated
          // backwardsCompatibility: ,

          //* primary
          // primary: false,

          //* scrolledUnderElevation
          // scrolledUnderElevation: 4,

          //* bottom
          //* bottomOpacity
          // bottomOpacity: 0.5,
          // bottom: AppBar(
          //   primary: true,
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
          //* shadowColor
          // shadowColor: Colors.red,

          //*  surfaceTintColor
          // surfaceTintColor: Colors.black,

          //* excludeHeaderSemantics (Semantic -> Description / anotations about widgets in tree)
          // excludeHeaderSemantics: true,

          //* flexibleSpace
          // flexibleSpace: Container(
          //   decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //     colors: [
          //       Colors.green,
          //       Colors.orange,
          //     ],
          //   )),
          // ),

          //* foregroundColor
          // foregroundColor: Colors.pink,

          //* iconTheme
          // iconTheme: const IconThemeData(color: Colors.red),

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

          //* titleTextStyle
          // titleTextStyle: const TextStyle(
          //   color: Colors.black,
          //   fontSize: 24.0,
          // ),

          //* toolbarHeight
          //* toolbarOpacity
          //* toolbarTextStyle
          // toolbarHeight: 100.0,
          // toolbarOpacity: 1,
          // toolbarTextStyle: const TextStyle(
          //   color: Colors.black,
          //   fontSize: 24.0,
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
