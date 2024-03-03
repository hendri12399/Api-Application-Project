// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app3/SecondPage.dart';
import 'package:weather_app3/Weather.dart';
import 'package:weather_app3/weather_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherController controller = WeatherController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: const Color(0xffF1F0FA),
      appBar: AppBar(
        elevation: 0,
        toolbarOpacity: 0,
        toolbarHeight: 25,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
            child: Text(
              "Pasuruan",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: "Nunito Sans"),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16.37,
            child: Text(
              "17.45 PM",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: "Nunito Sans"),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (Weather weather in controller.listWeather)
                  cardWeather(context, weather),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 110,
                width: 315,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (Weather3 weather3 in controller.listWeather3)
                      cardWeather3(weather3),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
           Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 110,
                child: Text("Today",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Nunito Sans",
                        fontWeight: FontWeight.w900)),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 95,
                    child: Text("Next 7 Days",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Nunito Sans",
                            fontWeight: FontWeight.w900)),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (Weather2 weather2 in controller.listWeather2)
                  cardWeather2(weather2),
                const SizedBox(
                  width: 0,
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 132,
                    width: 92,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Stack(children: [
                      const Positioned(
                        top: 15,
                        right: 20,
                        child: Text(
                          "08:00 AM",
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontFamily: "Nunito Sans",
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ),
                      Positioned(
                          top: 10,
                          child: Image.asset(
                            "img/Sun cloud mid rain.png",
                            height: 90,
                            width: 90,
                          )),
                      const Positioned(
                        top: 95,
                        left: 25,
                        child: Text(
                          "26°C",
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontFamily: "Nunito Sans",
                              fontWeight: FontWeight.w900,
                              fontSize: 18),
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 132,
                    width: 92,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Stack(children: [
                      const Positioned(
                        top: 15,
                        right: 20,
                        child: Text(
                          "10:00 AM",
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontFamily: "Nunito Sans",
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ),
                      Positioned(
                          top: 10,
                          child: Image.asset(
                            "img/Big rain drops.png",
                            height: 90,
                            width: 90,
                          )),
                      const Positioned(
                        top: 95,
                        left: 25,
                        child: Text(
                          "23°C",
                          style: TextStyle(
                              color: Color(0xff333333),
                              fontFamily: "Nunito Sans",
                              fontWeight: FontWeight.w900,
                              fontSize: 18),
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 132,
                    width: 92,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column cardWeather3(Weather3 weather3) {
    return Column(children: [
                      Image.asset(
                        "img/carbon_humidity.png",
                        width: 24,
                        height: 24,
                      ),
                      const Text(
                        "75%",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff333333),
                            fontFamily: "Nunito Sans"),
                      ),
                      const Text(
                        "Humidty",
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w900,
                            color: Color(0xffDBD9F2),
                            fontFamily: "Nunito Sans"),
                      ),
                    ]);
  }

  Padding cardWeather2(Weather2 weather2) {
    return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 132,
                  width: 92,
                  decoration: BoxDecoration(
                    color: const Color(0xff4B3EAE),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(children: [
                    const Positioned(
                      top: 15,
                      right: 20,
                      child: Text(
                        "06:00 AM",
                        style: TextStyle(
                            color: Color(0xffF5F5F5),
                            fontFamily: "Nunito Sans",
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                    Positioned(
                        top: 10,
                        child: Image.asset(
                          "img/Cloud 3 zap.png",
                          height: 90,
                          width: 90,
                        )),
                    const Positioned(
                      top: 95,
                      left: 25,
                      child: Text(
                        "24°C",
                        style: TextStyle(
                            color: Color(0xffF5F5F5),
                            fontFamily: "Nunito Sans",
                            fontWeight: FontWeight.w900,
                            fontSize: 18),
                      ),
                    ),
                  ]),
                ),
              );
  }

  Padding cardWeather(BuildContext context, Weather weather) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2 + 24.5,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SecondPage();
            }));
          },
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                padding: const EdgeInsets.only(bottom: 15),
                height: 274.94,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff4B3EAE),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      weather.image,
                      width: 170,
                    ),
                    Expanded(
                      child: Text(
                        "${weather.suhu}°",
                        style: const TextStyle(
                            fontFamily: "Nunito Sans",
                            fontWeight: FontWeight.w600,
                            fontSize: 62,
                            color: Color(0xffF5F5F5)),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      weather.information,
                      style: const TextStyle(
                          fontFamily: "Nunito Sans",
                          fontWeight: FontWeight.w900,
                          fontSize: 12,
                          color: Color(0xffF5F5F5)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: 140,
                    height: 34,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(40)),
                    child: Text(weather.date,
                        style: const TextStyle(
                            color: Color(0xff333333),
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Nunito Sans")),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
