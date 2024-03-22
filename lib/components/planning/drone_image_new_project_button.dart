import 'package:flutter/material.dart';
import 'package:planty/pages/planning/drone_image_plotter_drawing_canva_2.dart';

class drone_image_new_project_button extends StatelessWidget {
  const drone_image_new_project_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  const drone_image_plotter_drawing_canva_2()));
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(230, 60),
          backgroundColor: Colors.green,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: const Text(
          "Start drafting! ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ));
  }
}
