import 'package:flutter/material.dart';
import 'package:planty/components/home/activities_suggestion_model.dart';
import 'package:planty/components/home/news_model.dart';
import 'package:planty/pages/home/weather.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Container(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
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
                                            height: 185,
                                            fit: BoxFit.fill,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 130),
                  GestureDetector(
                    // Add this
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                WeatherScreen()), // Replace with your next page
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 247, 90, 90),
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
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Activities suggestion',
                    style: TextStyle(
                      color: Color.fromARGB(255, 168, 168, 168),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: activitiesData.length,
                      padding:
                          const EdgeInsets.only(right: 10, bottom: 10, top: 10),
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 150,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 233, 250, 209),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(activitiesData[index].icon, size: 50),
                                const SizedBox(height: 5),
                                Text(
                                  activitiesData[index].name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Farming News Update',
                    style: TextStyle(
                      color: Color.fromARGB(255, 168, 168, 168),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 200,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: newsData.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                            right: 10, bottom: 10, top: 10),
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  newsData[index].imagePath,
                                  width: 130,
                                  height: 150,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  // Wrap with Expanded widget
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        newsData[index].publication,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                          height:
                                              5), // Add spacing between texts
                                      Text(
                                        newsData[index].title,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        maxLines: 4, // Limit to 4 lines
                                        overflow: TextOverflow
                                            .ellipsis, // Use ellipsis for overflow
                                      ),
                                    ],
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
