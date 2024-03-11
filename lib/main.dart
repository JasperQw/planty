import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:planty/firebase_options.dart';
import 'package:planty/pages/community/home_page.dart';
import 'package:planty/utilities/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planty',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: background),
      home: const CommunityHome(),
    );
  }
}
