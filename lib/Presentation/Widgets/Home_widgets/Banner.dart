import 'package:flutter/material.dart';

class Banner_Widget extends StatelessWidget {
  const Banner_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 20,
        top: 150,
        child: Container(
          height: 170,
          width: 350,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("Assets/Images/Banner 1.png"),
                fit: BoxFit.cover,
                alignment: Alignment.center),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 35, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.red.shade400,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    "Promo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    
                  ),
                ),
                const Text(
                  "Buy One Get\nOne FREE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
