import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/Details_Item_widgets/Component/Size_component.dart';

class Descriptio_Size extends StatelessWidget {
  final String description;
  const Descriptio_Size({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 16),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Size",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Size_Component(size_char: "S"),
          Size_Component(size_char: "M"),
          Size_Component(size_char: "L"),
        ],),
      ],
    );
  }
}


