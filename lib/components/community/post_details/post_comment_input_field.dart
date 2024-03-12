import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';

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
      child: const Avatar(
        image:
            "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        size: 64,
      ),
    );
  }
}
