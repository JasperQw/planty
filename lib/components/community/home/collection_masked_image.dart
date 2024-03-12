import 'package:flutter/material.dart';
import 'package:planty/components/community/home/masked_image.dart';

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
                ),
                SizedBox(
                  height: 8,
                ),
                MaskedImage(
                  imagePath: "assets/images/organic_fertilizer.png",
                  title: "#Organic Fertilizer",
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
                ),
                SizedBox(
                  height: 8,
                ),
                MaskedImage(
                  imagePath: "assets/images/sustainable_agriculture.png",
                  title: "#Sustainable Agriculture",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
