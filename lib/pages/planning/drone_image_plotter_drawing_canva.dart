import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drone_image_plotter_drawing_canva extends StatefulWidget {
  const drone_image_plotter_drawing_canva({Key? key}) : super(key: key);

  @override
  _drone_image_plotter_drawing_canvaState createState() =>
      _drone_image_plotter_drawing_canvaState();
}

class _drone_image_plotter_drawing_canvaState
    extends State<drone_image_plotter_drawing_canva> {
  int rows = 1;
  int columns = 1;
  double width = 100;
  double height = 100;
  bool canAnnotate = false;
  double totalWidth = 100;
  double totalHeight = 100;
  final TextEditingController rowsController = TextEditingController();
  final TextEditingController columnsController = TextEditingController();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Canvas Generator'),
        ),
        body: SingleChildScrollView(
          // Enable scrolling for potentially large canvases
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Row(
                children: [
                  Text('Rows:'),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: rowsController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter number of rows',
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty && int.parse(value) < 500) {
                          setState(() {
                            rows = int.parse(value);
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Columns:'),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: columnsController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter number of columns',
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty && int.parse(value) < 500) {
                          setState(() {
                            columns = int.parse(value);
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
          
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    totalWidth = columns * width;
                    totalHeight = rows * height;
                    canAnnotate = true;
                  });
                },
                child: Text('Generate Canvas'),
              ),
              SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: totalWidth,
                  height: totalHeight,
                  child: Stack(
                    children: [
                      for (int i = 0; i < rows; i++)
                        for (int j = 0; j < columns; j++)
                          Positioned(
                            left: j * width,
                            top: i * height,
                            child: Container(
                              width: width,
                              height: height,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Image.asset(
                                'images/soils.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
