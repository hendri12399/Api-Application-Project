
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app3/belajar/controllers/agify_controller.dart';

class AgifyView extends StatefulWidget {
  const AgifyView({super.key});

  @override
  State<AgifyView> createState() => _AgifyViewState();
}

class _AgifyViewState extends State<AgifyView> {
  var controller = Get.put(AgifyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mencari Umur dari nama"),
      ),
      body: Column(
        children: [
          const Text("Silahkan input nama"),
          TextFormField(
            controller: controller.nameController,
          ),
          TextButton(
            onPressed: ()=> controller.getAgify(),
            child: const Text("Tekan"),
          ),
          Obx(() => Text(
            "Umur dari nama tersebut adalah ${controller.age.value?.age ?? "Tidak diketahui"}"
          ))
        ],
      ),
    );
  }
}
