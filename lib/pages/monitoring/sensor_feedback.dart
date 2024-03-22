import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/monitoring/daily_crop_health_score.dart';

class SensorFeedback extends StatelessWidget {
  const SensorFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //IOT Sensor Feedback
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWithShadow(
            title: "IOT Sensor Feedback",
            withBackBtn: true,
          )),
      body: Container(
        color: const Color.fromARGB(255, 249, 249, 249),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //Daily Crop Health Score
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 249, 249, 249),
                  ),
                  height: 350,
                  width: MediaQuery.of(context).size.width -
                      20, // Set the height of the graph
                  child: Image.asset(
                    'assets/images/daily_crop_health_score.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //IOT Parameters
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'IOT Parameters',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ), // Add the IOT parameters

                const SizedBox(
                  height: 40,
                ),

                //Pair Your IoT Devices Here
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F7),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Pair Your IoT Devices Here',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //Air Humidity
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 249, 249, 249),
                  ),
                  height: 350,
                  width: MediaQuery.of(context).size.width -
                      20, // Set the height of the graph
                  child: Image.asset(
                    'assets/images/air_humidity1.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //Soil salinity
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 249, 249, 249),
                  ),
                  height: 350,
                  width: MediaQuery.of(context).size.width -
                      20, // Set the height of the graph
                  child: Image.asset(
                    'assets/images/soil_salinity1.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //Soil pH
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 249, 249, 249),
                  ),
                  height: 350,
                  width: MediaQuery.of(context).size.width -
                      20, // Set the height of the graph
                  child: Image.asset(
                    'assets/images/soil_pH1.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //soil moisture
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 249, 249, 249),
                  ),
                  height: 350,
                  width: MediaQuery.of(context).size.width -
                      20, // Set the height of the graph
                  child: Image.asset(
                    'assets/images/soil_moisture1.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //Temperature
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 249, 249, 249),
                  ),
                  height: 350,
                  width: MediaQuery.of(context).size.width -
                      20, // Set the height of the graph
                  child: Image.asset(
                    'assets/images/temperature.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
