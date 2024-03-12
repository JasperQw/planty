import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/utilities/color.dart';

class SvgPrefixButton extends StatefulWidget {
  final String image;
  final String title;
  final Color color;
  final double size;
  const SvgPrefixButton(
      {super.key,
      required this.image,
      required this.title,
      required this.color,
      required this.size});

  @override
  State<SvgPrefixButton> createState() => _SvgPrefixButtonState();
}

class _SvgPrefixButtonState extends State<SvgPrefixButton> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          SvgPicture.asset(
            widget.image,
            width: widget.size,
            height: widget.size,
            colorFilter: ColorFilter.mode(
              widget.color,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(
            width: 8,
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
