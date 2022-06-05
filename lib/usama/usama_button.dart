import 'package:flutter/material.dart';

class UsamaButton extends StatelessWidget {
  const UsamaButton({Key? key}) : super(key: key);

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Hello"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showSnackBar(context),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.amber,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(3.0, 3.0), blurRadius: 10.0),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 36.0,
          vertical: 16.0,
        ),
        child: const Text("Click Me"),
      ),
    );
  }
}
