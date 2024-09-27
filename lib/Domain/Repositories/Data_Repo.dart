// import 'package:project_prak_mobile/Domain/Entities/Data_Enty.dart';

// abstract class DataRepository{
//   Future <List<DataEnty>> getDataEntry();
// }

import 'package:project_prak_mobile/Domain/Entities/Data_Enty.dart';

abstract class DataRepository{
  Future <List<DataEnty>> getDataEntry();
}