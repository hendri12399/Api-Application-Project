import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app3/belajar/controllers/gender_controller.dart';

class GenderView extends StatefulWidget {
  const GenderView({super.key});

  @override
  State<GenderView> createState() => _GenderViewState();
}

class _GenderViewState extends State<GenderView> {
  var controller = Get.put(GenderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3d6176),
        title: const Text(
          "Find a Gender",
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("Input the Name"),
          TextFormField(
            controller: controller.nameController,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () => controller.getGender(),
              child: const Text("Send", style: TextStyle(color: Color(0xFF052659)),)),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Text(
                "The gender of the name is ${controller.gender.value?.gender ?? "not define"}",
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              )),
        ],
      ),
    );
  }
}
