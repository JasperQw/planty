import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class HomePageCarousel extends StatefulWidget {
  const HomePageCarousel({super.key});

  @override
  State<HomePageCarousel> createState() => _HomePageCarouselState();
}

class _HomePageCarouselState extends State<HomePageCarousel> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/banner-start.png',
      'assets/images/banner-middle.png',
      'assets/images/banner-end.png',
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
          position: currentIndex,
          decorator: const DotsDecorator(
            color: borderGrey, // Inactive color
            activeColor: green,
          ),
        )
      ],
    );
  }
}
