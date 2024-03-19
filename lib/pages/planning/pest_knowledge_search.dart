import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/pages/planning/pest_info.dart';
import 'package:planty/utilities/color.dart';
import 'package:planty/components/planning/pest_or_disease_card.dart';

class pest_knowledge_search extends StatefulWidget {
  const pest_knowledge_search({super.key});

  @override
  State<pest_knowledge_search> createState() => _pest_knowledge_searchState();
}

class _pest_knowledge_searchState extends State<pest_knowledge_search> {
  //Mock data first
  List<List<String>> pestinfo = [
    [
      'images/example_pest.png',
      "Aphid",
      'An aphid is a tiny, sap-sucking insect that often congregates in colonies on plants, causing damage by feeding on plant fluids and transmitting viruses.'
    ],
    [
      'images/whiteflies.webp',
      "Whiteflies",
      'Small, winged insects that infest plants, feeding on sap and leaving behind sticky honeydew, leading to stunted growth and plant diseases.'
    ],
    [
      'images/caterpillar.jpg',
      "Caterpillars",
      "Larval stage of butterflies and moths that voraciously consume foliage, often causing significant damage to plants by defoliation."
    ],
    [
      'images/spidermites.webp',
      "Spider Mites",
      "Microscopic arachnids that infest plants, feeding on sap and causing leaves to yellow, stipple, and eventually drop off, leading to reduced plant vigor."
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWithShadow(
            title: "Pest Knowledge",
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
                  hintText: "Search for pest name..",
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
                  itemCount: pestinfo.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const PestInfo();
                        }));
                      },
                      child: pest_or_disease_card(
                        image_asset: pestinfo[index][0],
                        name: pestinfo[index][1],
                        description: pestinfo[index][2],
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
