// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_to_do_appliction/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //initialize the hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}