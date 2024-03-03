import 'package:get/get.dart';
import 'package:weather_app3/belajar/views/agify_views.dart';
import 'package:weather_app3/belajar/views/bored_views.dart';
import 'package:weather_app3/belajar/views/catfact_view.dart';
import 'package:weather_app3/belajar/views/gender_view.dart';
import 'package:weather_app3/belajar/views/randomjokes_view.dart';

class CustomRoute {
  var route = <GetPage>[
    GetPage(
      name: "/gender",
      page: () => const GenderView(),
    ),
    GetPage(
      name: "/cat-fact",
      page: () => const CatFactView(),
    ),
    GetPage(name: "/randomJokes", page: () => const RandomJokesView()),
    GetPage(name: "/bored", page:() => const BoredView()),
    GetPage(name: "/agify", page: () => const AgifyView())
  ];
}
