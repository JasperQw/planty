import 'package:flutter/material.dart';
import 'package:planty/pages/planning/smart_plot_planner_project.dart';

class smart_plot_planner_intro_button extends StatelessWidget {
  const smart_plot_planner_intro_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const smart_plot_planner_project()));
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(230, 60),
          backgroundColor: Colors.green,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: const Text(
          "Let's Proceed ! ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ));
  }
}
