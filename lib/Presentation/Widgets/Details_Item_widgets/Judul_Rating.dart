import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/global_Component/Icon_button_Custom.dart';

class Judul_Rating extends StatelessWidget {
  final String description;
  final double? rating;
  final String name_Product;
  final double? price;
  final int sale_amount;

  const Judul_Rating(
      {super.key, required this.description,
      required this.name_Product,
      required this.rating,
      required this.price,
      required this.sale_amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name_Product,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const Row(
          children: [
            Text(
              "Ice / Hot",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              width: 130,
            ),
            Custom_Icon(
              background_color: Color(0xFFEDEDED),
              size_button: 3,
              size_border: 10,
              linK_Image_icon: "Assets/Images/Icons/Icon_3.png",
              size_container: 43,
            ),
            Custom_Icon(
              background_color: Color(0xFFEDEDED),
              size_button: 3,
              size_border: 10,
              linK_Image_icon: "Assets/Images/Icons/Icon_1.png",
              size_container: 43,
            ),
            Custom_Icon(
              background_color: Color(0xFFEDEDED),
              size_button: 3,
              size_border: 10,
              linK_Image_icon: "Assets/Images/Icons/Icon_4.png",
              size_container: 43,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star_rate_rounded,
              color: Colors.yellow[700],
              size: 30,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              "${rating ?? 0.0}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(" ($sale_amount)")
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            indent: 20,
            endIndent: 20,
          ),
        )
      ],
    );
  }
}
