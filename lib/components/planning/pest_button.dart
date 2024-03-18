import 'package:flutter/material.dart';
import 'package:planty/pages/planning/pest_info.dart';
import 'package:planty/utilities/color.dart';

class PestButton extends StatefulWidget {
  const PestButton({super.key});

  @override
  State<PestButton> createState() => _PestButtonState();
}

class _PestButtonState extends State<PestButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const PestInfo(),
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
              Image.asset("assets/images/plant_pest.png",
              width: 90,
              height: 90,),
              const SizedBox(
                height: 10,
              ),
              const Text("Plant Pest",
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