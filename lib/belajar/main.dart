import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app3/belajar/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: CustomRoute().route,
      home: const HomePage(),
      builder: EasyLoading.init(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    // untuk mengubah warna status bar
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(children: [
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/background3.jpg"),
                    fit: BoxFit.cover))),
        Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Text(
                  "Hendri Gunawan",
                  style: GoogleFonts.rubik(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF052659)),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "Entry-level Programming",
                style: GoogleFonts.rubik(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: const Color(0XFF7DA0CA)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "API Services",
                        style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF5483B3)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: buildCard("Random Jokes API", "/randomJokes")),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: buildCard("Gender API", "/gender")),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: buildCard("Agify API", "/agify"),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: buildCard("Cat Fact API", "/cat-fact")),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: buildCard("Bored Activity API", "/bored"),
                    ),
                  ],
                ),
              ),
            ]),
      ]),
    );
  }

  Card buildCard(String text, String text2) {
    return Card(
      elevation: 15,
      color: const Color(0xFF3d6176),
      shadowColor: Colors.black87,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Container(
        height: 60,
        width: 400,
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            Get.toNamed(text2);
          },
          child: Text(
            text,
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
