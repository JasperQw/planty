import 'package:flutter/material.dart';

class SellingItem extends StatefulWidget {
  const SellingItem({super.key});

  @override
  State<SellingItem> createState() => _SellingItemState();
}

class _SellingItemState extends State<SellingItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.4,
          width: MediaQuery.of(context).size.width * 0.4,
          constraints: const BoxConstraints(
            maxHeight: 200,
            maxWidth: 200,
          ),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Image.network(
            "https://media.istockphoto.com/id/157180820/photo/lawnmower-man.jpg?s=612x612&w=0&k=20&c=Ca9Y5S9YetkwFCjmIYpeooEiqZT8MjpA7oA_Hp6xWZk=",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          constraints: const BoxConstraints(
            maxWidth: 200,
          ),
          margin: const EdgeInsets.only(
            top: 10,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nvidia 2 years old Grass Trimmer",
              ),
              Text(
                "RM 420",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        )
      ],
    );
  }
}
