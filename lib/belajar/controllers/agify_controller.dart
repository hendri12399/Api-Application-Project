
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:weather_app3/belajar/models/agify.dart';
import 'package:weather_app3/belajar/services/agify_services.dart';

class AgifyController extends GetxController{
  var apiServices = AgifyServices();
  Rxn<Agify> age = Rxn<Agify>();
  var name = "".obs;
  var nameController = TextEditingController();

  Future getAgify ()async{
    EasyLoading.show(
      status: "Loading"
    );
    var response = await apiServices.getAgify(nameController.text);
    var age = Agify.fromJson(response);

    this.age.value = age;
    EasyLoading.dismiss();
  }
}