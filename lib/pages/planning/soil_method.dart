import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
//import 'package:planty/components/common/general_appbar.dart';
import 'package:planty/components/soil_preparation/general_button.dart';
import 'package:planty/components/soil_preparation/specific_button.dart';

class SoilMethod extends StatefulWidget {
  const SoilMethod({super.key});

  @override
  State<SoilMethod> createState() => _SoilMethodState();
}

class _SoilMethodState extends State<SoilMethod> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: AppBarWithShadow(
          title: "Soil Preparation Tutorial",
          withBackBtn: true,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            GeneralButton(),
            SizedBox(
              height: 50,
            ),
            SpecificButton(),
          ],
        ),
      )
    );
  }
}