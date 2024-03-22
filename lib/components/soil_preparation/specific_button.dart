import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';
import 'package:planty/pages/planning/specific_soil_method.dart';

class SpecificButton extends StatefulWidget {
  const SpecificButton({super.key});

  @override
  State<SpecificButton> createState() => _SpecificButtonState();
}

class _SpecificButtonState extends State<SpecificButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const specific_soil_method()));
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
              "assets/images/specific_plant_method.png",
              width: 230,
              height: 150,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Finding for\nspecific plants?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
