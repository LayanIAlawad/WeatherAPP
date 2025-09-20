import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weatherinfo extends StatelessWidget {
  const Weatherinfo(
    this.temperature,
    this.humidity,
    this.windspeed,
    this.pressure, {
    super.key,
  });
  final dynamic temperature;
  final dynamic humidity;
  final dynamic windspeed;
  final dynamic pressure;

  Row text(String text, var value, IconData icon) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 10),
        Icon(icon, color: Colors.white),
        SizedBox(width: 10),
        Text(
          text,
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "$value",
          style: GoogleFonts.notoSans(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),

      color: const Color.fromARGB(255, 214, 164, 205),
      child: Column(
        children: [
          SizedBox(height: 10),

          text(" Tempreture:  ", temperature, Icons.thermostat),
          text(" Humidity:  ", humidity, Icons.opacity),
          text(" Windspeed:  ", windspeed, Icons.air),
          text(" Pressure:  ", pressure, Icons.speed),
        ],
      ),
    );
  }
}
