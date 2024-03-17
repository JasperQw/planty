import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/planning/drone_image_new_project_button.dart';

class smart_plot_planner_project extends StatelessWidget {
  const smart_plot_planner_project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWithShadow(
            title: "Choose Project Type(s)",
            withBackBtn: true,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text(
                      "Continue with existing project",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(50, 20, 40, 20),
                        constraints: const BoxConstraints(
                            minWidth: 550,
                            maxWidth: 550,
                            minHeight: 250,
                            maxHeight: 250),
                        child: Card(
                            shadowColor: Colors.black,
                            elevation: 20,
                            surfaceTintColor: Colors.amber[50],
                            color: Colors.amber[50],
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(40)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset(
                                        "images/choose_project_icon.png"),
                                    const Text(
                                      "Choose Project",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    const Text(
                      "OR",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Start New Project",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(50, 20, 40, 20),
                        constraints: const BoxConstraints(
                            minWidth: 550,
                            maxWidth: 550,
                            minHeight: 250,
                            maxHeight: 250),
                        child: Card(
                            shadowColor: Colors.black,
                            elevation: 20,
                            surfaceTintColor: Colors.amber[50],
                            color: Colors.amber[50],
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(40)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset("images/new_project_icon.png"),
                                    const Text(
                                      "Choose Project",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                  ])),
        ));
  }
}
