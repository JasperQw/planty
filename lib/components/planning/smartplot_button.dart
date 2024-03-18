import 'package:flutter/material.dart';
import 'package:planty/pages/planning/drone_image_plotter_intro.dart';
import 'package:planty/pages/planning/smart_plot_planner_intro.dart';
import 'package:planty/utilities/color.dart';

class SmartplotButton extends StatefulWidget {
  const SmartplotButton({Key? key});

  @override
  State<SmartplotButton> createState() => _SmartplotButtonState();
}

class _SmartplotButtonState extends State<SmartplotButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const smart_plot_planner_intro()));
        },
        child: Container(
          height: 200,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: replyColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/smart_plot.png",
                width: 90,
                height: 100,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "SmartPlot Planner",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
