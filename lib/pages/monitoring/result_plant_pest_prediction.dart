import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/monitoring/plant_pest_prediction/icon_button.dart';
import 'package:planty/components/monitoring/plant_pest_prediction/result_img_pest.dart';
import 'package:planty/components/monitoring/plant_pest_prediction/result_pest.dart';

class ResultPlantPestPrediction extends StatelessWidget {
  const ResultPlantPestPrediction({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Plant Pest Prediction
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWithShadow(
            title: "Plant Pest Prediction",
            withBackBtn: true,
          )),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 50,
                height: 350,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 238, 231),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Center(
                  child:
                      ResultImgPest(), // Ensure PlantDisease widget is defined in your code
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width - 50,
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child:
                        iconButton(), // Ensure iconButton widget is defined in your code
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 650,
                width: MediaQuery.of(context).size.width - 50,
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child:
                        ResultPest(), // Ensure iconButton widget is defined in your code
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
