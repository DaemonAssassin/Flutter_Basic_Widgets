import 'package:flutter/material.dart';
import 'screen_4.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildHeroText(),
            const SizedBox(height: 16.0),
            _buildButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Screen4();
                    },
                  ),
                );
              },
              'Push Screen 4',
            ),
            const SizedBox(height: 16.0),
            _buildButton(
              () {},
              'Pop All Screens',
            ),
            const SizedBox(height: 16.0),
            _buildButton(
              () {
                Navigator.pop(context);
              },
              'Pop Screen 3',
            ),
          ],
        ),
      ),
    );
  }

  Text _buildHeroText() {
    return const Text(
      'Page 3',
      style: TextStyle(
        fontSize: 48.0,
        fontWeight: FontWeight.bold,
        color: Colors.purple,
      ),
    );
  }

  ElevatedButton _buildButton(
    VoidCallback onPressedCallback,
    String buttonText,
  ) {
    return ElevatedButton(
        onPressed: onPressedCallback,
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ));
  }
}
