import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/utilities/color.dart';

class FertigationPairing extends StatefulWidget {
  const FertigationPairing({super.key});

  @override
  State<FertigationPairing> createState() => _FertigationPairingState();
}

class _FertigationPairingState extends State<FertigationPairing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBarWithShadow(
              title: "Smart Fertigation System",
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
            height: 150 ,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FertigationPairing()),
                );
              },
              child: const Text(
                "Pair your Smart Fertigation System here",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
              ),
            )
          )
        ]
      )    
    );    
  }
}