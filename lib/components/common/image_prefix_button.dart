import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/utilities/color.dart';

class ImagePrefixButton extends StatefulWidget {
  final String image;
  final String title;
  final Color color;
  final double size;
  const ImagePrefixButton(
      {super.key,
      required this.image,
      required this.title,
      required this.color,
      required this.size});

  @override
  State<ImagePrefixButton> createState() => _ImagePrefixButtonState();
}

class _ImagePrefixButtonState extends State<ImagePrefixButton> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Image.asset(
            widget.image,
            width: widget.size,
            height: widget.size,
            color: widget.color,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 16,
              color: black,
            ),
          )
        ],
      ),
    );
  }
}
