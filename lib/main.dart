import 'package:flutter/material.dart';

import './pages/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tribute Page',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: const Color(0xffEEEEEE),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          headline3: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          bodyText1: TextStyle(
            fontSize: 15,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 10,
        ),
      ),
    );
  }
}
