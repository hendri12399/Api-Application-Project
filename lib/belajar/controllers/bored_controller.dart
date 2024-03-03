

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:weather_app3/belajar/models/bored.dart';
import 'package:weather_app3/belajar/services/bored_service.dart';

class BoredController extends GetxController {
  var apiServices = BoredServices();
  Rxn <Bored> activity = Rxn<Bored>();

  Future getBored ()async{
    EasyLoading.show(
      status: "Loading"
    );
    var response = await apiServices.getbored();
    var activity = Bored.fromJson(response);

    this.activity.value = activity ;
    EasyLoading.dismiss();
  }
}