import 'package:flutter/material.dart';
import 'screen_2.dart';
import 'screen_3.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildHeroText(),
            const SizedBox(height: 16.0),
            _buildButton(
              onPressedCallback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Screen2(),
                  ),
                );
              },
              buttonText: 'Push Screen 2',
            ),
            const SizedBox(height: 16.0),
            _buildButton(
              onPressedCallback: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Screen3();
                    },
                  ),
                );
              },
              buttonText: 'Replace With 2',
            ),
          ],
        ),
      ),
    );
  }

  Text _buildHeroText() {
    return const Text(
      'Page 1',
      style: TextStyle(
        fontSize: 48.0,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }

  ElevatedButton _buildButton({
    required VoidCallback onPressedCallback,
    required String buttonText,
  }) {
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
