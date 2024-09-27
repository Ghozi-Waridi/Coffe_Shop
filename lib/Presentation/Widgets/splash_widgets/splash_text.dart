import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/global_Component/Button.dart';
import '../../Colors.dart' as Color_custom;

class splash_text extends StatelessWidget {
  const splash_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Fall in Love with \nCoffee in Blissful \nDelight!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  wordSpacing: 5),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome to our cozy coffee corner, where \nevery cup is a delightful for you.",
            style: TextStyle(
              color: Colors.grey,
              // fontSize: 35,
              fontWeight: FontWeight.bold,
              wordSpacing: 5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 60,
          ),
          Button_Widget(
            text: "Get Started",
            color_button: Color_custom.icons_color,
            border_radius: 20,
            width: 400,
            link_page: "/Home",
            font_size: 20,
            padding_value: 20,
          ),
          const SizedBox(height: 40,)
        ],
      ),
    );
  }
}
