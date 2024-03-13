import 'package:flutter/material.dart';

class KnowledgeImage extends StatefulWidget {
  final String imagePath;
  final String plantName;
  //final Widget community;
  const KnowledgeImage(
      {super.key,
      required this.imagePath,
      required this.plantName});
      //required this.community});

  @override
  State<KnowledgeImage> createState() => _KnowledgeImageState();
}

class _KnowledgeImageState extends State<KnowledgeImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            widget.imagePath,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.grey.withOpacity(0.65), // Grey background with opacity
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.plantName,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}