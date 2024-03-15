import 'package:flutter/material.dart';

class NotePlantedPlant extends StatefulWidget {
  const NotePlantedPlant({Key? key}) : super(key: key);
  @override
  State<NotePlantedPlant> createState() => _NotePlantedPlantState();
}

class _NotePlantedPlantState extends State<NotePlantedPlant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 20,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 247, 243),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Tomato'
                '\nChili'
                '\nCucumber'
                '\nCarrot',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Handle your button tap here
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Edit Planted Crops'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              TextField(
                                decoration: const InputDecoration(
                                    hintText: "Enter crop name"),
                                maxLines: null,
                                keyboardType: TextInputType.multiline,
                                onChanged: (value) {
                                  // Handle crop name change
                                },
                              ),
                              // Add more TextFields or widgets as needed
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: const Text('Save'),
                            onPressed: () {
                              // Handle save action
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
