import 'package:flutter/material.dart';
import 'package:thella_wala/splash_screen/Screen1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gali_Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

