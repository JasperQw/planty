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
                  AnotherImage(),
                  AnotherImage(),
                  AnotherImage(),
                  AnotherImage(),
                  AnotherImage(),
                  AnotherImage(),
                  AnotherImage(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
