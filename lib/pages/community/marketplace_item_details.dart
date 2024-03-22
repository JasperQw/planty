import 'package:flutter/material.dart';
import 'package:planty/components/common/general_appbar.dart';
import 'package:planty/components/common/title.dart';
import 'package:planty/components/community/marketplace_item_details/another_image_list.dart';
import 'package:planty/components/community/marketplace_item_details/item_rating.dart';
import 'package:planty/components/community/marketplace_item_details/items_title_price.dart';
import 'package:planty/components/community/marketplace_item_details/location.dart';
import 'package:planty/components/community/marketplace_item_details/negotiate_button.dart';
import 'package:planty/components/community/marketplace_item_details/seller_info.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
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
                  Image.network(
                    "https://media.istockphoto.com/id/157180820/photo/lawnmower-man.jpg?s=612x612&w=0&k=20&c=Ca9Y5S9YetkwFCjmIYpeooEiqZT8MjpA7oA_Hp6xWZk=",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  const ItemsTitlePrice(
                    title: "Nvidia Grass Trimmer",
                    price: 420,
                  ),
                  const AnotherImageList(),
                  const TitleWidget(
                    title: "Condition",
                    fontSize: 24,
                  ),
                  const ItemRating(),
                  const Location(
                    location: "Petaling Jaya, Selangor",
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const SellerInfo(),
                  const NegotiateButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
