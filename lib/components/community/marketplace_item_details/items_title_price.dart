import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:planty/utilities/color.dart';

class ItemsTitlePrice extends StatefulWidget {
  final String title;
  final double price;
  const ItemsTitlePrice({super.key, required this.title, required this.price});

  @override
  State<ItemsTitlePrice> createState() => _ItemsTitlePriceState();
}

class _ItemsTitlePriceState extends State<ItemsTitlePrice> {
  @override
  Widget build(BuildContext context) {
    NumberFormat formatter = NumberFormat.decimalPattern();
    formatter.maximumFractionDigits = 2;
    formatter.minimumFractionDigits = 2;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runSpacing: 20,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Item",
                style: TextStyle(
                  color: unselectedGrey,
                  fontSize: 14,
                ),
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Price",
                style: TextStyle(
                  color: unselectedGrey,
                  fontSize: 14,
                ),
              ),
              Text(
                "RM ${formatter.format(widget.price)}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
