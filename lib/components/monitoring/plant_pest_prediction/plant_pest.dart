import 'dart:io';
import 'package:flutter/material.dart';

class PlantPest extends StatefulWidget {
  final ImageProvider? image;
  const PlantPest({Key? key, this.image}) : super(key: key);

  @override
  State<PlantPest> createState() => _PlantPestState();
}

class _PlantPestState extends State<PlantPest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 238, 238, 231),
        width: MediaQuery.of(context).size.width - 50,
        height: 350,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 238, 238, 231),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 50),
                  widget.image == null
                      ? Icon(Icons.bug_report_rounded,
                          size: 100,
                          color: const Color.fromARGB(255, 130, 130, 131)
                              .withOpacity(0.5))
                      : Image(image: widget.image!),
                  widget.image == null
                      ? const Text(
                          'Upload a Pest Image',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 130, 130, 131),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
