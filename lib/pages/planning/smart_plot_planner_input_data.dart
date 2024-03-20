import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';

class smart_plot_planner_input_data extends StatefulWidget {
  const smart_plot_planner_input_data({super.key});

  @override
  State<smart_plot_planner_input_data> createState() =>
      _smart_plot_planner_input_dataState();
}

class _smart_plot_planner_input_dataState
    extends State<smart_plot_planner_input_data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(
            80,
          ),
          child: AppBarWithShadow(
            title: "SmartPlot Planner",
            withBackBtn: true,
          ),
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/land_management.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
              child: Column(
                children: [Container(
                  
                )],
              ),)
        ]));
  }
}
