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
  // Mock data
  String characteristic = """
- Magnaporthe oryzae is a fungal pathogen that causes rice blast disease, one of the most destructive diseases affecting rice crops worldwide.
- The disease manifests as lesions on leaves, stems, panicles, and grains of rice plants.
- Lesions start as small, water-soaked spots that expand rapidly, turning whitish-gray or light brown, often with a dark border.
- Under favorable conditions, the fungus produces spores (conidia) in lesion centers, which spread the disease to nearby plants through wind, water, or human activities.
- Severe infections can lead to complete crop loss, significantly impacting food security and agricultural economies in rice-growing regions.
""";

  String cure = """
1. Cultural Practices:
    - Use resistant rice varieties whenever possible. Planting resistant cultivars can significantly reduce disease incidence and severity.
    - Practice crop rotation to break the disease cycle. Avoid planting rice in fields where blast disease was severe in previous seasons.
    - Ensure proper spacing between plants to improve air circulation and reduce humidity, which can inhibit fungal growth.
    - Remove and destroy crop residues after harvest to reduce overwintering of the pathogen.

2. Chemical Control:
    - Apply fungicides labeled for rice blast disease management when environmental conditions favor disease development and when resistant cultivars are not available or insufficient.
    - Rotate fungicides with different modes of action to minimize the risk of resistance development in the pathogen population.
    - Follow recommended application rates and timings provided by agricultural extension services or crop protection specialists.

3. Biological Control:
    - Explore biological control agents, such as beneficial microorganisms or antagonistic fungi, that can suppress Magnaporthe oryzae growth and infection.
    - Incorporate biopesticides or microbial inoculants into integrated pest management (IPM) strategies to enhance disease control while minimizing environmental impact.

4. Integrated Disease Management (IDM):
    - Implement integrated disease management approaches that combine cultural, chemical, and biological control tactics tailored to local conditions and available resources.
    - Monitor fields regularly for disease symptoms and adjust management practices accordingly to maintain effective disease control over time.
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBarWithShadow(
              title: "Disease Info",
              withBackBtn: true,
            )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              Text(
                "Magnaporthe oryzae",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              PestDiseaseDetails(
                  title: "Disease Characteristics",
                  description: characteristic),
              PestDiseaseImage(imagePath: "images/magnaporthe.jpg"),
              PestDiseaseDetails(title: "Disease cure", description: cure)
            ],
          ),
        ));
  }
}
