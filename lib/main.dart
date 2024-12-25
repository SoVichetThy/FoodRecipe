import 'package:final_project/app_screen.dart';
import 'package:final_project/view/getStart.dart';
import 'package:final_project/view/home.dart';
import 'package:final_project/view/tabBar/tobecontiued.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Getstart(),
    );
  }
}
