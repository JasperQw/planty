import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';
import 'package:planty/utilities/color.dart';

class PostCommentInputField extends StatefulWidget {
  const PostCommentInputField({super.key});

  @override
  State<PostCommentInputField> createState() => _PostCommentInputFieldState();
}

class _PostCommentInputFieldState extends State<PostCommentInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      alignment: Alignment.topLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Avatar(
            image:
                "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
            size: 54,
          ),
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    )
                  ]),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  hintText: "Say something...",
                  hintStyle: TextStyle(
                    color: focusGrey,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
