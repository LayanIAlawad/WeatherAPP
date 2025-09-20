import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weatherapp/weatherImage.dart';
import 'package:weatherapp/cityInput.dart';
import 'package:weatherapp/weatherInfo.dart';

class Weatherscreen extends StatefulWidget {
  const Weatherscreen({super.key});

  @override
  State<Weatherscreen> createState() => _WeatherscreenState();
}

class _WeatherscreenState extends State<Weatherscreen> {
  dynamic temperature;
  dynamic humidity;
  dynamic windspeed;
  dynamic pressure;

  TextEditingController city = TextEditingController();
  WeatherFactory wf = new WeatherFactory(
    "5abe79889ccad68abcd6faa9292e7ff1",
    language: Language.ENGLISH,
  );
  void updateWeather(dynamic temp, dynamic hum, dynamic wind, dynamic pres) {
    setState(() {
      temperature = temp;
      humidity = hum;
      windspeed = wind;
      pressure = pres;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Weatherimage(),
        Cityinput(city, wf, updateWeather),

        temperature != null
            ? Weatherinfo(temperature, humidity, windspeed, pressure)
            : SizedBox(),
      ],
    );
  }
}
