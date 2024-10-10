import 'package:flutter/material.dart';
import 'package:project_prak_mobile/firebase/auth_service.dart';

class Signin extends StatelessWidget{
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          onPressed: () async{
              dynamic result = await _authService.singInAnm();
              print("Hasil : " + result.toString());
          },
          child: Text("SignIn"),
        ),
      ),
    );
  }
}
