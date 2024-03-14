import 'package:flutter/material.dart';
import 'package:planty/pages/planning/plant_disease_info.dart';
import 'package:planty/utilities/color.dart';

class DiseaseButton extends StatefulWidget {
  const DiseaseButton({super.key});

  @override
  State<DiseaseButton> createState() => _DiseaseButtonState();
}

class _DiseaseButtonState extends State<DiseaseButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PlantDiseaseInfo(),
          ),
        );
      },
      child:Container(
        alignment: Alignment.center,
          width: 150,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/plant_disease.png",
              width: 90,
              height: 90,),
              const SizedBox(
                height: 10,
              ),
              const Text("Plant Disease",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          )
        )
    );
  }
}