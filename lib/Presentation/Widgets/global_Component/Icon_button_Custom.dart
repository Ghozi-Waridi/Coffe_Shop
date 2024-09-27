import 'package:flutter/material.dart';

class Custom_Icon extends StatelessWidget {
  final Color background_color;
  final double size_button;
  final double size_border;
  final double size_container;
  final String linK_Image_icon;

  const Custom_Icon({super.key, 
    required this.background_color,
    required this.size_button,
    required this.size_border,
    required this.linK_Image_icon,
    required this.size_container,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5),
      width: size_container,
      height: size_container,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: background_color,
        borderRadius: BorderRadius.circular(size_border),
      ),
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(linK_Image_icon),
      ),
    );
  }
}
