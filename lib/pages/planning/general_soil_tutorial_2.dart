import 'package:flutter/material.dart';

class general_soil_tutorial_2 extends StatelessWidget {
  const general_soil_tutorial_2({super.key});

  @override
  Widget build(BuildContext context) {
    String procedure_2 = "Prepare your ingredients ! ",
        process_2 =
            "Prepare up to 2 parts loam soil, 1 part organic matter, and 1 part river sand";

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
                "2",
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(procedure_2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(process_2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/mix_up_party.png",
              width: 350,
              height: 350,
            )
          ],
        ),
      ),
    ));
  }
}
