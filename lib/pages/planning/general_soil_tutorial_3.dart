import 'package:flutter/material.dart';

class general_soil_tutorial_3 extends StatelessWidget {
  const general_soil_tutorial_3({super.key});

  @override
  Widget build(BuildContext context) {
    String procedure_3 = "Clear out rocks & debris...",
        process_3 =
            "Sifting the materials to remove any large stones or debris";

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
                "3",
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
                    Text(procedure_3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(process_3,
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
              "images/clean_soil.png",
              width: 350,
              height: 350,
            )
          ],
        ),
      ),
    ));
  }
}
