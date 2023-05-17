//
//File: gradient_container_class1.dart
//

import 'package:flutter/material.dart';
import '../gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(), //GradientContainer.purple
      ), //Scaffold
    ); //MaterialApp
  }
}
