import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app3/belajar/controllers/bored_controller.dart';

class BoredView extends StatefulWidget {
  const BoredView({super.key});

  @override
  State<BoredView> createState() => _BoredViewState();
}

class _BoredViewState extends State<BoredView> {
  var controller = Get.put(BoredController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3d6176),
        title: const Text("Get Your Activity"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Activty you can do while bored",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () => controller.getBored(),
              child: const Text(
                "Push",
                style: TextStyle(color: Color(0xFF052659)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(() => Text(
                  controller.activity.value?.activity ?? "",
                  style: GoogleFonts.montserrat(
                      fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}
