import 'package:flutter/material.dart';
import 'package:planty/components/monitoring/plant_pest_prediction/protips_button.dart';
import 'package:planty/components/monitoring/plant_pest_prediction/icon_button.dart';
import 'package:planty/components/monitoring/plant_pest_prediction/plant_pest.dart';

class PlantPestPrediction extends StatelessWidget {
  const PlantPestPrediction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PLANT PEST PREDICTION',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
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
                      PlantPest(), // Ensure PlantDisease widget is defined in your code
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
              const SizedBox(height: 20),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width - 50,
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child:
                        ProTipsButton(), // Ensure iconButton widget is defined in your code
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
