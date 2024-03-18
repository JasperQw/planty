import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';

class PostDetailsAppBar extends StatefulWidget {
  const PostDetailsAppBar({super.key});

  @override
  State<PostDetailsAppBar> createState() => _PostDetailsAppBarState();
}

class _PostDetailsAppBarState extends State<PostDetailsAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: AppBar(
        scrolledUnderElevation: 0,
        leadingWidth: 30,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
          ),
        ),
        title: Container(
          height: 80,
          alignment: Alignment.centerLeft,
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Avatar(
                image:
                    "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
                size: 48,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "梵克 Frankie",
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
