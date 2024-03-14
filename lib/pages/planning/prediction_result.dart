import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/crop_prediction/download_button.dart';

class PredictionResult extends StatefulWidget {
  const PredictionResult({super.key});

  @override
  State<PredictionResult> createState() => _PredictionResultState();
}

class _PredictionResultState extends State<PredictionResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80), 
        child: AppBarWithShadow(
          title: "Crop Yield Prediction Result",
          withBackBtn: true,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/result.png",
            width: 300,
            height: 580
          ),
          const SizedBox(
            height: 10,
          ),
          const DownloadButton(),
        ],
      ),
    );
  }
}