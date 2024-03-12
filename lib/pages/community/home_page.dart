import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/community/home/collection_masked_image.dart';
import 'package:planty/components/community/home/community_post.dart';
import 'package:planty/components/community/home/home_caoursel.dart';
import 'package:planty/components/community/home/marketplace_button.dart';
import 'package:planty/components/community/home/post_thought.dart';
import 'package:planty/components/community/home/search_bar.dart';
import 'package:planty/utilities/color.dart';

class CommunityHome extends StatefulWidget {
  const CommunityHome({super.key});

  @override
  State<CommunityHome> createState() => _CommunityHomeState();
}

class _CommunityHomeState extends State<CommunityHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchBar(),
                const SizedBox(
                  height: 24,
                ),
                const HomePageCarousel(),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Community",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: black,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SvgPicture.asset(
                        "assets/images/community_title_logo.svg",
                        width: 35,
                        height: 28,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const MarketplaceBtn(),
                const SizedBox(
                  height: 16,
                ),
                const MaskedImageCollection(),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Post your thoughts",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const PostThought(),
                const SizedBox(
                  height: 32,
                ),
                const CommunityPost(),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
