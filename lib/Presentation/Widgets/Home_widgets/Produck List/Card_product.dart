import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Colors.dart' as cl;

class Card_Product extends StatelessWidget {
  final String name_product;
  final String category;
  final String link_gambar;
  final double? rating_product;
  final double? price;
  final String description;

  const Card_Product({super.key, 
    required this.name_product,
    required this.category,
    required this.link_gambar,
    required this.rating_product,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/Detail", arguments: {
          'image_url': link_gambar,
          'name': name_product,
          'price': price,
          'rating': rating_product,
          'description': description,
        });
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: const Color(0xFFEDEDED), borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Image.network(
              /*link_gambar ?? ""*/
              link_gambar,
              height: 130,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                /*name_product ?? ""*/
                name_product,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Container(alignment: Alignment.topLeft, child: Text(/*category ?? ""*/ category)),
            // SizedBox(
            //   height: ,
            // ),
            Row(
              children: [
                Text(
                  "\$${price ?? 0.0}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: cl.icons_color,
                      fontSize: 17),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
