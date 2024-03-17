import 'package:flutter/material.dart';

class PopUpBeforePromotion2 extends StatelessWidget {
  const PopUpBeforePromotion2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize
                  .min, // To make the dialog as big as the children's size
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info,
                      size: 30,
                    ), // Replace with your desired icon
                    SizedBox(
                        width:
                            8), // Add some space between the icon and the text
                    Text(
                      'What Do We Do?',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Image.asset(
                    'assets/images/whyIOT2.png'), // Replace with your image path
                const SizedBox(height: 16),
                Container(
                  color: const Color.fromARGB(255, 244, 249, 211),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              "Planty is revolutionizing the Malaysian agriculture by partnering with leading local and international precision agriculture companies. ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'We serve as a comprehensive gateway, connecting users to array of IoT sensors, smart irrigation and fertigation systems.',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              '"Planty" aims to demystify and promote the adoption of precision farming in Malaysia.',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 50.0, // set the height of the button
                  width: MediaQuery.of(context).size.width -
                      20, // set the width of the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Close the dialog
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Got It!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ), // set the text color to white
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.green,
                      ), // set the button color to green
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
