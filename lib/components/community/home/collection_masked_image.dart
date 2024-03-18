import 'package:flutter/material.dart';
import 'package:planty/components/community/home/masked_image.dart';
import 'package:planty/pages/community/community_details.dart';

class MaskedImageCollection extends StatefulWidget {
  const MaskedImageCollection({super.key});

  @override
  State<MaskedImageCollection> createState() => _MaskedImageCollectionState();
}

class _MaskedImageCollectionState extends State<MaskedImageCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 230,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              children: [
                MaskedImage(
                  imagePath: "assets/images/fruit_farmer.png",
                  title: "#Fruit Farmer Malaysia",
                  community: CommunityDetails(
                      image: "assets/images/fruit_farmer_banner.png",
                      title: "Fruit Farmer Malaysia",
                      introductionTitle: "FRUIT FARMER",
                      membersAmount: 1000,
                      introduction:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              children: [
                MaskedImage(
                  imagePath: "assets/images/startup_farmer.png",
                  title: "#Startup Farmer",
                  community: CommunityDetails(
                      image: "assets/images/fruit_farmer_banner.png",
                      title: "Startup Farmer",
                      introductionTitle: "STARTUP FARMER",
                      membersAmount: 5000,
                      introduction:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ),
                SizedBox(
                  height: 8,
                ),
                MaskedImage(
                  imagePath: "assets/images/organic_fertilizer.png",
                  title: "#Organic Fertilizer",
                  community: CommunityDetails(
                      image: "assets/images/fruit_farmer_banner.png",
                      title: "Organic Fertilizer",
                      introductionTitle: "ORGANIC FERTILIZER",
                      membersAmount: 3000,
                      introduction:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              children: [
                MaskedImage(
                  imagePath: "assets/images/agri_tourism.png",
                  title: "#AgriTourism",
                  community: CommunityDetails(
                      image: "assets/images/fruit_farmer_banner.png",
                      title: "Agri-Tourism",
                      introductionTitle: "AGRI-TOURISM",
                      membersAmount: 2000,
                      introduction:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ),
                SizedBox(
                  height: 8,
                ),
                MaskedImage(
                  imagePath: "assets/images/sustainable_agriculture.png",
                  title: "#Sustainable Agriculture",
                  community: CommunityDetails(
                      image: "assets/images/fruit_farmer_banner.png",
                      title: "Sustainable Agriculture",
                      introductionTitle: "SUSTAINABLE AGRICULTURE",
                      membersAmount: 10000,
                      introduction:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
