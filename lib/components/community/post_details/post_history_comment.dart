import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';
import 'package:planty/utilities/color.dart';

class PostHistoryComment extends StatefulWidget {
  const PostHistoryComment({super.key});

  @override
  State<PostHistoryComment> createState() => _PostHistoryCommentState();
}

class _PostHistoryCommentState extends State<PostHistoryComment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      alignment: Alignment.topLeft,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Avatar(
            image:
                "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
            size: 64,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Rose Jack",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      "14/08/2021",
                      style: TextStyle(
                        fontSize: 14,
                        color: focusGrey,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Nice Rose. I like the color of the rose hoping you can grow more rose.",
                  style: TextStyle(
                    color: secondaryTextColor,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
