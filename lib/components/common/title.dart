import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class TitleWidget extends StatefulWidget {
  final String title;
  final double fontSize;
  const TitleWidget({super.key, required this.title, required this.fontSize});

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        widget.title,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: widget.fontSize,
          fontWeight: FontWeight.w600,
          color: black,
        ),
      ),
    );
  }
}
