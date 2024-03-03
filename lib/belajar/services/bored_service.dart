import 'package:dio/dio.dart';

class BoredServices {
  final dio = Dio();

  Future<Map<String, dynamic>> getbored() async {
    final response = await dio.get('https://www.boredapi.com/api/activity');
    return response.data;
  }
}