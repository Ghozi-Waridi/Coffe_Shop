import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/OrderWidgets/DeliveryWidgets.dart';
import 'package:project_prak_mobile/Presentation/Widgets/global_Component/App_Bar.dart';

import '../Widgets/global_Component/Button.dart';
import '../Colors.dart' as cl;

class OrderPage extends StatelessWidget {
  final String? name;
  final double? price;
  const OrderPage({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomSheet: BottomAppBar(
          height: 180,
          shape: const CircularNotchedRectangle(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "${price}",
                    style: TextStyle(
                        fontSize: 25,
                        color: cl.icons_color,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Button_Widget(
                  text: "Order",
                  color_button: cl.icons_color,
                  border_radius: 15,
                  width: 500,
                  font_size: 25,
                  link_page: "",
                  padding_value: 10),
            ],
          )),
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: const App_Bar( 
          text_appBar: "Order Page",
          icon_app_bar: Icons.trolley,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Deliverywidgets(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Payment Summary",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Price", style: TextStyle(fontSize: 17)),
                      Text("${price}", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee", style: TextStyle(fontSize: 17)),
                      Text("${price}", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
