import 'package:flutter/material.dart';

class Size_Component extends StatelessWidget {
  final String size_char;
  const Size_Component({super.key, required this.size_char});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFEDEDED), width: 3),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        size_char,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
