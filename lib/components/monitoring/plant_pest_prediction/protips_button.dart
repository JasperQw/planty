import 'package:flutter/material.dart';
import 'package:planty/components/monitoring/plant_disease_detection/pro_tips_plant_disease1.dart';
import 'package:planty/components/monitoring/plant_pest_prediction/pro_tips_plant_pest1.dart';

class ProTipsButton extends StatefulWidget {
  const ProTipsButton({Key? key}) : super(key: key);

  @override
  State<ProTipsButton> createState() => _ProTipsButtonState();
}

class _ProTipsButtonState extends State<ProTipsButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const PlantPestProTips();
                },
              );
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.lightbulb_outline,
                  size: 25,
                  color: Colors.white,
                ),
                SizedBox(
                    width:
                        10), // Add a small space between the icon and the text
                Text(
                  'Pro Tips',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
