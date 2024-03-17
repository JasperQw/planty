import 'package:flutter/material.dart';

class iotItemDetails extends StatefulWidget {
  const iotItemDetails({Key? key}) : super(key: key);

  @override
  State<iotItemDetails> createState() => _iotItemDetailsState();
}

class _iotItemDetailsState extends State<iotItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: EdgeInsetsDirectional.only(
          top: 20.0,
          start: 20.0,
          end: 20.0,
        ),
        child: const Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  'assets/images/TM One.png'), // Replace with your image path
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TM ONE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.access_time_filled_rounded,
                        color: Colors.grey, size: 20), // Replace with your icon
                    SizedBox(
                        width: 5), // Add some space between the icon and text
                    Text(
                      '12 Sept 2023',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsetsDirectional.only(
            start: 20.0, end: 20.0, top: 30.0, bottom: 10.0),
        alignment: AlignmentDirectional.topStart,
        child: const Column(children: [
          Text('Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              )),
        ]),
      ),
      Container(
        padding: const EdgeInsetsDirectional.only(
            start: 20.0, end: 20.0, bottom: 20.0),
        alignment: AlignmentDirectional.topStart,
        child: const Column(children: [
          Text(
              '- Soil Moisture Sensor \n- Temperature Sensor \n- Humidity Sensor \n- pH Sensor',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              )),
        ]),
      )
    ]);
  }
}
