import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app3/belajar/controllers/randomJokes_controller.dart';

class RandomJokesView extends StatefulWidget {
  const RandomJokesView({super.key});

  @override
  State<RandomJokesView> createState() => _RandomJokesViewState();
}

class _RandomJokesViewState extends State<RandomJokesView> {
  var controller = Get.put(RandomJokesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3d6176),
        title: const Text("Online Jokes"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Find your Jokes",
              style: GoogleFonts.montserrat(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () => controller.getRandomJokes(),
                child: const Text("Push")),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF052659)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => Text(
                        controller.setup.value?.setup ?? "Setup",
                        style: GoogleFonts.rubik(
                            color: Colors.white, fontSize: 25),
                        textAlign: TextAlign.center,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Obx(() => Text(
                      controller.punchline.value?.punchline ?? "Punchline",
                      style: GoogleFonts.rubik(color: Colors.white),
                      textAlign: TextAlign.center))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
