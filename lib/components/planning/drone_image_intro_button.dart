import 'package:flutter/material.dart';
import 'package:planty/pages/planning/drone_image_plotter_new_project.dart';

class Drone_image_plotter_button extends StatelessWidget {
  const Drone_image_plotter_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const drone_image_plotter_new_project()));
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(230, 60),
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: const Text(
          "Bring me there! ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ));
  }
}
