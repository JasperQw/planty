import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultDisease extends StatefulWidget {
  const ResultDisease({Key? key}) : super(key: key);

  @override
  _ResultDiseaseState createState() => _ResultDiseaseState();
}

class _ResultDiseaseState extends State<ResultDisease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width - 50,
        height: 650,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(6, 1, 129, 20),
              Color.fromARGB(255, 242, 240, 109),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color.fromARGB(255, 179, 247, 186),
            width: 3,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'TOMATO LEAF MOLD',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Opacity(
                  opacity: 0.65,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(10), // Add border radius here
                    ),
                    height: 80,
                    width: MediaQuery.of(context).size.width - 50,
                    child: const Center(
                      child: Text(
                        'Confidence: 85.37%',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Treatment',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: Text(
                  'Method 1:\nLet the plants air out or expose to dry air conditions.\n\nMethod 2: \nConsider using fungicide sprays such as calcium chloride sprays, which can effectively combat fungi while minimizing environmental impact. Ensure thorough coverage, paying special attention to the underside of leaves where fungi often thrive.',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
