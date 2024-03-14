import 'package:flutter/material.dart';
import 'package:planty/pages/planning/soil_method.dart';
import 'package:planty/utilities/color.dart';

class SoilButton extends StatefulWidget {
  const SoilButton({super.key});

  @override
  State<SoilButton> createState() => _SoilButtonState();
}

class _SoilButtonState extends State<SoilButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SoilMethod(),
          ),
        );
      },
      child:Container(
        alignment: Alignment.center,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 0,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/soil.png",
                width: 46,
                height: 46,),
              SizedBox(
                width: 10,
              ),
              Text(
                "Soil Preparation Tutorial",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )
            ]
          ),
      )
    );
  }
} 