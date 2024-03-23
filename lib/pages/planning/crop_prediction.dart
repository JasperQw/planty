import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/crop_prediction/prediction_button.dart';
import 'package:planty/components/crop_prediction/value_input.dart';

class CropPrediction extends StatefulWidget {
  const CropPrediction({super.key});

  @override
  State<CropPrediction> createState() => _CropPredictionState();
}

class _CropPredictionState extends State<CropPrediction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: AppBarWithShadow(
          title: "Crop Yield Prediction",
          withBackBtn: true,
        ),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/prediction_background.png"),
                  fit: BoxFit.fill)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(top: 15),
                constraints: BoxConstraints(maxWidth: 70, maxHeight: 70),
                child: Image.asset(
                  "images/prediction_header-removebg-preview.png",
                  fit: BoxFit.scaleDown,
                )),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.fromLTRB(35, 110, 35, 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                ValueInput(
                    inputTitle: "Land size (in sq ft)",
                    inputHint: "Fill in the land size..."),
                ValueInput(
                    inputTitle: "Average ratio of Nitrogen content",
                    inputHint: "Fill in the nitrogen ratio..."),
                ValueInput(
                    inputTitle: "Average temperature (in °C)",
                    inputHint: "Fill in the average temperature..."),
                ValueInput(
                    inputTitle: "Average pH value of soil",
                    inputHint: "Fill in the average soil pH value..."),
                ValueInput(
                    inputTitle: "Average rainfall (in mm)",
                    inputHint: "Fill in the average rainfall ..."),
                ValueInput(
                    inputTitle: "Light intensity (in lumens per square)",
                    inputHint: "Fill in the light intensity..."),
                ValueInput(
                    inputTitle: "Average hudmidity (in g.kg-1)",
                    inputHint: "Fill in the average humidity..."),
                ValueInput(
                    inputTitle: "Ratio of Phosphorus Content",
                    inputHint: "Fill in the phosphorus ratio..."),
                ValueInput(
                    inputTitle: "Ratio of Potassium Content",
                    inputHint: "Fill in the potassium ratio..."),
                SizedBox(
                  height: 20,
                ),
                PredictionButton(),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
