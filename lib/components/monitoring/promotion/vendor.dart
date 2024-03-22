import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planty/pages/monitoring/iot_item.dart';

class Vendor extends StatelessWidget {
  const Vendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const IOTitem()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0,
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  15), // Adjust the border radius as needed
              child: Image.asset(
                'assets/images/startup_farmer.png',
                width: 180, // Adjust the width of the image as needed
                height: 200, // Adjust the height of the image as needed
                fit: BoxFit.cover,
                // Adjust the fit of the image as needed
              ),
            ),
            const SizedBox(
                width: 10), // Add spacing between the image and the column
            Expanded(
              // Add this
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'TM ONE PRECISION FARMING STARTER PACK',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    maxLines: 4, // Adjust the number of lines as needed
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Text(
                    '5 years free technical support Installation provided',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  Image.asset(
                    'assets/images/TM One.png',
                    alignment: Alignment.centerLeft,
                    width: 70, // Adjust the width of the image as needed
                    height: 70, // Adjust the height of the image as needed
                    fit:
                        BoxFit.contain, // Adjust the fit of the image as needed
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
