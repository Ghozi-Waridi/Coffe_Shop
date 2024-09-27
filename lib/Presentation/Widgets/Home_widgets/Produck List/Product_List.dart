import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/Home_widgets/Produck%20List/Component/Butoon_Tab_bar.dart';
import '../../../Colors.dart' as cl;

class Product_List extends StatelessWidget {
  const Product_List({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabAlignment:  TabAlignment.start,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        color: cl.icons_color,
        borderRadius: BorderRadius.circular(10)
      ),
      tabs: const [
       Button_Tab_Bar(text_button: "All Coffee"),
       Button_Tab_Bar(text_button: "Machiato"),
       Button_Tab_Bar(text_button: "Latte"),
       Button_Tab_Bar(text_button: "Americano"),
       Button_Tab_Bar(text_button: "Black Coffee"),
       
      ],
    );
  }
}
