import 'package:flutter/material.dart';

class Button_Icons extends StatelessWidget {

  final IconData center_icon;
  final Color background_color;
  final Color foreground_color;
  final double? size_button;
  final double size_border;
  final double size_container;

  const Button_Icons(
      {super.key, required this.center_icon,
      required this.background_color,
      required this.foreground_color,
      required this.size_button,
      required this.size_border,
      required this.size_container,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size_container,
      height: size_container,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size_border),
        color: background_color,
      ),
      child: Icon(center_icon, color: foreground_color,size: size_button!,),
    );
  }
}
