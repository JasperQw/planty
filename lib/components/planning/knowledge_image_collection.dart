import 'package:flutter/material.dart';
import 'package:planty/components/planning/knowledge_image.dart';

class KnowledgeImageCollection extends StatefulWidget {
  const KnowledgeImageCollection({super.key});

  @override
  State<KnowledgeImageCollection> createState() => _KnowledgeImageCollectionState();
}

class _KnowledgeImageCollectionState extends State<KnowledgeImageCollection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 130,
        margin: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: const Row(
          children: [
            KnowledgeImage(
              imagePath: "assets/images/corn.png", 
              plantName: "Corn"),
            SizedBox(
                width: 8,
            ),
            KnowledgeImage(
              imagePath: "assets/images/chili.png", 
              plantName: "Chili"),
            SizedBox(
                width: 8,
            ),
            KnowledgeImage(
              imagePath: "assets/images/cabbage.png", 
              plantName: "Cabbage"),
          ],
        ),
      )
    );
  }
}