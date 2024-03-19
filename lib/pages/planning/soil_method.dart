import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
//import 'package:planty/components/common/general_appbar.dart';
import 'package:planty/components/soil_preparation/general_button.dart';
import 'package:planty/components/soil_preparation/specific_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SoilMethod extends StatefulWidget {
  const SoilMethod({super.key});

  @override
  State<SoilMethod> createState() => _SoilMethodState();
}

class _SoilMethodState extends State<SoilMethod> {
  final String description =
      "This method of preparing seeding medium has been widely adopted for its balanced composition.\n\n" +
          "Loam soil offers good drainage and aeration, while organic matter enriches the soil with nutrients crucial for seedling development.\n\n" +
          "Addition of river sand helps improve soil structure & prevent compaction, promoting healthy growth.";

  BorderRadiusGeometry radius = const BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(
            80,
          ),
          child: AppBarWithShadow(
            title: "Soil Preparation Tutorial",
            withBackBtn: true,
          ),
        ),
        body: Stack(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 100),
            child: const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GeneralButton(),
                  SizedBox(
                    height: 50,
                  ),
                  SpecificButton(),
                ],
              ),
            ),
          ),
          SlidingUpPanel(
            collapsed: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: radius,
              ),
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset("images/info.svg"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "What is it ？",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ]),
              ),
            ),
            panel: Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: radius,
              ),
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("images/big_question_mark.png"),
                      const Text("John Innes method",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24)),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.amber[50],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          clipBehavior: Clip.hardEdge,
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Flexible(
                              child: Text(
                            description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ))),
                    ],
                  ),
                ),
              ),
            ),
            backdropEnabled: true,
            backdropOpacity: 0.6,
            backdropColor: Colors.grey,
            borderRadius: radius,
          ),
        ]));
  }
}
