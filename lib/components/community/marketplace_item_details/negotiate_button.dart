import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class NegotiateButton extends StatefulWidget {
  const NegotiateButton({super.key});

  @override
  State<NegotiateButton> createState() => _NegotiateButtonState();
}

class _NegotiateButtonState extends State<NegotiateButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        padding: const EdgeInsets.all(
          16,
        ),
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: green,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: const Text(
          "Negotiate with Seller",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
