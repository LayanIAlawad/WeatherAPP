import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class Cityinput extends StatelessWidget {
  const Cityinput(this.controller, this.wf, this.fitchedWeather, {super.key});

  final TextEditingController controller;
  final WeatherFactory wf;

  final void Function(
    dynamic temperature,
    dynamic humidity,
    dynamic windspeed,
    dynamic pressure,
  )
  fitchedWeather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: "Enter Your City",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () async {
              String cityName = controller.text;

              var currentWeather = await wf.currentWeatherByCityName(cityName);
              var temp = currentWeather.temperature;
              var hum = currentWeather.humidity;
              var wind = currentWeather.windSpeed;
              var pres = currentWeather.pressure;
              fitchedWeather(temp, hum, wind, pres);
            },
            child: Text("Search"),
          ),
        ],
      ),
    );
  }
}
