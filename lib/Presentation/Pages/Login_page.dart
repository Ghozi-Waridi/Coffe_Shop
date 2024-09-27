import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Presentation/Widgets/global_Component/Button.dart';
import '../Colors.dart' as cl;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoginForm = true;

  void _showForm() {
    setState(() {
      _isLoginForm = !_isLoginForm;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: cl.bg_Color,
      body: Center(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: height / 1.5,
            width: width / 1.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 2),
              color: cl.icons_color,
            ),
            child: Center(
                child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  _isLoginForm ? "Login" : "Sign In",
                  style: const TextStyle(
                    color: Colors.white70,
                    letterSpacing: 7,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                _isLoginForm ? _buildLoginForm(width) : _buildSignInForm(width),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: _showForm,
                  child: Text(_isLoginForm ? "Sign In" : "Login"),
                ),

                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text("Login"),
                // ),
              ],
            )),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(double width) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                  style: BorderStyle.solid, color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              gapPadding: 10,
              borderSide: const BorderSide(color: Colors.black, width: 9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Button_Widget(
            text: "Login",
            color_button: Colors.black,
            border_radius: 10,
            width: width,
            link_page: "link_page",
            font_size: 20,
            padding_value: 10)
      ],
    );
  }

  Widget _buildSignInForm(double width) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                  style: BorderStyle.solid, color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              gapPadding: 10,
              borderSide: const BorderSide(color: Colors.black, width: 9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Alamat",
            hintStyle: const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              gapPadding: 10,
              borderSide: const BorderSide(color: Colors.black, width: 9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Button_Widget(
            text: "Sign In",
            color_button: Colors.black,
            border_radius: 10,
            width: width,
            link_page: "link_page",
            font_size: 20,
            padding_value: 10)
      ],
    );
  }
}
