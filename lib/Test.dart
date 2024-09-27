// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'GetXPercobaan/DataRemoteSource.dart';
// import 'GetXPercobaan/RepositoryCoffeIMPL.dart';
// import 'Presentation/Controller/Data_Coffee_controller.dart';


// class CoffeePage extends StatefulWidget {
//   @override
//   State<CoffeePage> createState() => _CoffeePageState();
// }

// class _CoffeePageState extends State<CoffeePage> {
//   final CoffeeController controller = Get.put(
//     CoffeeController(
//       repository: CoffeeRepositoryImpl(
//         remoteDataSource: CoffeeRemoteDataSource(),
//       ),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Coffee List')),
//       body: Obx(() {
//         if (controller.isLoading.value) {
//           return Center(child: CircularProgressIndicator());
//         } else if (controller.error.value.isNotEmpty) {
//           return Center(child: Text('Error: ${controller.error.value}'));
//         } else {
//           return ListView.builder(
//             itemCount: controller.coffees.length,
//             itemBuilder: (context, index) {
//               final coffee = controller.coffees[index];
//               return ListTile(
//                 leading: Image.network(coffee.imageUrl),
//                 title: Text(coffee.name),
//                 subtitle: Text(coffee.origin),
//               );
//             },
//           );
//         }
//       }),
//     );
//   }
// }
