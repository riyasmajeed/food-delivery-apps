import 'package:flutter/material.dart';
import 'package:foodiee_app/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

      home: Scaffold(

body: home()

      ),
    );
  }
}