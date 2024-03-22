import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int currentIndex = 0; // Add this line

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/carousel-iot-1.png',
      'assets/images/carousel-iot-2.jpg',
      'assets/images/carousel-iot-3.png',
    ];
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.width * 0.3,
            autoPlay: true,
            initialPage: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  clipBehavior: Clip.hardEdge,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    i,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 16,
        ),
        DotsIndicator(
          dotsCount: images.length,
          position: currentIndex.toInt(), // Convert to double
          decorator: const DotsDecorator(
            color: borderGrey, // Inactive color
            activeColor: green,
          ),
        )
      ],
    );
  }
}
