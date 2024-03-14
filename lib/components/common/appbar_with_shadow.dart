import 'package:flutter/material.dart';

class AppBarWithShadow extends StatefulWidget {
  final String title;
  final bool? withBackBtn;
  const AppBarWithShadow(
      {super.key, required this.title, this.withBackBtn = false});

  @override
  State<AppBarWithShadow> createState() => _AppBarWithShadowState();
}

class _AppBarWithShadowState extends State<AppBarWithShadow> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4, // Add elevation here to add shadow
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        child: AppBar(
          scrolledUnderElevation: 0,
          leadingWidth: widget.withBackBtn == true ? 30 : 0,
          leading: widget.withBackBtn == true
              ? GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                  ),
                )
              : null,
          title: Container(
            height: 80,
            alignment: Alignment.center,
            child: Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}