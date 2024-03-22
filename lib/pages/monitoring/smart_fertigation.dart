import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/monitoring/smart_irrigation_fertigation/average_soil_moisture.dart';
import 'package:planty/components/monitoring/smart_irrigation_fertigation/average_soil_ph.dart';
import 'package:planty/components/monitoring/smart_irrigation_fertigation/fertigation_schedule.dart';
import 'package:planty/components/monitoring/smart_irrigation_fertigation/fertigation_task.dart';
import 'package:planty/components/monitoring/smart_irrigation_fertigation/soil_nutrients_content.dart';
import 'package:planty/utilities/color.dart';

class SmartFertigation extends StatefulWidget {
  const SmartFertigation({super.key});

  @override
  State<SmartFertigation> createState() => _SmartFertigationState();
}

class _SmartFertigationState extends State<SmartFertigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWithShadow(
            title: "Smart Fertigation System",
            withBackBtn: true,
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: peach,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/alert.svg",
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Heavy rain at 5.00 pm",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Text(
                        "Reschedule your fertigation at the evening",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(width: 20),
                Expanded(child: AverageSoilMoisture()),
                SizedBox(width: 20),
                Expanded(child: AverageSoilPH()),
                SizedBox(width: 20),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SoilNutrients(),
            const SizedBox(
              height: 20,
            ),
            const FertigationSchedule(),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 20), // Adjust the margin values as needed
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
            const FertigationTask(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
