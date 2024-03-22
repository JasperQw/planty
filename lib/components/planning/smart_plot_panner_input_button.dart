import 'package:flutter/material.dart';
import 'package:planty/pages/planning/smart_plot_drafting.dart';

class smart_plot_panner_input_button extends StatelessWidget {
  const smart_plot_panner_input_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const smart_plot_drafting()));
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(230, 60),
          backgroundColor: Colors.green,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        child: const Text(
          "Start drafting ! ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ));
  }
}
