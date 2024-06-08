import 'package:flutter/material.dart';
import 'package:testroustem/intro_page.dart';
import 'package:testroustem/home_page.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the debug banner
      title: "MonApp",
      
      initialRoute: "/",
      routes: {
        "/": (context) => IntroPage(), // Map "/" to LoginPage
        "/home": (context) => HomePage(),
      },
    );
  }
}

