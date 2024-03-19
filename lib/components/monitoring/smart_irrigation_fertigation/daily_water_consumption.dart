import 'package:flutter/material.dart';

class DailyWaterConsumption extends StatefulWidget {
  const DailyWaterConsumption({super.key});

  @override
  State<DailyWaterConsumption> createState() => _DailyWaterConsumptionState();
}

class _DailyWaterConsumptionState extends State<DailyWaterConsumption> {
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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Daily Water Consumption",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child:Text(
                  "100 L",
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.black
                  ),
                )
              )
            ]
      ),
    );
  }
}