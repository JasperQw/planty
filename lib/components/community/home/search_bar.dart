import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: TextField(
        style: const TextStyle(
          color: black,
          fontSize: 16,
        ),
        onTapOutside: (event) {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          );
        },
        keyboardType: TextInputType.text,
        cursorColor: focusGrey,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          hintText: "Seach",
          hintStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: focusGrey),
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.search,
              size: 24,
              color: focusGrey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80),
            borderSide: const BorderSide(
              color: borderGrey,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80),
            borderSide: const BorderSide(
              color: focusGrey,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
