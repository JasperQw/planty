import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/components/layout/appbar.dart';
import 'package:planty/firebase_options.dart';
import 'package:planty/pages/community/home_page.dart';
import 'package:planty/utilities/color.dart';
import 'package:planty/pages/monitoring/monitor_main.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;
  List<Widget> fragmentList = [
    const CommunityHome(),
    const CommunityHome(),
    const CommunityHome(),
    const MonitorMain(),
    const CommunityHome(),
  ];
  Widget currentFragment = const CommunityHome();
  // This widget is the root of your application.

  Color iconColor(index) {
    if (index == currentPageIndex) {
      return selectedGreen;
    } else {
      return unselectedGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planty',
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: background),
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(
            80,
          ),
          child: AppBarLayout(),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentPageIndex,
            selectedItemColor: selectedGreen,
            unselectedItemColor: unselectedGrey,
            showUnselectedLabels: true,
            selectedFontSize: 12,
            onTap: (index) {
              setState(() {
                currentPageIndex = index;
                currentFragment = fragmentList[index];
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/home.svg",
                    colorFilter: ColorFilter.mode(
                      iconColor(0),
                      BlendMode.srcIn,
                    ),
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/community.svg",
                  colorFilter: ColorFilter.mode(
                    iconColor(1),
                    BlendMode.srcIn,
                  ),
                ),
                label: "Community",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/guidance.svg",
                  colorFilter: ColorFilter.mode(
                    iconColor(2),
                    BlendMode.srcIn,
                  ),
                ),
                label: "Guidance",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/monitor.svg",
                  colorFilter: ColorFilter.mode(
                    iconColor(3),
                    BlendMode.srcIn,
                  ),
                ),
                label: "Monitor",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/user.svg",
                  colorFilter: ColorFilter.mode(
                    iconColor(4),
                    BlendMode.srcIn,
                  ),
                ),
                label: "Profile",
              )
            ],
          ),
        ),
        body: currentFragment,
      ),
    );
  }
}
