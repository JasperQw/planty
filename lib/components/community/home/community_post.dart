import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';
import 'package:planty/components/common/icon_prefix_button.dart';
import 'package:planty/pages/community/post_detail.dart';
import 'package:planty/utilities/color.dart';

class CommunityPost extends StatefulWidget {
  const CommunityPost({super.key});

  @override
  State<CommunityPost> createState() => _CommunityPostState();
}

class _CommunityPostState extends State<CommunityPost> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const PostDetails();
        }));
      },
      child: Container(
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
                      "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
                  size: 64,
                ),
                SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "梵克 Frankie",
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
              "Genetically modified Rose plantation success!",
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
                  "https://minnetonkaorchards.com/wp-content/uploads/2022/02/Artificial-Rainbow-Roses-160841562.jpg"),
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
      ),
    );
  }
}
