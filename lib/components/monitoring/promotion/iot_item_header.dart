import 'package:flutter/material.dart';
import 'package:planty/components/monitoring/promotion/iot_item_images.dart';

class iotItemHeader extends StatefulWidget {
  const iotItemHeader({Key? key}) : super(key: key);

  @override
  State<iotItemHeader> createState() => _iotItemHeaderState();
}

class _iotItemHeaderState extends State<iotItemHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 249, 249, 249),
          alignment: AlignmentDirectional.topStart,
          padding: const EdgeInsets.only(
              left: 20.0, top: 20.0, right: 20.0, bottom: 10.0),
          child: const Text(
            'TM ONE PRECISION FARMING STARTER PACK',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 249, 249, 249),
          alignment: AlignmentDirectional.topStart,
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: const Text(
            '5 years free technical support Installation provided',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
              color: Colors.grey,
            ),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 249, 249, 249),
          alignment: AlignmentDirectional.topStart,
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          child: const Row(
            children: [
              Icon(Icons.location_on_rounded, color: Colors.green, size: 30),
              SizedBox(width: 10),
              Text(
                'Semenanjung Malaysia',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 249, 249, 249),
          alignment: AlignmentDirectional.topStart,
          padding: const EdgeInsets.only(
              top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: const iotItemImages(),
        ),
        Container(
          color: const Color.fromARGB(255, 249, 249, 249),
          alignment: AlignmentDirectional.topStart,
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: const Row(
            children: [
              Text(
                'Beginner Friendly',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.star,
                  color: Color.fromARGB(255, 247, 223, 9), size: 30),
              Icon(Icons.star,
                  color: Color.fromARGB(255, 247, 223, 9), size: 30),
              Icon(Icons.star,
                  color: Color.fromARGB(255, 247, 223, 9), size: 30),
              Icon(Icons.star,
                  color: Color.fromARGB(255, 247, 223, 9), size: 30),
              Icon(Icons.star,
                  color: Color.fromARGB(255, 247, 223, 9), size: 30),
            ],
          ),
        ),
      ],
    );
  }
}
