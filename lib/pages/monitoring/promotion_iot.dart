import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/community/home/search_bar.dart';
import 'package:planty/components/monitoring/promotion/header.dart';
import 'package:planty/components/monitoring/promotion/pop_up_before_promotion.dart';
import 'package:planty/components/monitoring/promotion/pop_up_before_promotion2.dart';
import 'package:planty/components/monitoring/promotion/vendor.dart';
import 'package:planty/components/monitoring/promotion/vendor1.dart';
import 'package:planty/pages/monitoring/iot_item.dart';

class PromotionIOT extends StatefulWidget {
  const PromotionIOT({Key? key}) : super(key: key);

  @override
  State<PromotionIOT> createState() => _PromotionIOTState();
}

class _PromotionIOTState extends State<PromotionIOT> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return PopUpBeforePromotion(
            onClose: () {
              Navigator.of(context).pop(); // Close the first dialog
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const PopUpBeforePromotion2(
                        // Close the second dialog
                        );
                  });
            },
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //IOT Services
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarWithShadow(
          title: "IOT Services",
          withBackBtn: true,
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 247, 247, 247),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 10), // Add your desired padding here
                child: Header(),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for vendors...',
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Vendor List',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Vendor()),
              SizedBox(height: 20),
              Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Vendor1()),
              SizedBox(height: 20),
              Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Vendor()),
            ],
          ),
        ),
      ),
    );
  }
}
