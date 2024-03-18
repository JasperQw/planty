import 'package:flutter/material.dart';
import 'package:planty/pages/planning/prediction_result.dart';
import 'package:planty/utilities/color.dart';

class PredictionButton extends StatefulWidget {
  const PredictionButton({super.key});

  @override
  State<PredictionButton> createState() => _PredictionButtonState();
}

class _PredictionButtonState extends State<PredictionButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context)=> const PredictionResult()
          )
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
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: green,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ]
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Predict",
            style: TextStyle(
            fontSize:18,
            fontWeight: FontWeight.w600,
            color: Colors.black)
          ),
        ],
      ),
      )
    );
  }
}