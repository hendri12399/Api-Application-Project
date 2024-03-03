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
        title: const Text(
          "Mencari Gender",
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("Input nama "),
          TextFormField(
            controller: controller.nameController,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () => controller.getGender(),
              child: const Text("Kirim")),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Text(
                "Gender dari nama tersebut adalah ${controller.gender.value?.gender ?? "Tidak diketahui"}",
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
