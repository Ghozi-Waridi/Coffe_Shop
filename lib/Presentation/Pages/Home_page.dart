import 'package:flutter/material.dart';
import 'package:project_prak_mobile/Data/DataSource/Data_coffe_source.dart';
import 'package:project_prak_mobile/Domain/Entities/Data_Enty.dart';
import 'package:project_prak_mobile/Domain/Repositories/Data_Coffe_Repo.dart';
import 'package:project_prak_mobile/Domain/Repositories/Data_Repo.dart';
import 'package:project_prak_mobile/Presentation/Widgets/Home_widgets/Banner.dart';
import 'package:project_prak_mobile/Presentation/Widgets/Home_widgets/Produck%20List/Card_product.dart';
import 'package:project_prak_mobile/Presentation/Widgets/Home_widgets/Search_icons_header.dart';
import 'package:http/http.dart' as http;
import '../Widgets/Home_widgets/Produck List/Product_List.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  late DataRepository datarepository;
  List<DataEnty> coffeList = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    datarepository = Data_Coffe_Repo_impl(
      data_coffe_source: Data_Coffe_Source_imple(
        client: http.Client(),
      ),
    );

    fetchData();
  }

  Future<void> fetchData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final List<DataEnty> data = await datarepository.getDataEntry();

      setState(() {
        coffeList = data;
      });
    } catch (eror) {
      print("Terjadi EROR : $eror");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        // backgroundColor: cl.bg_Color,
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: const Search_icons_header(),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Banner_Widget(),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      // width: 350,
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Product_List(),
                      ),
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: coffeList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 256),
                      itemBuilder: (context, index) {
                        final coffeData = coffeList[index];
                        return Card_Product(
                          name_product: coffeData.name,
                          category: "Pahit",
                          link_gambar: coffeData.image_url,
                          rating_product: 4.8,
                          price: coffeData.price ?? 0.0,
                          description: coffeData.description,
                        );
                      },
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
