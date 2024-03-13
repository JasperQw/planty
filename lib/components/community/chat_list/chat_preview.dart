import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';
import 'package:planty/utilities/color.dart';

class ChatPreview extends StatefulWidget {
  final String image;
  final String name;
  final String message;
  final int unread;
  final String time;
  final bool isOnline;
  const ChatPreview(
      {super.key,
      required this.image,
      required this.name,
      required this.message,
      required this.unread,
      required this.time,
      required this.isOnline});

  @override
  State<ChatPreview> createState() => _ChatPreviewState();
}

class _ChatPreviewState extends State<ChatPreview> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Avatar(
              image: widget.image,
              size: 48,
            ),
            widget.isOnline
                ? Positioned(
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 13,
                      width: 13,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: green,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    widget.time,
                    style: const TextStyle(
                      fontSize: 12,
                      color: unselectedGrey,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.message,
                    style: const TextStyle(
                      fontSize: 16,
                      color: unselectedGrey,
                    ),
                  ),
                  widget.unread > 0
                      ? Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: green,
                          ),
                          child: Text(
                            widget.unread.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        )
      ],
    );
  }
}
