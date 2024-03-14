import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class DroneButton extends StatefulWidget {
  const DroneButton({super.key});

  @override
  State<DroneButton> createState() => _DroneButtonState();
}

class _DroneButtonState extends State<DroneButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        width: 150,
        margin: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            color: replyColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                offset: Offset(0, 4),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/drone_image_plotter.png",
            width: 115,
            height: 100,
            fit: BoxFit.fill,),
            SizedBox(
              height: 10,
            ),
            Text(
              "Agriculture Drone Image Plotter",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        )
    );
  }
}