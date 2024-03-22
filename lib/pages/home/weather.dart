import 'package:flutter/material.dart';
import 'package:planty/components/home/news_model.dart';
import 'package:planty/components/home/today_weather.dart';
import 'package:planty/components/home/weather_insights.dart';
import 'package:planty/components/home/weather_prediction_model.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      appBar: AppBar(
        title: const Text(
          'Weather',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(top: 30, left: 20, right: 20),
                        child: const TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            labelText: "Search",
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.black),
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color.fromARGB(255, 247, 90, 90),
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Row(
                          children: <Widget>[
                            Icon(
                              Icons.warning_amber_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Extreme Hot Weather Might Leads to Pest Outbreaks ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage('assets/images/sunny.png'),
                          height: 200, // 30% of screen height
                          width: MediaQuery.of(context).size.width - 50,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: SizedBox(
                          height: 170,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: todayData.length,
                            padding: const EdgeInsets.only(
                                right: 10, bottom: 10, top: 10),
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
                                    color: const Color.fromARGB(
                                        255, 204, 219, 255),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(todayData[index].icon, size: 50),
                                      const SizedBox(height: 5),
                                      Text(
                                        todayData[index].time,
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
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'AI Generated Insights based on Weather',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 118, 118, 118),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height - 200,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: insightsData.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(
                                right: 10, bottom: 10, top: 10),
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 10.0, right: 10, left: 10),
                              child: Material(
                                elevation: 3,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
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
                                              insightsData[index].publication,
                                              style: const TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              maxLines: 4, // Limit to 4 lines
                                              overflow: TextOverflow
                                                  .ellipsis, // Use ellipsis for overflow
                                            ),
                                            Text(
                                              insightsData[index].title,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey[600],
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            // Add spacing between texts
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
                      ),
                    ],
                  ),
                ),
                // First Page

                // Second Page
                ListView.builder(
                  itemCount: weatherData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10.0),
                      // Add this line
                      child: Material(
                        color: const Color.fromARGB(255, 236, 252, 255),
                        elevation: 3,
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                weatherData[index].icon,
                                size: 50,
                                color: weatherData[index].color,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                weatherData[index].day,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildDot(_currentPage == 0),
              const SizedBox(width: 10),
              buildDot(_currentPage == 1),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDot(bool isActive) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.green : Colors.grey,
      ),
    );
  }
}
