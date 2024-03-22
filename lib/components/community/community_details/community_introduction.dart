import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:planty/utilities/color.dart';

class CommunityIntroduction extends StatefulWidget {
  final String title;
  final String introduction;
  final int membersAmount;
  const CommunityIntroduction(
      {super.key,
      required this.title,
      required this.introduction,
      required this.membersAmount});

  @override
  State<CommunityIntroduction> createState() => _CommunityIntroductionState();
}

class _CommunityIntroductionState extends State<CommunityIntroduction> {
  @override
  Widget build(BuildContext context) {
    NumberFormat formatter = NumberFormat.decimalPattern();
    formatter.maximumFractionDigits = 2;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                "${formatter.format(widget.membersAmount)} members",
                style: const TextStyle(
                  fontSize: 14,
                  color: secondaryTextColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            widget.introduction,
          )
        ],
      ),
    );
  }
}
