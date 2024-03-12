import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class Location extends StatefulWidget {
  final String location;
  const Location({super.key, required this.location});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 10,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_rounded,
            color: green,
            size: 34,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              widget.location,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
