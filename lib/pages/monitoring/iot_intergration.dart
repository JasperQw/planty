import 'package:flutter/material.dart';
import 'package:planty/components/monitoring/planted_plant.dart';

class iotIntergration extends StatelessWidget {
  const iotIntergration({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AREA 1 IOT MONITORING',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 249, 249, 249),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              //Planted Crops Notes
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Planted Crops',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 177, 177, 177),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 200,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const NotePlantedPlant(),
              ),
              //Spaces
              const SizedBox(height: 40),

              //IOT Devices
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'IOT Devices',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 177, 177, 177),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //IOT Sensors Feedback
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.cover, // or BoxFit.fill
                              child: Image.asset(
                                  "assets/images/IOT Sensors Feedback.png"),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'IOT Sensors Feedback',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 20), // Add some space between the containers

                  // Smart Irrigation System
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.cover, // or BoxFit.fill
                              child: Image.asset(
                                  "assets/images/Irrigation System.png"),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Smart Irrigation System',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Agricultural Drone Thermal Imaging
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.cover, // or BoxFit.fill
                              child: Image.asset(
                                  "assets/images/Agricultural Drone.png"),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Agricultural Drone Thermal Imaging',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 20), // Add some space between the containers

                  // Smart Fertigation System
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.cover, // or BoxFit.fill
                              child: Image.asset(
                                  "assets/images/Fertigation System.png"),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Smart Fertigation System',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
