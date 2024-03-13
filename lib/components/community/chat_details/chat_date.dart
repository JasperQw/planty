import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class ChatDate extends StatefulWidget {
  const ChatDate({super.key});

  @override
  State<ChatDate> createState() => _ChatDateState();
}

class _ChatDateState extends State<ChatDate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: borderGrey,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child: const Text(
              "TODAY, JULY 15",
              style: TextStyle(
                color: unselectedGrey,
              ),
            ),
          ),
          const Expanded(
            child: Divider(
              color: borderGrey,
            ),
          ),
        ],
      ),
    );
  }
}
