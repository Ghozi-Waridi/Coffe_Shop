import 'package:flutter/material.dart';

class Search_widget extends StatelessWidget {
  const Search_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF313131)),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF2A2A2A),
                Color(0xFF313131),
              ]),
          borderRadius: BorderRadius.circular(18)),
      child: const Row(
        children: [
          SizedBox(width: 20,),
          Icon(
            Icons.search,
            color: Colors.white, 
          ),
          SizedBox(width: 10.0), 
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search coffee',
                  hintStyle:
                      TextStyle(color: Colors.white54), 
                  border: InputBorder.none, 
                ),
                style: TextStyle(color: Colors.white), 
              ),
            ),
          ),
        ],
      ),
    );
  }
}
