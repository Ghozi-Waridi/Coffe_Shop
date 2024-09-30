import 'package:flutter/material.dart';

class ButtomOrder extends StatelessWidget {
  final IconData iconData;
  final String text;
  final double size;
  final double borderRadius;
  final double padding;
  const ButtomOrder(
      {required this.iconData,
      required this.text,
      required this.size,
      required this.borderRadius,
      required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        children: [
          Icon(iconData , size: size,),
          SizedBox(
            width: 5,
          ),
          Text(text),
        ],
      ),
    );
  }
}
