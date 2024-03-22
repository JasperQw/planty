import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/pages/planning/plant_disease_info.dart';
import 'package:planty/utilities/color.dart';
import 'package:planty/components/planning/pest_or_disease_card.dart';

class plant_disease_knowledge_search extends StatefulWidget {
  const plant_disease_knowledge_search({super.key});

  @override
  State<plant_disease_knowledge_search> createState() =>
      _plant_disease_knowledge_searchState();
}

class _plant_disease_knowledge_searchState
    extends State<plant_disease_knowledge_search> {
  //Mock data first
  List<List<String>> disease_info = [
    [
      'images/fungal_disease.jpg',
      "Fungal Disease",
      'Fungal diseases are caused by various types of fungi and affect plants by causing symptoms such as leaf spots, wilting, rotting, and powdery mildew. Fungi thrive in moist environments and can spread rapidly, leading to significant crop losses if left uncontrolled.'
    ],
    [
      'images/bacterial_disease.webp',
      "Bacterial Disease",
      'Bacterial diseases in plants are caused by pathogenic bacteria that infect various plant tissues, leading to symptoms such as leaf spots, wilting, cankers, and soft rot. Bacterial pathogens often enter plants through wounds or natural openings and can spread rapidly under favorable environmental conditions.'
    ],
    [
      'images/viral_disease.jpeg',
      "Viral Disease",
      'Viral diseases of plants are caused by different types of viruses and are characterized by symptoms such as mottling, yellowing, stunting, and distortion of plant tissues. Viruses are often transmitted by vectors such as insects, nematodes, or through infected seeds or plant debris, posing significant challenges for disease management.'
    ],
    [
      'images/nematode_disease.jpg',
      "Nematode Disease",
      'Nematode diseases, caused by parasitic nematodes, affect plant roots and can result in symptoms such as stunting, wilting, root galls, and reduced nutrient uptake. Nematodes can persist in soil for extended periods and may require integrated management approaches combining cultural practices, resistant cultivars, and soil treatments for effective control.'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWithShadow(
            title: "Plant Disease Knowledge",
            withBackBtn: true,
          ),
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  )
                ]),
            child: TextField(
              cursorColor: unselectedGrey,
              onTapOutside: (event) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    size: 28,
                    color: unselectedGrey,
                  ),
                  hintText: "Search for disease name..",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ShaderMask(
              shaderCallback: (Rect rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purple,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.purple
                  ],
                  stops: [
                    0.0,
                    0.05,
                    0.95,
                    1.0
                  ], // 10% purple, 80% transparent, 10% purple
                ).createShader(rect);
              },
              blendMode: BlendMode.dstOut,
              child: ListView.builder(
                  itemCount: disease_info.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const PlantDiseaseInfo();
                        }));
                      },
                      child: pest_or_disease_card(
                        image_asset: disease_info[index][0],
                        name: disease_info[index][1],
                        description: disease_info[index][2],
                      ),
                    );
                  })),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ]));
  }
}
