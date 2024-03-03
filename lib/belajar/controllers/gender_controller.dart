
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:weather_app3/belajar/services/gender_service.dart';

import '../models/gender.dart';

class GenderController extends GetxController{

  var apiServices = GenderService();
  Rxn<Gender> gender = Rxn<Gender>();
  var nama = "".obs;
  var nameController = TextEditingController();

  Future getGender() async{
    EasyLoading.show(
      status: "Loading.."
    );
    var response = await apiServices.getGenderize(nameController.text);
    var gender = Gender.fromJson(response);

    this.gender.value = gender;

    EasyLoading.dismiss();
  }
}