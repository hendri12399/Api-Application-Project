
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:weather_app3/belajar/models/catFact.dart';
import 'package:weather_app3/belajar/services/catfact_service.dart';


class CatFactController extends GetxController{
  var apiServices = CatFactService();
  Rxn<CatFact> fact = Rxn<CatFact>();
// Rxn digunakan untuk menampung observable variable yang bisa menerima nilai
// null, jadi ga perlu menggunakan tanda tanya pada model.
// namun pada constractor harus ditanbahkan .value, untuk menampung nilainya
  Future getCatFact()async{
    EasyLoading.show(
      status: "Loading"
    );
      var response = await apiServices.getCatFact();
      var fact = CatFact.fromJson(response);

      this.fact.value = fact;
      EasyLoading.dismiss();
    }
}

