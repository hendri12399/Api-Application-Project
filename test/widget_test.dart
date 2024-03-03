// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app3/api_services.dart';

void main() {
  test("bebas",()async{
    var apiServices = ApiServices();
    var response = await apiServices.getCatFact();
    var catFact = CatFact.fromJson(response);
    print(catFact.fact);

  });
}

class CatFact {
  String fact;
  int length;

  CatFact(this.fact, this.length);

  factory CatFact.fromJson(Map<String, dynamic> json){
    return CatFact(json["fact"], json["length"]);
  }
}