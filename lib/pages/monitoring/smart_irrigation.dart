import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/monitoring/smart_irrigation/average_soil_moisture.dart';
import 'package:planty/components/monitoring/smart_irrigation/daily_water_consumption.dart';
import 'package:planty/components/monitoring/smart_irrigation/irrigation_schedule.dart';
import 'package:planty/components/monitoring/smart_irrigation/irrigation_task.dart';
import 'package:planty/components/monitoring/smart_irrigation/soil_moisture.dart';

class SmartIrrigation extends StatefulWidget {
  const SmartIrrigation({super.key});

  @override
  State<SmartIrrigation> createState() => _SmartIrrigationState();
}

class _SmartIrrigationState extends State<SmartIrrigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBarWithShadow(
              title: "Smart Irrigation System",
              withBackBtn: true,
            )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const SoilMoisture(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(width: 20),
                  Expanded(child:AverageSoilMoisture()),
                  SizedBox(width: 20),
                  Expanded(child:DailyWaterConsumption()),
                  SizedBox(width: 20),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const IrrigationSchedule(),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20
                ), // Adjust the margin values as needed
                child: Image.asset(
                  "assets/images/irrigation_graph.png",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const IrrigationTask(),
              const SizedBox(
                height: 20,
              ),
            ],
          )
          
        ),
      );
  }
}