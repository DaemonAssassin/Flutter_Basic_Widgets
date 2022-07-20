import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ListViewBuilderWidget());
}

class ListViewBuilderWidget extends StatelessWidget {
  ListViewBuilderWidget({Key? key}) : super(key: key);

  final List<String> cites = [
    'Abbotabadc',
    'Lahore',
    'Karachi',
    'Peshawar',
    'Bahawalpur',
    'Bahawalnagar',
    'Faisalabad',
    'Sargodha',
    'Wah',
    'Murree',
    'Chistian',
    'Hasilpur',
    'RYK',
    'Sukkur',
    'Pano Aqil',
    'Chiniot',
    'Okara',
    'Sahiwal',
    'Ladkana',
    'Swat',
    'Bannu',
    'Kohat',
    'Islamabad',
    'Lala Musa',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListViewBuilder Widget'),
        ),
        body: ListView.builder(
          addRepaintBoundaries: false,
          addAutomaticKeepAlives: false,
          addSemanticIndexes: false,
          dragStartBehavior: DragStartBehavior.down,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          // shrinkWrap: ,
          // primary: ,

          semanticChildCount: 1,
          itemCount: cites.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              height: 200,
              color: Colors.purple,
              margin: const EdgeInsets.only(bottom: 2.0),
              child: Column(
                children: [
                  const TextField(),
                  Text(
                    cites[index],
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
          // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.,
        ),
      ),
    );
  }
}
