import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class ChatBox extends StatefulWidget {
  final bool isReply;
  final String message;
  final bool isLast;
  final String time;
  const ChatBox(
      {super.key,
      required this.isReply,
      required this.message,
      required this.isLast,
      required this.time});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: widget.isReply ? Alignment.topLeft : Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.all(
              16,
            ),
            decoration: BoxDecoration(
              color: widget.isReply ? replyColor : darkGreen,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  widget.isReply ? 8 : 0,
                ),
                topLeft: Radius.circular(
                  widget.isReply ? 0 : 8,
                ),
                bottomLeft: const Radius.circular(
                  8,
                ),
                bottomRight: const Radius.circular(
                  8,
                ),
              ),
            ),
            child: Text(
              widget.message,
              style: TextStyle(
                color: widget.isReply ? black : Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        widget.isLast
            ? Align(
                alignment:
                    widget.isReply ? Alignment.topLeft : Alignment.topRight,
                child: Text(
                  widget.time,
                  style: const TextStyle(
                    color: unselectedGrey,
                    fontSize: 14,
                  ),
                ),
              )
            : Container(),
        SizedBox(
          height: widget.isLast ? 10 : 0,
        ),
      ],
    );
  }
}
