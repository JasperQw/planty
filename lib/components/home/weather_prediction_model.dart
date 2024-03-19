import 'package:flutter/material.dart';

class WeatherPredictionModel {
  final String day;
  final IconData icon;
  final Color color;

  WeatherPredictionModel({
    required this.day,
    required this.icon,
    required this.color,
  });
}

//data
List weatherData = [
  WeatherPredictionModel(
      day: 'Wednesday 20/3/2023',
      icon: Icons.cloud,
      color: const Color.fromARGB(255, 16, 209, 231)),
  WeatherPredictionModel(
      day: 'Thursday 21/3/2023',
      icon: Icons.wb_sunny_rounded,
      color: const Color.fromARGB(255, 255, 204, 0)),
  WeatherPredictionModel(
      day: 'Friday 22/3/2023',
      icon: Icons.water_drop_rounded,
      color: const Color.fromARGB(255, 58, 98, 228)),
  WeatherPredictionModel(
      day: 'Saturday 23/3/2023',
      icon: Icons.cloud,
      color: const Color.fromARGB(255, 16, 209, 231)),
  WeatherPredictionModel(
      day: 'Sunday 24/3/2023',
      icon: Icons.wb_sunny_rounded,
      color: const Color.fromARGB(255, 255, 204, 0)),
  WeatherPredictionModel(
      day: 'Monday 25/3/2023',
      icon: Icons.wb_sunny_rounded,
      color: const Color.fromARGB(255, 255, 204, 0)),
  WeatherPredictionModel(
      day: 'Tuesday 26/3/2023',
      icon: Icons.cloud,
      color: const Color.fromARGB(255, 16, 209, 231)),
];
