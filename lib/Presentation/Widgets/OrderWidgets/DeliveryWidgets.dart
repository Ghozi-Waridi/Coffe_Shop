import 'package:flutter/material.dart';

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
          SizedBox(height: 20,),
          ListTile(
            title: Text(
              address,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(detailAddress),
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
