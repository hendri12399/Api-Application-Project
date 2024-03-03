
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app3/api_services.dart';

void main () {
  test("agify", ()async{
    var apiServices = ApiServices();
    var response = await apiServices.getAgify("faisal");
    var agify = Agify.fromJson(response);
    print(agify.Age);
    print(agify.name);
  });
}

class Agify{
  String name;
  int Age;

  Agify(this.name, this.Age);
  factory Agify.fromJson (Map<String, dynamic>json){
    return Agify(json["name"], json["age"]);
  }
}