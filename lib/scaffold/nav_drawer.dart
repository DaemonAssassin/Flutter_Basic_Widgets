import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            color: Colors.amber,
            child: ListTile(
              autofocus: true,
              leading: const Icon(Icons.cookie),
              enableFeedback: true,
              enabled: true,
              focusColor: const Color.fromARGB(0, 2, 246, 18),
              hoverColor: Colors.blue,
              iconColor: Colors.purple,
              selected: false,
              title: const Text('Home'),
              tileColor: Colors.white,
              subtitle: const Text(
                  'Hello, Welcome Home, pakistan Welcome Home, pakistan Welcome Home, pakistan Welcome Home, pakistan jia hai pakistan jie ga. Zindabad'),
              dense: true,
              trailing: const Icon(Icons.ac_unit),
              // isThreeLine: true,
              mouseCursor: MaterialStateMouseCursor.textable,
              contentPadding: const EdgeInsets.symmetric(horizontal: 32.0),
              horizontalTitleGap: 0.0,
              minLeadingWidth: 48.0,
              minVerticalPadding: 4.0,
              onTap: () {},
              onLongPress: () {},
              selectedColor: Colors.lime,
              selectedTileColor: Colors.black,
              textColor: Colors.black,
              style: ListTileStyle.list,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white70,
        drawer: Drawer(
          backgroundColor: Colors.pink.shade100,
          elevation: 36.0,
          semanticLabel: 'Navigation Drawer',
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            side: BorderSide(width: 5.0),
          ),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: const Text('mateendev3@gmail.com'),
                accountName: const Text('Mateen Mehmood'),
                arrowColor: Colors.white,
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                onDetailsPressed: () => print('I am clicked'),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('AA'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('US'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('AA'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('AA'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('AA'),
                  ),
                ],
                currentAccountPictureSize: const Size.fromRadius(30),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                  child: Text('MA'),
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 5.0,
                endIndent: 10.0,
                indent: 10.0,
                height: 30.0,
              ),
            ],
          ),
        ),
        drawerEdgeDragWidth: 100.0,
        drawerDragStartBehavior: DragStartBehavior.start,
        drawerEnableOpenDragGesture: true,
        drawerScrimColor: Colors.pink,
        endDrawerEnableOpenDragGesture: true,
        extendBody: true,
        onDrawerChanged: (bool isDrawerOpened) {
          isDrawerOpened ? print('Drawer Opened') : print('Drawer closed');
        },
        endDrawer: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
