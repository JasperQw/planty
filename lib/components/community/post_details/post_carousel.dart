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
      'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
      'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
      'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
      'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
      'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
      'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
      'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
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