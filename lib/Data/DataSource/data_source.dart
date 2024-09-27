import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_prak_mobile/Data/Model/Data_model.dart';


class CoffeeRemoteDataSource {
  final String baseUrl = 'https://fake-coffee-api.vercel.app/api';

  Future<List<DataModel>> getCoffees() async {
    final response = await http.get(Uri.parse('$baseUrl/coffee'));
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((json) => DataModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load coffee data');
    }
  }
}
