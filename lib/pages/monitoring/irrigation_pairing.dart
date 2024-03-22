import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/pages/monitoring/smart_irrigation.dart';
import 'package:planty/utilities/color.dart';

class IrrigationPairing extends StatefulWidget {
  const IrrigationPairing({super.key});

  @override
  State<IrrigationPairing> createState() => _IrrigationPairingState();
}

class _IrrigationPairingState extends State<IrrigationPairing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBarWithShadow(
              title: "Smart Irrigation System",
              withBackBtn: true,
            )),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: double.infinity,
                  height: 150,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    color: borderGrey,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SmartIrrigation(),
                        ),
                      );
                    },
                    child: const Text(
                      "Pair your Smart Irrigation System here",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ))
            ]));
  }
}
