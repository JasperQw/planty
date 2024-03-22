import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/crop_prediction/value_input.dart';
import 'package:planty/components/planning/smart_plot_panner_input_button.dart';

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
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/land_management.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.45)),
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 30, 82, 34),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      constraints: const BoxConstraints(
                          minWidth: 300,
                          maxWidth: double.infinity,
                          minHeight: 220,
                          maxHeight: 220),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          const Flexible(
                            child: Text(
                              "We need to know more from you !",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Image.asset("images/hello_tikus.png")])
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 0, 15, 30),
                      padding: const EdgeInsets.only(top: 30, bottom: 30),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.85),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      child: Column(
                        children: [
                          ValueInput(
                            inputHint: "Total canva length (ft) ",
                            inputTitle:
                                "Fill in your overall canva length size :",
                          ),
                          ValueInput(
                            inputHint: "Total canva width (ft) ",
                            inputTitle:
                                "Fill in your overall canva width size :",
                          ),
                          ValueInput(
                            inputHint:
                                "How large per canva box is required  (ft sq) ",
                            inputTitle:
                                "Fill in your desired area size per box in canva :",
                          ),
                          ValueInput(
                            inputHint: "Canva color",
                            inputTitle: "Canva background color :",
                          )
                        ],
                      ),
                    ),
                    smart_plot_panner_input_button(),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
