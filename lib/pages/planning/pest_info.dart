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
  //Mock data
  String gg = "a";
  String characteristic = """
- Small, soft-bodied insects typically found on the undersides of leaves.
- Aphids come in various colors, including green, black, brown, yellow, or red.
- They reproduce rapidly, leading to infestations.
- Aphids suck plant sap, causing leaves to curl, yellow, or distort.
- They secrete a sticky substance called honeydew, which attracts ants and promotes mold growth.
""";

  String prevention = """
- Inspect plants regularly for signs of aphid infestation, such as curled leaves or the presence of ants.
- Use a strong stream of water to wash aphids off plants.
- Introduce natural predators of aphids, such as ladybugs or lacewings, to the garden.
- Prune and dispose of heavily infested plant parts.
- Apply insecticidal soap or neem oil to affected plants.
- Use reflective mulch or row covers to deter aphids from infesting plants.
- Rotate crops to prevent aphids from building up in the soil.
- Encourage biodiversity in the garden to maintain a balance of pests and beneficial insects.
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBarWithShadow(
              title: "Pest Info",
              withBackBtn: true,
            )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Aphid",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              PestDiseaseDetails(
                title: "Pest Characterisitcs",
                description: characteristic,
              ),
              PestDiseaseImage(imagePath: "assets/images/aphid.png"),
              PestDiseaseDetails(
                  title: "Pest Prevention Methodologies",
                  description: prevention)
            ],
          ),
        ));
  }
}
