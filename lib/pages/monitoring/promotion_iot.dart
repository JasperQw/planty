import 'package:flutter/material.dart';
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
          )),
      body: Container(
        color: const Color.fromARGB(255, 249, 249, 249),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20.0),
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Header(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: CustomSearchBar(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Vendor List',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            SliverToBoxAdapter(
              child: Vendor(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            SliverToBoxAdapter(
              child: Vendor1(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            SliverToBoxAdapter(
              child: Vendor(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            SliverToBoxAdapter(
              child: Vendor1(),
            ),
          ],
        ),
      ),
    );
  }
}
