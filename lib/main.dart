// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
import 'package:splash_screen/splashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  /*here we have a list of OnbordingScreen which we want to have, each OnbordingScreen have a imagePath,title and an desc.
      */
  final List<OnbordingData> list = [
    const OnbordingData(
      image: AssetImage("assets/logo.png"),
      titleText: Text("This is Title1"),
      descText: Text("This is desc1"),
    ),
    const OnbordingData(
      image: AssetImage("assets/logo.png"),
      titleText: Text("This is Title2"),
      descText: Text("This is desc2"),
    ),
    const OnbordingData(
      image: AssetImage("assets/logo.png"),
      titleText: Text("This is Title3"),
      descText: Text("This is desc4"),
    ),
    const OnbordingData(
      image: AssetImage("assets/logo.png"),
      titleText: Text("This is Title4"),
      descText: Text("This is desc4"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    /* remove the back button in the AppBar is to set automaticallyImplyLeading to false
  here we need to pass the list and the route for the next page to be opened after this. */
    return IntroScreen(
      onbordingDataList: list,
      colors: [
        //list of colors for per pages
        Colors.white,
        Colors.red,
      ],
      pageRoute: MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      ),
      nextButton: const Text(
        "NEXT",
        style: TextStyle(
          color: Colors.green,
        ),
      ),
      lastButton: const Text(
        "GOT IT",
        style: TextStyle(
          color: Colors.green,
        ),
      ),
      skipButton: const Text(
        "SKIP",
        style: TextStyle(
          color: Colors.green,
        ),
      ),
      selectedDotColor: Colors.orange,
      unSelectdDotColor: Colors.grey,
    );
  }
}
