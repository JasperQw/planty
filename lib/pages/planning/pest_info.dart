import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/pest_disease/pest_disease_details.dart';
import 'package:planty/components/pest_disease/pest_disease_image.dart';

class PestInfo extends StatefulWidget {
  const PestInfo({super.key});

  @override
  State<PestInfo> createState() => _PestInfoState();
}

class _PestInfoState extends State<PestInfo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), 
        child: AppBarWithShadow(
          title: "Aphid",
          withBackBtn: true,)
      ),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PestDiseaseDetails(
              title:"Pest Characterisitcs" ,
              description:"- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum aliquam arcu a sem luctus, sit amet mattis turpis consequat. Nullam vitae nulla ac purus rutrum scelerisque. Curabitur nec feugiat libero."),
            PestDiseaseImage(imagePath: "assets/images/aphid.png"),
            PestDiseaseDetails(
              title: "Pest Prevention Methodologies", 
              description: "-the physical features of the pests likely to be encountered\n-characteristics of the damage they cause\n-their development and biology\n-whether they are continuous, sporadic or potential pests\n-what is your control goal")
          ],
        ),
      )
    );
  }
}