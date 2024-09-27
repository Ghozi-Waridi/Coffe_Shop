import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_prak_mobile/Presentation/Widgets/Details_Item_widgets/Decription_size.dart';
import 'package:project_prak_mobile/Presentation/Widgets/Details_Item_widgets/Judul_Rating.dart';
import 'package:project_prak_mobile/Presentation/Widgets/global_Component/Button.dart';
import '../Widgets/global_Component/App_Bar.dart';
import '../Colors.dart' as cl;

class Detail_Item_page extends StatefulWidget {
  final String? image_url;
  final String? description;
  final double? price;
  final String? name;
  final double? rating;

  const Detail_Item_page({super.key, 
    required this.image_url,
    required this.price,
    required this.description,
    required this.name,
    required this.rating,
  });

  @override
  State<Detail_Item_page> createState() => _Detail_Item_pageState();
}

class _Detail_Item_pageState extends State<Detail_Item_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomAppBar(
          height: 130,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "${widget.price}",
                    style: TextStyle(
                        fontSize: 25,
                        color: cl.icons_color,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Button_Widget(
                  text: "Buy Now",
                  color_button: cl.icons_color,
                  border_radius: 15,
                  width: 200,
                  font_size: 25,
                  link_page: "/Order",
                  padding_value: 10),
            ],
          )),
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: App_Bar(
          icon_app_bar: Icons.favorite_rounded,
          text_appBar: "Detail",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Menyelaraskan ke kiri
            children: [
              Container(
                child: Image.network(widget.image_url ?? ""),
              ),
              const SizedBox(height: 20),
              Judul_Rating(
                description: widget.description ?? "",
                name_Product: widget.name ?? "",
                rating:
                    widget.rating ?? 0.0, // Menggunakan rating dari parameter
                price: widget.price ?? 0.0,
                sale_amount: 2000,
              ),
              Descriptio_Size(
                description: widget.description ?? "",
              ),
              SizedBox(
                height: 130,
              ),
            ],
          ),
        ),

      ),
    );
  }
}
