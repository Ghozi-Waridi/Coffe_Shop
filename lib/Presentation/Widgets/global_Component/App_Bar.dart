import 'package:flutter/material.dart';


class App_Bar extends StatefulWidget {
  final String text_appBar;
  final IconData? icon_app_bar;

  const App_Bar({ 
    required this.text_appBar,
    required this.icon_app_bar,
  });

  @override
  State<App_Bar> createState() => _App_BarState();
}

class _App_BarState extends State<App_Bar> {
  Color coolorIcon = Colors.black38;


  void _buttonColor(){
    setState(() {
      coolorIcon= Colors.red;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          widget.text_appBar,
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        IconButton(
          icon: Icon(widget.icon_app_bar),
          color: coolorIcon,
          iconSize: 30,
          onPressed: () {
            _buttonColor();
          },
        ),
      ]),
    );
  }
}
