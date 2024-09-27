import 'package:flutter/material.dart';

class Button_Tab_Bar extends StatelessWidget {
  final String text_button;
  const Button_Tab_Bar({super.key, required this.text_button});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // height: 30,
      // color: Colors.red,
      padding: const EdgeInsets.all(10),
      child: Text(
        text_button,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
