import 'Weather.dart';

class WeatherController {
  List<Weather> listWeather = List.generate(
      3,
          (index) =>
          Weather(
              date: " Sunday, 8 March 2021",
              image: "img/Moon cloud fast wind.png",
              information: "Moon Cloud Fast Wind",
              suhu: 23));
  List <Weather2> listWeather2 = List.generate(4, (index) =>
      Weather2(time: 06, gambar: "img/Cloud 3 zap.png", suhu: 24));

  List <Weather3> listWeather3 = List.generate(4, (index) => Weather3(
      gambar: "img/carbon_humidity.png",
      nilai: 75,
      keterangan: "Humidity"));
  }
