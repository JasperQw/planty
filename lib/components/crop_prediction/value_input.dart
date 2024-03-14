import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class ValueInput extends StatefulWidget {
  final String inputTitle;
  final String inputHint;
  const ValueInput({
    required this.inputTitle,
    required this.inputHint,
    super.key});

  @override
  State<ValueInput> createState() => _ValueInputState();
}

class _ValueInputState extends State<ValueInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputTitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.multiline,
                maxLines: null,
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.withOpacity(0.5),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 15,
            ),
            hintText: widget.inputHint,
            hintStyle: const TextStyle(
                    fontSize: 14,
                    color: focusGrey,
                  ),
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12.0), // Set corner radius here
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12.0), // Set corner radius here
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    )
    );
  }
}