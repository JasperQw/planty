import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';
import 'package:planty/pages/planning/general_soil_method_carousel.dart';

class GeneralButton extends StatefulWidget {
  const GeneralButton({super.key});

  @override
  State<GeneralButton> createState() => _GeneralButtonState();
}

class _GeneralButtonState extends State<GeneralButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const general_soil_method_carousel()));
      },
      child: Container(
        alignment: Alignment.center,
        width: 250,
        margin: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 15,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/general_soil_method.png",
              width: 230,
              height: 170,
              fit: BoxFit.fill,
            ),
            const Text(
              "General Method",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
