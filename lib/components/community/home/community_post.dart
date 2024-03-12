import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';
import 'package:planty/components/community/home/icon_prefix_button.dart';
import 'package:planty/utilities/color.dart';

class CommunityPost extends StatefulWidget {
  const CommunityPost({super.key});

  @override
  State<CommunityPost> createState() => _CommunityPostState();
}

class _CommunityPostState extends State<CommunityPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 16,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        border: Border.all(
          color: borderGrey,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Avatar(
                image:
                    "https://www.shutterstock.com/image-photo/confident-caucasian-young-man-casual-600nw-2141122925.jpg",
                size: 64,
              ),
              SizedBox(
                width: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kriston Watshon",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: black,
                    ),
                  ),
                  Text(
                    "08:39 am",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                        color: black),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla natoque id aenean.",
            style: TextStyle(
              color: black,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Image.network(
                "https://images.pexels.com/photos/220762/pexels-photo-220762.jpeg?cs=srgb&dl=pexels-pixabay-220762.jpg&fm=jpg"),
          ),
          const SizedBox(
            height: 24,
          ),
          const Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              IconPrefixButton(
                icon: Icons.thumb_up_outlined,
                title: "12,312",
                color: black,
                size: 24,
              ),
              IconPrefixButton(
                icon: Icons.chat_bubble_outline,
                title: "12,312",
                color: black,
                size: 24,
              ),
            ],
          )
        ],
      ),
    );
  }
}
