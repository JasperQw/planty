import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class PestDiseaseDetails extends StatefulWidget {
  final String title;
  final String description;
  PestDiseaseDetails(
      {required this.title, required this.description, super.key});

  @override
  State<PestDiseaseDetails> createState() => _PestDiseaseDetailsState();
}

class _PestDiseaseDetailsState extends State<PestDiseaseDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 18,
        ),
        decoration: BoxDecoration(
            color: replyColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                offset: Offset(0, 4),
              )
            ]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                widget.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              )
            ]));
  }
}
