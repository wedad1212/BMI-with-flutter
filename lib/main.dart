import 'package:flutter/material.dart';
import 'home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        canvasColor: Colors.black,
        textTheme: TextTheme(
          headline2: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          headline1: TextStyle(
            fontSize: 45,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
          bodyText1: TextStyle(
fontSize: 17,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          )
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home: const MyHomePage(),
    );

  }
}
