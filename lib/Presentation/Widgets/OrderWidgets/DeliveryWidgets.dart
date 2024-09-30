import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/OrderWidgets/ButtomOrder.dart';

class Deliverywidgets extends StatelessWidget {
  String address = "Jl. Kaliurang Km 5";
  String detailAddress = "Kampung sawahan";
  // const Deliverywidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Delivery Address",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              address,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              detailAddress,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ButtomOrder(
                iconData: Icons.edit_location_alt_sharp,
                text: "Edit Address",
                borderRadius: 20,
                padding: 8,
                size: 22,
              ),
              SizedBox(
                width: 10,
              ),
              ButtomOrder(
                iconData: Icons.note_sharp,
                text: "Add Note",
                borderRadius: 20,
                padding: 8,
                size: 22,
              )
            ],
          ),
          Divider(
            height: 50,
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
