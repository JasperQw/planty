import 'package:flutter/material.dart';
import 'package:planty/components/community/post_details/post_carousel.dart';
import 'package:planty/components/community/post_details/post_comment_input_field.dart';
import 'package:planty/components/community/post_details/post_details_appbar.dart';
import 'package:planty/components/community/post_details/post_title_content.dart';
import 'package:planty/utilities/color.dart';

class PostDetails extends StatefulWidget {
  const PostDetails({super.key});

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: background),
      home: const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            80,
          ),
          child: PostDetailsAppBar(),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PostCarousel(),
                    SizedBox(
                      height: 24,
                    ),
                    PostTitleContent(),
                    SizedBox(
                      height: 12,
                    ),
                    PostCommentInputField(),
                    SizedBox(
                      height: 120,
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
