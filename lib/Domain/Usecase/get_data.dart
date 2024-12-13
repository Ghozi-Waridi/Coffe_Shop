import 'package:project_prak_mobile/Domain/Entities/Data_Enty.dart';
import 'package:project_prak_mobile/Domain/Repositories/Data_Repo.dart';

class getDataEnty{
  final DataRepository dataRepository;

  getDataEnty(this.dataRepository);

  Future <List<DataEnty>> call() async {
    return await dataRepository.getDataEntry();
  }
}
