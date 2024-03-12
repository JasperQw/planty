import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/utilities/color.dart';

class MarketplaceBtn extends StatefulWidget {
  const MarketplaceBtn({super.key});

  @override
  State<MarketplaceBtn> createState() => _MarketplaceBtnState();
}

class _MarketplaceBtnState extends State<MarketplaceBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 20,
      ),
      decoration: BoxDecoration(
          color: green,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/building-shop.svg",
            height: 44,
            width: 44,
          ),
          const SizedBox(
            width: 12,
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Marketplace",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Get 2nd Hand Items and Giveaways Now",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          SvgPicture.asset(
            "assets/images/next_arrow.svg",
            width: 17,
            height: 31,
          )
        ],
      ),
    );
  }
}
