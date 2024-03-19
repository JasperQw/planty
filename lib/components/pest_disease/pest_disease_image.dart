import 'package:flutter/material.dart';

class PestDiseaseImage extends StatefulWidget {
  final String imagePath;
  const PestDiseaseImage({required this.imagePath, super.key});

  @override
  State<PestDiseaseImage> createState() => _PestDiseaseImageState();
}

class _PestDiseaseImageState extends State<PestDiseaseImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 230, maxHeight: 300),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ]),
      child: Image.asset(
        widget.imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
