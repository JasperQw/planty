import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/planning/drone_image_intro_button.dart';

class drone_image_plotter_intro extends StatelessWidget {
  const drone_image_plotter_intro({super.key});

  @override
  Widget build(BuildContext context) {
    const String introduction1 =
        "Historically, farmers struggled with crop segmentation due to reliance on manual methods such as paper planning and oral discussions. Lacking advanced technology, they faced inefficiencies and inaccuracies, leading to increased risk of crop failure, pest infestations, and soil degradation, hindering optimal yield management.";
    const String introduction2 = "Now, we are advancing! You just need to...",
        introduction3 =
            "1. Upload your full size drone taken \n    land picture in jpg or png format.",
        introduction4 = "2. Start drafting.",
        introduction5 = "3. Save and share it to your collaborator.";
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarWithShadow(
          title: "Agricultural Drone Image Plotter",
          withBackBtn: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              constraints: const BoxConstraints(
                  minWidth: 500,
                  maxWidth: double.infinity,
                  minHeight: 270,
                  maxHeight: 270),
              child: Image.asset(
                "images/drone_image_plotter.png",
                fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset("images/info.svg"),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "How does it work",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              constraints: const BoxConstraints(
                  minWidth: 450, maxWidth: 450, maxHeight: double.infinity),
              child: Card(
                shadowColor: Colors.black,
                elevation: 10,
                surfaceTintColor: Colors.amber[50],
                color: Colors.amber[50],
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              introduction1,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(introduction2,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                ]),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(25, 0, 35, 0),
                              child: Text(
                                introduction3,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(25, 0, 15, 0),
                              child: Text(
                                introduction4,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(25, 0, 15, 0),
                              child: Text(
                                introduction5,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ])),
                ),
              ),
            ),
            Drone_image_plotter_button(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
