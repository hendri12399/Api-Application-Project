import 'package:dio/dio.dart';

class AgifyServices {
  final dio = Dio();

  Future<Map<String, dynamic>> getAgify(String name)async{
    var response = await dio.get("https://api.agify.io?name=meelad",
    queryParameters: {"name": name});
    return response.data;
  }
}