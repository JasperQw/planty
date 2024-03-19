import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/planning/video_player.dart';
import 'package:planty/utilities/color.dart';

class PlantKnowledge extends StatefulWidget {
  const PlantKnowledge({super.key});

  @override
  State<PlantKnowledge> createState() => _PlantKnowledgeState();
}

class _PlantKnowledgeState extends State<PlantKnowledge> {
  final scrollcontroller = ScrollController();

  String cactus_description =
      "The word \"cactus derives\", through Latin, from the Ancient Greek κάκτος, kaktos, a name originally used by Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought. ";

  List<String> plant_weedmanagement = [
        "Regularly monitor your cornfield for weeds. Weeds compete with corn for nutrients, water, and sunlight.",
        "Use appropriate herbicides or manual weeding to keep weed populations in check.",
        "Early weed control is crucial to prevent yield losses."
      ],
      plant_pest_diseases_control = [
        "Inspect your corn plants for signs of pests (such as corn borers, aphids, or armyworms) and diseases (like rust or gray leaf spot).",
        "Implement integrated pest management (IPM) strategies, including biological control, cultural practices, and targeted pesticide use.",
        "Scout your field regularly and take timely action to prevent infestations."
      ],
      plant_fertilization = [
        "Corn has high nutrient requirements. Apply fertilizers based on soil tests and crop needs.",
        "Pay attention to nitrogen (N), phosphorus (P), and potassium (K) levels.",
        "Side-dress nitrogen during the growing season to meet the plant’s demands."
      ],
      plant_irrigation = [
        "Maintain consistent soil moisture. Corn is sensitive to water stress during critical growth stages.",
        "Use efficient irrigation methods to provide adequate water.",
        "Avoid overwatering, which can lead to root diseases."
      ],
      plant_pollination_management = [
        "Corn relies on proper pollination for grain formation.",
        "Ensure good pollen shed by planting corn in blocks rather than long, narrow rows.",
        "Avoid planting different corn varieties with different maturity dates close to each other to prevent poor pollination."
      ],
      plant_SSLP = [
        "Strong stalks are essential to prevent lodging (falling over).",
        "Adequate potassium and proper plant spacing contribute to sturdy stalks.",
        "Avoid excessive nitrogen, as it can weaken stalks."
      ],
      plant_harvest_timing = [
        "Harvest corn when kernels are mature but before they become overly dry.",
        "Monitor moisture levels to optimize yield and quality.",
        "Timely harvest prevents yield losses due to weather or pests."
      ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: AppBarWithShadow(
          title: "Plant Knowledge",
          withBackBtn: true,
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  constraints: const BoxConstraints(
                      minWidth: double.infinity, maxHeight: 250),
                  child: Image.asset(
                    "assets/images/example_maize_pic.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(35, 0, 0, 30),
                  child: const Text("Corn (Zea Maize sp)",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: black,
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: SafeArea(
                      bottom: true,
                      child: Scrollbar(
                        controller: scrollcontroller,
                        interactive: false,
                        thumbVisibility: true,
                        trackVisibility: true,
                        child: SingleChildScrollView(
                          controller: scrollcontroller,
                          padding: const EdgeInsets.only(left: 30, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              //plant name
                              const SizedBox(
                                height: 10,
                              ),
                              //plant kingdom and family
                              Row(
                                children: <Widget>[
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 100, 0),
                                      child: const Text("KINGDOM",
                                          style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.bold))),
                                  const Text("FAMILY",
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 115, 0),
                                      child: const Text("Plantae",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w200))),
                                  const Text("Grasses",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w200))
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                  child: const Text("DESCRIPTION",
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 10, 30, 0),
                                  child: Text(cactus_description,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w200))),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 20, 30, 10),
                                  child: const Text("SUITABLE CONDITION",
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0, 20, 30, 10),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        SvgPicture.asset('images/Sun_icon.svg'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          constraints: const BoxConstraints(
                                              minWidth: 110, maxWidth: 110),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Sunlight"),
                                              Text("N/A")
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        SvgPicture.asset(
                                            'images/humidity_icon.svg'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          constraints: const BoxConstraints(
                                              minWidth: 120, maxWidth: 120),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Amount of water"),
                                              Text("N/A")
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SvgPicture.asset(
                                            'images/Temperature_icon.svg'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          constraints: const BoxConstraints(
                                              minWidth: 110, maxWidth: 110),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Temperature"),
                                              Text("N/A")
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        SvgPicture.asset(
                                            'images/soil_ph_icon.svg'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          constraints: const BoxConstraints(
                                              minWidth: 120, maxWidth: 120),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Soil pH"),
                                              Text("N/A")
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      children: <Widget>[
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        SvgPicture.asset(
                                            'images/Safety_distance_icon.svg'),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          constraints: const BoxConstraints(
                                              minWidth: 105, maxWidth: 105),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Safety distance"),
                                              Text("N/A")
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        SvgPicture.asset(
                                            'images/soil_type_icon.svg'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 3),
                                          constraints: const BoxConstraints(
                                              minWidth: 120, maxWidth: 120),
                                          child: const Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Soil Type"),
                                              Text("N/A")
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 20, 30, 10),
                                  child: const Text("CROP EXTRA CARE",
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold))),

                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 10, 30, 0),
                                  child: const Text("Weed Management:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200))),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 30, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: plant_weedmanagement.map((step) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, top: 8),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                          width: 20 / 4,
                                          height: 20 / 4,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Text(step,
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 10, 30, 0),
                                  child: const Text("Pest and Disease Control:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200))),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 30, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                      plant_pest_diseases_control.map((step) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, top: 8),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                          width: 20 / 4,
                                          height: 20 / 4,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Text(step,
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 10, 30, 0),
                                  child: const Text("Fertilization:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200))),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 30, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: plant_fertilization.map((step) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, top: 8),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                          width: 20 / 4,
                                          height: 20 / 4,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Text(step,
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 10, 30, 0),
                                  child: const Text("Irrigation:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200))),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 30, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: plant_irrigation.map((step) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, top: 8),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                          width: 20 / 4,
                                          height: 20 / 4,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Text(step,
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 10, 30, 0),
                                  child: const Text("Pollination Management:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200))),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 30, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                      plant_pollination_management.map((step) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, top: 8),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                          width: 20 / 4,
                                          height: 20 / 4,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Text(step,
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 10, 30, 0),
                                  child: const Text(
                                      "Stalk Strength and Lodging Prevention:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200))),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 30, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: plant_SSLP.map((step) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, top: 8),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                          width: 20 / 4,
                                          height: 20 / 4,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Text(step,
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 30, 0),
                                child: const Text(
                                  "Harvesting Time:",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 10, 30, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: plant_harvest_timing.map((step) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 10, top: 8),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                          width: 20 / 4,
                                          height: 20 / 4,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Text(step,
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 20, 30, 0),
                                child: const Text(
                                  "SUGGESTED CROP ROTATION",
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0, 20, 30, 20),
                                constraints: const BoxConstraints(
                                    maxWidth: 300, maxHeight: 250),
                                child: Card(
                                  elevation: 10,
                                  surfaceTintColor: Colors.white,
                                  color: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/images/crop_rotation_mock.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 50, 0),
                                child: const Text(
                                  "CROP GROWTH TUTORIAL",
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0, 20, 30, 20),
                                constraints: const BoxConstraints(
                                    minWidth: double.infinity, maxHeight: 250),
                                child: const Card(
                                  surfaceTintColor: Colors.black,
                                  color: Colors.white,
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    child: VideoPlayerComponent(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
