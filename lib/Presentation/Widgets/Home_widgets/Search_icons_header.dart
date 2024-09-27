import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/Home_widgets/search.dart';
import 'package:project_prak_mobile/Presentation/Widgets/global_Component/Button_Icons.dart';
import '../../Colors.dart' as cl;

class Search_icons_header extends StatelessWidget {
  const Search_icons_header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      width: double.infinity,
      child: Row(  
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,  
        children: [
          const Search_widget(),
          const SizedBox(width: 30,),
          Button_Icons(
              center_icon: Icons.format_list_bulleted_outlined,
              background_color: cl.icons_color,
              foreground_color: Colors.white,
              size_container: 60,
              size_border: 15,
              size_button: 30,
              )
        ],
      ),
    );
  }
}
