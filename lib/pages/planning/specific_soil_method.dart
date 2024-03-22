import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';

class specific_soil_method extends StatefulWidget {
  const specific_soil_method({super.key});

  @override
  State<specific_soil_method> createState() => _specific_soil_methodState();
}

class _specific_soil_methodState extends State<specific_soil_method> {
  // Soil Type
  String soilType = """
-Well-draining soil is crucial for chili plants to prevent waterlogging.
-Sandy loam or loamy soil types are ideal for chili cultivation as they provide good drainage while retaining moisture.
-Soil with good organic content helps in nutrient retention and supports healthy plant growth.
""";

// Soil pH
  String soilPH = """
-Optimal pH range for chili plants is between 6.0 to 7.0.
-Adjust pH if necessary using lime to raise pH or sulfur to lower pH.
-Maintaining proper pH ensures optimal nutrient uptake by the plants.
""";

// Soil Composition and Ratio
  String soilComposition = """
-Mix compost or aged manure into the soil before planting chili.
-A ratio of 1 part compost to 2 parts soil is recommended for enriched planting beds.
-Incorporating organic matter improves soil structure, fertility, and water retention capacity.
""";
// Soil Preparation Steps
  String soilPreparation = """
-Prepare the soil adequately before planting chili to provide an optimal growing environment.
-Clear the planting area of weeds and debris, loosen the soil to a depth of 8-10 inches, incorporate compost or aged manure into the soil, create raised beds or mounds for improved drainage if soil is heavy.
-Proper soil preparation promotes healthy root development and overall plant growth.
-Incorporate compost or aged manure for soil enrichment.
-Use a ratio of 1 part compost to 2 parts soil.
""";

// Planting Instructions
  String plantingInstructions = """
-Follow these steps to ensure successful planting of chili seedlings or seeds.
-Plant chili seedlings or seeds after the last frost date, space plants 18-24 inches apart in rows or in individual mounds, plant seedlings at the same depth as they were in their containers, water thoroughly after planting.
-Planting at the right time and spacing ensures optimal growth and prevents overcrowding.
""";
// Mulching
  String mulching = """
-Mulching helps conserve moisture, suppress weeds, and maintain soil temperature.
-Apply a layer of organic mulch such as straw or shredded leaves around plants.
-Maintain a mulch layer of 2-3 inches, keeping it a few inches away from the plant stems.
-Mulching reduces water evaporation from the soil surface and minimizes weed competition.
""";

// Maintenance
  String maintenance = """
-Regular maintenance tasks are essential for the health and productivity of chili plants.
-Water regularly, keeping soil consistently moist but not waterlogged, fertilize every 2-3 weeks with a balanced fertilizer or a fertilizer high in phosphorus to encourage fruiting, stake or cage plants for support as they grow, prune away any damaged or diseased foliage, monitor for pests and diseases, and treat promptly if detected.
-Consistent care ensures optimal growth, higher yields, and minimizes the risk of pest and disease infestations.
""";

// Troubleshooting
  String troubleshooting = """
-Identify and address common issues encountered during chili cultivation.
-Yellowing leaves, blossom drop, wilting, and pest or disease infestations.
-Address yellowing leaves, blossom drop, wilting, pests, and diseases promptly with appropriate measures such as adjusting watering, fertilization, pest control, and disease management strategies.
-Timely troubleshooting helps prevent further damage to plants and ensures healthy growth and productivity.
""";

  //top 15 mock crop in malaysia lolz

  List<String> plants = [
    "Palm Oil",
    "Rubber",
    "Rice",
    "Coconut",
    "Durian",
    "Pineapple",
    "Banana",
    "Papaya",
    "Dragon Fruit",
    "Cocoa",
    "Pepper",
    "Tea",
    "Mango",
    "Chili",
    "Lime",
  ];
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: AppBarWithShadow(
          title: "Crop care(s)",
          withBackBtn: true,
        ),
      ),
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/crop_care_background.jpeg"),
                    fit: BoxFit.fill))),
        Container(
          constraints: BoxConstraints(minHeight: double.infinity),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
          ),
          // Adjust the opacity as needed// Adjust the sigma values for blur intensity
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 50),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 80),
                  child: DropdownButtonHideUnderline(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber[50],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: DropdownButton2<String>(
                        barrierColor: Colors.grey[200]!.withOpacity(0.5),
                        isExpanded: true,
                        hint: Text(
                          'Search Crop(s)',
                          style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).hintColor,
                              fontWeight: FontWeight.bold),
                        ),
                        items: plants
                            .map((item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                        buttonStyleData: const ButtonStyleData(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: double.infinity,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                              color: Colors.amber[50],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15))),
                          maxHeight: 200,
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                        ),
                        dropdownSearchData: DropdownSearchData(
                          searchController: textEditingController,
                          searchInnerWidgetHeight: 50,
                          searchInnerWidget: Container(
                            height: 50,
                            padding: const EdgeInsets.only(
                              top: 8,
                              bottom: 4,
                              right: 8,
                              left: 8,
                            ),
                            child: TextFormField(
                              expands: true,
                              maxLines: null,
                              controller: textEditingController,
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 8,
                                ),
                                hintText: 'Type your crop(s)..',
                                hintStyle: const TextStyle(
                                    fontSize: 15, color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          searchMatchFn: (item, searchValue) {
                            return item.value
                                .toString()
                                .toLowerCase()
                                .contains(searchValue.toString().toLowerCase());
                          },
                        ),
                        //This to clear the search value when you close the menu
                        onMenuStateChange: (isOpen) {
                          if (!isOpen) {
                            textEditingController.clear();
                          }
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                if (selectedValue != null)
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    constraints: const BoxConstraints(
                        minWidth: 400,
                        maxWidth: double.infinity,
                        minHeight: 300,
                        maxHeight: double.infinity),
                    decoration: BoxDecoration(
                        color: Colors.amber[50],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Soil Type",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(soilType),
                          Text(
                            "Soil pH",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(soilPH),
                          Text(
                            "Soil Composition",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(soilComposition),
                          Text(
                            "Soil Preparation",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(soilPreparation),
                          Text(
                            "Planting Instruction",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(plantingInstructions),
                          Text(
                            "Mulching notes",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(mulching),
                          Text(
                            "Plant maintenance",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(maintenance),
                          Text(
                            "Troubleshooting",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(troubleshooting)
                        ],
                      ),
                    ),
                  ),
                if (selectedValue != null)
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    constraints: const BoxConstraints(
                      minWidth: 400,
                      maxWidth: double.infinity,
                      minHeight: 300,
                      maxHeight: double.infinity,
                    ),
                    child: Image.asset(
                      "images/chili_example_pic.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
