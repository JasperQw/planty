import 'package:flutter/material.dart';
import 'package:planty/pages/monitoring/iot_intergration.dart';

// ignore: camel_case_types
class iotPairing extends StatelessWidget {
  const iotPairing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LAND SEGMENTATION FOR IOT',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Available text header
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Start by adding new segment.',
              textAlign: TextAlign.center, // Set text alignment to center
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 141, 140, 140),
              ),
            ),
          ),

          // Current available segmentation
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(7, (index) {
                // Add new segmentation
                if (index == 6) {
                  return Container(
                    margin: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 226, 224),
                      borderRadius:
                          BorderRadius.circular(10.0), // Add curved corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey
                              .withOpacity(0.5), // Set shadow color and opacity
                          spreadRadius:
                              5, // Set how far the shadow should spread
                          blurRadius: 7, // Set the blur radius
                          offset: const Offset(0, 3), // Set the shadow offset
                        ),
                      ],
                    ),
                    height: 50,
                    width: 50,
                    child: Stack(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.all(
                                2.0), // Add margin around the text
                            child: Text(
                              'Add New Segmentation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: IconButton(
                            onPressed: () {
                              // Add your onPressed functionality here
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        ),
                      ],
                    ), // This was missing
                  ); // Add this closing parenthesis
                }
                // Other segmentations
                else {
                  return GestureDetector(
                    onTap: () {
                      // Add your navigation logic here
                      // For example:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const iotIntergration()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 206, 242, 183),
                        borderRadius:
                            BorderRadius.circular(10.0), // Add curved corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(
                                0.5), // Set shadow color and opacity
                            spreadRadius:
                                5, // Set how far the shadow should spread
                            blurRadius: 7, // Set the blur radius
                            offset: const Offset(0, 3), // Set the shadow offset
                          ),
                        ],
                      ),
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Text(
                          'Area ${index + 1}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  );
                }
              }),
            ),
          ),
        ],
      ),
    );
  }
}
