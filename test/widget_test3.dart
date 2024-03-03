import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app3/api_services.dart';

void main (){
  test("hendri", ()async{
    var apiServices = ApiServices();
    var respons = await apiServices.getRandomJokes();
    var randomJokes = RandomJokes.fromJson(respons);
    print(randomJokes.setup);
    print(randomJokes.punchline);
  });
}

class RandomJokes{
  String setup;
  String punchline;

  RandomJokes(this.setup, this.punchline);
  factory RandomJokes.fromJson(Map<String, dynamic> json){
    return RandomJokes(json['setup'], json['punchline']);
  }
}
