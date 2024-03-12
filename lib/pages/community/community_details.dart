import 'package:flutter/material.dart';
import 'package:planty/components/common/general_appbar.dart';
import 'package:planty/utilities/color.dart';

class CommunityDetails extends StatefulWidget {
  const CommunityDetails({super.key});

  @override
  State<CommunityDetails> createState() => _CommunityDetailsState();
}

class _CommunityDetailsState extends State<CommunityDetails> {
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
          child: GeneralAppBar(
            title: "Fruit Farmer Malaysia",
            withBackBtn: true,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
