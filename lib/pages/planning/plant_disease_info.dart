import 'package:flutter/material.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/pest_disease/pest_disease_details.dart';
import 'package:planty/components/pest_disease/pest_disease_image.dart';

class PlantDiseaseInfo extends StatefulWidget {
  const PlantDiseaseInfo({super.key});

  @override
  State<PlantDiseaseInfo> createState() => _PlantDiseaseInfoState();
}

class _PlantDiseaseInfoState extends State<PlantDiseaseInfo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), 
        child: AppBarWithShadow(
          title: "Magnaporthe oryzae",
          withBackBtn: true,)
      ),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PestDiseaseDetails(
              title:"Disease Characteristics" ,
              description:"- Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum aliquam arcu a sem luctus, sit amet mattis turpis consequat. Nullam vitae nulla ac purus rutrum scelerisque. Curabitur nec feugiat libero."),
            PestDiseaseImage(imagePath: "assets/images/magnaporthe.png"),
            PestDiseaseDetails(
              title: "Disease cure", 
              description: "-the physical features of the pests likely to be encountered\n-characteristics of the damage they cause\n-their development and biology\n-whether they are continuous, sporadic or potential pests\n-what is your control goal")
          ],
        ),
      )
    );
  }
}