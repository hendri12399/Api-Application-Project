import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:weather_app3/belajar/models/randomJokes.dart';
import 'package:weather_app3/belajar/services/randomJokes_service.dart';

class RandomJokesController extends GetxController{
  var apiServices = RandomJokesServices();
  Rxn<RandomJokes> punchline = Rxn<RandomJokes>();
  Rxn<RandomJokes> setup = Rxn<RandomJokes>();

  Future getRandomJokes()async{
    EasyLoading.show(
      status: "Loading"
    );
    var response = await apiServices.getRandomJokes();
    var punchline = RandomJokes.fromJson(response);
    var setup = RandomJokes.fromJson(response);

    this.punchline.value = punchline;
    this.setup.value = setup;
    EasyLoading.dismiss();
  }
}