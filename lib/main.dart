import 'package:flutter/material.dart';
import 'package:weather_app3/HomePage.dart';

void main() {
  runApp(const WeatherApp3());
}

class WeatherApp3 extends StatefulWidget {
  const WeatherApp3({super.key});

  @override
  State<WeatherApp3> createState() => _WeatherApp3State();
}

class _WeatherApp3State extends State<WeatherApp3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
