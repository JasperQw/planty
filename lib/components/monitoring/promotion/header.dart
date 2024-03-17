import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: MediaQuery.of(context).size.width - 20,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 249, 253, 192),
      ),
      child: Row(
        children: <Widget>[
          const Expanded(
            child: Text(
              'Boost your crop productivity through precision farming devices now !',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset(
            'assets/images/iot promotion.png',
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
