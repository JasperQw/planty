import 'package:flutter/material.dart';

class GeneralAppBar extends StatefulWidget {
  final String title;
  final bool? withBackBtn;
  const GeneralAppBar(
      {super.key, required this.title, this.withBackBtn = false});

  @override
  State<GeneralAppBar> createState() => _GeneralAppBarState();
}

class _GeneralAppBarState extends State<GeneralAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          margin: const EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            textAlign: TextAlign.start,
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
