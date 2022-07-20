import 'package:flutter/material.dart';
import 'screen_3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
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
                      return const Screen3();
                    },
                  ),
                );
              },
              'Push Screen 3',
            ),
            const SizedBox(height: 16.0),
            _buildButton(
              () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Screen2();
                    },
                  ),
                );
              },
              'Replace With 3',
            ),
            const SizedBox(height: 16.0),
            _buildButton(
              () {
                Navigator.pop(context);
              },
              'Pop Screen 2',
            ),
          ],
        ),
      ),
    );
  }

  Text _buildHeroText() {
    return const Text(
      'Page 2',
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
