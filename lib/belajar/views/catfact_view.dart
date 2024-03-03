import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:weather_app3/belajar/controllers/catfact_controller.dart';

class CatFactView extends StatefulWidget {
  const CatFactView({super.key});

  @override
  State<CatFactView> createState() => _CatFactViewState();
}

class _CatFactViewState extends State<CatFactView> {
  var controller = Get.put(CatFactController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        toolbarHeight: 80,
        foregroundColor: Colors.black,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.white),
        title: const Text("Cat Fact"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              "img/cat.png",
              scale: 2.5,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Get a fact about the Cat!!",
            style: TextStyle(fontSize: 35),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () => controller.getCatFact(),
            child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffF0DFD7)
                ),
                child: const Center(
                  child: Text(
                    "Push",
                    style: TextStyle(fontSize: 25, color: Colors.black87),
                  ),
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          Obx(() => Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              controller.fact.value?.fact ?? "None",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
            ),
          ),
          )],
      ),
    );
  }
}
