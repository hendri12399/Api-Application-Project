import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app3/api_services.dart';

void main() {
  test("hendri", () async {
    var apiServices = ApiServices();
    var response = await apiServices.getGenderize();
    var genderize = Genderize.fromJson(response);
    print(genderize.name);
    print(genderize.gender);
  });
}

class Genderize {
  String name;
  String gender;
  int count;

  Genderize(this.name, this.gender, this.count);

  factory Genderize.fromJson(Map<String, dynamic> json) =>
      Genderize(json["name"], json["gender"], json["count"]);
}
