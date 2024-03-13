import 'package:flutter/material.dart';
import 'package:planty/components/planning/knowledge_container.dart';
import 'package:planty/components/planning/planning_introduction.dart';

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
              ]
            ),))
      ],
    );
  }
}