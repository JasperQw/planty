import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/crop_prediction/download_button.dart';

class PredictionResult extends StatefulWidget {
  const PredictionResult({super.key});

  @override
  State<PredictionResult> createState() => _PredictionResultState();
}

class _PredictionResultState extends State<PredictionResult> {
  @override
  Widget build(BuildContext context) {
    // mock data

    String landSize = "1000"; // in sq ft
    double landSizeInHectare =
        double.parse(landSize) / 10000; // Convert sq ft to hectares

    String nitrogenRatio = "0.05"; // average ratio of Nitrogen content
    double nitrogenRatioValue = double.parse(nitrogenRatio);

    String averageTemperature = "25"; // in °C

    String averageSoilPh = "6.5"; // average pH value of soil

    String averageRainfall = "500"; // in mm

    String lightIntensity = "5000"; // in lumens per square

    String averageHumidity = "20"; // in g.kg-1

    String phosphorusRatio = "0.02"; // ratio of Phosphorus Content
    double phosphorusRatioValue = double.parse(phosphorusRatio);

    String potassiumRatio = "0.015"; // ratio of Potassium Content
    double potassiumRatioValue = double.parse(potassiumRatio);

    // Calculating hypothetical yield result (just for demonstration purposes)
    double yieldResult = (nitrogenRatioValue * 100) +
        (phosphorusRatioValue * 200) +
        (potassiumRatioValue * 150);
    yieldResult *= landSizeInHectare; // Convert to yield per hectare

    String yieldResultString = yieldResult.toStringAsFixed(
        2); // Format the yield result to 2 decimal places and convert to string

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarWithShadow(
          title: "Crop Yield Prediction Result",
          withBackBtn: true,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/prediction_result_background.jpg'), // Replace 'assets/background_image.jpg' with your image path
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3),
                BlendMode.dstATop), // Adjust opacity here
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(40, 35, 40, 50),
                    padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                    constraints:
                        const BoxConstraints(minWidth: 400, minHeight: 550),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Land Size :" + landSize),
                        Text("Average ratio of Nitrogen Content :" +
                            nitrogenRatio),
                        Text("Average temperature (in °C) :" +
                            averageTemperature),
                        Text("Average pH value of soil : " + averageSoilPh),
                        Text("Average rainfall (in mm) :" + averageRainfall),
                        Text("Light intensity (in lumens per square) :" +
                            lightIntensity),
                        Text("Average hudmidity (in g.kg-1) :" +
                            averageHumidity),
                        Text("Ratio of Phosphorus Content :" + phosphorusRatio),
                        Text("Ratio of Potassium Content :" + potassiumRatio),
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(children: [
                            Text(
                              "Approximate Yield Result :",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 5),
                            Text(
                              yieldResultString + " (kg/ha) ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]),
                        )
                      ],
                    )),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    Text(
                      "Generative advices :",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "To increase yield results, focus on optimizing nutrient ratios and soil pH levels for enhanced plant growth.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                const DownloadButton(),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
