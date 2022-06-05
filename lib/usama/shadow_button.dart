import 'package:flutter/material.dart';

class ShadowsButton extends StatelessWidget {
  const ShadowsButton({required this.onPressed, Key? key}) : super(key: key);
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
                color: Colors.white,
                offset: Offset(-10, -10),
                blurRadius: 8,
                spreadRadius: 1,
                blurStyle: BlurStyle.normal),
            BoxShadow(
                color: Colors.black38,
                offset: Offset(10, 10),
                blurRadius: 8,
                spreadRadius: 1,
                blurStyle: BlurStyle.normal)
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text('Click'),
        ),
      ),
    );
  }
}
