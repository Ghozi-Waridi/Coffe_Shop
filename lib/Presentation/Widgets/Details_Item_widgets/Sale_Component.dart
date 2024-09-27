import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/global_Component/Button.dart';
import '../../Colors.dart' as cl;

class Sale_Component extends StatelessWidget {
  final double price_char;
  const Sale_Component({super.key, required this.price_char});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            const Text(
              "Price",
              style: TextStyle(fontSize: 20),
            ),
            Text(
               "$price_char",
              style: TextStyle(
                  fontSize: 25,
                  color: cl.icons_color,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Button_Widget(
          text: "Get Started",
          color_button: cl.icons_color,
          border_radius: 20,
          width: 250,
          link_page: null,
          font_size: 20,
          padding_value: 20,
        ),
      ],
    );
  }
}
