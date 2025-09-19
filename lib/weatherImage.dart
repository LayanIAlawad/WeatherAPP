import 'package:flutter/material.dart';

class Weatherimage extends StatelessWidget {
  const Weatherimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Image.asset("assets/icon.png", width: 120, height: 120),
    );
  }
}
