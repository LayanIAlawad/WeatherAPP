import 'package:flutter/material.dart';
import 'package:weatherapp/weatherScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 189, 135, 189),
          title: Text(
            'WEATHER APP',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Weatherscreen(),
      ),
    ),
  );
}
