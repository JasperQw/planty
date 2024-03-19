import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class pest_or_disease_card extends StatefulWidget {
  final String image_asset, name, description;

  const pest_or_disease_card(
      {Key? key,
      required this.image_asset,
      required this.name,
      required this.description})
      : super(key: key);
  @override
  State<pest_or_disease_card> createState() => _pest_or_disease_cardState();
}

class _pest_or_disease_cardState extends State<pest_or_disease_card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 25),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              widget.image_asset,
              fit: BoxFit.cover,
              width: 210,
              height: 180,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 15, bottom: 20, right: 20),
              constraints: const BoxConstraints(maxHeight: 180, minHeight: 180),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Flexible(
                    child: Text(
                      widget.description,
                      // "The aphid, a tiny sap-sucking insect, can quickly reproduce and damage plants by feeding on their sap, causing deformation and sometimes transmitting plant diseases.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
