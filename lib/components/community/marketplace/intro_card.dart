import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class IntroductionCard extends StatefulWidget {
  final String title;
  final String image;
  const IntroductionCard({super.key, required this.title, required this.image});

  @override
  State<IntroductionCard> createState() => _IntroductionCardState();
}

class _IntroductionCardState extends State<IntroductionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 32,
      ),
      decoration: const BoxDecoration(
        color: darkGreen,
        borderRadius: BorderRadius.all(
          Radius.circular(
            15,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
            ),
            child: Image.asset(
              widget.image,
              height: 139,
              width: 139,
            ),
          )
        ],
      ),
    );
  }
}
