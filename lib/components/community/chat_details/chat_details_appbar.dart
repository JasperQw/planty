import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';
import 'package:planty/utilities/color.dart';

class ChatDetailsAppBar extends StatefulWidget {
  final String image;
  final String name;
  final bool isOnline;
  const ChatDetailsAppBar(
      {super.key,
      required this.image,
      required this.name,
      required this.isOnline});

  @override
  State<ChatDetailsAppBar> createState() => _ChatDetailsAppBarState();
}

class _ChatDetailsAppBarState extends State<ChatDetailsAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: AppBar(
        scrolledUnderElevation: 0,
        leadingWidth: 30,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
          ),
        ),
        title: Container(
          height: 80,
          alignment: Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
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
              Text(
                widget.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
