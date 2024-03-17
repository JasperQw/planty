import 'dart:io';
import 'package:flutter/material.dart';

class ResultImgPest extends StatefulWidget {
  final ImageProvider? image;
  const ResultImgPest({Key? key, this.image}) : super(key: key);

  @override
  State<ResultImgPest> createState() => _ResultImgPestState();
}

class _ResultImgPestState extends State<ResultImgPest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 238, 238, 231),
        width: MediaQuery.of(context).size.width,
        height: 350,
        child: Container(
          alignment: Alignment.center,
          color: const Color.fromARGB(255, 238, 238, 231),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/cereal_alphids1.png'),
            ],
          ),
        ),
      ),
    );
  }
}
