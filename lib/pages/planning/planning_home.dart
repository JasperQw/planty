import 'package:flutter/material.dart';
import 'package:planty/components/planning/knowledge_container.dart';
import 'package:planty/components/planning/land_container.dart';
import 'package:planty/components/planning/pest_container.dart';
import 'package:planty/components/planning/planning_introduction.dart';
import 'package:planty/components/planning/prediction_container.dart';
import 'package:planty/components/planning/tutorial_container.dart';

class PlanningHome extends StatefulWidget {
  const PlanningHome({super.key});

  @override
  State <PlanningHome> createState() =>  _PlanningHomeState();
}

class  _PlanningHomeState extends State <PlanningHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PlanningIntroduction(),
                const SizedBox(
                  height: 20
                ),
                const KnowledgeContainer(),
                const SizedBox(
                  height: 20
                ),
                const TutorialContainer(),
                const SizedBox(
                  height: 20
                ),
                const LandContainer(),
                const SizedBox(
                  height: 20
                ),
                const PredictionContainer(),
                const SizedBox(
                  height: 20
                ),
                const PestContainer(),
                const SizedBox(
                  height: 20
                ),
              ]
            ),))
      ],
    );
  }
}