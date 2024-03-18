import 'package:flutter/material.dart';
import 'package:planty/components/common/avatar.dart';
import 'package:planty/utilities/color.dart';

class SellerInfo extends StatefulWidget {
  const SellerInfo({super.key});

  @override
  State<SellerInfo> createState() => _SellerInfoState();
}

class _SellerInfoState extends State<SellerInfo> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Avatar(
                  image:
                      "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg",
                  size: 52,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jenny Wilson",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 16,
                            color: unselectedGrey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "13 Sep, 2020",
                            style:
                                TextStyle(fontSize: 11, color: unselectedGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
              style: TextStyle(
                color: focusGrey,
              ),
            )
          ],
        ));
  }
}
