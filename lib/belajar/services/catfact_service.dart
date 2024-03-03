import 'package:dio/dio.dart';

class CatFactService {
  final dio = Dio();

  Future<Map<String, dynamic>> getCatFact() async {
    final response = await dio.get('https://catfact.ninja/fact');
    return response.data;
  }
}
