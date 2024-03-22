import 'package:flutter/material.dart';

class iotItemImages extends StatefulWidget {
  const iotItemImages({Key? key}) : super(key: key);

  @override
  State<iotItemImages> createState() => _iotItemImagesState();
}

class _iotItemImagesState extends State<iotItemImages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 249, 249, 249),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Set the border radius
              child: Image.asset('assets/images/startup_farmer.png',
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Set the border radius
              child: Image.asset('assets/images/startup_farmer.png',
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Set the border radius
              child: Image.asset('assets/images/startup_farmer.png',
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Set the border radius
              child: Image.asset('assets/images/startup_farmer.png',
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
