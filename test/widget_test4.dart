import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app3/api_services.dart';

void main() {
  test("tests", () async {
    var apiServices = ApiServices();
    var respons = await apiServices.getboredApi();
    var boredApi = BoredApi.fromJson(respons);
    print(boredApi.activity);
    print(boredApi.type);
    print(boredApi.participant);
    print(boredApi.price);
    print(boredApi.link);
  });
}

class BoredApi {
  String activity;
  String type;
  int participant;
  double price;
  String link;

  BoredApi(this.activity, this.type, this.participant, this.price, this.link);
  factory BoredApi.fromJson(Map<String, dynamic> json) {
    return BoredApi(
        json['activity'],
        json['type'],
        json["participants"],
        json['price'] is int
            ? (json['price'] as int).toDouble()
            : json['price'],
        json['link']);
  }
}
