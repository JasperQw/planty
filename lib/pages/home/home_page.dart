import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 225,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Stack(
              children: <Widget>[
                //Gif image background = blue sky
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  child: Image.asset(
                    'assets/images/blue-sky.gif',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: 225,
                  ),
                ),
                //Search bar
                Container(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Search",
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // Weather and location
                Align(
                  alignment: Alignment(0.0, 1.0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                    child: OverflowBox(
                      minWidth: 0.0,
                      maxWidth: MediaQuery.of(context).size.width,
                      minHeight: 0.0,
                      maxHeight: (MediaQuery.of(context).size.height / 4),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            width: double.infinity,
                            height: double.infinity,
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 20, right: 20),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                'assets/images/sunny.png'),
                                            height: 200,
                                            width: 450,
                                            fit: BoxFit.fill,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    padding: EdgeInsets.only(top: 120),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 247, 90,
                                  90), // Add a comma at the end of this line
                            ),
                            padding: const EdgeInsets.all(10.0),
                            child: const Row(
                              children: <Widget>[
                                Icon(
                                  Icons.sunny,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    'Extreme Hot Weather for 3 days Continuously ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
