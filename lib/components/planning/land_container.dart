import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/planning/drone_button.dart';
import 'package:planty/components/planning/smartplot_button.dart';

class LandContainer extends StatelessWidget {
  const LandContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/land_management.svg",
                width: 30,
                height:30),
              const SizedBox(
                width: 12,
              ),
              const Text(
              "Land Management",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style:TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            )
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Expanded( // Use Expanded widget to make the button part responsive
                child: SmartplotButton(),
              ),
              SizedBox(width: 20),
              Expanded( // Use Expanded widget to make the button part responsive
                child: DroneButton(),
              ),
            ],
            ),
        ],
      )
    );
  }
}