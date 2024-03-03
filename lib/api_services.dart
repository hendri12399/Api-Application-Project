import 'package:dio/dio.dart';

class ApiServices {
  final dio = Dio();

  Future<Map<String, dynamic>> getCatFact() async {
    final response = await dio.get('https://catfact.ninja/fact');
    print(response);
    return response.data;
  }

  Future<Map<String, dynamic>> getGenderize(String name) async {
    final response = await dio
        .get('https://api.genderize.io', queryParameters: {'name': name});
    return response.data;
  }

  Future<Map<String, dynamic>> getRandomJokes() async {
    final response =
        await dio.get('https://official-joke-api.appspot.com/random_joke');
    return response.data;
  }

  Future<Map<String, dynamic>> getboredApi() async {
    final response = await dio.get('https://www.boredapi.com/api/activity');
    return response.data;
  }

  Future<Map<String, dynamic>> getAgify(String name) async {
    final response = await dio.get("https://api.agify.io?name=meelad",
        queryParameters: {"name": name});
    return response.data;
  }
}
