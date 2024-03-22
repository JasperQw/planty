import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/planning/drone_image_new_project_button.dart';
import 'package:planty/pages/planning/drone_image_plotter_drawing_canva_2.dart';

class drone_image_plotter_new_project extends StatelessWidget {
  const drone_image_plotter_new_project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWithShadow(
            title: "New Project",
            withBackBtn: true,
          ),
        ),
        body: SafeArea(
          top: true,
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const drone_image_plotter_drawing_canva_2()));
            },
            child: Container(
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Start New Project",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                      ),
                      Container(
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
                                    Image.asset("images/upload_image.png"),
                                    const Text(
                                      "Choose Image(s)",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )
                                  ],
                                ))),
                      ),
                      const drone_image_new_project_button()
                    ])),
          ),
        ));
  }
}
