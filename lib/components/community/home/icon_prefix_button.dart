import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class IconPrefixButton extends StatefulWidget {
  final IconData icon;
  final String title;
  final Color color;
  final double size;
  const IconPrefixButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.color,
      required this.size});

  @override
  State<IconPrefixButton> createState() => _IconPrefixButtonState();
}

class _IconPrefixButtonState extends State<IconPrefixButton> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: widget.size,
            color: widget.color,
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
