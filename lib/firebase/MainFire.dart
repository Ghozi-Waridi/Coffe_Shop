import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_prak_mobile/firebase/Wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyAppFire());
}

class MyAppFire extends StatelessWidget {
  const MyAppFire({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}
