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
    return const Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlanningIntroduction(),
                SizedBox(
                  height: 20
                ),
                KnowledgeContainer(),
                SizedBox(
                  height: 20
                ),
                TutorialContainer(),
                SizedBox(
                  height: 20
                ),
                LandContainer(),
                SizedBox(
                  height: 20
                ),
                PredictionContainer(),
                SizedBox(
                  height: 20
                ),
                PestContainer(),
                SizedBox(
                  height: 20
                ),
              ]
            ),))
      ],
    );
  }
}