import 'package:get/get.dart';
import 'package:project_prak_mobile/Presentation/Pages/Detail_Items_page.dart';
import 'package:project_prak_mobile/Presentation/Pages/Home_page.dart';
import 'package:project_prak_mobile/Presentation/Pages/Order_page.dart';
import 'package:project_prak_mobile/Presentation/Pages/Splash._page.dart';

class Routes {
  static const String start = "/";

  static String getStartRoute() => start;

  static List<GetPage> routes = [
    
    GetPage(
      name: "/splash",
      page: () => Splash_Page(),
    ),
    GetPage(
      name: "/Home",
      page: () => Home_Page(),
    ),
    GetPage(
      name: "/Detail",
      page: () => Detail_Item_page(
        name: Get.arguments['name'],
        image_url: Get.arguments['image_url'],
        rating: Get.arguments['rating'],
        price: Get.arguments['price'],
        description: Get.arguments['description'],
      ),
    ),
    GetPage(
      name: "/Order",
      page: () => const OrderPage(name: "Kopi",price: 12,),
    ),
  ];
}
