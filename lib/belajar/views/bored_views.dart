import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        title: const Text(
          "Get Your Activity"
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text("Activty you can do while bored"),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () => controller.getBored(),
              child: const Text("Push"),
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(() => Text(controller.activity.value?.activity ?? "")),
          ],
        ),
      ),
    );
  }
}
