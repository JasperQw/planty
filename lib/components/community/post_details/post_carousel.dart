import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class PostCarousel extends StatefulWidget {
  const PostCarousel({super.key});

  @override
  State<PostCarousel> createState() => _PostCarouselState();
}

class _PostCarouselState extends State<PostCarousel> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://minnetonkaorchards.com/wp-content/uploads/2022/02/Artificial-Rainbow-Roses-160841562.jpg',
      'https://m.media-amazon.com/images/I/61Rhqbks5kL.jpg',
    ];
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            height: MediaQuery.of(context).size.width * 0.8,
            autoPlay: false,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Image.network(
                  i,
                  fit: BoxFit.cover,
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 15,
        ),
        DotsIndicator(
          dotsCount: images.length,
          position: currentIndex,
          decorator: const DotsDecorator(
            color: borderGrey, // Inactive color
            activeColor: red,
          ),
        )
      ],
    );
  }
}
