import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/common/avatar.dart';
import 'package:planty/pages/community/chat_list.dart';
import 'package:planty/utilities/color.dart';

class AppBarLayout extends StatelessWidget {
  const AppBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: AppBar(
        scrolledUnderElevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          "assets/images/logo.svg",
          // fit: BoxFit.cover,
          width: 150,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ChatList(),
                ),
              );
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(
                  "assets/images/chat.svg",
                  width: 26,
                  height: 26,
                ),
                Positioned(
                  bottom: 5,
                  left: -5,
                  child: Container(
                    width: 13,
                    height: 13,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: green,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const Avatar(
            image:
                "https://st3.depositphotos.com/2024219/31793/i/450/depositphotos_317939792-stock-photo-young-woman-isolated-yellow-background.jpg",
            size: 64,
          ),
        ],
      ),
    );
  }
}
