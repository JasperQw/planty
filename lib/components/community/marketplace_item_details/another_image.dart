import 'package:flutter/material.dart';

class AnotherImage extends StatefulWidget {
  final String image;
  const AnotherImage({super.key, required this.image});

  @override
  State<AnotherImage> createState() => _AnotherImageState();
}

class _AnotherImageState extends State<AnotherImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.width * 0.25,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Image.network(
        widget.image,
        fit: BoxFit.cover,
      ),
    );
  }
}
