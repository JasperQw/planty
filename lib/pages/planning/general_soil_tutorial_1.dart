import 'package:flutter/material.dart';

class general_soil_tutorial_1 extends StatelessWidget {
  const general_soil_tutorial_1({super.key});

  @override
  Widget build(BuildContext context) {
    String procedure_1 = "Gather your \n tools & materials !",
        process_1 = "We will need";
    List<String> toolist = [
      "pruning shears",
      "hand towel",
      "bucket",
      "watering can",
      "spray plate",
      "hand rake",
      "strainer"
    ];

    return Scaffold(
        body: Center(
      child: Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromRGBO(122, 144, 106, 1),
              child: Text(
                "1",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              padding: const EdgeInsets.fromLTRB(18, 20, 20, 30),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.amber[50]),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(procedure_1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(process_1,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 7,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: toolist.map((step) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 90, right: 10, top: 12),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              width: 20 / 4,
                              height: 20 / 4,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(step,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19)),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/prepare_crop_tools.jpg",
              width: 250,
              height: 250,
            )
          ],
        ),
      ),
    ));
  }
}
