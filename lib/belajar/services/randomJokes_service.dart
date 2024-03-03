import 'package:dio/dio.dart';

class RandomJokesServices {
  final dio = Dio();

Future<Map<String, dynamic>> getRandomJokes() async {
  final response = await dio.get('https://official-joke-api.appspot.com/random_joke');
  return response.data;
}
  }