import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/planning/disease_button.dart';
import 'package:planty/components/planning/pest_button.dart';

class PestContainer extends StatelessWidget {
  const PestContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/bug.svg",
                width: 30,
                height:30),
              const SizedBox(
                width: 12,
              ),
              const Text(
              "Plant Pest and Disease",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5,),
          const Text(
            "Discover how to spot and combat plant pests and diseases, safeguarding your garden's well-being.",
            style:TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            )
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child:PestButton(),
              ),
              SizedBox(width: 20),
              Expanded(
                child:DiseaseButton(),
              )
            ],
          ),
        ],
      )
    );
  }
}