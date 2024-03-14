import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class DownloadButton extends StatefulWidget {
  const DownloadButton({super.key});

  @override
  State<DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: green,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ]
      ),
      child: const Text(
        "Download",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black
        ),
      ),
    );
  }
}