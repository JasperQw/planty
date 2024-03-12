import 'package:flutter/material.dart';
import 'package:planty/components/common/general_appbar.dart';
import 'package:planty/components/community/community_details/community_introduction.dart';
import 'package:planty/components/community/home/community_post.dart';
import 'package:planty/components/community/home/post_thought.dart';
import 'package:planty/utilities/color.dart';

class CommunityDetails extends StatefulWidget {
  final String image;
  final String title;
  final String introductionTitle;
  final int membersAmount;
  final String introduction;
  const CommunityDetails(
      {super.key,
      required this.image,
      required this.title,
      required this.introductionTitle,
      required this.membersAmount,
      required this.introduction});

  @override
  State<CommunityDetails> createState() => _CommunityDetailsState();
}

class _CommunityDetailsState extends State<CommunityDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: background),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(
            80,
          ),
          child: GeneralAppBar(
            title: widget.title,
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
                    Image.asset(
                      widget.image,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    CommunityIntroduction(
                      title: widget.introductionTitle,
                      introduction: widget.introduction,
                      membersAmount: widget.membersAmount,
                    ),
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
                      height: 16,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Text(
                        "Latest",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: focusGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CommunityPost(),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
