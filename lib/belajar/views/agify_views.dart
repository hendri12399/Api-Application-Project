
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
        backgroundColor: Color(0xFF3d6176),
        title: const Text("Find your Age"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          const Text("Please input the Name"),
          TextFormField(
            controller: controller.nameController,
          ),
          TextButton(
            onPressed: ()=> controller.getAgify(),
            child: const Text("Push", style: TextStyle(color: Color(0xFF052659)),),
          ),
          Obx(() => Text(
            "The age is ${controller.age.value?.age ?? "none"}"
          ))
        ],
      ),
    );
  }
}
