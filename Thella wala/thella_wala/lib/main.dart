// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thella_wala/maps/getuserlocation.dart';
import 'package:thella_wala/splash_screen/Screen1.dart';
import 'package:thella_wala/splash_screen/copygetotp.dart';
import 'package:thella_wala/splash_screen/location.dart';
import 'package:thella_wala/splash_screen/copygetotp2.dart';
import 'package:thella_wala/splash_screen/selecttype.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Thela Wala';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thella_Wala',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Screen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
