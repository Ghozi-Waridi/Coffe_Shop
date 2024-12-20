import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Data/DataSource/firebase/firebase_auth_data_source.dart';
import '../Widgets/splash_widgets/splash_text.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

class Splash_Page extends StatelessWidget {
  final FirebaseAuthDataSourceImpl _firebaseAuthDataSourceImpl = FirebaseAuthDataSourceImpl(firebaseAuth: firebase.FirebaseAuth.instance);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topLeft,
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("Assets/Images/Image Onboarding.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.transparent,
                  // Colors.red,
                  Color.fromARGB(255, 0, 0, 0),
                ],
                stops: [
                  0.2,
                  1,
                ],
              ),
            ),
          ),
          const splash_text()
        ],
      ),
    );
  }
}
