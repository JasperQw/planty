import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';

class drone_image_plotter_drawing_canva extends StatefulWidget {
  const drone_image_plotter_drawing_canva({Key? key}) : super(key: key);

  @override
  _drone_image_plotter_drawing_canvaState createState() =>
      _drone_image_plotter_drawing_canvaState();
}

class _drone_image_plotter_drawing_canvaState
    extends State<drone_image_plotter_drawing_canva> {
  int rows = 3;
  int columns = 2;
  double width = 100;
  double height = 100;
  bool canAnnotate = false;
  double totalWidth = 200;
  double totalHeight = 300;
  final TextEditingController rowsController = TextEditingController(text: '3');
  final TextEditingController columnsController =
      TextEditingController(text: '2');
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  List<Offset> points = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          80,
        ),
        child: AppBarWithShadow(
          title: "SmartPlot Planner",
          withBackBtn: true,
        ),
      ),
      body: SingleChildScrollView(
        // Enable scrolling for potentially large canvases
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(left: 180),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Rows:'),
                  SizedBox(width: 10),
                  Container(
                    constraints: BoxConstraints(maxWidth: 20),
                    child: Expanded(
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
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 158),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Columns:'),
                  SizedBox(width: 10),
                  Container(
                    constraints: BoxConstraints(maxWidth: 20),
                    child: Expanded(
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    totalWidth = columns * width;
                    totalHeight = rows * height;
                    canAnnotate = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(230, 50),
                  backgroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                child: const Text(
                  "Generate Plotting Canva ! ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                )),
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
    );
  }
}
