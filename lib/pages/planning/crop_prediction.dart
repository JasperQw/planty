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
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: AppBarWithShadow(
          title: "Let's predict your crop yield...",
          withBackBtn: true,
        ),
      ),
      body: SingleChildScrollView(
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
    );
  }
}