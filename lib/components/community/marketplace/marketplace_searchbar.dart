import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/utilities/color.dart';

class MarketplaceSearchBar extends StatefulWidget {
  const MarketplaceSearchBar({super.key});

  @override
  State<MarketplaceSearchBar> createState() => _MarketplaceSearchBarState();
}

class _MarketplaceSearchBarState extends State<MarketplaceSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  )
                ]),
            child: TextField(
              cursorColor: unselectedGrey,
              onTapOutside: (event) {
                FocusScope.of(context).requestFocus(
                  FocusNode(),
                );
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search_sharp,
                  size: 28,
                  color: unselectedGrey,
                ),
                hintText: "Search...",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            right: 16,
          ),
          padding: const EdgeInsets.all(
            8,
          ),
          decoration: const BoxDecoration(
            color: darkGreen,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: SvgPicture.asset(
            "assets/images/setting.svg",
            width: 28,
            height: 32,
          ),
        )
      ],
    );
  }
}
