import 'dart:convert';

import 'package:project_prak_mobile/Data/Model/Data_model.dart';
import 'package:http/http.dart' as http;

abstract class Data_Coffe_Source{
  Future<List<DataModel>> getData_coffee();
}

class Data_Coffe_Source_imple implements Data_Coffe_Source{
  final http.Client client;

  Data_Coffe_Source_imple({required this.client});

  @override
  Future<List<DataModel>> getData_coffee() async{
    final response =  await client.get(Uri.parse('https://fake-coffee-api.vercel.app/api'),);

    if(response.statusCode == 200){
      final List decodeData = json.decode(response
      .body) as List;
      return decodeData.map((json) => DataModel.fromJson(json)).toList();
    } else {
      throw Exception("ERORRR!!");
    }
    
  }
}