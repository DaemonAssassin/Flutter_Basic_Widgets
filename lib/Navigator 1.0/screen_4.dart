import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/Navigator%201.0/screen_2.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildHeroText(),
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
              'Pop Screen 4',
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
              'Replace Page 4',
            ),
          ],
        ),
      ),
    );
  }

  Text _buildHeroText() {
    return const Text(
      'Page 4',
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
