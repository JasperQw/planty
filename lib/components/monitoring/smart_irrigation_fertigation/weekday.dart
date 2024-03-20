import 'package:flutter/material.dart';

class WeekdayChoice extends StatefulWidget {
  final String weekday;
  const WeekdayChoice({
    required this.weekday,
    super.key});

  @override
  State<WeekdayChoice> createState() => _WeekdayChoiceState();
}

class _WeekdayChoiceState extends State<WeekdayChoice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey, // Set border color here
            width: 0.5, // Set border width here
          ),
      ),
      child: Text(
        widget.weekday,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );
  }
}