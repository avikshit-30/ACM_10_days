import 'package:demo/prof.dart';
import 'package:flutter/material.dart';
import 'package:demo/editprof.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: ProfilePage(
        name: 'Avikshit Jha',
        about: 'Hello man ya nothing much ya man yo',
        h1: 'quizzing',
        h2: 'badminton',
        h3: 'cricket',
      ),
    );
  }
}
