import 'package:flutter/material.dart';
import 'package:planty/pages/monitoring/iot_pairing.dart';
import 'package:planty/pages/monitoring/plant_disease_detcetion.dart';
import 'package:planty/pages/monitoring/plant_pest_prediction.dart';
import 'package:planty/pages/monitoring/promotion_iot.dart';

class MonitorMain extends StatefulWidget {
  const MonitorMain({Key? key}) : super(key: key);

  @override
  _MonitorMainState createState() => _MonitorMainState();
}

class _MonitorMainState extends State<MonitorMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: CustomScrollView(
        slivers: [
          // Monitor main page header
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft:
                      Radius.circular(30.0), // set the bottom left radius
                  bottomRight:
                      Radius.circular(30.0), // set the bottom right radius
                ),
                child: Image.asset(
                  "assets/images/image 61.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Sliver item 1
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // changed to start
                    children: <Widget>[
                      Padding(
                        // added padding
                        padding:
                            const EdgeInsets.only(top: 40.0), // top margin 40
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/IOT Sensors Feedback.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                  const Text(
                                    'IOT Sensors Feedback',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/Agricultural Drone.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                  const Text(
                                    'Agricultural Drone Thermal Imaging',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/Irrigation System.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                  const Text(
                                    'Smart Irrigation System',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/Fertigation System.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                  const Text(
                                    'Smart Fertigation System',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30.0),

                      // Button 1
                      SizedBox(
                        height: 50.0, // set the height of the button
                        width: MediaQuery.of(context).size.width -
                            100, // set the width of the button
                        child: ElevatedButton.icon(
                          onPressed: () {
                            //Navigate to promotion_iot.dart
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PromotionIOT()),
                            );
                          },
                          label: const Text(
                            'No IOT yet? Grab It Now!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ), // set the text color to white
                          ),
                          icon: Image.asset(
                            "assets/images/no IOT.png",
                            width: 50,
                            height: 50,
                          ), // set the icon color to white
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.red,
                            ), // set the button color to red
                          ),
                        ),
                      ),

                      // Button 2
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20.0), // top margin 40
                        child: SizedBox(
                          height: 50.0, // set the height of the button
                          width: MediaQuery.of(context).size.width -
                              100, // set the width of the button
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Navigate to the other page here
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        iotPairing()), // Replace OtherPage() with the page you want to navigate to
                              );
                            },
                            label: const Text(
                              'Monitor your frarm with IOT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ), // set the text color to white
                            ),
                            icon: Image.asset(
                              "assets/images/got IOT.png",
                              width: 50,
                              height: 50,
                            ), // set the icon color to white
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green), // set the button color to red
                            ),
                          ),
                        ),
                      ),

                      // Bottom wording
                      const Spacer(), // Add this to push the next container to the bottom
                      Container(
                        height: 50.0, // set the height of the container
                        width: MediaQuery.of(context)
                            .size
                            .width, // set the width of the container
                        color: const Color.fromARGB(255, 234, 195,
                            94), // set the color of the container
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 2.0),
                                child: Image.asset(
                                  "assets/images/attention.png", // Replace 'your_icon.png' with your icon path
                                  width:
                                      24, // Adjust the width of the icon as needed
                                  height:
                                      24, // Adjust the height of the icon as needed
                                ),
                              ),
                              const Expanded(
                                child: Text(
                                  'Your Smart Irrigation System Requires Attention',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ), // set the text color to white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Sliver item 2
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Crop Health',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'From Leaves to Algorithms: Safeguarding Crops with AI',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const SizedBox(
                            height:
                                10), // add a space of 10 before the row of containers
                        Row(
                          children: <Widget>[
                            //Plant Pest Prediction Button
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your onTap functionality here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PlantPestPrediction()),
                                  );
                                },
                                child: Container(
                                  height:
                                      250, // set the height of the container
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFFE9FFD7), // set the color of the container
                                    borderRadius: BorderRadius.circular(
                                        10.0), // set the border radius of the container
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(
                                            0.5), // specify the shadow color
                                        spreadRadius:
                                            5, // extent of shadow spreading
                                        blurRadius: 7, // blur radius
                                        offset: const Offset(
                                            0, 3), // offset from the container
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    "assets/images/plant pest prediction.png",
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(
                              width: 20,
                            ), // add a space of 10 between the two containers

                            //Plant Disease Detection Button
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  // Add your onTap functionality here
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PlantDiseaseDetection()),
                                  );
                                },
                                child: Container(
                                  height:
                                      250, // set the height of the container
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFFD9EDFF), // set the color of the container
                                    borderRadius: BorderRadius.circular(
                                        10.0), // set the border radius of the container
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(
                                            0.5), // specify the shadow color
                                        spreadRadius:
                                            5, // extent of shadow spreading
                                        blurRadius: 7, // blur radius
                                        offset: const Offset(
                                            0, 3), // offset from the container
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    "assets/images/plant disease detction.png", // Replace 'your_image.png' with your image path // adjust the fit of the image within the container
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
