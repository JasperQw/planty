import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';
import 'package:planty/components/common/icon_prefix_button.dart';
import 'package:planty/utilities/color.dart';

class PostThought extends StatefulWidget {
  const PostThought({super.key});

  @override
  State<PostThought> createState() => _PostThoughtState();
}

class _PostThoughtState extends State<PostThought> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ]),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        color: greenless,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Avatar(
              image:
                  "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
              size: 54,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    onTapOutside: (event) {
                      FocusScope.of(context).requestFocus(
                        FocusNode(),
                      );
                    },
                    cursorColor: focusGrey,
                    style: const TextStyle(
                      color: black,
                      fontSize: 18,
                    ),
                    decoration: const InputDecoration(
                      hintText: "What's on your head?",
                      hintStyle: TextStyle(
                        color: focusGrey,
                        fontSize: 18,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: const Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      // alignment: WrapAlignment.spaceBetween,
                      children: [
                        IconPrefixButton(
                          icon: Icons.add_photo_alternate,
                          title: "Image",
                          color: green,
                          size: 20,
                        ),
                        IconPrefixButton(
                          icon: Icons.movie_creation,
                          title: "Video",
                          color: green,
                          size: 20,
                        ),
                        IconPrefixButton(
                          icon: Icons.attachment,
                          title: "Attach",
                          color: green,
                          size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
