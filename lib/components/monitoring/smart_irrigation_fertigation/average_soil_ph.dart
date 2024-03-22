import 'package:flutter/material.dart';

class AverageSoilPH extends StatefulWidget {
  const AverageSoilPH({super.key});

  @override
  State<AverageSoilPH> createState() => _AverageSoilPHState();
}

class _AverageSoilPHState extends State<AverageSoilPH> {
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
                "Average Soil pH",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child:Text(
                  "7.6 pH",
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