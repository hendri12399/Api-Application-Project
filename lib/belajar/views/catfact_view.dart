import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
        backgroundColor: Color(0xFF3d6176),
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
            height: 20,
          ),
          Text(
            "Get a fact about the Cat!!",
            style: GoogleFonts.openSans(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () => controller.getCatFact(),
            child: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF052659)),
                child: const Center(
                  child: Text(
                    "Push",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              width: 450,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF3d6176)),
              alignment: Alignment.center,
              child: Text(
                controller.fact.value?.fact ?? "None",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
