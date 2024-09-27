import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/OrderWidgets/DeliveryWidgets.dart';
import 'package:project_prak_mobile/Presentation/Widgets/global_Component/App_Bar.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(children: [
          Deliverywidgets()
        ],),
      ),
    );
  }
}
