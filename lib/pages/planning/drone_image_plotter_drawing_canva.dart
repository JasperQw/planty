import 'package:flutter/material.dart';
import 'package:image_painter/image_painter.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class drone_image_plotter_drawing_canva extends StatefulWidget {
  const drone_image_plotter_drawing_canva({super.key});

  @override
  State<drone_image_plotter_drawing_canva> createState() =>
      _drone_image_plotter_drawing_canvaState();
}

class _drone_image_plotter_drawing_canvaState
    extends State<drone_image_plotter_drawing_canva> {
  final _imageKey = GlobalKey<ImagePainterState>();
  void saveImage() async {
    final image = await _imageKey.currentState?.exportImage();
    final directory = (await getApplicationDocumentsDirectory()).path;
    await Directory('$directory/sample').create(recursive: true);
    final fullPath =
        '$directory/sample/${DateTime.now().millisecondsSinceEpoch}.png';
    final imgFile = File('$fullPath');
    if (image != null) {
      imgFile.writeAsBytesSync(image);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.grey[700],
          padding: const EdgeInsets.only(left: 10),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Image Exported successfully.",
                  style: TextStyle(color: Colors.white)),
              TextButton(
                onPressed: () => OpenFile.open("$fullPath"),
                child: Text(
                  "Open",
                  style: TextStyle(
                    color: Colors.blue[200],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagePainter.asset(
        "images/land.jpg",
        key: _imageKey,
        scalable: true,
        initialStrokeWidth: 2,
        textDelegate: TextDelegate(),
        initialColor: Colors.white,
        initialPaintMode: PaintMode.none,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: saveImage,
      ),
    );
  }
}
