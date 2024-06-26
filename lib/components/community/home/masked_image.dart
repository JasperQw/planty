import 'package:flutter/material.dart';

class MaskedImage extends StatefulWidget {
  final String imagePath;
  final String title;
  final Widget community;
  const MaskedImage(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.community});

  @override
  State<MaskedImage> createState() => _MaskedImageState();
}

class _MaskedImageState extends State<MaskedImage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => widget.community,
            ),
          );
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0),
                    Color(0xFF7B7B7B),
                  ],
                ),
              ),
              child: Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
