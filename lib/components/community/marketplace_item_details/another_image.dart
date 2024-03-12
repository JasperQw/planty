import 'package:flutter/material.dart';

class AnotherImage extends StatefulWidget {
  const AnotherImage({super.key});

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
        "https://media.istockphoto.com/id/157180820/photo/lawnmower-man.jpg?s=612x612&w=0&k=20&c=Ca9Y5S9YetkwFCjmIYpeooEiqZT8MjpA7oA_Hp6xWZk=",
        fit: BoxFit.cover,
      ),
    );
  }
}
