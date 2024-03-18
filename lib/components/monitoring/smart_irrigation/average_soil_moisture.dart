import 'package:flutter/material.dart';

class AverageSoilMoisture extends StatefulWidget {
  const AverageSoilMoisture({super.key});

  @override
  State<AverageSoilMoisture> createState() => _AverageSoilMoistureState();
}

class _AverageSoilMoistureState extends State<AverageSoilMoisture> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
          height: 240,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 15,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Average Soil Moisture",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey
                ),
              ),
              Center(
                child:Image.asset(
                  "assets/images/irrigation_chart.png",
                  width: 110,
                  height: 110,
                  //fit: BoxFit.fill,
                )
              )
            ]
      ),
    );
  }
}