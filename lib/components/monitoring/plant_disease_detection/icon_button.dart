// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planty/pages/monitoring/result_plant_disease_detection.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:html' as html;

class iconButton extends StatefulWidget {
  const iconButton({Key? key}) : super(key: key);

  @override
  State<iconButton> createState() => _iconButtonState();
}

class _iconButtonState extends State<iconButton> {
  ImageProvider? _image;
  @override
  Widget build(BuildContext context) {
    Colors.transparent;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 6,
            height: MediaQuery.of(context).size.width / 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 238, 238, 228),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
              icon: const Icon(
                Icons.camera_alt_outlined,
              ),
              iconSize: 40,
              color: Colors.black,
              onPressed: () {
                HapticFeedback.lightImpact();
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 6,
            height: MediaQuery.of(context).size.width / 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 238, 238, 228),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
              icon: const Icon(
                Icons.image_outlined,
              ),
              iconSize: 40,
              color: Colors.black,
              onPressed: () async {
                HapticFeedback.lightImpact();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResultPlantDiseaseDetection(),
                  ),
                );
                // // Upload image for web
                // final html.FileUploadInputElement uploadInput =
                //     html.FileUploadInputElement();
                // uploadInput.click();

                // uploadInput.onChange.listen((e) {
                //   final reader = html.FileReader();
                //   reader.readAsDataUrl(uploadInput.files!.first);
                //   reader.onLoadEnd.listen((event) {
                //     // Use this result
                //     final encoded = reader.result as String;
                //     // remove 'data:image/png;base64,' from beginning of the string
                //     final stripped = encoded.replaceFirst(
                //         RegExp(r'data:image/[^;]+;base64,'), '');

                //     // Convert base64 string to Uint8List
                //     final imageBytes = base64Decode(stripped);

                //     // Create a MemoryImage
                //     final image = MemoryImage(imageBytes);

                //     // Pass the MemoryImage to the PlantDisease widget
                //     setState(() {
                //       _image = image;
                //     });
                //   });
                // });
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 6,
            height: MediaQuery.of(context).size.width / 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 238, 238, 228),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
              icon: const Icon(
                Icons.close_rounded,
              ),
              iconSize: 40,
              color: Colors.black,
              onPressed: () {
                HapticFeedback.lightImpact();
                Navigator.pop(context); // Close the dialog
              },
            ),
          ),
        ],
      ),
    );
  }
}
