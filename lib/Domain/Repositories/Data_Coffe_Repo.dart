// import 'package:project_prak_mobile/Data/Model/Data_model.dart';
// import 'package:project_prak_mobile/Domain/Entities/Data_Enty.dart';

// import '../../Data/DataSource/Data_coffe_source.dart';
// // import '../../Data/DataSource/data_source.dart';
// import 'Data_Repo.dart';

// class Data_Coffe_Repo_impl implements DataRepository {
//   final Data_Coffe_Source data_coffe_source;

//   Data_Coffe_Repo_impl({required this.data_coffe_source});

//   @override
//   Future<List<DataEnty>> getDataEntry() async {
//     final List<DataModel> data_coffe_models =
//         await data_coffe_source.getData_coffee();
//     return data_coffe_models
//         .map((model) => DataEnty(
//             id: model.id,
//             name: model.name,
//             description: model.description,
//             price: model.price,
//             image_url: model.image_url))
//         .toList();
//   }
// }

import 'package:project_prak_mobile/Data/DataSource/Data_coffe_source.dart';
import 'package:project_prak_mobile/Data/Model/Data_model.dart';
import 'package:project_prak_mobile/Domain/Entities/Data_Enty.dart';
import 'package:project_prak_mobile/Domain/Repositories/Data_Repo.dart';

class Data_Coffe_Repo_impl implements DataRepository {
  final Data_Coffe_Source data_coffe_source;

  Data_Coffe_Repo_impl({required this.data_coffe_source});

  @override
  Future<List<DataEnty>> getDataEntry() async {
    final List<DataModel> dataCoffeModels =
        await data_coffe_source.getData_coffee();

    return dataCoffeModels.map((model) => DataEnty(
        id: model.id,
        name: model.name,
        description: model.description,
        price: model.price ?? 0.0,
        image_url: model.image_url)).toList();
  }
}
