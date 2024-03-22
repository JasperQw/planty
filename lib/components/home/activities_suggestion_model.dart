import 'package:flutter/material.dart';

class ActivitiesSuggestionModel {
  final String name;
  final IconData icon;
  final bool active;

  ActivitiesSuggestionModel({
    required this.name,
    required this.icon,
    required this.active,
  });
}

//data
List activitiesData = [
  ActivitiesSuggestionModel(
    name: "Water Your Crops",
    icon: Icons.water_drop_rounded,
    active: true,
  ),
  ActivitiesSuggestionModel(
    name: "Remove Weeds",
    icon: Icons.grass_rounded,
    active: true,
  ),
  ActivitiesSuggestionModel(
    name: "Put fertiliser",
    icon: Icons.delete_rounded,
    active: true,
  ),
];
