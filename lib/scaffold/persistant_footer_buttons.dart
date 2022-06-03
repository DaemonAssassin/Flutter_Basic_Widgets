import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  static const List<Widget> _pages = [
    Icon(Icons.home, size: 100.0),
    Icon(Icons.person, size: 100.0),
    Icon(Icons.cookie, size: 100.0),
  ];

  void _bottomNavItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: _pages[_currentIndex],
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
        endDrawer: Container(color: Colors.green),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.black54,
          shape: CircularNotchedRectangle(),
          // notchMargin: 10.0,
          elevation: 24.0,
          child: SizedBox(
            height: 60.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        persistentFooterButtons: const [
          Icon(Icons.save),
          Icon(Icons.print),
        ],
        primary: true,
        restorationId: 'I am top 1',
        onEndDrawerChanged: (wasDrawerOpened) {},
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
      ),
    );
  }
}
