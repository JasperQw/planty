import 'package:flutter/material.dart';
import 'package:planty/utilities/color.dart';

class PostTitleContent extends StatefulWidget {
  const PostTitleContent({super.key});

  @override
  State<PostTitleContent> createState() => _PostTitleContentState();
}

class _PostTitleContentState extends State<PostTitleContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Genetically modified Rose plantation success!",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\n#Rose #Cute #Happy",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              color: secondaryTextColor,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "2021 Feb 21 | Malaysia",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              color: focusGrey,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SizedBox(
            width: double.infinity,
            child: Divider(
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "6 comments",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              color: focusGrey,
            ),
          ),
        ],
      ),
    );
  }
}
