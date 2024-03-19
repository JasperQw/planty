import 'package:flutter/material.dart';

class TodayWeatherModel {
  final String time;
  final IconData icon;
  final bool active;

  TodayWeatherModel({
    required this.time,
    required this.icon,
    required this.active,
  });
}

//data
List todayData = [
  TodayWeatherModel(
    time: "3:00 PM",
    icon: Icons.wb_sunny,
    active: true,
  ),
  TodayWeatherModel(
    time: "4:00 PM",
    icon: Icons.wb_sunny,
    active: true,
  ),
  TodayWeatherModel(
    time: "2:00 PM",
    icon: Icons.water_drop_rounded,
    active: true,
  ),
];
