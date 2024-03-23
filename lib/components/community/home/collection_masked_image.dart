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
                          "Welcome to the vibrant world of fruit farming in Malaysia, where lush landscapes and diverse climates converge to create a haven for fruit cultivation. The Malaysian fruit farming community stands as a beacon of agricultural prowess, renowned for its rich heritage of cultivating an array of tropical fruits, including durian, mangosteen, rambutan, and jackfruit. With a tradition deeply rooted in sustainable practices and innovation, Malaysian fruit farmers employ cutting-edge techniques alongside time-honored wisdom to yield bountiful harvests year-round. Embracing a spirit of collaboration and camaraderie, this community fosters a culture of knowledge sharing and support, ensuring the continued prosperity of Malaysia's fruit farming industry amidst an ever-evolving agricultural landscape."),
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
