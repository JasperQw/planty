import 'package:flutter/material.dart';

import 'package:planty/components/community/marketplace_item_details/another_image.dart';

class AnotherImageList extends StatefulWidget {
  const AnotherImageList({super.key});

  @override
  State<AnotherImageList> createState() => _AnotherImageListState();
}

class _AnotherImageListState extends State<AnotherImageList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16.0,
        top: 16.0,
        bottom: 16.0,
      ),
      child: const Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AnotherImage(
                    image:
                        "https://media.istockphoto.com/id/157180820/photo/lawnmower-man.jpg?s=612x612&w=0&k=20&c=Ca9Y5S9YetkwFCjmIYpeooEiqZT8MjpA7oA_Hp6xWZk=",
                  ),
                  AnotherImage(
                      image:
                          "https://cdn.thewirecutter.com/wp-content/media/2023/09/string-trimmer-2048px-0003.jpg?auto=webp&quality=75&width=1024"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
