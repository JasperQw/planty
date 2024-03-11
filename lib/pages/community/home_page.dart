import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/community/home_caoursel.dart';
import 'package:planty/utilities/color.dart';

class CommunityHome extends StatefulWidget {
  const CommunityHome({super.key});

  @override
  State<CommunityHome> createState() => _CommunityHomeState();
}

class _CommunityHomeState extends State<CommunityHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 48,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: TextField(
                    style: const TextStyle(
                      color: black,
                      fontSize: 16,
                    ),
                    onTapOutside: (event) {
                      FocusScope.of(context).requestFocus(
                        FocusNode(),
                      );
                    },
                    keyboardType: TextInputType.text,
                    cursorColor: focusGrey,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      hintText: "Seach",
                      hintStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: focusGrey),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Icon(
                          Icons.search,
                          size: 24,
                          color: focusGrey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: const BorderSide(
                          color: borderGrey,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: const BorderSide(
                          color: focusGrey,
                          width: 2,
                        ),
                      ),
                    ),
                    // margin: const EdgeInsets.all(28),
                    // height: 60,
                    // width: double.infinity,
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: borderGrey),
                    //   borderRadius: BorderRadius.circular(
                    //     80,
                    //   ),
                    // ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const HomePageCarousel(),
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
                          fontWeight: FontWeight.w700,
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
                )
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
