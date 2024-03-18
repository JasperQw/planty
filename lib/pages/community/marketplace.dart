import 'package:flutter/material.dart';
import 'package:planty/components/common/general_appbar.dart';
import 'package:planty/components/common/image_prefix_button.dart';
import 'package:planty/components/common/title.dart';
import 'package:planty/components/community/marketplace/intro_card.dart';
import 'package:planty/components/community/marketplace/marketplace_searchbar.dart';
import 'package:planty/components/community/marketplace/selling_item.dart';
import 'package:planty/pages/community/marketplace_item_details.dart';
import 'package:planty/utilities/color.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({super.key});

  @override
  State<Marketplace> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  bool isFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: GeneralAppBar(
          title: "Marketplace",
          withBackBtn: true,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isFree
                      ? const IntroductionCard(
                          title:
                              "Enhance Farming Experience Through Free Farm Tools",
                          image: "assets/images/marketplace_free.png",
                        )
                      : const IntroductionCard(
                          title:
                              "Kick Start a Greener Future Through Used Crops Tools",
                          image: "assets/images/marketplace.png",
                        ),
                  const SizedBox(
                    height: 24,
                  ),
                  const MarketplaceSearchBar(),
                  const SizedBox(
                    height: 16,
                  ),
                  const TitleWidget(
                    title: "Choose Item",
                    fontSize: 30,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    width: double.infinity,
                    child: const Wrap(
                      runSpacing: 24.0,
                      spacing: 32.0,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ImagePrefixButton(
                            image: "assets/images/seed.png",
                            title: "Seeds",
                            color: black,
                            size: 28,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ImagePrefixButton(
                            image: "assets/images/tractor.png",
                            title: "Tractors",
                            color: black,
                            size: 28,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ImagePrefixButton(
                            image: "assets/images/iot.png",
                            title: "IoT",
                            color: black,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Items",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "View All",
                            style:
                                TextStyle(fontSize: 14, color: unselectedGrey),
                          ),
                        ],
                      )),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(
                      16,
                    ),
                    child: Wrap(
                      runSpacing: 36,
                      spacing: 36,
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ItemDetails(),
                              ),
                            );
                          },
                          child: const SellingItem(),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ItemDetails(),
                              ),
                            );
                          },
                          child: const SellingItem(),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ItemDetails(),
                              ),
                            );
                          },
                          child: const SellingItem(),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ItemDetails(),
                              ),
                            );
                          },
                          child: const SellingItem(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
