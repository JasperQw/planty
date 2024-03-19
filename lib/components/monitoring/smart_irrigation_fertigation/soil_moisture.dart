import 'package:flutter/material.dart';

class SoilMoisture extends StatefulWidget {
  const SoilMoisture({super.key});

  @override
  State<SoilMoisture> createState() => _SoilMoistureState();
}

class _SoilMoistureState extends State<SoilMoisture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 330,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Live Soil Moisture",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Image.asset(
              "assets/images/smart_irrigation_img.png",
              width: double.infinity,
              height: 250,
              fit:BoxFit.fill
            ),
          ),
        ],
      )
    );
  }
}