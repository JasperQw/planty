import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/pages/planning/crop_prediction.dart';

class PredictionContainer extends StatelessWidget {
  const PredictionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CropPrediction(),
          ),
        );
      },
      child:Container(
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
                  "assets/images/graph.svg",
                  width: 30,
                  height:30),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                "Crop Prediction",
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
              "Empower your agricultural planning by utilizing our advanced crop yield prediction tool, allowing you to anticipate and strategize your harvests with precision and foresight.",
              style:TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              )
            ),
          ],
        )
      )
    );
  }
}