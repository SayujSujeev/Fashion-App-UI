import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}

