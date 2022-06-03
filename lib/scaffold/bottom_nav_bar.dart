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
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home_filled),
              backgroundColor: Colors.yellow,
              label: 'Home',
              tooltip: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person_add),
              backgroundColor: Colors.blue,
              label: 'Person',
              tooltip: 'Person',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cookie),
              activeIcon: Icon(Icons.cookie_outlined),
              backgroundColor: Colors.yellow,
              label: 'Cookie',
              tooltip: 'Cookie',
            ),
          ],
          currentIndex: _currentIndex,
          elevation: 16.0,
          selectedItemColor: Colors.red,
          enableFeedback: true,
          showSelectedLabels: true,
          selectedFontSize: 24.0,
          selectedIconTheme: const IconThemeData(
            color: Colors.lime,
            size: 56.0,
            opacity: 1.0,
          ),
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          showUnselectedLabels: false,
          mouseCursor: MaterialStateMouseCursor.clickable,
          onTap: _bottomNavItemTap,
        ),
      ),
    );
  }
}
