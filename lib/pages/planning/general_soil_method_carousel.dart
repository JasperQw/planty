import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:planty/pages/planning/general_soil_tutorial_1.dart';
import 'package:planty/pages/planning/general_soil_tutorial_2.dart';
import 'package:planty/pages/planning/general_soil_tutorial_4.dart';
import 'package:planty/pages/planning/general_soil_tutorial_3.dart';
import 'package:planty/utilities/color.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/pages/planning/general_soil_tutorial_5.dart';

class general_soil_method_carousel extends StatefulWidget {
  const general_soil_method_carousel({super.key});

  @override
  State<general_soil_method_carousel> createState() =>
      _general_soil_method_carouselState();
}

class _general_soil_method_carouselState
    extends State<general_soil_method_carousel> {
  int currentIndex = 0;

  List<Widget> tutorialslide = [
    const general_soil_tutorial_1(),
    const general_soil_tutorial_2(),
    const general_soil_tutorial_3(),
    const general_soil_tutorial_4(),
    const general_soil_tutorial_5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: AppBarWithShadow(
          title: "General Method",
          withBackBtn: true,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height - 130,
              autoPlay: true,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: tutorialslide.map((i) {
              return Container(child: i);
            }).toList(),
          ),
          const SizedBox(
            height: 10,
          ),
          DotsIndicator(
            dotsCount: tutorialslide.length,
            position: currentIndex,
            decorator: const DotsDecorator(
              color: borderGrey, // Inactive color
              activeColor: green,
            ),
          )
        ],
      ),
    );
  }
}
