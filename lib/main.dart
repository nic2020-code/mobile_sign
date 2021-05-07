import 'package:flutter/material.dart';
import 'package:myApp/constants.dart';
// import 'Screens/Welcome/introSlide.dart';
import 'package:myApp/Screens/Dashboard/app.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Sign',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Gilroy',
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}
