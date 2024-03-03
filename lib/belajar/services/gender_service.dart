
import 'package:dio/dio.dart';

class GenderService {
  final dio = Dio();

  Future<Map<String, dynamic>> getGenderize(String name) async {
    final response = await dio
        .get('https://api.genderize.io', queryParameters: {'name': name});
    return response.data;
  }

}
