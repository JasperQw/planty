import 'package:flutter/material.dart';
import 'package:planty/pages/monitoring/iot_item.dart';

class Vendor1 extends StatefulWidget {
  const Vendor1({Key? key}) : super(key: key);

  @override
  State createState() => _Vendor1State();
}

class _Vendor1State extends State<Vendor1> {
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
                'assets/images/proData (2).png',
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
                    'PRO DATA PRECISION FARMING STARTER PACK',
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
                    'assets/images/proData.png',
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
