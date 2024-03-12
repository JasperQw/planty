import 'package:flutter/material.dart' show BorderRadius, BoxDecoration, BoxFit, BoxShadow, BuildContext, ButtonStyle, Center, ClipRRect, Color, Colors, Column, Container, CrossAxisAlignment, CustomScrollView, EdgeInsets, ElevatedButton, Expanded, FlexibleSpaceBar, FontWeight, Icon, Icons, Image, Key, MainAxisAlignment, MaterialStateProperty, MediaQuery, Offset, Padding, Radius, Row, Scaffold, SizedBox, SliverAppBar, SliverToBoxAdapter, Spacer, State, StatefulWidget, Text, TextStyle, Widget;
import 'package:flutter_svg/flutter_svg.dart';

class MonitorMain extends StatefulWidget {
  const MonitorMain({Key? key}) : super(key: key);

  @override
  _MonitorMainState createState() => _MonitorMainState();
}

class _MonitorMainState extends State<MonitorMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: CustomScrollView(
        slivers: [
          // Monitor main page header
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30.0), // set the bottom left radius
                  bottomRight: Radius.circular(30.0), // set the bottom right radius
                ),
                child: Image.asset(
                  "assets/images/image 61.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Sliver item 1
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 380,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start, // changed to start
                    children: <Widget>[
                      const Padding(
                        // added padding
                        padding: EdgeInsets.only(top: 40.0), // top margin 40
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.camera_alt, size: 50), // Replace with your first icon
                                Text(
                                  'Agricultural Drone Thermal Imaging',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.home, size: 50), // Replace with your second icon
                                Text('Text 2'), // Replace with your second text
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.school, size: 50), // Replace with your third icon
                                Text('Text 3'), // Replace with your third text
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.settings, size: 50), // Replace with your fourth icon
                                Text('Text 4'), // Replace with your fourth text
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 50.0),

                      // Button 1
                      Container(
                        height: 50.0, // set the height of the button
                        width: MediaQuery.of(context).size.width - 100, // set the width of the button
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text(
                            'bla bla bla bla bla bla bla bla ',
                            style: TextStyle(color: Colors.white), // set the text color to white
                          ),
                          icon: const Icon(Icons.add, color: Colors.white), // set the icon color to white
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red), // set the button color to red
                          ),
                        ),
                      ),

                      // Button 2
                      Padding(
                        padding: EdgeInsets.only(top: 30.0), // top margin 40
                        child: Container(
                          height: 50.0, // set the height of the button
                          width: MediaQuery.of(context).size.width - 100, // set the width of the button
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            label: const Text(
                              'bla bla bla bla bla bla bla bla ',
                              style: TextStyle(color: Colors.white), // set the text color to white
                            ),
                            icon: const Icon(Icons.add, color: Colors.white), // set the icon color to white
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.green), // set the button color to red
                            ),
                          ),
                        ),
                      ),

                      // Bottom wording
                      Spacer(), // Add this to push the next container to the bottom
                      Container(
                        height: 50.0, // set the height of the container
                        width: MediaQuery.of(context).size.width, // set the width of the container
                        color: Color.fromARGB(255, 234, 195, 94), // set the color of the container
                        child: const Center(
                          child: Text(
                            'Bottom Container',
                            style: TextStyle(color: Colors.white), // set the text color to white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Sliver item 2
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Header',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        const Text(
                          'This is a text line',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 10), // add a space of 10 before the row of containers
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 250, // set the height of the container
                                decoration: BoxDecoration(
                                  color: Colors.red, // set the color of the container
                                  borderRadius: BorderRadius.circular(10.0), // set the border radius of the container
                                ),
                              ),
                            ),
                            const SizedBox(width: 5), // add a space of 10 between the two containers
                            Expanded(
                              child: Container(
                                height: 250, // set the height of the container
                                decoration: BoxDecoration(
                                  color: Colors.blue, // set the color of the container
                                  borderRadius: BorderRadius.circular(10.0), // set the border radius of the container
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
