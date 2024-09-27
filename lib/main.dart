import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project_prak_mobile/Presentation/Pages/Login_page.dart';
import 'package:project_prak_mobile/Presentation/Pages/Order_page.dart';
import 'Core/Routers/Router.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Routes.routes,  
      debugShowCheckedModeBanner: false,
      home: OrderPage(),
    );
  }
}




//ini merupakan mainnn untuk pengambilan data dari API 
// import 'package:flutter/material.dart';
// import 'package:project_prak_mobile/Presentation/Pages/Home_page.dart';

// import 'GetXPercobaan/Test/TestLagi.dart';
// import 'Test.dart';


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Coffee App',
      // home: CoffeeListPage(),
//     );
//   }
// }
