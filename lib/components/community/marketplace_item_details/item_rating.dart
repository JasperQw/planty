import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:planty/utilities/color.dart';

class ItemRating extends StatefulWidget {
  const ItemRating({super.key});

  @override
  State<ItemRating> createState() => _ItemRatingState();
}

class _ItemRatingState extends State<ItemRating> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "4.8",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          RatingBar(
            initialRating: 3.5,
            itemSize: 24,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ignoreGestures: true,
            ratingWidget: RatingWidget(
              full: const Icon(
                Icons.star,
                color: starColor,
              ),
              half: const Icon(
                Icons.star_half_outlined,
                color: starColor,
              ),
              empty: const Icon(
                Icons.star_border_outlined,
                color: borderGrey,
              ),
            ),
            onRatingUpdate: (rating) {},
          )
        ],
      ),
    );
  }
}
